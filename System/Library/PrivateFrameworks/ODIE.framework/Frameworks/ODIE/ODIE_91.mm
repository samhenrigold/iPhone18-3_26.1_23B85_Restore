void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC23C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C10))
  {
    v8 = llvm::getTypeName<mlir::affine::AffineDmaWaitOp>();
    qword_27FC23C08 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC23C10);
  }

  v4 = qword_27FC23C08;
  v10[0] = v11;
  v10[1] = 0x300000000;
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v5 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaWaitOp>::getAffineMapAttrForMemRef;
  v6 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v6, v5);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_wait", 0xF, a2, v4, v10);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
  *a1 = &unk_286E9D4E8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t llvm::getTypeName<mlir::affine::AffineDmaWaitOp>()
{
  if ((atomic_load_explicit(&qword_27FC23C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C28))
  {
    qword_27FC23C18 = llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaWaitOp>();
    unk_27FC23C20 = v1;
    __cxa_guard_release(&qword_27FC23C28);
  }

  return qword_27FC23C18;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaWaitOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineDmaWaitOp]";
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

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaWaitOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "tag_map";
  v7[1] = 7;
  v5 = mlir::StringAttr::get(v4, v7, a3);
  (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  return v5;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  TagIndices = mlir::affine::AffineDmaWaitOp::getTagIndices(a2);
  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v19, TagIndices, 0, TagIndices, v12);
  v13 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  (*(*a3 + 240))(a3, v13, v19 & 0xFFFFFFFFFFFFFFF9, v20);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 11357;
    *(v14 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, "], ", 3uLL);
  }

  v16 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * (**(v16 + 8) + *(*(v16 + 8) + 4) + 1) + 24));
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if ((*(v17 + 3) - v18) > 2)
  {
    *(v18 + 2) = 32;
    *v18 = 14880;
    *(v17 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v17, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyInvariants(mlir::affine *a1, mlir::Operation *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroResults(a1, a2))
  {
    if (*(*(*(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      AffineScope = mlir::affine::getAffineScope(a1, v3);
      TagIndices = mlir::affine::AffineDmaWaitOp::getTagIndices(a1);
      if (!v9)
      {
LABEL_13:
        v5 = 1;
        return v5 & 1;
      }

      v10 = v9;
      v11 = (TagIndices + 24);
      while (1)
      {
        v12 = *v11;
        if (*(*(*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v4 = "index to dma_wait must have 'index' type";
          goto LABEL_4;
        }

        if ((mlir::affine::isValidDim(*v11, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v12, AffineScope) & 1) == 0)
        {
          break;
        }

        v11 += 4;
        if (!--v10)
        {
          goto LABEL_13;
        }
      }

      v4 = "index must be a valid dimension or symbol identifier";
    }

    else
    {
      v4 = "expected DMA tag to be of memref type";
    }

LABEL_4:
    v13 = v4;
    v14 = 259;
    mlir::Operation::emitOpError(v15, a1, &v13);
    v5 = v16 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.apply", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9D5B0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "map";
  v10[1] = 3;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    v22 = "affine.apply";
    v23 = 12;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v20 = v7;
  v8 = *(v7 + 24);
  v9 = *(v8 + 8);
  if (v8)
  {
    v10 = v9 == 6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v16 = *(v8 + 16);
LABEL_13:
    v14 = *(*(a2 + 72) + 32 * v16 + 24) | 4;
    goto LABEL_14;
  }

  if (v8)
  {
    v11 = v9 == 7;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v16 = (*(v8 + 16) + *v7);
    goto LABEL_13;
  }

  v22[0] = v23;
  v22[1] = 0x100000000;
  v19 = 0;
  v12 = mlir::AffineMap::constantFold(&v20, a3, a4, v22, &v19);
  if (v19 == 1)
  {
    v13 = *(**(***(a2 + 24) + 32) + 560);
    v21 = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
    v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v13 + 232), &v21) & 0xFFFFFFFFFFFFFFFBLL;
    v15 = v22[0];
  }

  else
  {
    v18 = v12;
    v15 = v22[0];
    if (v18)
    {
      v14 = *v22[0] & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v15 != v23)
  {
    free(v15);
  }

LABEL_14:
  if (v14 < 8 || a2 - 16 == (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v14 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[10] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  return v4 == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 40))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)));
  v9 = *(a2 + 44);
  if ((v9 & 0x800000) != 0)
  {
    v10 = *(a2 + 72);
    v11 = *(a2 + 68);
    v12 = v10;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  printDimAndSymbolList(v10, 0, v12, v11, **(*(a2 + 64 + 16 * ((v9 >> 23) & 1)) + 8), a3);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v14 = *(AttrDictionary + 8);
  v15 = *(AttrDictionary + 16);
  v17[0] = "map";
  v17[1] = 3;
  return (*(*a3 + 192))(a3, v14, v15, v17, 1);
}

uint64_t mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v5)
  {
    v17[0] = "requires attribute 'map'";
    v18 = 259;
    mlir::Operation::emitOpError(v19, a1, v17);
    v12 = v20;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_18:
    v13 = *(a1 + 44);
    v14 = *(*(a1 + 64 + 16 * ((v13 >> 23) & 1)) + 8);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(a1 + 68);
    }

    else
    {
      v15 = 0;
    }

    if (v15 == v14[1] + *v14)
    {
      if (v14[2] == 1)
      {
        v10 = 1;
        return v10 & 1;
      }

      v16 = "mapping must produce one value";
    }

    else
    {
      v16 = "operand count and affine map dimension and symbol count must match";
    }

    v17[0] = v16;
    v18 = 259;
    mlir::Operation::emitOpError(v19, a1, v17);
    v10 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v10 & 1;
  }

  v19[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v6 = *(a1 + 68);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 72) + 24;
        while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
        {
          ++v7;
          v8 += 32;
          if (v6 == v7)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_11:
    v9 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v10 = 0;
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDelinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineDelinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.delinearize_index", 0x18, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9D678;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x625F636974617473 ? (v4 = *(a3 + 8) == 1936290657) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 12)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 0x625F636974617473 && v6 == 1936290657)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v8 = a4[1], *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v8[2] == 64)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v9;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "static_basis";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v19, a6, a2, a3);
    if (v19)
    {
      mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "static_basis", 0xCuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
      {
        a5(&v19, a6);
        if (v19)
        {
          if (v19)
          {
            v17 = 0;
            v18 = v12;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
            v15 = v21 + 24 * v22;
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++v22;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "static_basis";
  v10[1] = 12;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDelinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineDelinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(&v40, a2);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v9 = ((*(a2 + 68) - 1) << 32) | 1;
  }

  else
  {
    v9 = 0xFFFFFFFF00000001;
  }

  v36[0] = a2;
  v36[1] = v9;
  v37 = v39;
  v38 = 0x100000000;
  foldCstValueToCstAttrBasis(&v43, v40, v41, v36, (a3 + 8), (8 * a4 - 8) >> 3);
  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != &v42)
  {
    free(v40);
  }

  v10 = a2 + 64;
  if (v46 == 1)
  {
    *(v10 + 16 * ((*(a2 + 44) >> 23) & 1)) = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(a2 + 24) + 32), v43, v44);
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  if (*(a2 + 36) == 1)
  {
    ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, *(ODSOperands + 24) | 4);
    goto LABEL_11;
  }

  v12 = 0;
  if (*a3 && a4 == 1)
  {
    v40 = *a3;
    Int = mlir::IntegerAttr::getInt(&v40);
    v15 = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0);
    v16 = *(v10 + 16 * ((*(a2 + 44) >> 23) & 1));
    v17 = *(*(v15 + 24) + 8);
    v18 = *(v16 + 24);
    v19 = *(v16 + 32) >> 3;
    v20 = *(a2 + 36);
    v21 = v19 == v20;
    v22 = v18 + 8 * (v19 == v20);
    v23 = v19 == v20 ? -1 : 0;
    if (v22 + 8 * v19 + 8 * v23 == v22)
    {
      v28 = Int;
    }

    else
    {
      v24 = -8 * (v19 + v23);
      v25 = (8 * v21 + 8 * v19 + 8 * v23 + v18 - 8);
      do
      {
        v27 = *v25--;
        v26 = v27;
        v28 = Int / v27;
        v29 = mlir::IntegerAttr::get((v17 & 0xFFFFFFFFFFFFFFF8), (v27 & ((Int % v27) >> 63)) + Int % v27);
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v29 & 0xFFFFFFFFFFFFFFFBLL);
        if (Int)
        {
          if ((v26 ^ Int) < 0)
          {
            v28 = (((v26 >> 63) | 1) + Int) / v26 - 1;
          }
        }

        else
        {
          v28 = 0;
        }

        Int = v28;
        v24 += 8;
      }

      while (v24);
    }

    v30 = mlir::IntegerAttr::get((v17 & 0xFFFFFFFFFFFFFFF8), v28);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v30 & 0xFFFFFFFFFFFFFFFBLL);
    v31 = *(a5 + 8);
    v12 = 1;
    if (v31)
    {
      v32 = (*a5 + 8 * v31 - 8);
      if (v32 > *a5)
      {
        v33 = *a5 + 8;
        do
        {
          v34 = *(v33 - 8);
          *(v33 - 8) = *v32;
          *v32-- = v34;
          v35 = v33 >= v32;
          v33 += 8;
        }

        while (!v35);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v46 == 1 && v43 != &v45)
  {
    free(v43);
  }

  return v12;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::affine::AffineDelinearizeIndexOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
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
  if (*(v12 + 3) - v13 > 3uLL)
  {
    *v13 = 1869901417;
    *(v12 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v12, "into", 4uLL);
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

  v16 = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 1u);
  v17 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
  mlir::printDynamicIndexList(a3, a2, v16, v18, *(v17 + 24), *(v17 + 32) >> 3, 0, 0, 2, 0, 1);
  v37 = v39;
  v38 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "static_basis", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v37, v38);
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

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
    ++*(v22 + 4);
  }

  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = *(a2 + 9);
  if (v26)
  {
    v27 = (a2 - 16);
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    (*(*a3 + 32))(a3, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v26 != 1)
    {
      v28 = v27 - 4;
      v29 = 1;
      while (1)
      {
        v30 = (*(*a3 + 16))(a3);
        v31 = *(v30 + 4);
        if (*(v30 + 3) - v31 > 1uLL)
        {
          *v31 = 8236;
          *(v30 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v30, ", ", 2uLL);
        }

        v32 = *(a2 - 1) & 7;
        v33 = v27;
        v34 = v29;
        if (v32 == 6)
        {
          goto LABEL_34;
        }

        v35 = (5 - v32);
        v36 = v28;
        v34 = v29 - v35;
        if (v29 > v35)
        {
          break;
        }

LABEL_35:
        (*(*a3 + 32))(a3, *(v36 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v29;
        v28 -= 4;
        if (v26 == v29)
        {
          goto LABEL_36;
        }
      }

      v33 = &v27[-4 * v35];
LABEL_34:
      v36 = &v33[-6 * v34];
      goto LABEL_35;
    }
  }

LABEL_36:
  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::affine::AffineDelinearizeIndexOp *a1, mlir::Operation *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    v4 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
    if (v4)
    {
      v42[0] = a1;
      if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
      {
        ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 0);
        v7 = v6;
        if (v6)
        {
          v8 = 0;
          v9 = ODSOperands + 24;
          while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
          {
            ++v8;
            v9 += 32;
            if (v7 == v8)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_28;
        }

LABEL_10:
        v10 = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 1u);
        if (v11)
        {
          v12 = v11;
          v13 = v10 + 24;
          while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
          {
            LODWORD(v7) = v7 + 1;
            v13 += 32;
            if (!--v12)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_28;
        }

LABEL_14:
        v14 = *(a1 + 9);
        if (*(a1 + 9))
        {
          v15 = (a1 - 16);
        }

        else
        {
          v15 = 0;
        }

        if (v14)
        {
          v16 = 0;
          v17 = (a1 - 16);
          while (1)
          {
            v18 = v15;
            if (v16)
            {
              v19 = *(a1 - 1) & 7;
              v20 = (a1 - 16);
              v21 = v16;
              if (v19 == 6)
              {
                goto LABEL_23;
              }

              v22 = (5 - v19);
              v18 = v17;
              v21 = v16 - v22;
              if (v16 > v22)
              {
                break;
              }
            }

LABEL_24:
            if (!mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, v16))
            {
              goto LABEL_28;
            }

            ++v16;
            v17 -= 4;
            if (v14 == v16)
            {
              goto LABEL_30;
            }
          }

          v20 = (a1 - 16 * v22 - 16);
LABEL_23:
          v18 = &v20[-6 * v21];
          goto LABEL_24;
        }

LABEL_30:
        v26 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
        v27 = *(v26 + 32);
        v28 = v27 >> 3;
        v29 = *(a1 + 9);
        if (v27 >> 3 == v29 || (v27 >> 3) + 1 == v29)
        {
          if (v27 >= 8)
          {
            v33 = 0;
            v34 = *(v26 + 24);
            v35 = 8 * v28;
            v36 = 8 * v28;
            v37 = v34;
            do
            {
              v38 = *v37++;
              if (v38 == 0x8000000000000000)
              {
                ++v33;
              }

              v36 -= 8;
            }

            while (v36);
            mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 1u);
            if (v33 == v39)
            {
              v24 = 1;
              while (*v34 - 1 >= 0)
              {
                ++v34;
                v35 -= 8;
                if (!v35)
                {
                  return v24 & 1;
                }
              }

              v32 = "no basis element may be statically non-positive";
              goto LABEL_48;
            }
          }

          else
          {
            v24 = 1;
            mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 1u);
            if (!v31)
            {
              return v24 & 1;
            }
          }

          v32 = "mismatch between dynamic and static basis (kDynamic marker but no corresponding dynamic basis entry) -- this can only happen due to an incorrect fold/rewrite";
        }

        else
        {
          v32 = "should return an index for each basis element and up to one extra index";
        }

LABEL_48:
        v40[0] = v32;
        v41 = 259;
        mlir::Operation::emitOpError(v42, a1, v40);
        v24 = v43 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
        return v24 & 1;
      }
    }

    else
    {
      v40[0] = "requires attribute 'static_basis'";
      v41 = 259;
      mlir::Operation::emitOpError(v42, a1, v40);
      v23 = v43;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
      if ((v23 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_28:
  v24 = 0;
  return v24 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.for", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9D740;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | v4;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v11 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v11)
    {
      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88, 3);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    goto LABEL_30;
  }

  if (a4 == 4)
  {
    if (*a3 != 1885697139)
    {
LABEL_30:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
LABEL_33:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  v5 = 0;
  if (a4 == 13)
  {
    if (*a3 == 0x756F427265776F6CLL && *(a3 + 5) == 0x70614D646E756F42)
    {
      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    }

    else
    {
      if (*a3 != 0x756F427265707075 || *(a3 + 5) != 0x70614D646E756F42)
      {
        goto LABEL_30;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
    }

    goto LABEL_33;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 18)
  {
    if (v5 == 19)
    {
      v11 = *v4 ^ 0x53646E617265706FLL;
      v12 = v4[1] ^ 0x6953746E656D6765;
      v13 = *(v4 + 11);
      v14 = 1400139365;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v11 = *v4 ^ 0x5F646E617265706FLL;
      v12 = v4[1] ^ 0x5F746E656D676573;
      v13 = *(v4 + 13);
      v14 = 1935635566;
    }

    if (v11 | v12 | v13 ^ (v14 | 0x73657A6900000000))
    {
      v16 = 1;
    }

    else
    {
      v16 = a4 == 0;
    }

    if (!v16 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v17 = *(a4 + 8);
      if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v17[2] == 32 && *(a4 + 16) == 3)
      {
        v18 = *(a4 + 32);
        if (v18 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88), *(a4 + 24), v18 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (v5 == 4)
  {
    if (*v4 == 1885697139)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v15 = a4;
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v15;
    }
  }

  else if (v5 == 13)
  {
    if (*v4 == 0x756F427265776F6CLL && *(v4 + 5) == 0x70614D646E756F42)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v19;
    }

    else
    {
      v7 = *v4;
      v8 = *(v4 + 5);
      if (v7 == 0x756F427265707075 && v8 == 0x70614D646E756F42)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v10;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v23 = 261;
    v21 = "lowerBoundMap";
    v22 = 13;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "step";
    v22 = 4;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = *(**v14 + 32);
    v23 = 261;
    v21 = "upperBoundMap";
    v22 = 13;
    v16 = mlir::StringAttr::get(v15, &v21, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 24, 3);
  v18 = *(**v17 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v20 = mlir::StringAttr::get(v18, &v21, v19);
  mlir::NamedAttrList::push_back(a3, v20, v17);
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v11, "lowerBoundMap", 0xD, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v14, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0)
      {
        return 1;
      }

      v17 = v15[1];
      if (!v17 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v17, "upperBoundMap", 0xD, a4, a5))
      {
        return 1;
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v29, a6, a2, a3);
    if (v29)
    {
      mlir::Diagnostic::operator<<<42ul>(v30, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "lowerBoundMap", 0xDuLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        a5(&v29, a6);
        if (v29)
        {
LABEL_24:
          mlir::Diagnostic::operator<<<59ul>(v30, v14);
LABEL_25:
          if (v29)
          {
            v27 = 0;
            v28 = v13;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
            v20 = v31 + 24 * v32;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v32;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a3 = v13;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "step", 4uLL);
  if (v16)
  {
    v13 = *(v15 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a5(&v29, a6);
        if (v29)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      a3[1] = v13;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "upperBoundMap", 0xDuLL);
  if (v18)
  {
    v13 = *(v17 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        a5(&v29, a6);
        if (v29)
        {
          goto LABEL_24;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
        return 0;
      }

      a3[2] = v13;
    }
  }

  v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v23 & 1) == 0 || (v24 = *(v22 + 8)) == 0)
  {
    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v26 & 1) == 0)
    {
      return 1;
    }

    v24 = *(v25 + 8);
    if (!v24)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 3, 3, v24, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v25 = v27;
  v26 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v24 = 261;
    v22 = "lowerBoundMap";
    v23 = 13;
    v9 = mlir::StringAttr::get(v8, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v24 = 261;
    v22 = "step";
    v23 = 4;
    v12 = mlir::StringAttr::get(v11, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v12, v10);
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = *(**v13 + 32);
    v24 = 261;
    v22 = "upperBoundMap";
    v23 = 13;
    v15 = mlir::StringAttr::get(v14, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v15, v13);
  }

  v16 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 24, 3);
  v17 = *(**v16 + 32);
  v24 = 261;
  v22 = "operandSegmentSizes";
  v23 = 19;
  v19 = mlir::StringAttr::get(v17, &v22, v18);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v19, v16);
  if (v26)
  {
    v20 = mlir::DictionaryAttr::get(v3, v25, v26);
  }

  else
  {
    v20 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v20;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::hashProperties(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v17 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v15 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = *(a2 + 28);
  v12 = __ROR8__(v11 + 12, 12);
  v14 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v11;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v18, 0, v18, v19, &v17, &v16, &v15, &v14);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 4)
    {
      v6 = "size mismatch for operand/result_segment_size";
      v7 = 259;
      (*(*a1 + 16))(v9, a1, &v6);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
      return 0;
    }

    v4 = *(v8 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3uLL) & 1) != 0);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 16))(a3, v7);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 24, 3);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 16))(a3, *(v6 + 8));
  (*(*a3 + 16))(a3, *(v6 + 16));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 24), 3);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::replaceWithAdditionalYields;
  v3 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v2, &v3);
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopInductionVars(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v3 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = **(v4 + 48);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v6, &v5, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopLowerBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64) + 8);
  if (*(v3 + 8) == 1 && (v4 = *(v3 + 24), *(v4 + 8) == 5))
  {
    v5[0] = *(***(a1 + 24) + 32);
    memset(&v5[1], 0, 24);
    __src = mlir::Builder::getI64IntegerAttr(v5, *(v4 + 16)) & 0xFFFFFFFFFFFFFFFBLL;
    v7 = v9;
    v8 = 0x600000000;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v7, &__src, &v7);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v8)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v7);
    }

    *(a2 + 64) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopSteps(mlir::affine::AffineForOp *this@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4[0] = *(***(this + 3) + 32);
  memset(&v4[1], 0, 24);
  StepAsInt = mlir::affine::AffineForOp::getStepAsInt(this);
  __src = mlir::Builder::getI64IntegerAttr(v4, StepAsInt) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v6, &__src, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopUpperBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 80) + 8);
  if (*(v3 + 8) == 1 && (v4 = *(v3 + 24), *(v4 + 8) == 5))
  {
    v5[0] = *(***(a1 + 24) + 32);
    memset(&v5[1], 0, 24);
    __src = mlir::Builder::getI64IntegerAttr(v5, *(v4 + 16)) & 0xFFFFFFFFFFFFFFFBLL;
    v7 = v9;
    v8 = 0x600000000;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v7, &__src, &v7);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v8)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v7);
    }

    *(a2 + 64) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getInitsMutable(uint64_t a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  v3 += 22;
  v6 = v3[2];
  v7 = v5 + v4;
  v8 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v3, 3);
  __src = 2;
  v14 = v8;
  v15 = v9;
  v16 = a2;
  v17 = v7;
  v18 = v6;
  v19[0] = v20;
  v19[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v19, &__src, &v16);
  if ((*(v16 + 46) & 0x80) != 0)
  {
    v10 = *(v16 + 72);
  }

  else
  {
    v10 = 0;
  }

  v11 = v17;
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  return v10 + 32 * v11;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48) + 8;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getYieldedValuesMutable(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 68);
    v6 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = 1;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::replaceWithAdditionalYields(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63[8] = *MEMORY[0x277D85DE8];
  v10 = a2 + 24;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 32) = a1;
  v11 = a1 + 64;
  v12 = *(a1 + 44);
  v13 = (a1 + 64 + 16 * ((v12 >> 23) & 1));
  v14 = (v13[7] + v13[6]);
  v15 = v13[8];
  if ((v12 & 0x800000) != 0)
  {
    v16 = *(a1 + 72);
  }

  else
  {
    v16 = 0;
  }

  v46 = &v48;
  v47 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v46, v16 + 32 * v14, 0, v16 + 32 * v14, (v15 + v14) - v14);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v46, a3, 0, a3, a4);
  v17 = *(a1 + 24);
  v18 = *(a1 + 44);
  v19 = v11 + 16 * ((v18 >> 23) & 1);
  if ((v18 & 0x800000) != 0)
  {
    v20 = *(a1 + 72);
    v21 = v20 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v20 = 0;
    v21 = 2;
  }

  v42 = v21;
  v23 = *(v19 + 24);
  v22 = *(v19 + 28);
  v40 = *(*v19 + 8);
  v41 = *(*(v19 + 16) + 8);
  StepAsInt = mlir::affine::AffineForOp::getStepAsInt(a1);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, *(**v17 + 32));
  if (v25)
  {
    v54 = v17;
    v55 = v24;
    v56[0] = &v57;
    v26 = (v22 + v23) - v23;
    v56[1] = 0x400000000;
    v58[0] = &v59;
    v58[1] = 0x400000000;
    v60[0] = v61;
    v60[1] = 0x400000000;
    v61[8] = 4;
    v61[9] = v62;
    v61[10] = 0x100000000;
    v62[1] = v63;
    v62[2] = 0x100000000;
    v63[2] = 0;
    v63[1] = 0;
    v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v63[4] = 0;
    v63[6] = 0;
    v27 = (v20 + 32 * v23) & 0xFFFFFFFFFFFFFFF9;
    v28 = v47;
    v29 = v46 & 0xFFFFFFFFFFFFFFF9;
    v49 = __PAIR64__(v26, v23);
    v38 = v26;
    LODWORD(v50) = v47;
    v30 = mlir::detail::DenseArrayAttrImpl<int>::get(*(v10 - 16), &v49, 3);
    mlir::OperationState::addAttribute(&v54, "operandSegmentSizes", 0x13, v30);
    v49 = v29;
    v50 = 0;
    if (v28)
    {
      for (i = 0; i != v28; v50 = i)
      {
        __src = (*(mlir::ValueRange::dereference_iterator(&v49, i) + 8) & 0xFFFFFFFFFFFFFFF8);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v58, &__src, v44);
        ++i;
      }
    }

    v32 = *(*(v55 + 96) + 8);
    IntegerAttr = mlir::Builder::getIntegerAttr(v10 - 16, *(**(v10 - 16) + 472), StepAsInt);
    mlir::NamedAttrList::push_back(v60, v32, IntegerAttr);
    v34 = **(v55 + 96);
    v35 = mlir::AffineMapAttr::get(v40);
    mlir::NamedAttrList::push_back(v60, v34, v35);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v56, v42, 0, v42, v23);
    v36 = *(*(v55 + 96) + 16);
    v37 = mlir::AffineMapAttr::get(v41);
    mlir::NamedAttrList::push_back(v60, v36, v37);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v56, v27 | 2, 0, v27 | 2, v38);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v56, v29, 0, v29, v28);
    mlir::OperationState::addRegion(&v54);
  }

  v53 = 1283;
  v51 = "affine.for";
  v52 = 10;
  v45 = 259;
  llvm::operator+(&v49, &__src, &v54);
  llvm::report_fatal_error(&v54, 1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::areTypesCompatible;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
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

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::affine::AffineForOp::getSuccessorRegions(&v6, 0, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::affine::AffineForOp::getSuccessorRegions(&v5, a3, a4).n128_u64[0];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = (*(a2 + 44) >> 23) & 1;
  v44 = a2;
  v41 = &v44;
  v9 = *(*(a2 + 64 + 16 * v8) + 8);
  if (*(v9 + 8) == 1 && *(*(v9 + 24) + 8) == 5)
  {
    v10 = 0;
    v11 = a2;
  }

  else
  {
    v10 = foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(&v41, 1);
    v11 = v44;
    v8 = (*(v44 + 11) >> 23) & 1;
  }

  v12 = *(v11[2 * v8 + 10] + 8);
  if (*(v12 + 8) != 1 || *(*(v12 + 24) + 8) != 5)
  {
    v10 |= foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(&v41, 0);
  }

  v40 = a2;
  v13 = *(a2 + 44);
  v14 = *(v7 + 16 * ((v13 >> 23) & 1) + 24);
  if ((v13 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v44, v15, 0, v15, v14);
  v16 = *(a2 + 44);
  v17 = v7 + 16 * ((v16 >> 23) & 1);
  v18 = *(v17 + 24);
  v19 = *(v17 + 28);
  if ((v16 & 0x800000) != 0)
  {
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
  }

  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v41, v20 + 32 * v18, 0, v20 + 32 * v18, (v19 + v18) - v18);
  v21 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  v22 = *(*v21 + 8);
  v23 = *(v21[2] + 8);
  v38 = v23;
  v39 = v22;
  composeAffineMapAndOperands(&v39, &v44);
  mlir::affine::canonicalizeMapAndOperands(&v39, &v44);
  simplifyMinOrMaxExprWithOperands(&v39, v44, v45, 1);
  simplifyMinOrMaxExprWithOperands(&v38, v41, v42, 0);
  v39 = mlir::removeDuplicateExprs(v39);
  composeAffineMapAndOperands(&v38, &v41);
  mlir::affine::canonicalizeMapAndOperands(&v38, &v41);
  v24 = mlir::removeDuplicateExprs(v38);
  v38 = v24;
  v25 = v39 == v22 && v24 == v23;
  v26 = !v25;
  if (!v25)
  {
    if (v39 == v22)
    {
      v27 = v24;
    }

    else
    {
      mlir::affine::AffineForOp::setLowerBound(&v40, v44 & 0xFFFFFFFFFFFFFFF9, v45, v39);
      v27 = v38;
    }

    if (v27 != v23)
    {
      mlir::affine::AffineForOp::setUpperBound(&v40, v41 & 0xFFFFFFFFFFFFFFF9, v42, v27);
    }
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  v28 = v10 | v26;
  if ((v30 & 1) != 0 && !TrivialConstantTripCount && *(a2 + 36))
  {
    v31 = *(a2 + 44);
    v32 = (v7 + 16 * ((v31 >> 23) & 1));
    v33 = (v32[7] + v32[6]);
    v34 = v32[8];
    if ((v31 & 0x800000) != 0)
    {
      v35 = *(a2 + 72);
      v36 = v35 + 32 * v33;
    }

    else
    {
      v35 = 0;
      v36 = 32 * v33;
    }

    *(a5 + 8) = 0;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a5, v36, 0, v35 + 32 * v33, (v33 + v34) - v33);
    return 1;
  }

  return v28;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C38))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>();
    qword_27FC23C30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23C38);
  }

  return qword_27FC23C30;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C50))
  {
    qword_27FC23C40 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>();
    *algn_27FC23C48 = v1;
    __cxa_guard_release(&qword_27FC23C50);
  }

  return qword_27FC23C40;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<Empty>]";
  v6 = 148;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = *MEMORY[0x277D85DE8];
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

  v9 = a2 + 64;
  v10 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  (*(*a3 + 152))(a3, **(v11 + 48), 0, 0, 1);
  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 2)
  {
    *(v13 + 2) = 32;
    *v13 = 15648;
    *(v12 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, " = ", 3uLL);
  }

  v14 = *(a2 + 44);
  if ((v14 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  printBound(*(v9 + 16 * ((v14 >> 23) & 1)), v15, *(v9 + 16 * ((v14 >> 23) & 1) + 24), "max", a3);
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 3uLL)
  {
    *v17 = 544175136;
    *(v16 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v16, " to ", 4uLL);
  }

  v18 = *(a2 + 44);
  v19 = v9 + 16 * ((v18 >> 23) & 1);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 28);
  if ((v18 & 0x800000) != 0)
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = 0;
  }

  printBound(v20, v23 + 32 * v21, (v22 + v21) - v21, "min", a3);
  if (mlir::affine::AffineForOp::getStepAsInt(a2) != 1)
  {
    v24 = (*(*a3 + 16))(a3);
    v25 = *(v24 + 4);
    if ((*(v24 + 3) - v25) > 5)
    {
      *(v25 + 4) = 8304;
      *v25 = 1702130464;
      *(v24 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v24, " step ", 6uLL);
    }

    StepAsInt = mlir::affine::AffineForOp::getStepAsInt(a2);
    v27 = (*(*a3 + 16))(a3);
    llvm::write_integer(v27, StepAsInt, 0, 0);
  }

  NumIterOperands = mlir::affine::AffineForOp::getNumIterOperands(a2);
  if (!NumIterOperands)
  {
    goto LABEL_66;
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  v79 = NumIterOperands;
  if ((*(v29 + 3) - v30) > 0xA)
  {
    *(v30 + 7) = 678651762;
    *v30 = *" iter_args(";
    *(v29 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v29, " iter_args(", 0xBuLL);
  }

  v31 = *(a2 + 44);
  v32 = (v9 + 16 * ((v31 >> 23) & 1));
  v33 = *(((v32 + ((v31 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v33)
  {
    v34 = v33 - 8;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v34 + 48);
  v36 = *(v34 + 56) - v35;
  v37 = v36 >> 3;
  v38 = (v36 >> 3) - 1;
  if ((v31 & 0x800000) != 0)
  {
    v39 = *(a2 + 72);
    if (v36 >> 3 != 1)
    {
LABEL_31:
      v40 = v32[8];
      if (v40)
      {
        v41 = (v32[7] + v32[6]);
        v42 = v39 + 32 * v41;
        v43 = *(v42 + 24);
        (*(*a3 + 160))(a3, *(v35 + 8));
        v44 = (*(*a3 + 16))(a3);
        v45 = *(v44 + 4);
        if ((*(v44 + 3) - v45) > 2)
        {
          *(v45 + 2) = 32;
          *v45 = 15648;
          *(v44 + 4) += 3;
        }

        else
        {
          llvm::raw_ostream::write(v44, " = ", 3uLL);
        }

        (*(*a3 + 160))(a3, v43);
        if (v38 != 1)
        {
          v46 = (v40 + v41);
          v47 = (v35 + 16);
          v48 = 8 * v37 - 16;
          v49 = (v42 + 56);
          v50 = ~v41 + v46;
          do
          {
            if (!v50)
            {
              break;
            }

            v51 = (*(*a3 + 16))(a3);
            v52 = *(v51 + 4);
            if (*(v51 + 3) - v52 > 1uLL)
            {
              *v52 = 8236;
              *(v51 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v51, ", ", 2uLL);
            }

            v53 = *v49;
            (*(*a3 + 160))(a3, *v47);
            v54 = (*(*a3 + 16))(a3);
            v55 = *(v54 + 4);
            if ((*(v54 + 3) - v55) > 2)
            {
              *(v55 + 2) = 32;
              *v55 = 15648;
              *(v54 + 4) += 3;
            }

            else
            {
              llvm::raw_ostream::write(v54, " = ", 3uLL);
            }

            (*(*a3 + 160))(a3, v53);
            ++v47;
            v49 += 4;
            --v50;
            v48 -= 8;
          }

          while (v48);
        }
      }
    }
  }

  else
  {
    v39 = 0;
    if (v36 >> 3 != 1)
    {
      goto LABEL_31;
    }
  }

  v56 = (*(*a3 + 16))(a3);
  v57 = *(v56 + 4);
  if ((*(v56 + 3) - v57) > 5)
  {
    *(v57 + 4) = 10272;
    *v57 = 1043144745;
    *(v56 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v56, ") -> (", 6uLL);
  }

  v58 = *(a2 + 36);
  if (v58)
  {
    v59 = a2 - 16;
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v58 != 1)
    {
      v60 = v59 - 16;
      v61 = 1;
      while (1)
      {
        v62 = (*(*a3 + 16))(a3);
        v63 = *(v62 + 4);
        if (*(v62 + 3) - v63 > 1uLL)
        {
          *v63 = 8236;
          *(v62 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v62, ", ", 2uLL);
        }

        v64 = *(a2 - 8) & 7;
        v65 = v59;
        v66 = v61;
        if (v64 == 6)
        {
          goto LABEL_60;
        }

        v67 = (5 - v64);
        v68 = v60;
        v66 = v61 - v67;
        if (v61 > v67)
        {
          break;
        }

LABEL_61:
        (*(*a3 + 32))(a3, *(v68 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v61;
        v60 -= 16;
        if (v58 == v61)
        {
          goto LABEL_62;
        }
      }

      v65 = v59 - 16 * v67;
LABEL_60:
      v68 = v65 - 24 * v66;
      goto LABEL_61;
    }
  }

LABEL_62:
  v69 = (*(*a3 + 16))(a3);
  v70 = *(v69 + 4);
  if (*(v69 + 3) == v70)
  {
    llvm::raw_ostream::write(v69, ")", 1uLL);
  }

  else
  {
    *v70 = 41;
    ++*(v69 + 4);
  }

  v9 = a2 + 64;
  NumIterOperands = v79;
LABEL_66:
  v71 = (*(*a3 + 16))(a3);
  v72 = *(v71 + 4);
  if (v72 >= *(v71 + 3))
  {
    llvm::raw_ostream::write(v71, 32);
  }

  else
  {
    *(v71 + 4) = v72 + 1;
    *v72 = 32;
  }

  (*(*a3 + 224))(a3, ((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, NumIterOperands != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v74 = *(AttrDictionary + 8);
  v75 = *(AttrDictionary + 16);
  v76 = *(*(a2 + 48) + 96);
  v77 = *(v76[2] + 16);
  v80[0] = *(*v76 + 16);
  v80[1] = v77;
  v80[2] = *(v76[1] + 16);
  v81 = "operandSegmentSizes";
  v82 = 19;
  return (*(*a3 + 192))(a3, v74, v75, v80, 4);
}

uint64_t mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_48;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4))
  {
    goto LABEL_48;
  }

  v5 = *(a1 + 44);
  if ((v5 & 0x7FFFFF) == 0)
  {
    goto LABEL_22;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_12;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v34 = 257;
      mlir::Operation::emitOpError(&v35, a1, v33);
      if (v35)
      {
        mlir::Diagnostic::operator<<<26ul>(&v36, "expects a non-empty block");
      }

      v11 = v37;
      goto LABEL_20;
    }

LABEL_12:
    ++v6;
    v7 += 3;
    if ((v5 & 0x7FFFFF) == v6)
    {
      goto LABEL_22;
    }
  }

  v32 = v6;
  v33[0] = "expects region #";
  v34 = 259;
  mlir::Operation::emitOpError(&v35, a1, v33);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v35, &v32);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_20:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  if (v11)
  {
LABEL_48:
    v26 = 0;
    return v26 & 1;
  }

  LODWORD(v5) = *(a1 + 44);
LABEL_22:
  v12 = a1 + 64;
  v13 = (a1 + 64 + 16 * ((v5 >> 23) & 1));
  v14 = *v13;
  if (!*v13)
  {
    v25 = "requires attribute 'lowerBoundMap'";
LABEL_37:
    v33[0] = v25;
    v34 = 259;
    mlir::Operation::emitOpError(&v35, a1, v33);
    v26 = v37 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    return v26 & 1;
  }

  v15 = v13[1];
  if (!v15)
  {
    v25 = "requires attribute 'step'";
    goto LABEL_37;
  }

  v16 = v13[2];
  if (!v16)
  {
    v25 = "requires attribute 'upperBoundMap'";
    goto LABEL_37;
  }

  v35 = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v14, "lowerBoundMap", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v35))
  {
    goto LABEL_48;
  }

  v35 = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v16, "upperBoundMap", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v35))
  {
    goto LABEL_48;
  }

  v35 = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v35))
  {
    goto LABEL_48;
  }

  v17 = *(a1 + 44);
  v18 = (v17 >> 23) & 1;
  v19 = *(v12 + 16 * v18 + 24);
  if ((v17 & 0x800000) != 0)
  {
    v20 = *(a1 + 72);
    if (v19)
    {
LABEL_30:
      v21 = 0;
      v22 = v20 + 24;
      while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v21))
      {
        ++v21;
        v22 += 32;
        if (v19 == v21)
        {
          v17 = *(a1 + 44);
          v18 = (v17 >> 23) & 1;
          v23 = v17 & 0x800000;
          v24 = *(v12 + 16 * v18 + 24);
          goto LABEL_41;
        }
      }

      goto LABEL_48;
    }
  }

  else
  {
    v20 = 0;
    if (v19)
    {
      goto LABEL_30;
    }
  }

  v24 = 0;
  v23 = v17 & 0x800000;
LABEL_41:
  v27 = *(v12 + 16 * v18 + 28);
  if (v23)
  {
    v28 = *(a1 + 72);
    if (v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v28 = 0;
    if (v27)
    {
LABEL_43:
      v29 = v27 + v24 - v24;
      v30 = v28 + 32 * v24 + 24;
      while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v30 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v19))
      {
        LODWORD(v19) = v19 + 1;
        v30 += 32;
        if (!--v29)
        {
          LODWORD(v17) = *(a1 + 44);
          goto LABEL_47;
        }
      }

      goto LABEL_48;
    }
  }

LABEL_47:
  v26 = mlir::affine::__mlir_ods_local_region_constraint_AffineOps1(a1, ((v12 + 16 * ((v17 >> 23) & 1) + ((v17 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "region", 6);
  return v26 & 1;
}

uint64_t mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
        {
          v34 = 1283;
          v33[0] = "expects regions to end with '";
          v33[2] = "affine.yield";
          v33[3] = 12;
          v35[0] = v33;
          v35[2] = "', found '";
          v36 = 770;
          v20 = *(v8 + 8);
          v37 = v35;
          v38 = *(v20 + 16);
          v39 = 1282;
          v40[0] = &v37;
          v40[2] = "'";
          v41 = 770;
          mlir::Operation::emitOpError(&v44, this, v40);
          mlir::Diagnostic::attachNote(v45, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if ((mlir::detail::verifyLoopLikeOpInterface(this, a2) & 1) == 0 || (mlir::detail::verifyTypesAlongControlFlowEdges(this, v9) & 1) == 0)
  {
    goto LABEL_19;
  }

  v40[0] = this;
  v10 = this + 64;
  v11 = *(this + 11);
  v12 = (v11 >> 23) & 1;
  v13 = (this + 16 * v12 + 64);
  v14 = *(((v13 + ((v11 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
  if (v14)
  {
    v15 = v14 - 8;
  }

  else
  {
    v15 = 0;
  }

  v17 = v15 + 48;
  v16 = *(v15 + 48);
  if (((*(v17 + 8) - v16) & 0x7FFFFFFF8) != 0 && *(*(*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v22 = *(*v13 + 8);
    if (v22[1] + *v22)
    {
      if ((v11 & 0x800000) != 0)
      {
        v23 = *(this + 9);
      }

      else
      {
        v23 = 0;
      }

      if ((verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(v40, v23, v13[6], *v22) & 1) == 0)
      {
        goto LABEL_19;
      }

      v11 = *(this + 11);
      v12 = (v11 >> 23) & 1;
    }

    v24 = &v10[16 * v12];
    v25 = *(*(v24 + 2) + 8);
    v26 = *v25;
    if (!(v25[1] + *v25) || ((v27 = *(v24 + 6), v28 = *(v24 + 7), (v11 & 0x800000) == 0) ? (v29 = 0) : (v29 = *(this + 9)), (verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(v40, (v29 + 32 * v27), (v28 + v27) - v27, v26) & 1) != 0))
    {
      v30 = *(this + 9);
      if (v30)
      {
        if (mlir::affine::AffineForOp::getNumIterOperands(this) != v30)
        {
          v18 = "mismatch between the number of loop-carried values and results";
          goto LABEL_17;
        }

        v31 = *((&v10[16 * ((*(this + 11) >> 23) & 1) + 7 + ((*(this + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
        if (v31)
        {
          v32 = v31 - 8;
        }

        else
        {
          v32 = 0;
        }

        if (((*(v32 + 56) - *(v32 + 48)) >> 3) - 1 != v30)
        {
          v18 = "mismatch between the number of basic block args and results";
          goto LABEL_17;
        }
      }

      v19 = 1;
      return v19 & 1;
    }

LABEL_19:
    v19 = 0;
    return v19 & 1;
  }

  v18 = "expected body to have a single index argument for the induction variable";
LABEL_17:
  v42 = v18;
  v43 = 259;
  mlir::Operation::emitOpError(&v44, this, &v42);
  v19 = v46 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
  return v19 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineIfOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::NoRegionArguments<mlir::affine::AffineIfOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineIfOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineIfOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineIfOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineIfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineIfOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineIfOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.if", 9, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9D808;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6F697469646E6F63 ? (v4 = *(a3 + 8) == 110) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == 0x6F697469646E6F63 && v6 == 110)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "condition";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(v9, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "condition", 9uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "condition";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineIfOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::NoRegionArguments<mlir::affine::AffineIfOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineIfOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineIfOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineIfOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineIfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineIfOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineIfOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::readProperties(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v4 = 0;
  }

  *v3 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC24050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24050))
  {
    qword_27FC24040 = llvm::detail::getTypeNameImpl<mlir::IntegerSetAttr>();
    *algn_27FC24048 = v11;
    __cxa_guard_release(&qword_27FC24050);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC24040;
    v15 = *algn_27FC24048;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::areTypesCompatible;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::affine::AffineIfOp::getSuccessorRegions(&v6, 0, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::affine::AffineIfOp::getSuccessorRegions(&v5, a3, a4).n128_u64[0];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v94[8] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "condition", 9uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v4 = Attr;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 8);
  v70 = v5;
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 68);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v77 = v79;
  v78 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v77, v6, 0, v6, v7);
  Impl = mlir::AffineMap::getImpl(*v5, v5[1], *(v5 + 1), *(v5 + 2), ***(v5 + 1));
  v8 = v78;
  if (v78)
  {
    v9 = v77;
    v10 = 8 * v78;
    while (1)
    {
      v11 = *v9;
      if ((~*(*v9 + 8) & 7) == 0)
      {
        v11 = 0;
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = *(v11 + 8) & 7;
      if (v12 == 6)
      {
        v13 = v11 + 24 * *(v11 + 16) + 120;
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = v11 + 16 * v12 + 16;
      }

      if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
      {
        break;
      }

LABEL_16:
      v9 += 8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    composeAffineMapAndOperands(&Impl, &v77);
    v5 = mlir::IntegerSet::get(*Impl, *(Impl + 1), Impl + 3, *(Impl + 2), *(v5 + 3), *(v5 + 4));
    v70 = v5;
    v8 = v78;
    if (v78)
    {
LABEL_19:
      v14 = ***(v5 + 1);
      Impl = v91;
      v90 = 0x800000000;
      v68 = v2;
      if (v8 <= 8)
      {
        __src = v85;
        v84 = 0x800000000;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&Impl, v91, v8, 8);
        __src = v85;
        v84 = 0x800000000;
        if (v78 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v85, v78, 8);
        }
      }

      v15 = *v5;
      v16 = v5[1];
      v92 = v94;
      v93 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v92, v15);
      v17 = v5[1];
      v18 = v17 + *v5;
      if (v17 + *v5)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (v19 >= *v5)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&Impl, *(v77 + v19));
          }

          else if (mlir::affine::isValidSymbol(*(v77 + v19)))
          {
            AffineDimOrSymbol = getAffineDimOrSymbol(7u, v21 + v16, v14);
            v92[v19] = AffineDimOrSymbol;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, *(v77 + v19));
            ++v21;
          }

          else
          {
            v23 = getAffineDimOrSymbol(6u, v20, v14);
            v92[v19] = v23;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&Impl, *(v77 + v19));
            v20 = (v20 + 1);
          }

          ++v19;
        }

        while (v18 != v19);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&Impl, __src, __src + 8 * v84);
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v77, &Impl);
      v24 = mlir::IntegerSet::replaceDimsAndSymbols(&v70, v92, v93, 0, 0, v20, v21 + v16);
      v70 = v24;
      if (v92 != v94)
      {
        free(v92);
      }

      if (__src != v85)
      {
        free(__src);
      }

      if (Impl != v91)
      {
        free(Impl);
      }

      llvm::SmallBitVector::SmallBitVector(&v76, *v24, 0);
      llvm::SmallBitVector::SmallBitVector(&v75, v24[1], 0);
      Impl = &v76;
      v90 = &v75;
      v25 = *(v24 + 2);
      if (v25)
      {
        v26 = *(v24 + 1);
        v27 = 8 * v25;
        do
        {
          v28 = *v26++;
          mlir::AffineExpr::walk<void>(v28, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &Impl);
          v27 -= 8;
        }

        while (v27);
      }

      v69 = ***(v24 + 1);
      v92 = v94;
      v93 = 0x800000000;
      if (v78 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v78, 8);
      }

      Impl = 1;
      for (i = 8; i != 136; i += 16)
      {
        *(&Impl + i) = -4096;
      }

      v30 = *v24;
      v86 = v88;
      v87 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v86, v30);
      v31 = *v24;
      if (v31)
      {
        v32 = 0;
        v33 = 0;
        while (1)
        {
          if (v76)
          {
            if (((1 << v32) & (v76 >> 1) & ~(-1 << (v76 >> 58))) != 0)
            {
LABEL_52:
              v34 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&Impl, *(v77 + v32));
              v35 = (v90 + 16 * v91[0]);
              if (Impl)
              {
                v35 = &v92;
              }

              if (v35 == v34)
              {
                v36 = getAffineDimOrSymbol(6u, v33, v69);
                *(v86 + v32) = v36;
                llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v92, *(v77 + v32));
                v37 = *(v86 + v32);
                v80 = *(v77 + v32);
                v81 = v37;
                llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &Impl, &v80, &v81);
                v33 = (v33 + 1);
              }

              else
              {
                *(v86 + v32) = *(v34 + 8);
              }
            }
          }

          else if ((*(*v76 + 8 * (v32 >> 6)) & (1 << v32)) != 0)
          {
            goto LABEL_52;
          }

          if (v31 == ++v32)
          {
            goto LABEL_60;
          }
        }
      }

      v33 = 0;
LABEL_60:
      __src = 1;
      for (j = 8; j != 136; j += 16)
      {
        *(&__src + j) = -4096;
      }

      v39 = v24[1];
      v80 = v82;
      v81 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v80, v39);
      v40 = v24[1];
      if (v40)
      {
        v41 = 0;
        v42 = 0;
        while (1)
        {
          if (v75)
          {
            if (((1 << v41) & (v75 >> 1) & ~(-1 << (v75 >> 58))) != 0)
            {
LABEL_68:
              v74 = 0;
              v43 = v77;
              v44 = *(v77 + v41 + *v24);
              v71[0] = &v74;
              if ((~*(v44 + 8) & 7) == 0)
              {
                v44 = 0;
              }

              if (!v44)
              {
                goto LABEL_81;
              }

              v45 = *(v44 + 8) & 7;
              if (v45 == 6)
              {
                v46 = v44 + 24 * *(v44 + 16);
                v47 = v46 + 120;
                if (v46 == -120)
                {
LABEL_81:
                  v51 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&__src, v43[v41 + *v24]);
                  v52 = (v84 + 16 * v85[0]);
                  if (__src)
                  {
                    v52 = &v86;
                  }

                  if (v52 == v51)
                  {
                    v53 = getAffineDimOrSymbol(7u, v42, v69);
                    *(v80 + v41) = v53;
                    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v92, *(v77 + v41 + *v24));
                    v54 = *(v80 + v41);
                    v72 = *(v77 + v41 + *v24);
                    v73 = v54;
                    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v71, &__src, &v72, &v73);
                    v42 = (v42 + 1);
                  }

                  else
                  {
                    *(v80 + v41) = *(v51 + 8);
                  }

                  goto LABEL_88;
                }
              }

              else
              {
                v47 = v44 + 16 * v45 + 16;
              }

              if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(v71, v47))
              {
                v49 = *(v74 + 24);
                if (v49 > 0x40)
                {
                  operator new[]();
                }

                if (v49)
                {
                  v50 = (*(v74 + 16) << -v49) >> -v49;
                }

                else
                {
                  v50 = 0;
                }

                AffineConstantExpr = mlir::getAffineConstantExpr(v50, v69, v48);
                *(v80 + v41) = AffineConstantExpr;
                goto LABEL_88;
              }

              v43 = v77;
              goto LABEL_81;
            }
          }

          else if ((*(*v75 + 8 * (v41 >> 6)) & (1 << v41)) != 0)
          {
            goto LABEL_68;
          }

LABEL_88:
          if (v40 == ++v41)
          {
            goto LABEL_91;
          }
        }
      }

      v42 = 0;
LABEL_91:
      v5 = mlir::IntegerSet::replaceDimsAndSymbols(&v70, v86, v87, v80, v81, v33, v42);
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v77, &v92);
      if (v80 != v82)
      {
        free(v80);
      }

      v2 = v68;
      if ((__src & 1) == 0)
      {
        MEMORY[0x25F891030](v84, 8);
      }

      if (v86 != v88)
      {
        free(v86);
      }

      if ((Impl & 1) == 0)
      {
        MEMORY[0x25F891030](v90, 8);
      }

      if (v92 != v94)
      {
        free(v92);
      }

      llvm::SmallBitVector::~SmallBitVector(&v75);
      llvm::SmallBitVector::~SmallBitVector(&v76);
    }
  }

  v56 = mlir::Operation::getAttr(v2, "condition", 9uLL);
  if (*(*v56 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (v5 == *(v57 + 8))
  {
    if ((*(v2 + 46) & 0x80) != 0)
    {
      v60 = *(v2 + 72);
      v61 = *(v2 + 68);
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v58 = v77;
    v59 = v78;
    if (v61 == v78)
    {
      if (v78)
      {
        v62 = 0;
        v63 = ((v61 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v64 = (v60 + 24);
        while (8 * v61 != v62 && *(v77 + v62) == *v64)
        {
          v62 += 8;
          v64 += 4;
          if (8 * v78 == v62)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
        v63 = 0;
LABEL_117:
        if (v63 == v61)
        {
          v65 = 0;
          goto LABEL_122;
        }
      }
    }
  }

  else
  {
    v58 = v77;
    v59 = v78;
  }

  v66 = mlir::IntegerSetAttr::get(v5);
  mlir::Operation::setAttr(v2, "condition", 9, v66);
  if ((*(v2 + 46) & 0x80) != 0)
  {
    mlir::detail::OperandStorage::setOperands((v2 + 64), v2, v58 & 0xFFFFFFFFFFFFFFF9, v59);
  }

  v65 = 1;
LABEL_122:
  if (v77 != v79)
  {
    free(v77);
  }

  return v65;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[12] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  Attr = mlir::Operation::getAttr(a2, "condition", 9uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v8 = Attr;
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

  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, " ", 1uLL);
  }

  else
  {
    *v10 = 32;
    ++*(v9 + 4);
  }

  (*(*a3 + 40))(a3, v8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 68);
    v13 = v11;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  printDimAndSymbolList(v11, 0, v13, v12, **(v8 + 8), a3);
  v14 = *(a2 + 36);
  v15 = (a2 - 16);
  if (!v14)
  {
    v15 = 0;
  }

  v27 = v15;
  v28 = 0;
  v29 = v15;
  v30 = v14;
  if (v14)
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a3, &v27);
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

  (*(*a3 + 224))(a3, ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, *(a2 + 36) != 0, 0);
  v18 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v20 = *(v18 + 24);
  v19 = v18 + 24;
  if (v20 != v19)
  {
    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if ((*(v21 + 3) - v22) > 5)
    {
      *(v22 + 4) = 8293;
      *v22 = 1936483616;
      *(v21 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v21, " else ", 6uLL);
    }

    (*(*a3 + 224))(a3, v19, 0, *(a2 + 36) != 0, 0);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v24 = *(AttrDictionary + 8);
  v25 = *(AttrDictionary + 16);
  v27 = "condition";
  v28 = 9;
  return (*(*a3 + 192))(a3, v24, v25, &v27, 1);
}

uint64_t mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyNRegions(a1, 2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2))
  {
    goto LABEL_24;
  }

  v4 = *(a1 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) == 0)
  {
    goto LABEL_18;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_9;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v30 = 257;
      mlir::Operation::emitOpError(&v31, a1, v29);
      if (v31)
      {
        mlir::Diagnostic::operator<<<26ul>(&v32, "expects a non-empty block");
      }

      v11 = v33;
      goto LABEL_17;
    }

LABEL_9:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_18;
    }
  }

  v28 = v6;
  v29[0] = "expects region #";
  v30 = 259;
  mlir::Operation::emitOpError(&v31, a1, v29);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_17:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  if (v11)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((mlir::OpTrait::impl::verifyNoRegionArguments(a1, v3) & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v12)
  {
    v31 = a1;
    if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(v12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v31) || !mlir::affine::__mlir_ods_local_region_constraint_AffineOps1(a1, ((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "thenRegion", 10))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29[0] = "requires attribute 'condition'";
    v30 = 259;
    mlir::Operation::emitOpError(&v31, a1, v29);
    v13 = v33;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  Attr = mlir::Operation::getAttr(a1, "condition", 9uLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v18 = "requires an integer set attribute named 'condition'";
LABEL_29:
    v29[0] = v18;
    v30 = 259;
    mlir::Operation::emitOpError(&v31, a1, v29);
    v14 = v33 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    return v14 & 1;
  }

  v19 = Attr[1];
  if ((*(a1 + 46) & 0x80) == 0)
  {
    if (!(v19[1] + *v19))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  v20 = *(a1 + 68);
  v21 = *v19;
  if (v20 != v19[1] + v21)
  {
LABEL_44:
    v18 = "operand count and condition integer set dimension and symbol count must match";
    goto LABEL_29;
  }

  if (!v20)
  {
    goto LABEL_42;
  }

  v22 = 0;
  v23 = (*(a1 + 72) + 24);
  while (2)
  {
    v24 = *v23;
    AffineScope = mlir::affine::getAffineScope(a1, v17);
    if (v22 < v21)
    {
      if ((mlir::affine::isValidDim(v24, AffineScope) & 1) == 0)
      {
        v26 = "operand cannot be used as a dimension id";
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (mlir::affine::isValidSymbol(v24, AffineScope))
    {
LABEL_38:
      ++v22;
      v23 += 4;
      if (v20 == v22)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  v26 = "operand cannot be used as a symbol";
LABEL_41:
  v29[0] = v26;
  v30 = 259;
  mlir::Operation::emitOpError(&v31, a1, v29);
  v27 = v33;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  if ((v27 & 1) == 0)
  {
LABEL_42:
    v14 = 1;
    return v14 & 1;
  }

LABEL_24:
  v14 = 0;
  return v14 & 1;
}

uint64_t mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 11);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = (((a1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    do
    {
      if (v4 != *v4)
      {
        v5 = v4[1];
        if (v5)
        {
          v6 = v5 - 8;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(*(v6 + 32) + 48);
        if (*(v7 + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
        {
          v11 = 1283;
          v10[0] = "expects regions to end with '";
          v10[2] = "affine.yield";
          v10[3] = 12;
          v12[0] = v10;
          v12[2] = "', found '";
          v13 = 770;
          v8 = *(v7 + 8);
          v14 = v12;
          v15 = *(v8 + 16);
          v16 = 1282;
          v17[0] = &v14;
          v17[2] = "'";
          v18 = 770;
          mlir::Operation::emitOpError(&v19, a1, v17);
          mlir::Diagnostic::attachNote(v20, 0, 0);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return mlir::detail::verifyTypesAlongControlFlowEdges(a1, a2) & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineLinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.linearize_index", 0x16, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9D8D0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 21)
  {
    v8 = *(a3 + 13);
    v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v10 = 1935635566;
LABEL_18:
    v11 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v11)
    {
      v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 76, 2);
      v7 = v6 & 0xFFFFFFFFFFFFFF00;
      return v7 | v6;
    }

    goto LABEL_22;
  }

  if (a4 == 19)
  {
    v8 = *(a3 + 11);
    v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v10 = 1400139365;
    goto LABEL_18;
  }

  if (a4 != 12 || (*a3 == 0x625F636974617473 ? (v5 = *(a3 + 2) == 1936290657) : (v5 = 0), !v5))
  {
LABEL_22:
    LOBYTE(v6) = 0;
    v7 = 0;
    return v7 | v6;
  }

  v6 = *v4;
  v7 = *v4 & 0xFFFFFFFFFFFFFF00;
  return v7 | v6;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 21)
  {
    v11 = *v4 ^ 0x5F646E617265706FLL;
    v12 = v4[1] ^ 0x5F746E656D676573;
    v13 = *(v4 + 13);
    v14 = 1935635566;
  }

  else
  {
    if (v5 != 19)
    {
      if (v5 == 12)
      {
        v6 = *v4;
        v7 = *(v4 + 2);
        if (v6 == 0x625F636974617473 && v7 == 1936290657)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v9 = *(a4 + 8), *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v9[2] == 64)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v10;
        }
      }

      return result;
    }

    v11 = *v4 ^ 0x53646E617265706FLL;
    v12 = v4[1] ^ 0x6953746E656D6765;
    v13 = *(v4 + 11);
    v14 = 1400139365;
  }

  if (v11 | v12 | v13 ^ (v14 | 0x73657A6900000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = a4 == 0;
  }

  if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v16 = *(a4 + 8);
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 2)
    {
      v17 = *(a4 + 32);
      if (v17 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 76), *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v17 = 261;
    v15 = "static_basis";
    v16 = 12;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 12, 2);
  v12 = *(**v11 + 32);
  v17 = 261;
  v15 = "operandSegmentSizes";
  v16 = 19;
  v14 = mlir::StringAttr::get(v12, &v15, v13);
  mlir::NamedAttrList::push_back(a3, v14, v11);
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v35, a6, a2, a3);
    if (v35)
    {
      mlir::Diagnostic::operator<<<42ul>(v36, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    return 0;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "static_basis", 0xCuLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v14 = v13[1], *(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v14[2] != 64)
      {
        a5(&v35, a6);
        if (v35)
        {
          if (v35)
          {
            v33 = 0;
            v34 = v13;
            v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
            v29 = v37 + 24 * v38;
            v30 = *v28;
            *(v29 + 16) = *(v28 + 16);
            *v29 = v30;
            ++v38;
          }
        }

        goto LABEL_4;
      }

      *a3 = v13;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "disjoint", 8uLL);
  if (v16)
  {
    v17 = *(v15 + 8);
    v18 = (a3 + 1);
    if (v17)
    {
      v19 = *(*v17 + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v31 = 1;
      }

      else
      {
        if (v19 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          return 0;
        }

        v20 = *(v17 + 8);
        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v20[2] != 1)
        {
          return 0;
        }

        v21 = *(v17 + 24);
        if (v21 > 0x40)
        {
          v22 = llvm::APInt::countLeadingZerosSlowCase((v17 + 16)) == v21;
        }

        else
        {
          v22 = *(v17 + 16) == 0;
        }

        v32 = v22;
        v31 = v32 ^ 1;
      }

      *v18 = v31;
      goto LABEL_23;
    }
  }

  else
  {
    v18 = (a3 + 1);
  }

  *v18 = 0;
LABEL_23:
  v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v24 & 1) == 0 || (v25 = *(v23 + 8)) == 0)
  {
    v26 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v27 & 1) == 0)
    {
      return 1;
    }

    v25 = *(v26 + 8);
    if (!v25)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 12, 2, v25, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v23 = v25;
  v24 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v22 = 261;
    v20 = "static_basis";
    v21 = 12;
    v9 = mlir::StringAttr::get(v8, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v9, v5);
  }

  v10 = 592;
  if (*(v6 + 8))
  {
    v10 = 608;
  }

  v11 = *(*v3 + v10);
  v12 = *(**v11 + 32);
  v22 = 261;
  v20 = "disjoint";
  v21 = 8;
  v13 = mlir::StringAttr::get(v12, &v20, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 12, 2);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(v3, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u32[0] = a3[1].n128_u32[0];
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0xBF764FA75DAEC915;
  if (*(a2 + 8))
  {
    v5 = 0xAE759FEEB770345DLL;
  }

  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) >> 47));
  v6 = *(a2 + 16) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (8 * *(a2 + 12) + 8));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * v4;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineLinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 3)
    {
      v6 = "size mismatch for operand/result_segment_size";
      v7 = 259;
      (*(*a1 + 16))(v9, a1, &v6);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
      return 0;
    }

    v4 = *(v8 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 12, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && ((*(*a1 + 120))(a1, v3 + 1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 3, 2uLL) & 1) != 0);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 12, 2);
    (*(*a3 + 16))(a3, v6);
  }

  (*(*a3 + 16))(a3, *v5);
  (*(*a3 + 96))(a3, *(v5 + 8));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 12), 2);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    v22 = "affine.linearize_index";
    v23 = 22;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v10 = *(v8 + 12);
  v9 = *(v8 + 16);
  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v40, a2);
  v11 = v40;
  v12 = v41;
  v13 = v7 + 16 * ((*(a2 + 44) >> 23) & 1);
  v14 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
  v15 = *(v13 + 12);
  v16 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v13 + 12, 2);
  LODWORD(__src) = 1;
  v44 = v14;
  v45 = v16;
  v37[0] = a2;
  v37[1] = v15;
  v38[0] = v39;
  v38[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v38, &__src, v46);
  foldCstValueToCstAttrBasis(&__src, v11, v12, v37, &a3[v10], (v9 + v10) - v10);
  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  if (v40 != &v42)
  {
    free(v40);
  }

  if (v47 == 1)
  {
    *(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(a2 + 24) + 32), __src, v44);
    v17 = a2 - 16;
LABEL_18:
    v23 = v17 | 4;
    goto LABEL_28;
  }

  v18 = *(a2 + 44);
  v19 = (v7 + 16 * ((v18 >> 23) & 1));
  v20 = v19[3];
  if ((v18 & 0x800000) != 0 && v20 == 1)
  {
    v17 = *(*(a2 + 72) + 24);
    goto LABEL_18;
  }

  if (!v20)
  {
    v24 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = 0;
LABEL_27:
    v23 = mlir::IntegerAttr::get(v24, v25) & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_28;
  }

  if (v10)
  {
    v21 = 8 * v10;
    v22 = a3;
    while (*v22)
    {
      ++v22;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

LABEL_14:
  if (!v9)
  {
    v26 = *v19;
    v27 = *(*v19 + 32);
    if (v27 >= 8)
    {
      v28 = 0;
      v30 = &a3[v10 - 1];
      v31 = v27 & 0xFFFFFFFFFFFFFFF8;
      v32 = *(v26 + 24) - 8;
      v29 = 1;
      do
      {
        v33 = *v30--;
        v40 = v33;
        v28 += mlir::IntegerAttr::getInt(&v40) * v29;
        v29 *= *(v32 + v31);
        v31 -= 8;
      }

      while (v31);
      v34 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
      v20 = v34[3];
      v27 = *(*v34 + 32);
    }

    else
    {
      v28 = 0;
      v29 = 1;
    }

    if (v20 != v27 >> 3)
    {
      v40 = *a3;
      v28 += mlir::IntegerAttr::getInt(&v40) * v29;
    }

    v24 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = v28;
    goto LABEL_27;
  }

LABEL_15:
  v23 = 0;
LABEL_28:
  if (v47 == 1 && __src != &v45)
  {
    free(__src);
  }

  if (v23 < 8 || a2 - 16 == (v23 & ((v23 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v23 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v23);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8))
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 7uLL)
    {
      *v11 = 0x746E696F6A736964;
      *(v10 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "disjoint", 8uLL);
    }
  }

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
    llvm::raw_ostream::write(v14, "[", 1uLL);
  }

  else
  {
    *v15 = 91;
    ++*(v14 + 4);
  }

  v16 = *(a2 + 44);
  v17 = *(v7 + 16 * ((v16 >> 23) & 1) + 12);
  if ((v16 & 0x800000) != 0)
  {
    v18 = *(a2 + 72);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(*a3 + 16))(a3);
  if (v17)
  {
    v20 = v19;
    (*(*a3 + 160))(a3, *(v18 + 24));
    if (v17 != 1)
    {
      v21 = v17 - 1;
      v22 = (v18 + 56);
      do
      {
        v23 = *(v20 + 4);
        if (*(v20 + 3) - v23 > 1uLL)
        {
          *v23 = 8236;
          *(v20 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v20, ", ", 2uLL);
        }

        v24 = *v22;
        v22 += 4;
        (*(*a3 + 160))(a3, v24);
        --v21;
      }

      while (v21);
    }
  }

  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, "]", 1uLL);
  }

  else
  {
    *v26 = 93;
    ++*(v25 + 4);
  }

  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 1uLL)
  {
    *v30 = 31074;
    *(v29 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v29, "by", 2uLL);
  }

  v31 = (*(*a3 + 16))(a3);
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

  v33 = *(a2 + 44);
  v34 = (v7 + 16 * ((v33 >> 23) & 1));
  if ((v33 & 0x800000) != 0)
  {
    v35 = *(a2 + 72);
  }

  else
  {
    v35 = 0;
  }

  mlir::printDynamicIndexList(a3, a2, v35 + 32 * v34[3], v34[4] + v34[3] - v34[3], *(*v34 + 24), *(*v34 + 32) >> 3, 0, 0, 2, 0, 1);
  v44 = v46;
  v45 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_basis", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, v45);
  v37 = (*(*a3 + 16))(a3);
  v38 = *(v37 + 4);
  if (v38 >= *(v37 + 3))
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    *(v37 + 4) = v38 + 1;
    *v38 = 32;
  }

  v39 = (*(*a3 + 16))(a3);
  v40 = *(v39 + 4);
  if (*(v39 + 3) == v40)
  {
    llvm::raw_ostream::write(v39, ":", 1uLL);
  }

  else
  {
    *v40 = 58;
    ++*(v39 + 4);
  }

  v41 = (*(*a3 + 16))(a3);
  v42 = *(v41 + 4);
  if (v42 >= *(v41 + 3))
  {
    llvm::raw_ostream::write(v41, 32);
  }

  else
  {
    *(v41 + 4) = v42 + 1;
    *v42 = 32;
  }

  if (*(a2 + 36))
  {
    v43 = a2 - 16;
  }

  else
  {
    v43 = 0;
  }

  (*(*a3 + 32))(a3, *(v43 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v44 != v46)
  {
    free(v44);
  }
}

uint64_t mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
    if (mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5))
    {
      v6 = a1 + 64;
      v7 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      if (v7)
      {
        v37[0] = a1;
        if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37))
        {
          v8 = *(a1 + 44);
          v9 = (v8 >> 23) & 1;
          v10 = *(v6 + 16 * v9 + 12);
          if ((v8 & 0x800000) != 0)
          {
            v11 = *(a1 + 72);
            if (v10)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v11 = 0;
            if (v10)
            {
LABEL_11:
              v12 = 0;
              v13 = v11 + 24;
              while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12))
              {
                ++v12;
                v13 += 32;
                if (v10 == v12)
                {
                  v14 = *(a1 + 44);
                  v9 = (v14 >> 23) & 1;
                  v15 = v14 & 0x800000;
                  v16 = *(v6 + 16 * v9 + 12);
                  goto LABEL_20;
                }
              }

              goto LABEL_36;
            }
          }

          v16 = 0;
          v15 = v8 & 0x800000;
LABEL_20:
          v18 = *(v6 + 16 * v9 + 16);
          if (v15)
          {
            v19 = *(a1 + 72);
            if (v18)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v19 = 0;
            if (v18)
            {
LABEL_22:
              v20 = v18 + v16 - v16;
              v21 = v19 + 32 * v16 + 24;
              while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
              {
                LODWORD(v10) = v10 + 1;
                v21 += 32;
                if (!--v20)
                {
                  goto LABEL_25;
                }
              }

              goto LABEL_36;
            }
          }

LABEL_25:
          v22 = *(a1 + 36) ? a1 - 16 : 0;
          if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
          {
LABEL_29:
            v23 = (v6 + 16 * ((*(a1 + 44) >> 23) & 1));
            v24 = v23[3];
            v25 = *(*v23 + 32);
            v26 = v25 >> 3;
            if (v25 >> 3 == v24 || (v25 >> 3) + 1 == v24)
            {
              if (v25 >= 8)
              {
                v28 = 0;
                v32 = *(*v23 + 24);
                v33 = 8 * v26;
                do
                {
                  v34 = *v32++;
                  if (v34 == 0x8000000000000000)
                  {
                    ++v28;
                  }

                  v33 -= 8;
                }

                while (v33);
              }

              else
              {
                v28 = 0;
              }

              if (v28 == v23[4] + v24 - v24)
              {
                v29 = 1;
                return v29 & 1;
              }

              v31 = "mismatch between dynamic and static basis (kDynamic marker but no corresponding dynamic basis entry) -- this can only happen due to an incorrect fold/rewrite";
            }

            else
            {
              v31 = "should be passed a basis element for each index except possibly the first";
            }

            v35[0] = v31;
            v36 = 259;
            mlir::Operation::emitOpError(v37, a1, v35);
            v29 = v38 ^ 1;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
            return v29 & 1;
          }
        }
      }

      else
      {
        v35[0] = "requires attribute 'static_basis'";
        v36 = 259;
        mlir::Operation::emitOpError(v37, a1, v35);
        v17 = v38;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_36:
  v29 = 0;
  return v29 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLoadOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.load", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9D998;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "map";
  v10[1] = 3;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getValue;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2 + 32;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C60))
  {
    Op = llvm::getTypeName<mlir::affine::AffineReadOpInterface>();
    qword_27FC23C58 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Op, v2);
    __cxa_guard_release(&qword_27FC23C60);
  }

  return qword_27FC23C58;
}

uint64_t llvm::getTypeName<mlir::affine::AffineReadOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C78))
  {
    qword_27FC23C68 = llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface>();
    unk_27FC23C70 = v1;
    __cxa_guard_release(&qword_27FC23C78);
  }

  return qword_27FC23C68;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineReadOpInterface]";
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

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a2 + 24) + 32);
  v6 = 261;
  v5[0] = "map";
  v5[1] = 3;
  return mlir::StringAttr::get(v3, v5, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v10 = *(a2 + 72);
  v11 = v5;
  v9 = 0;
  v8 = 0;
  v7 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v11, &v10, &v9, &v8, &v7);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, mlir::affine::AffineLoadOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[4] = *MEMORY[0x277D85DE8];
  if (mlir::memref::foldMemRefCast(a2, 0))
  {
    if (*(a2 + 9))
    {
      v7 = (a2 - 16) | 4;
      goto LABEL_4;
    }

    return 0;
  }

  v9 = *(mlir::affine::AffineLoadOp::getODSOperands(a2, 0) + 24);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
      return 0;
    }
  }

  else
  {
    v12 = v9 + 16 * v10 + 16;
  }

  if (*(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id)
  {
    return 0;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(v12);
  if (!result)
  {
    return result;
  }

  v13 = mlir::SymbolTable::lookupSymbolIn(result, *(v12 + 16 * ((*(v12 + 44) >> 23) & 1) + 64));
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = *(*(v13 + 48) + 16);
  v15 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id;
  v16 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id ? v13 : 0;
  v34 = v16;
  if (!v15)
  {
    goto LABEL_24;
  }

  ConstantInitValue = mlir::memref::GlobalOp::getConstantInitValue(&v34);
  if (!ConstantInitValue)
  {
    goto LABEL_24;
  }

  v18 = *(*ConstantInitValue + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v7 = ConstantInitValue;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v20 = *(*v7 + 136);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v21 && *(v7 + 24) == 1)
    {
      v7 = mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(v7) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_4;
    }

    v22 = *(*(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8) + 8);
    v23 = *(v22 + 8);
    if (v23)
    {
      v24 = v22 + 24;
      v25 = 8 * v23;
      while (*(*v24 + 8) == 5)
      {
        v24 += 8;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_44;
        }
      }

LABEL_24:
      v7 = 0;
      goto LABEL_4;
    }

LABEL_44:
    v33 = *(*(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8) + 8);
    mlir::AffineMap::getConstantResults(&v33, &v35);
    llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(&v38, v35, v35 + 8 * v36);
    if (v35 != v37)
    {
      free(v35);
    }

    v26 = *(v7 + 8);
    v27 = *(v7 + 16);
    v28 = (*(v27 + 24))(v27, v26);
    if (v29)
    {
      v30 = 8 * v29;
      v31 = 1;
      do
      {
        v32 = *v28++;
        v31 *= v32;
        v30 -= 8;
      }

      while (v30);
    }

    else
    {
      v31 = 1;
    }

    v35 = v7;
    v36 = 0;
    v37[0] = v7;
    v37[1] = v31;
    v37[2] = v26;
    v37[3] = v27;
    v7 = mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](&v35, v38) & 0xFFFFFFFFFFFFFFFBLL;
    if (v38 != v39)
    {
      free(v38);
    }
  }

LABEL_4:
  if (v7 < 8)
  {
    return 0;
  }

  if ((a2 - 16) != (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
  }

  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C88))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>();
    qword_27FC23C80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23C88);
  }

  return qword_27FC23C80;
}

uint64_t llvm::getTypeName<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CA0))
  {
    qword_27FC23C90 = llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>();
    *algn_27FC23C98 = v1;
    __cxa_guard_release(&qword_27FC23CA0);
  }

  return qword_27FC23C90;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineReadOpInterface::Trait<Empty>]";
  v6 = 111;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v12 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v13 = *(a2 + 72);
        v14 = *(a2 + 68) - 1;
      }

      else
      {
        v13 = 0;
        v14 = -1;
      }

      (*(*a3 + 240))(a3, Attr, (v13 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v14);
    }
  }

  v15 = (*(*a3 + 16))(a3, v12);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v18 = *(AttrDictionary + 8);
  v19 = *(AttrDictionary + 16);
  v23[0] = "map";
  v23[1] = 3;
  (*(*a3 + 192))(a3, v18, v19, v23, 1);
  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if ((*(v20 + 3) - v21) > 2)
  {
    *(v21 + 2) = 32;
    *v21 = 14880;
    *(v20 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v20, " : ", 3uLL);
  }

  return (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v5)
  {
    v25[0] = "requires attribute 'map'";
    v26 = 259;
    mlir::Operation::emitOpError(v27, a1, v25);
    v15 = v28;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v16 = 0;
    return v16 & 1;
  }

  v27[0] = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
  {
    goto LABEL_17;
  }

  ODSOperands = mlir::affine::AffineLoadOp::getODSOperands(a1, 0);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = ODSOperands + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), v9))
    {
      ++v9;
      v10 += 32;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  v11 = mlir::affine::AffineLoadOp::getODSOperands(a1, 1u);
  if (v12)
  {
    v13 = v12;
    v14 = v11 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v18 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) == *(v18 + 24))
  {
    Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v20 = Attr;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    if ((*(a1 + 46) & 0x80) != 0)
    {
      v21 = *(a1 + 68);
      v22 = v21 - 1;
      v23 = *(a1 + 72) + 32;
      v24 = v21 - 1;
    }

    else
    {
      v22 = -1;
      v24 = -1;
      v23 = 32;
    }

    v16 = verifyMemoryOpIndexing(a1, v20, v23, v22, v18, v24);
  }

  else
  {
    v25[0] = "result type must match element type of memref";
    v26 = 259;
    mlir::Operation::emitOpError(v27, a1, v25);
    v16 = v28 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
  }

  return v16 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMaxOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMaxOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMaxOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.max", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DA60;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "map";
  v10[1] = 3;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMaxOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMaxOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMaxOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMaxOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    v22 = "affine.max";
    v23 = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = 16 * ((*(a2 + 44) >> 23) & 1);
  v24 = v26;
  v25 = 0x200000000;
  v22 = *(*(a2 + 64 + v8) + 8);
  v9 = mlir::AffineMap::partialConstantFold(&v22, a3, a4, &v24, 0);
  v23 = v9;
  if (*(v9 + 4) == 1 && mlir::AffineMap::isSymbolIdentity(&v23))
  {
    v10 = *(*(a2 + 72) + 24);
LABEL_9:
    v13 = v10 | 4;
    goto LABEL_19;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v11 = v24;
    }

    else
    {
      v15 = (v24 + 8);
      v14 = *v24;
      v16 = 8 * v25 - 8;
      v11 = v24;
      v17 = (v24 + 8);
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = v14 < v19;
        if (v14 <= v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v11 = v15;
        }

        v15 = v17;
        v16 -= 8;
      }

      while (v16);
    }

    if (v11 != (v24 + 8 * v25))
    {
      v13 = mlir::IntegerAttr::get(*(**(***(a2 + 24) + 32) + 472), *v11) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_19;
    }
  }

  else if (*(*(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8) != v9)
  {
    v12 = mlir::AffineMapAttr::get(v9);
    mlir::Operation::setAttr(a2, "map", 3, v12);
    v10 = a2 - 16;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_19:
  if (v24 != v26)
  {
    free(v24);
  }

  if (v13 < 8 || a2 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v13);
  return 1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[2] = *MEMORY[0x277D85DE8];
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

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  (*(*a3 + 40))(a3, Attr);
  v10 = *(a2 + 44);
  if ((v10 & 0x800000) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = **(*(a2 + 16 * ((v10 >> 23) & 1) + 64) + 8);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 40);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 40;
  }

  if (v11 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  v17 = (*(*a3 + 16))(a3);
  if (v16)
  {
    v18 = v17;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v19 = v16 - 1;
    if (v16 != 1)
    {
      v20 = (v12 + 56);
      do
      {
        v21 = *(v18 + 4);
        if (*(v18 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v18 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }

        v22 = *v20;
        v20 += 4;
        (*(*a3 + 160))(a3, v22);
        --v19;
      }

      while (v19);
    }
  }

  v23 = (*(*a3 + 16))(a3);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 41);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 41;
  }

  if (v11 != v13)
  {
    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 91);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 91;
    }

    v27 = v12 + 32 * v13;
    v28 = (*(*a3 + 16))(a3);
    (*(*a3 + 160))(a3, *(v27 + 24));
    if (v11 - v13 != 1)
    {
      v29 = ~v13 + v11;
      v30 = (v27 + 56);
      do
      {
        v31 = *(v28 + 4);
        if (*(v28 + 3) - v31 > 1uLL)
        {
          *v31 = 8236;
          *(v28 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v32 = *v30;
        v30 += 4;
        (*(*a3 + 160))(a3, v32);
        --v29;
      }

      while (v29);
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 93);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 93;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v36 = *(AttrDictionary + 8);
  v37 = *(AttrDictionary + 16);
  v39[0] = "map";
  v39[1] = 3;
  return (*(*a3 + 192))(a3, v36, v37, v39, 1);
}

uint64_t mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v5)
  {
    v17[0] = "requires attribute 'map'";
    v18 = 259;
    mlir::Operation::emitOpError(v19, a1, v17);
    v12 = v20;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_18:
    v13 = *(a1 + 44);
    if ((v13 & 0x800000) != 0)
    {
      v14 = *(a1 + 68);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(*(a1 + 64 + 16 * ((v13 >> 23) & 1)) + 8);
    if (v14 == v15[1] + *v15)
    {
      if (v15[2])
      {
        v10 = 1;
        return v10 & 1;
      }

      v16 = "affine map expect at least one result";
    }

    else
    {
      v16 = "operand count and affine map dimension and symbol count must match";
    }

    v17[0] = v16;
    v18 = 259;
    mlir::Operation::emitOpError(v19, a1, v17);
    v10 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v10 & 1;
  }

  v19[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v6 = *(a1 + 68);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 72) + 24;
        while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
        {
          ++v7;
          v8 += 32;
          if (v6 == v7)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_11:
    v9 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v10 = 0;
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMinOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMinOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMinOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMinOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMinOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMinOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMinOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.min", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DB28;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "map";
  v10[1] = 3;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMinOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMinOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMinOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMinOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMinOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMinOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMinOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMinOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    v22 = "affine.min";
    v23 = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = 16 * ((*(a2 + 44) >> 23) & 1);
  v23 = v25;
  v24 = 0x200000000;
  v21 = *(*(a2 + 64 + v8) + 8);
  v9 = mlir::AffineMap::partialConstantFold(&v21, a3, a4, &v23, 0);
  v22 = v9;
  if (*(v9 + 4) == 1 && mlir::AffineMap::isSymbolIdentity(&v22))
  {
    v10 = *(*(a2 + 72) + 24);
LABEL_9:
    v13 = v10 | 4;
    goto LABEL_17;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v11 = v23;
    }

    else
    {
      v15 = (v23 + 8);
      v14 = *v23;
      v16 = 8 * v24 - 8;
      v11 = v23;
      v17 = (v23 + 8);
      do
      {
        v19 = *v17++;
        v18 = v19;
        if (v19 < v14)
        {
          v14 = v18;
          v11 = v15;
        }

        v15 = v17;
        v16 -= 8;
      }

      while (v16);
    }

    if (v11 != (v23 + 8 * v24))
    {
      v13 = mlir::IntegerAttr::get(*(**(***(a2 + 24) + 32) + 472), *v11) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_17;
    }
  }

  else if (*(*(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8) != v9)
  {
    v12 = mlir::AffineMapAttr::get(v9);
    mlir::Operation::setAttr(a2, "map", 3, v12);
    v10 = a2 - 16;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_17:
  if (v23 != v25)
  {
    free(v23);
  }

  if (v13 < 8 || a2 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v13);
  return 1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[2] = *MEMORY[0x277D85DE8];
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

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  (*(*a3 + 40))(a3, Attr);
  v10 = *(a2 + 44);
  if ((v10 & 0x800000) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = **(*(a2 + 16 * ((v10 >> 23) & 1) + 64) + 8);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 40);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 40;
  }

  if (v11 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  v17 = (*(*a3 + 16))(a3);
  if (v16)
  {
    v18 = v17;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v19 = v16 - 1;
    if (v16 != 1)
    {
      v20 = (v12 + 56);
      do
      {
        v21 = *(v18 + 4);
        if (*(v18 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v18 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }

        v22 = *v20;
        v20 += 4;
        (*(*a3 + 160))(a3, v22);
        --v19;
      }

      while (v19);
    }
  }

  v23 = (*(*a3 + 16))(a3);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 41);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 41;
  }

  if (v11 != v13)
  {
    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 91);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 91;
    }

    v27 = v12 + 32 * v13;
    v28 = (*(*a3 + 16))(a3);
    (*(*a3 + 160))(a3, *(v27 + 24));
    if (v11 - v13 != 1)
    {
      v29 = ~v13 + v11;
      v30 = (v27 + 56);
      do
      {
        v31 = *(v28 + 4);
        if (*(v28 + 3) - v31 > 1uLL)
        {
          *v31 = 8236;
          *(v28 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v32 = *v30;
        v30 += 4;
        (*(*a3 + 160))(a3, v32);
        --v29;
      }

      while (v29);
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 93);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 93;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v36 = *(AttrDictionary + 8);
  v37 = *(AttrDictionary + 16);
  v39[0] = "map";
  v39[1] = 3;
  return (*(*a3 + 192))(a3, v36, v37, v39, 1);
}

uint64_t mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v5)
  {
    v17[0] = "requires attribute 'map'";
    v18 = 259;
    mlir::Operation::emitOpError(v19, a1, v17);
    v12 = v20;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_18:
    v13 = *(a1 + 44);
    if ((v13 & 0x800000) != 0)
    {
      v14 = *(a1 + 68);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(*(a1 + 64 + 16 * ((v13 >> 23) & 1)) + 8);
    if (v14 == v15[1] + *v15)
    {
      if (v15[2])
      {
        v10 = 1;
        return v10 & 1;
      }

      v16 = "affine map expect at least one result";
    }

    else
    {
      v16 = "operand count and affine map dimension and symbol count must match";
    }

    v17[0] = v16;
    v18 = 259;
    mlir::Operation::emitOpError(v19, a1, v17);
    v10 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v10 & 1;
  }

  v19[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v6 = *(a1 + 68);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 72) + 24;
        while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
        {
          ++v7;
          v8 += 32;
          if (v6 == v7)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_11:
    v9 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v10 = 0;
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineParallelOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.parallel", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DBF0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::foldHook(uint64_t a1, mlir::affine::AffineParallelOp *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v4, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v4);
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = &mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 13)
  {
    if (a4 == 14)
    {
      if (*a3 == 0x756F427265776F6CLL && *(a3 + 6) == 0x70614D73646E756FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      }

      else
      {
        if (*a3 != 0x756F427265707075 || *(a3 + 6) != 0x70614D73646E756FLL)
        {
          goto LABEL_42;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      goto LABEL_45;
    }

    v6 = 0;
    if (a4 == 17)
    {
      if (*a3 != 0x756F427265776F6CLL || *(a3 + 8) != 0x70756F724773646ELL || *(a3 + 16) != 115)
      {
        if (*a3 != 0x756F427265707075 || *(a3 + 8) != 0x70756F724773646ELL || *(a3 + 16) != 115)
        {
          goto LABEL_42;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (a4 == 5)
    {
      if (*a3 != 1885697139 || *(a3 + 4) != 115)
      {
        goto LABEL_42;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_45;
    }

    v6 = 0;
    if (a4 == 10)
    {
      if (*a3 != 0x6F69746375646572 || *(a3 + 8) != 29550)
      {
LABEL_42:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
LABEL_45:
      v15 = *v5;
      v6 = v15 & 0xFFFFFFFFFFFFFF00;
      v4 = v15;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 > 13)
  {
    if (v7 == 14)
    {
      if (*v6 == 0x756F427265776F6CLL && *(v6 + 6) == 0x70614D73646E756FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v30 = a4;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        v5[9] = v30;
      }

      else
      {
        v25 = *v6;
        v26 = *(v6 + 6);
        if (v25 == 0x756F427265707075 && v26 == 0x70614D73646E756FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
            {
              v28 = a4;
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }

          v5[13] = v28;
        }
      }
    }

    else if (v7 == 17)
    {
      if (*v6 == 0x756F427265776F6CLL && v6[1] == 0x70756F724773646ELL && *(v6 + 16) == 115)
      {
        if (a4)
        {
          if (mlir::DenseIntElementsAttr::classof(a4))
          {
            v29 = a4;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v5[8] = v29;
      }

      else
      {
        v14 = *v6;
        v15 = v6[1];
        v16 = *(v6 + 16);
        if (v14 == 0x756F427265707075 && v15 == 0x70756F724773646ELL && v16 == 115)
        {
          if (a4)
          {
            if (mlir::DenseIntElementsAttr::classof(a4))
            {
              v19 = a4;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v5[12] = v19;
        }
      }
    }
  }

  else if (v7 == 5)
  {
    v20 = *v6;
    v21 = *(v6 + 4);
    if (v20 == 1885697139 && v21 == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v23 = a4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v5[11] = v23;
    }
  }

  else if (v7 == 10)
  {
    v8 = *v6;
    v9 = *(v6 + 4);
    if (v8 == 0x6F69746375646572 && v9 == 29550)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v5[10] = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "lowerBoundsGroups";
    v26 = 17;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "lowerBoundsMap";
    v26 = 14;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "reductions";
    v26 = 10;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "steps";
    v26 = 5;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v27 = 261;
    v25 = "upperBoundsGroups";
    v26 = 17;
    v21 = mlir::StringAttr::get(v20, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v27 = 261;
    v25 = "upperBoundsMap";
    v26 = 14;
    v24 = mlir::StringAttr::get(v23, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(v11, "lowerBoundsGroups", 0x11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v14, "lowerBoundsMap", 0xE, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(v20, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(v23, "upperBoundsGroups", 0x11, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0)
            {
              return 1;
            }

            v26 = v24[1];
            if (!v26 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v26, "upperBoundsMap", 0xE, a4, a5))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v30, a6, a2, a3);
    if (v30)
    {
      mlir::Diagnostic::operator<<<42ul>(v31, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "lowerBoundsGroups", 0x11uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (!mlir::DenseIntElementsAttr::classof(*(v11 + 8)))
      {
        (a5)(&v30, a6);
        if (!v30)
        {
          goto LABEL_4;
        }

LABEL_29:
        if (v30)
        {
          LODWORD(v29[0]) = 0;
          v29[1] = v13;
          v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, v29, 1);
          v21 = v32 + 24 * v33;
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          ++v33;
        }

        goto LABEL_4;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "lowerBoundsMap", 0xEuLL);
  if ((v15 & 1) == 0 || (v13 = *(v14 + 8)) == 0)
  {
LABEL_18:
    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "reductions", 0xAuLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v30, a6);
          if (!v30)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[2] = v13;
      }
    }

    v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "steps", 5uLL);
    if (v19)
    {
      v13 = *(v18 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v30, a6);
          if (!v30)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[3] = v13;
      }
    }

    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "upperBoundsGroups", 0x11uLL);
    if (v24)
    {
      v25 = *(v23 + 8);
      v29[0] = v25;
      if (v25)
      {
        if (!mlir::DenseIntElementsAttr::classof(v25))
        {
          (a5)(&v30, a6);
          if (!v30)
          {
            goto LABEL_4;
          }

          goto LABEL_43;
        }

        a3[4] = v25;
      }
    }

    v26 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "upperBoundsMap", 0xEuLL);
    if (v27)
    {
      v28 = *(v26 + 8);
      v29[0] = v28;
      if (v28)
      {
        if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          (a5)(&v30, a6);
          if (!v30)
          {
            goto LABEL_4;
          }

LABEL_43:
          if (v30)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v31, v29);
          }

          goto LABEL_4;
        }

        a3[5] = v28;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    a3[1] = v13;
    goto LABEL_18;
  }

  (a5)(&v30, a6);
  if (v30)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v31 = v33;
  v32 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v30 = 261;
    v28 = "lowerBoundsGroups";
    v29 = 17;
    v9 = mlir::StringAttr::get(v8, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v30 = 261;
    v28 = "lowerBoundsMap";
    v29 = 14;
    v12 = mlir::StringAttr::get(v11, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v30 = 261;
    v28 = "reductions";
    v29 = 10;
    v15 = mlir::StringAttr::get(v14, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v30 = 261;
    v28 = "steps";
    v29 = 5;
    v18 = mlir::StringAttr::get(v17, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v30 = 261;
    v28 = "upperBoundsGroups";
    v29 = 17;
    v21 = mlir::StringAttr::get(v20, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v30 = 261;
    v28 = "upperBoundsMap";
    v29 = 14;
    v24 = mlir::StringAttr::get(v23, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v24, v22);
  }

  v25 = v31;
  if (v32)
  {
    v26 = mlir::DictionaryAttr::get(v3, v31, v32);
    v25 = v31;
  }

  else
  {
    v26 = 0;
  }

  if (v25 != v33)
  {
    free(v25);
  }

  return v26;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::hashProperties(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v23 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v21 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[5];
  v14 = 8 * a2[4] - 0xAE502812AA7333;
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[4]) ^ ((0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))));
  v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v24, 0, v24, v25, &v23, &v22, &v21, &v20, &v19, &v18);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineParallelOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 16))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  (*(*a3 + 16))(a3, v4[12]);
  v5 = v4[13];
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::replaceWithAdditionalYields;
  v3 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v2, &v3);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(int a1, mlir::affine::AffineParallelOp *this)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v3 = (this + 64);
  v4 = *(*(this + 2 * ((*(this + 11) >> 23) & 1) + 9) + 8);
  LowerBoundsOperands = mlir::affine::AffineParallelOp::getLowerBoundsOperands(this);
  mlir::affine::AffineValueMap::AffineValueMap(&v32, v4, LowerBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v6, 0, 0);
  v7 = mlir::affine::AffineValueMap::canonicalize(&v32);
  v8 = *(*(v3 + 2 * ((*(this + 11) >> 23) & 1) + 5) + 8);
  UpperBoundsOperands = mlir::affine::AffineParallelOp::getUpperBoundsOperands(this);
  mlir::affine::AffineValueMap::AffineValueMap(&v25, v8, UpperBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v10, 0, 0);
  v11 = mlir::affine::AffineValueMap::canonicalize(&v25);
  if ((v7 & 1) != 0 || v11)
  {
    if (v7)
    {
      v13 = v38;
      v14 = v37;
      Impl = mlir::AffineMap::getImpl(v34, v35, v32, v33, v36);
      v16 = mlir::affine::AffineParallelOp::getUpperBoundsOperands(this);
      v18 = v17;
      v39 = v41;
      v40 = 0x400000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v39, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v13);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v39, v16, 0, v16, v18);
      if ((*(this + 46) & 0x80) != 0)
      {
        mlir::detail::OperandStorage::setOperands(v3, this, v39 & 0xFFFFFFFFFFFFFFF9, v40);
      }

      *(v3 + 2 * ((*(this + 11) >> 23) & 1) + 1) = mlir::AffineMapAttr::get(Impl);
      if (v39 != v41)
      {
        free(v39);
      }
    }

    if (v11)
    {
      v19 = v31;
      v20 = v30;
      v21 = mlir::AffineMap::getImpl(v27, v28, v25, v26, v29);
      v22 = mlir::affine::AffineParallelOp::getLowerBoundsOperands(this);
      v39 = v41;
      v40 = 0x400000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v39, v22, 0, v22, v23);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v39, v20 & 0xFFFFFFFFFFFFFFF9, 0, v20 & 0xFFFFFFFFFFFFFFF9, v19);
      if ((*(this + 46) & 0x80) != 0)
      {
        mlir::detail::OperandStorage::setOperands(v3, this, v39 & 0xFFFFFFFFFFFFFFF9, v40);
      }

      *(v3 + 2 * ((*(this + 11) >> 23) & 1) + 5) = mlir::AffineMapAttr::get(v21);
      if (v39 != v41)
      {
        free(v39);
      }
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  mlir::affine::AffineValueMap::~AffineValueMap(&v25);
  mlir::affine::AffineValueMap::~AffineValueMap(&v32);
  return v12;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::affine::AffineParallelOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102[8] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 10272;
    *(v7 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v7, " (", 2uLL);
  }

  v9 = (a2 + 64);
  v10 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 48);
  v13 = *(v11 + 56);
  v14 = (*(*a3 + 16))(a3);
  if (v13 != v12)
  {
    v15 = v14;
    (*(*a3 + 160))(a3, *v12);
    if (v13 - v12 != 8)
    {
      v16 = v12 + 8;
      do
      {
        v17 = *(v15 + 4);
        if (*(v15 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v15 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v15, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 8;
        (*(*a3 + 160))(a3, v18);
      }

      while (v16 != v13);
    }
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 4)
  {
    *(v20 + 4) = 40;
    *v20 = 540876841;
    *(v19 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v19, ") = (", 5uLL);
  }

  v21 = &v9[4 * ((*(a2 + 11) >> 23) & 1)];
  v23 = *v21;
  v22 = v21[1];
  LowerBoundsOperands = mlir::affine::AffineParallelOp::getLowerBoundsOperands(a2);
  printMinMaxBound(a3, v22, v23, LowerBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v25, "max", 3uLL);
  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if ((*(v26 + 3) - v27) > 5)
  {
    *(v27 + 4) = 10272;
    *v27 = 1869881385;
    *(v26 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v26, ") to (", 6uLL);
  }

  v28 = &v9[4 * ((*(a2 + 11) >> 23) & 1)];
  v30 = *(v28 + 4);
  v29 = *(v28 + 5);
  UpperBoundsOperands = mlir::affine::AffineParallelOp::getUpperBoundsOperands(a2);
  printMinMaxBound(a3, v29, v30, UpperBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v32, "min", 3uLL);
  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 41);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 41;
  }

  mlir::affine::AffineParallelOp::getSteps(&v100, a2);
  if (v101)
  {
    v35 = v100;
    v36 = 8 * v101;
    while (*v35 == 1)
    {
      ++v35;
      v36 -= 8;
      if (!v36)
      {
        goto LABEL_41;
      }
    }

    v37 = (*(*a3 + 16))(a3);
    v38 = *(v37 + 4);
    if (*(v37 + 3) - v38 > 6uLL)
    {
      *(v38 + 3) = 673214565;
      *v38 = 1702130464;
      *(v37 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v37, " step (", 7uLL);
    }

    v39 = v101;
    if (v101)
    {
      v40 = v100;
      v41 = (*(*a3 + 16))(a3);
      llvm::write_integer(v41, *v40, 0, 0);
      if (v39 != 1)
      {
        v42 = v40 + 1;
        v43 = 8 * v39 - 8;
        do
        {
          v44 = (*(*a3 + 16))(a3);
          v45 = *(v44 + 4);
          if (*(v44 + 3) - v45 > 1uLL)
          {
            *v45 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v46 = (*(*a3 + 16))(a3);
          v47 = *v42++;
          llvm::write_integer(v46, v47, 0, 0);
          v43 -= 8;
        }

        while (v43);
      }
    }

    v48 = (*(*a3 + 16))(a3);
    v49 = *(v48 + 4);
    if (v49 >= *(v48 + 3))
    {
      llvm::raw_ostream::write(v48, 41);
    }

    else
    {
      *(v48 + 4) = v49 + 1;
      *v49 = 41;
    }
  }

LABEL_41:
  if (*(a2 + 9))
  {
    v50 = (*(*a3 + 16))(a3);
    v51 = *(v50 + 4);
    if ((*(v50 + 3) - v51) > 8)
    {
      *(v51 + 8) = 40;
      *v51 = *" reduce (";
      *(v50 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v50, " reduce (", 9uLL);
    }

    v52 = *&v9[4 * ((*(a2 + 11) >> 23) & 1) + 4];
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = *(v52 + 8);
      v99[0] = *v54;
      Int = mlir::IntegerAttr::getInt(v99);
      v56 = mlir::arith::symbolizeAtomicRMWKind(Int);
      v57 = (*(*a3 + 16))(a3);
      v58 = *(v57 + 4);
      if (*(v57 + 3) == v58)
      {
        llvm::raw_ostream::write(v57, "", 1uLL);
      }

      else
      {
        *v58 = 34;
        ++*(v57 + 4);
      }

      v59 = mlir::arith::stringifyAtomicRMWKind(v56);
      v61 = v60;
      v62 = (*(*a3 + 16))(a3);
      llvm::raw_ostream::operator<<(v62, v59, v61);
      v63 = (*(*a3 + 16))(a3);
      v64 = *(v63 + 4);
      if (*(v63 + 3) == v64)
      {
        llvm::raw_ostream::write(v63, "", 1uLL);
      }

      else
      {
        *v64 = 34;
        ++*(v63 + 4);
      }

      if (v53 != 1)
      {
        v65 = v54 + 1;
        v66 = 8 * v53 - 8;
        do
        {
          v67 = (*(*a3 + 16))(a3);
          v68 = *(v67 + 4);
          if (*(v67 + 3) - v68 > 1uLL)
          {
            *v68 = 8236;
            *(v67 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v67, ", ", 2uLL);
          }

          v99[0] = *v65;
          v69 = mlir::IntegerAttr::getInt(v99);
          v70 = mlir::arith::symbolizeAtomicRMWKind(v69);
          v71 = (*(*a3 + 16))(a3);
          v72 = *(v71 + 4);
          if (*(v71 + 3) == v72)
          {
            llvm::raw_ostream::write(v71, "", 1uLL);
          }

          else
          {
            *v72 = 34;
            ++*(v71 + 4);
          }

          v73 = mlir::arith::stringifyAtomicRMWKind(v70);
          v75 = v74;
          v76 = (*(*a3 + 16))(a3);
          llvm::raw_ostream::operator<<(v76, v73, v75);
          v77 = (*(*a3 + 16))(a3);
          v78 = *(v77 + 4);
          if (*(v77 + 3) == v78)
          {
            llvm::raw_ostream::write(v77, "", 1uLL);
          }

          else
          {
            *v78 = 34;
            ++*(v77 + 4);
          }

          ++v65;
          v66 -= 8;
        }

        while (v66);
      }
    }

    v79 = (*(*a3 + 16))(a3);
    v80 = *(v79 + 4);
    if ((*(v79 + 3) - v80) > 5)
    {
      *(v80 + 4) = 10272;
      *v80 = 1043144745;
      *(v79 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v79, ") -> (", 6uLL);
    }

    v81 = *(a2 + 9);
    if (v81)
    {
      v82 = (a2 - 16);
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      (*(*a3 + 32))(a3, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v81 != 1)
      {
        v83 = v82 - 4;
        v84 = 1;
        while (1)
        {
          v85 = (*(*a3 + 16))(a3);
          v86 = *(v85 + 4);
          if (*(v85 + 3) - v86 > 1uLL)
          {
            *v86 = 8236;
            *(v85 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v85, ", ", 2uLL);
          }

          v87 = *(a2 - 1) & 7;
          v88 = v82;
          v89 = v84;
          if (v87 == 6)
          {
            goto LABEL_79;
          }

          v90 = (5 - v87);
          v91 = v83;
          v89 = v84 - v90;
          if (v84 > v90)
          {
            break;
          }

LABEL_80:
          (*(*a3 + 32))(a3, *(v91 + 1) & 0xFFFFFFFFFFFFFFF8);
          ++v84;
          v83 -= 4;
          if (v81 == v84)
          {
            goto LABEL_81;
          }
        }

        v88 = &v82[-4 * v90];
LABEL_79:
        v91 = &v88[-6 * v89];
        goto LABEL_80;
      }
    }

LABEL_81:
    v92 = (*(*a3 + 16))(a3);
    v93 = *(v92 + 4);
    if (*(v92 + 3) == v93)
    {
      llvm::raw_ostream::write(v92, ")", 1uLL);
    }

    else
    {
      *v93 = 41;
      ++*(v92 + 4);
    }

    v9 = (a2 + 64);
  }

  v94 = (*(*a3 + 16))(a3);
  v95 = *(v94 + 4);
  if (v95 >= *(v94 + 3))
  {
    llvm::raw_ostream::write(v94, 32);
  }

  else
  {
    *(v94 + 4) = v95 + 1;
    *v95 = 32;
  }

  (*(*a3 + 224))(a3, ((&v9[4 * ((*(a2 + 11) >> 23) & 1) + 1] + ((*(a2 + 11) >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10), 0, *(a2 + 9) != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v97 = *(AttrDictionary + 8);
  v98 = *(AttrDictionary + 16);
  v99[0] = "reductions";
  v99[1] = 10;
  v99[2] = "lowerBoundsMap";
  v99[3] = 14;
  v99[4] = "lowerBoundsGroups";
  v99[5] = 17;
  v99[6] = "upperBoundsMap";
  v99[7] = 14;
  v99[8] = "upperBoundsGroups";
  v99[9] = 17;
  v99[10] = "steps";
  v99[11] = 5;
  (*(*a3 + 192))(a3, v97, v98, v99, 6);
  if (v100 != v102)
  {
    free(v100);
  }
}