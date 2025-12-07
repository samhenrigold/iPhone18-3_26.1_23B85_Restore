llvm::raw_ostream *mlir::ODIE::Compiler::TorchImport::TorchImportDialect::printType(uint64_t a1, uint64_t *a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 4)
    {
      *(v7 + 4) = 101;
      *v7 = 1819309428;
      *(v6 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tuple", 5uLL);
    }

    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, "<", 1uLL);
    }

    else
    {
      *v9 = 60;
      ++*(v8 + 4);
    }

    v10 = a2[2];
    if (v10)
    {
      v11 = a2[1];
      (*(*a3 + 32))(a3, *v11);
      if (v10 != 1)
      {
        v12 = 8 * v10;
        v13 = v11 + 1;
        v14 = v12 - 8;
        do
        {
          v15 = (*(*a3 + 16))(a3);
          v16 = *(v15 + 4);
          if (*(v15 + 3) - v16 > 1uLL)
          {
            *v16 = 8236;
            *(v15 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v15, ", ", 2uLL);
          }

          v17 = *v13++;
          (*(*a3 + 32))(a3, v17);
          v14 -= 8;
        }

        while (v14);
      }
    }

    result = (*(*a3 + 16))(a3);
    v18 = *(result + 4);
    if (*(result + 3) == v18)
    {

      return llvm::raw_ostream::write(result, ">", 1uLL);
    }

    else
    {
      *v18 = 62;
      ++*(result + 4);
    }
  }

  else
  {

    return mlir::ExtensibleDialect::printIfDynamicType(a2, a3);
  }

  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::TorchImport::TupleType,llvm::ArrayRef<mlir::Type>>(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler11TorchImport6detail16TupleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9TupleTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v10[1] = v6;
  v9[0] = a2;
  v9[1] = a3;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(v11, 0, v11, v12, v9);
  v8 = v9;
  *&v11[0] = v9;
  *(&v11[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler11TorchImport6detail16TupleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9TupleTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::TorchImport::TupleType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::TorchImport::TupleType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, 0, v2);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::TorchImport::TupleType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::TorchImport::TupleType,mlir::Type,mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSF_6detail16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSE_6detail16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, "Torchimport.tuple", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSF_6detail16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v9 = *(a2 + 8);
    v10 = 8 * v6;
    do
    {
      if (*v9)
      {
        result = (a5)(a6, *v9, a3, a4);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSE_6detail16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= a2[4])
  {
    v6 = a2[4];
  }

  else
  {
    v6 = a6;
  }

  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::TorchImport::TupleType,llvm::ArrayRef<mlir::Type>>(*(**a2 + 32), a5, v6);
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::Model(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v4[0] = v5;
  v4[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "TorchImport._yield", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::YieldOp,void>::id, v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v4);
  *a1 = &unk_286EA33C0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::TorchImport::YieldOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
  }

  else
  {
    IsTerminator = 0;
  }

  return IsTerminator & 1;
}

uint64_t mlir::ODIE::Compiler::TorchImport::TorchImportInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void mlir::ODIE::Compiler::TorchImport::TorchImportInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 72);
    v6 = *(a2 + 68);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v13 = a3;
  v14 = 0;
  v15 = v5;
  v16 = 0;
  if (a4 && v6)
  {
    v7 = (v5 + 24);
    v8 = 1;
    do
    {
      v9 = mlir::ValueRange::dereference_iterator(&v13, v8 - 1);
      v10 = *v7;
      v7 += 4;
      v12 = v10;
      mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v9, &v12);
      v14 = v8;
      v16 = v8;
      if (a4 == v8)
      {
        break;
      }
    }

    while (v6 != v8++);
  }
}

BOOL mlir::ODIE::Compiler::TorchImport::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 720))(a1, v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v5;
}

void mlir::ODIE::Compiler::TorchImport::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, 0);
  v16 = (*(*a2 + 16))(a2);
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

  v18 = (*(*a2 + 16))(a2);
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

  v20 = (*(*a2 + 16))(a2);
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

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, "(", 1uLL);
  }

  else
  {
    *v23 = 40;
    ++*(v22 + 4);
  }

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 17);
    if (v25)
    {
      v26 = *(v24 + 9);
      (*(*a2 + 32))(a2, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 != 1)
      {
        v27 = v25 - 1;
        v28 = (v26 + 56);
        do
        {
          v29 = (*(*a2 + 16))(a2);
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 > 1uLL)
          {
            *v30 = 8236;
            *(v29 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v29, ", ", 2uLL);
          }

          v31 = *v28;
          v28 += 4;
          (*(*a2 + 32))(a2, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v27;
        }

        while (v27);
      }
    }
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ")", 1uLL);
  }

  else
  {
    *v33 = 41;
    ++*(v32 + 4);
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) - v37 > 1uLL)
  {
    *v37 = 15917;
    *(v36 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v36, "->", 2uLL);
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (v39 >= *(v38 + 3))
  {
    llvm::raw_ostream::write(v38, 32);
  }

  else
  {
    *(v38 + 4) = v39 + 1;
    *v39 = 32;
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (*(v40 + 3) == v41)
  {
    llvm::raw_ostream::write(v40, "(", 1uLL);
  }

  else
  {
    *v41 = 40;
    ++*(v40 + 4);
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ")", 1uLL);
  }

  else
  {
    *v43 = 41;
    ++*(v42 + 4);
  }
}

void anonymous namespace::TorchImportToCorePass::~TorchImportToCorePass(_anonymous_namespace_::TorchImportToCorePass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::impl::TorchImportToCoreBase<anonymous namespace::TorchImportToCorePass>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ODIE::Compiler::TorchImport::TorchImportDialect>(a2);
}

uint64_t anonymous namespace::TorchImportToCorePass::runOnOperation(_anonymous_namespace_::TorchImportToCorePass *this)
{
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v4[0] = *(***(v1 + 24) + 32);
  memset(&v4[1], 0, 24);
  v3[0] = this;
  v3[1] = v4;
  v5 = v3;
  return mlir::detail::walk<mlir::ForwardIterator>(v1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_121TorchImportToCorePass14runOnOperationEvE3__0NS1_19FunctionOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_121TorchImportToCorePass14runOnOperationEvE3__0NS1_19FunctionOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v3 = llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (v3)
  {
    v5 = v3;
    v6 = **a1;
    if (*(*(v3 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
    {
      mlir::ODIE::Compiler::createGraphOpFromFunc((*a1)[1], v3, v4);
    }

    v7 = (**(v4 + 48))();
    if (*v7 != v7)
    {
      v8 = *(v5 + 3);
      v9[16] = 257;
      emitDiag(v8, 2, v9, &v10);
      if (v10)
      {
        mlir::Diagnostic::operator<<<98ul>(v11, " encountered a function with definition. Lowering for functions with bodies is not supported yet.");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
      *(v6 + 40) |= 4uLL;
    }
  }
}

uint64_t anonymous namespace::TorchImportToCorePass::convertBlock(_anonymous_namespace_::TorchImportToCorePass *this, mlir::Block *a2, mlir::OpBuilder *a3)
{
  v3 = a2;
  v355[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  v5 = this + 32;
  if (v4 == this + 32)
  {
LABEL_438:
    v246 = *(this + 5);
    if (v246 == v5)
    {
      goto LABEL_494;
    }

    while (1)
    {
      v247 = *(v246 + 6);
      if (*(v247 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v248 = (*(v247 + 8) + 32);
      }

      else
      {
        v248 = (v247 + 24);
      }

      v249 = *(v246 + 1);
      v250 = *v248;
      if (v250 && *(v250 + 24) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
      {
        if (!mlir::Operation::use_empty(v246))
        {
          *&v328 = *(v246 + 6);
          v253 = mlir::OperationName::stripDialect(&v328);
          if (v254 <= 4 || (*v253 == 1819309428 ? (v255 = *(v253 + 4) == 101) : (v255 = 0), !v255))
          {
            *&v328 = *(v246 + 6);
            v256 = mlir::OperationName::stripDialect(&v328);
            if (v257 == 11 && !memcmp("none_create", v256, 0xBuLL))
            {
              v268 = *(v246 + 9);
              v269 = v246 - 16;
              if (v268)
              {
                v270 = v246 - 16;
              }

              else
              {
                v270 = 0;
              }

              v310 = v270;
              if (v268)
              {
                v271 = 0;
                while (1)
                {
                  v272 = v310;
                  if (!v271)
                  {
                    goto LABEL_485;
                  }

                  v273 = *(v246 - 1) & 7;
                  v274 = v246 - 16;
                  v275 = v271;
                  if (v273 == 6)
                  {
                    goto LABEL_483;
                  }

                  v276 = (5 - v273);
                  v275 = v271 - v276;
                  if (v271 > v276)
                  {
                    break;
                  }

                  v272 = &v269[-16 * v271];
LABEL_485:
                  while (1)
                  {
                    v272 = *v272;
                    if (!v272)
                    {
                      break;
                    }

                    *&v328 = *(*(v272 + 2) + 48);
                    v277 = mlir::OperationName::stripDialect(&v328);
                    if (v278 > 4 && *v277 == 1819309428 && *(v277 + 4) == 101)
                    {
                      continue;
                    }

                    v296 = *(v246 + 3);
                    v327 = 257;
                    emitDiag(v296, 2, &__s1, &v328);
                    if (v328)
                    {
                      mlir::Diagnostic::operator<<<58ul>(&v328 + 8, "could not replace all users of a TorchImport operation - ");
                      if (v328)
                      {
                        mlir::Diagnostic::operator<<(&v328 + 8, *(v246 + 6));
                        if (v328)
                        {
                          mlir::Diagnostic::operator<<<57ul>(&v328 + 8, " this indicates there is a missing or buggy legalization");
                        }
                      }
                    }

                    goto LABEL_526;
                  }

                  ++v271;
                  v3 = a2;
                  if (v271 == v268)
                  {
                    goto LABEL_459;
                  }
                }

                v274 = &v269[-16 * v276];
LABEL_483:
                v272 = &v274[-24 * v275];
                goto LABEL_485;
              }
            }

            else
            {
              v258 = *(v246 + 3);
              v327 = 257;
              emitDiag(v258, 1, &__s1, &v328);
              if (v328)
              {
                mlir::Diagnostic::operator<<<85ul>(&v328 + 8, "op has no known lowering, please provide a function that implements this operation: ");
                if (v328)
                {
                  mlir::Diagnostic::operator<<(&v328 + 8, *(v246 + 6));
                }
              }

              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v328);
            }

            goto LABEL_459;
          }

          v259 = *(v246 + 9);
          v260 = v259 ? (v246 - 16) : 0;
          if (v259)
          {
            v261 = 0;
            v262 = (v246 - 16);
            do
            {
              v263 = v260;
              if (!v261)
              {
                goto LABEL_471;
              }

              v264 = *(v246 - 1) & 7;
              v265 = (v246 - 16);
              v266 = v261;
              if (v264 != 6)
              {
                v267 = (5 - v264);
                v263 = v262;
                v266 = v261 - v267;
                if (v261 <= v267)
                {
                  goto LABEL_471;
                }

                v265 = &v246[-16 * v267 - 16];
              }

              v263 = v265 - 24 * v266;
LABEL_471:
              if (*v263)
              {
                v297 = *(v246 + 3);
                v327 = 257;
                emitDiag(v297, 2, &__s1, &v328);
                if (v328)
                {
                  mlir::Diagnostic::operator<<<129ul>(&v328 + 8, "could not replace all users of a tuple operation - this indicates there is a missing or buggy legalization. Users of tuple op: \n");
                  if (v328)
                  {
                    if (*v263)
                    {
                      mlir::Diagnostic::operator<<((&v328 + 8), *(*v263 + 16));
                    }
                  }
                }

LABEL_526:
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v328);
                return 0;
              }

              ++v261;
              v262 -= 16;
            }

            while (v259 != v261);
          }
        }

        if (*(v246 + 2))
        {
          *(v246 + 2) = 0;
          v252 = *v246;
          v251 = *(v246 + 1);
          *v251 = *v246;
          *(v252 + 8) = v251;
          *v246 = 0;
          *(v246 + 1) = 0;
        }

        mlir::Operation::destroy(v246);
      }

LABEL_459:
      v246 = v249;
      if (v249 == v5)
      {
        v246 = *(this + 5);
LABEL_494:
        if (v246 == v5)
        {
          return 1;
        }

        while (1)
        {
          v280 = *(v246 + 6);
          v281 = *(v280 + 16);
          v282 = (v281 == &mlir::detail::TypeIDResolver<void,void>::id ? *(v280 + 8) + 32 : v280 + 24);
          v283 = *(v246 + 1);
          v284 = *v282;
          if (!v284 || *(v284 + 24) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
          {
            break;
          }

          if (mlir::Operation::use_empty(v246))
          {
            goto LABEL_513;
          }

LABEL_516:
          v246 = v283;
          if (v283 == v5)
          {
            return 1;
          }
        }

        v285 = v281 == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
        if (v281 == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
        {
          v286 = v246;
        }

        else
        {
          v286 = 0;
        }

        __s1 = v286;
        if (!v285)
        {
          goto LABEL_516;
        }

        *(v3 + 2) = *(v246 + 2);
        *(v3 + 3) = v246;
        v287 = *(v246 + 3);
        *&v328 = mlir::arith::ConstantOp::getValueAttr(&__s1);
        *(&v328 + 1) = v288;
        v289 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(v3, v287, &v328);
        if (*(v289 + 9))
        {
          v290 = v289 - 16;
        }

        else
        {
          v290 = 0;
        }

        *&v328 = v290;
        v291 = *(v246 + 9);
        if (v291)
        {
          v292 = (v246 - 16);
        }

        else
        {
          v292 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v292, v291, &v328, 1);
LABEL_513:
        if (*(v246 + 2))
        {
          *(v246 + 2) = 0;
          v294 = *v246;
          v293 = *(v246 + 1);
          *v293 = *v246;
          *(v294 + 8) = v293;
          *v246 = 0;
          *(v246 + 1) = 0;
        }

        mlir::Operation::destroy(v246);
        goto LABEL_516;
      }
    }
  }

  v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
  v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
  v305 = this + 32;
  while (1)
  {
    v8 = *(v4 + 1);
    *(v3 + 2) = *(v4 + 2);
    *(v3 + 3) = v4;
    v9 = *(v4 + 6);
    v10 = v9[2];
    if (v10 == v6)
    {
      v307 = v8;
      v15 = v6;
      v16 = *(v4 + 11);
      v17 = *(v4 + 9);
      if (v17)
      {
        v18 = v4 - 16;
      }

      else
      {
        v18 = 0;
      }

      if ((v16 & 0x800000) != 0)
      {
        v19 = *(v4 + 17);
        v20 = *(v4 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v19 = 0;
        v20 = 2;
      }

      v21 = *(v4 + 3);
      v22 = *(*&v4[16 * ((v16 >> 23) & 1) + 72] + 8);
      v3 = a2;
      v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a2, *(**v21 + 32));
      *&v328 = v21;
      *(&v328 + 1) = v23;
      v329 = v331;
      v330 = 0x400000000;
      v332 = v334;
      v333 = 0x400000000;
      v335 = v337;
      v336 = 0x400000000;
      v338 = 4;
      v339 = &v341;
      v340 = 0x100000000;
      v342 = &v344;
      v343 = 0x100000000;
      v345 = 0;
      v346 = 0;
      v347 = &mlir::detail::TypeIDResolver<void,void>::id;
      v348 = 0;
      v349 = 0;
      __s1 = v18;
      v324 = 0;
      v325 = v18;
      v326 = v17;
      mlir::TypeRange::TypeRange<mlir::ResultRange>(&__src, &__s1);
      v24 = __src;
      v25 = v351;
      v27 = mlir::SymbolRefAttr::get(v22, 0, 0, v26);
      mlir::ODIE::Compiler::CoreML::InvokeOp::build(v27, &v328, v27, v24, v25, v20, v19);
      v28 = mlir::Operation::create(&v328);
      mlir::OpBuilder::insert(a2, v28);
      v29 = *(*(v28 + 6) + 16);
      mlir::OperationState::~OperationState(&v328);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      v31 = *(v4 + 9);
      if (v31)
      {
        v32 = v4 - 16;
      }

      else
      {
        v32 = 0;
      }

      __s1 = v32;
      v324 = v31;
      v33 = *(v30 + 9);
      v34 = v30 - 16;
      if (!v33)
      {
        v34 = 0;
      }

      *&v328 = v34;
      *(&v328 + 1) = v33;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__s1, &v328);
      if (*(v4 + 2))
      {
        *(v4 + 2) = 0;
        v36 = *v4;
        v35 = *(v4 + 1);
        *v35 = *v4;
        *(v36 + 8) = v35;
        *v4 = 0;
        *(v4 + 1) = 0;
      }

      mlir::Operation::destroy(v4);
      v6 = v15;
      v5 = v305;
      v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
      goto LABEL_30;
    }

    if (v10 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      if (v4[46] < 0)
      {
        v37 = *(v4 + 17);
        v38 = *(v4 + 9);
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

      v39 = *(v4 + 3);
      *&v328 = v38;
      *(&v328 + 1) = v37;
      v40 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,mlir::OperandRange>(v3, v39, &v328);
      v41 = *(v4 + 9);
      v42 = v4 - 16;
      if (!v41)
      {
        v42 = 0;
      }

      __s1 = v42;
      v324 = v41;
      v43 = *(v40 + 9);
      v44 = v40 - 16;
      if (!v43)
      {
        v44 = 0;
      }

      *&v328 = v44;
      *(&v328 + 1) = v43;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__s1, &v328);
      if (*(v4 + 2))
      {
        *(v4 + 2) = 0;
        v46 = *v4;
        v45 = *(v4 + 1);
        *v45 = *v4;
        *(v46 + 8) = v45;
        *v4 = 0;
        *(v4 + 1) = 0;
      }

      mlir::Operation::destroy(v4);
      goto LABEL_51;
    }

    if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
    {
      v11 = *&v4[32 * *(v4 + 10) + 72 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8)];
      if (v11)
      {
        v12 = (v11 - 8);
      }

      else
      {
        v12 = 0;
      }

      {
        return 0;
      }

      v9 = *(v4 + 6);
      v10 = v9[2];
    }

    if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IfOp,void>::id)
    {
      v47 = *(v4 + 11);
      if ((v47 & 0x7FFFFF) != 0)
      {
        v48 = &v4[32 * *(v4 + 10) + 72 + 16 * ((v47 >> 23) & 1) + ((v47 >> 21) & 0x7F8)];
        v49 = 24 * (v47 & 0x7FFFFF);
        do
        {
          if (*v48)
          {
            v50 = (*v48 - 8);
          }

          else
          {
            v50 = 0;
          }

          {
            return 0;
          }

          v48 += 24;
          v49 -= 24;
        }

        while (v49);
        v9 = *(v4 + 6);
      }
    }

    v13 = *(v4 + 3);
    v313 = *v3;
    v316 = v13;
    v314 = *(v4 + 2);
    v315 = v4;
    if (v9[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = (v9[1] + 32);
    }

    else
    {
      v14 = v9 + 3;
    }

    v51 = *v14;
    if (!v51 || *(v51 + 24) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
    {
      goto LABEL_51;
    }

    v311 = v4;
    v312 = &v313;
    *&v328 = v9;
    v52 = mlir::OperationName::stripDialect(&v328);
    if (v53 == 3 && *v52 == 25185 && *(v52 + 2) == 115)
    {
      v307 = v8;
      v103 = v7;
      v105 = v311;
      v104 = v312;
      v106 = *(*(v311 + 6) + 8);
      v108 = *(v106 + 16);
      v107 = *(v106 + 24);
      if ((v311[46] & 0x80) == 0 || *(v311 + 17) != 1 || *(v311 + 9) != 1)
      {
        v116 = v312[4];
        v327 = 1283;
        __s1 = "expects 1 input and 1 output for ";
        v325 = v108;
        v326 = v107;
        emitDiag(v116, 2, &__s1, &v328);
        v117 = v339;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v328);
        v7 = v103;
        v8 = v307;
        if (v117)
        {
          return 0;
        }

        goto LABEL_51;
      }

      __src = *(*(v311 + 9) + 24);
      v109 = *(v311 - 1);
      v110 = v312[4];
      v331[0] = 1283;
      *&v328 = "expected ranked output from ";
      v329 = v108;
      v330 = v107;
      mlir::ODIE::Compiler::getShapedRankedType((v109 & 0xFFFFFFFFFFFFFFF8), v110, &v328, &__s1);
      if (v325 != 1)
      {
        return 0;
      }

      *&v328 = getAbsOps(v104, v108, v107, &__src, &__s1);
      BYTE8(v328) = v111;
      v112 = *(v105 + 9);
      if (v112)
      {
        v113 = (v105 - 2);
      }

      else
      {
        v113 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v113, v112, &v328, 1);
      if (v105[2])
      {
        v105[2] = 0;
        v115 = *v105;
        v114 = v105[1];
        *v114 = *v105;
        *(v115 + 8) = v114;
        *v105 = 0;
        v105[1] = 0;
      }

      mlir::Operation::destroy(v105);
      v7 = v103;
      goto LABEL_30;
    }

    *&v328 = *(v311 + 6);
    v55 = mlir::OperationName::stripDialect(&v328);
    if (v56 == 3 && *v55 == 25697 && *(v55 + 2) == 100)
    {
      if ((replaceBinaryOp<mlir::ODIE::Compiler::CoreML::AddOp,true>(v312, v311) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_51;
    }

    *&v328 = *(v311 + 6);
    v58 = mlir::OperationName::stripDialect(&v328);
    if (v59 == 5 && *v58 == 1835295841 && *(v58 + 4) == 109)
    {
      v308 = v8;
      v118 = v311;
      v119 = v312;
      v120 = *(*(v311 + 9) + 24);
      v319[0] = v120;
      *&v328 = "expected ranked tensor bias input to addmm";
      v331[0] = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v120, &v328, &__s1);
      if (v325 != 1)
      {
        return 0;
      }

      v121 = *(v118[9] + 56);
      *&v328 = "expected ranked tensor mat1 input to addmm";
      v331[0] = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v121, &v328, &__s1);
      if (v325 != 1)
      {
        return 0;
      }

      v122 = *(v118[9] + 88);
      *&v328 = "expected ranked tensor mat2 input to addmm";
      v331[0] = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v122, &v328, &__s1);
      if (v325 != 1)
      {
        return 0;
      }

      inserted = insertMatmul(v119, v121, v122);
      if ((v124 & 1) == 0)
      {
        return 0;
      }

      v125 = inserted;
      v301 = v119;
      v317[0] = inserted;
      if ((*(inserted + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v126 = (*(inserted + 8) & 0xFFFFFFFFFFFFFFF8);
        v127 = *v126;
        v128 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v129 = mlir::detail::InterfaceMap::lookup(v127 + 8, v128);
      }

      else
      {
        v126 = 0;
        v129 = 0;
      }

      v149 = (*(v120 + 8) & 0xFFFFFFFFFFFFFFF8);
      v299 = v118;
      if (v149)
      {
        v150 = *v149;
        v151 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v152 = mlir::detail::InterfaceMap::lookup(v150 + 8, v151);
      }

      else
      {
        v152 = 0;
      }

      __s1 = &v325;
      v324 = 0x600000000;
      v153 = (*(v152 + 24))(v152, v149);
      v155 = v154;
      v156 = (*(v129 + 24))(v129, v126);
      if (mlir::OpTrait::util::getBroadcastedShape(v153, v155, v156, v157, &__s1))
      {
        (*(v152 + 24))(v152, v149);
        v159 = v158;
        (*(v129 + 24))(v129, v126);
        if (v159 == v160)
        {
LABEL_300:
          v166 = (*(v152 + 24))(v152, v149);
          v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
          v3 = a2;
          v8 = v308;
          v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
          if (v167 != v324 || memcmp(__s1, v166, 8 * v324))
          {
            __src = v319[0];
            v351 = v125;
            mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, v301, &v328);
            if (v332 != 1)
            {
              v173 = 0;
              goto LABEL_368;
            }

            v319[0] = *v328;
            __src = (*(v319[0] + 8) & 0xFFFFFFFFFFFFFFF8);
            llvm::cast<mlir::ShapedType,mlir::Type>(&__src);
            if ((v332 & 1) != 0 && v328 != &v329)
            {
              free(v328);
            }
          }

          v168 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Value &,mlir::Value &>(v301, v301[4], v317, v319);
          v169 = v299[9];
          v170 = (v299 - 4);
          if (!v169)
          {
            v170 = 0;
          }

          __src = v170;
          v351 = v169;
          v171 = *(v168 + 9);
          v172 = v168 - 16;
          if (!v171)
          {
            v172 = 0;
          }

          *&v328 = v172;
          *(&v328 + 1) = v171;
          mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__src, &v328);
          mlir::Operation::erase(v299);
          v173 = 1;
        }

        else
        {
          v161 = (*(v129 + 24))(v129, v126);
          v163 = mlir::ODIE::Compiler::reshapeWithOnesForBroadcast(v301, v120, v161, v162);
          if (v164)
          {
            v319[0] = v163;
            *&v328 = *(v163 + 1) & 0xFFFFFFFFFFFFFFF8;
            v149 = llvm::cast<mlir::ShapedType,mlir::Type>(&v328);
            v152 = v165;
            goto LABEL_300;
          }

          v173 = 0;
          v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
          v3 = a2;
          v8 = v308;
          v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
        }

LABEL_368:
        if (__s1 != &v325)
        {
          free(__s1);
        }

        if ((v173 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      if ((~*(v120 + 8) & 7) != 0)
      {
        v174 = v120;
      }

      else
      {
        v174 = 0;
      }

      v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
      v3 = a2;
      v8 = v308;
      v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
      if (v174)
      {
        v175 = *(v174 + 8) & 7;
        if (v175 == 6)
        {
          v176 = v174 + 24 * *(v174 + 16) + 120;
          if (!v176)
          {
            goto LABEL_317;
          }
        }

        else
        {
          v176 = v174 + 16 * v175 + 16;
        }

        v177 = (v176 + 24);
      }

      else
      {
LABEL_317:
        v177 = (v120 + 32);
      }

      v209 = *v177;
      __src = "Can't broadcast incompatible shapes";
      v354 = 259;
      emitDiag(v209, 2, &__src, &v328);
      v173 = v339 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v328);
      goto LABEL_368;
    }

    *&v328 = *(v311 + 6);
    v61 = mlir::OperationName::stripDialect(&v328);
    if (v62 == 5 && *v61 == 1634298977 && *(v61 + 4) == 115)
    {
      if ((replaceWithInput(v61, v311) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_51;
    }

    *&v328 = *(v311 + 6);
    v64 = mlir::OperationName::stripDialect(&v328);
    if (v65 == 3 && *v64 == 28257 && *(v64 + 2) == 121)
    {
      v130 = v311;
      if (v311[46] < 0 && *(v311 + 17) == 1)
      {
        v309 = v8;
        v131 = v7;
        v132 = v312;
        v133 = *(*(v311 + 9) + 24);
        AxesForTotalReduction = getAxesForTotalReduction(v312, v133);
        if (v135)
        {
          v136 = AxesForTotalReduction;
          LOBYTE(v328) = 0;
          v137 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v132, &v328, 1);
          v138 = replaceAnyImpl(v132, v130, v133, v136, v137);
          v7 = v131;
          v8 = v309;
          if (!v138)
          {
            return 0;
          }
        }

        else
        {
          v207 = v130[3];
          v327 = 257;
          emitDiag(v207, 2, &__s1, &v328);
          if (v328)
          {
            mlir::Diagnostic::operator<<<68ul>(&v328 + 8, "Unable to get axes to reduce across all dimensions for torch.any op");
          }

          v208 = v339;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v328);
          v8 = v309;
          if (v208)
          {
            return 0;
          }
        }

        goto LABEL_51;
      }

      v178 = *(v311 + 3);
      v327 = 257;
      emitDiag(v178, 2, &__s1, &v328);
      if (v328)
      {
        mlir::Diagnostic::operator<<<30ul>(&v328 + 8, "Expect 1 operand only for any");
      }

      goto LABEL_341;
    }

    *&v328 = *(v311 + 6);
    v67 = mlir::OperationName::stripDialect(&v328);
    if (v68 == 7 && *v67 == 779710049 && *(v67 + 3) == 1835623470)
    {
      v139 = v311;
      if (v311[46] < 0)
      {
        v140 = *(v311 + 17);
        if ((v140 - 4) > 0xFFFFFFFD)
        {
          v192 = v8;
          v193 = v312;
          v194 = *(v311 + 9);
          if (v140 == 3)
          {
            v195 = v194[3];
            v196 = v194[7];
            v197 = v194[11];
          }

          else
          {
            LOBYTE(v328) = 0;
            v197 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v312, &v328, 1);
            v195 = v194[3];
            v196 = v194[7];
          }

          v210 = replaceAnyImpl(v193, v139, v195, v196, v197);
          v8 = v192;
          if (!v210)
          {
            return 0;
          }

          goto LABEL_51;
        }
      }

      v141 = *(v311 + 3);
      v327 = 257;
      emitDiag(v141, 2, &__s1, &v328);
      if (v328)
      {
        mlir::Diagnostic::operator<<<35ul>(&v328 + 8, "Expect 2 or 3 operands for any.dim");
      }

      goto LABEL_341;
    }

    *&v328 = *(v311 + 6);
    v70 = mlir::OperationName::stripDialect(&v328);
    if (v71 == 8 && *v70 == 0x736D69642E796E61)
    {
      v142 = v311;
      if (v311[46] < 0 && (v143 = *(v311 + 17), (v143 - 4) > 0xFFFFFFFD))
      {
        v198 = v312;
        v199 = *(v311 + 9);
        if (v143 == 2)
        {
          LOBYTE(v328) = 0;
          v200 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v312, &v328, 1);
        }

        else
        {
          v200 = v199[11];
        }

        v211 = v199[7];
        v212 = *(v211 + 8);
        v213 = *(*(v212 & 0xFFFFFFFFFFFFFFF8) + 136);
        if ((v212 & 0xFFFFFFFFFFFFFFF8) != 0 && v213 == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
        {
          TupleAs1DIntTensor = getAxesForTotalReduction(v198, v199[3]);
          if (v215)
          {
            goto LABEL_412;
          }

          v216 = v142[3];
          v327 = 257;
          emitDiag(v216, 2, &__s1, &v328);
          if (v328)
          {
            mlir::Diagnostic::operator<<<73ul>(&v328 + 8, "Unable to get axes to reduce across all dimensions for torch.any.dims op");
          }
        }

        else
        {
          v217 = 0;
          if ((v212 & 0xFFFFFFFFFFFFFFF8) == 0 || v213 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
          {
            goto LABEL_413;
          }

          if ((~v212 & 7) == 0)
          {
            v211 = 0;
          }

          if (v211)
          {
            v218 = *(v211 + 8) & 7;
            if (v218 == 6)
            {
              v219 = v211 + 24 * *(v211 + 16) + 120;
            }

            else
            {
              v219 = v211 + 16 * v218 + 16;
            }
          }

          else
          {
            v219 = 0;
          }

          TupleAs1DIntTensor = getTupleAs1DIntTensor(v219, v198);
          if (v229)
          {
LABEL_412:
            v217 = TupleAs1DIntTensor;
LABEL_413:
            if (!replaceAnyImpl(v198, v142, v199[3], v217, v200))
            {
              return 0;
            }

            goto LABEL_51;
          }

          v230 = v142[3];
          v327 = 257;
          emitDiag(v230, 2, &__s1, &v328);
          if (v328)
          {
            mlir::Diagnostic::operator<<<51ul>(&v328 + 8, "Unable to get axes to reduce for torch.any.dims op");
          }
        }
      }

      else
      {
        v144 = *(v311 + 3);
        v327 = 257;
        emitDiag(v144, 2, &__s1, &v328);
        if (v328)
        {
          mlir::Diagnostic::operator<<<44ul>(&v328 + 8, "Expect exactly 2 or 3 operands for any.dims");
        }
      }

      goto LABEL_341;
    }

    *&v328 = *(v311 + 6);
    v72 = mlir::OperationName::stripDialect(&v328);
    if (v73 == 6 && *v72 == 1835496033 && *(v72 + 4) == 30817)
    {
      v145 = v311;
      v146 = *(v311 + 3);
      if (v311[46] < 0)
      {
        v147 = *(v311 + 17);
        if (v147 <= 3 && v147 && *(v311 + 9) == 1)
        {
          v307 = v8;
          v202 = v312;
          v203 = *(v311 + 9);
          v204 = *(v203 + 24);
          v322 = v204;
          if (v147 == 1)
          {
            LODWORD(v328) = 0;
            Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(v312, &v328, 1, 0);
            *&v328 = "expecting ranked tensors";
            v331[0] = 259;
            mlir::ODIE::Compiler::getShapedRankedType(v204, &v328, &__s1);
            if ((v325 & 1) == 0)
            {
              return 0;
            }

            LODWORD(v328) = -1;
            v317[0] = mlir::ODIE::Compiler::create1DTensorConstant<int>(v202, &v328, 1);
            v355[0] = 0x8000000000000000;
            v206 = (*(v324 + 8))(v324, __s1);
            *&v328 = v355;
            *(&v328 + 1) = 1;
            __src = v206;
            v319[0] = 0;
            *&v328 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v206 + 32), &v328, &__src, v319);
            v322 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(v202, v202[4], &v328, &v322, v317) - 16;
            if ((*(v145 + 46) & 0x80) != 0)
            {
              v147 = *(v145 + 17);
              goto LABEL_394;
            }

            v303 = Tensor;
LABEL_421:
            LOBYTE(v328) = 0;
            v220 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v202, &v328, 1);
          }

          else
          {
            Tensor = *(v203 + 56);
LABEL_394:
            v303 = Tensor;
            if (v147 < 3)
            {
              goto LABEL_421;
            }

            v220 = *(v145[9] + 88);
          }

          if (*(v145 + 9))
          {
            v231 = v145 - 2;
          }

          else
          {
            v231 = 0;
          }

          v232 = v231[1];
          v233 = *(v145[6] + 8);
          v235 = *(v233 + 16);
          v234 = *(v233 + 24);
          v327 = 1283;
          __s1 = "output of ";
          v325 = v235;
          v326 = v234;
          *&v328 = &__s1;
          v329 = " must be ranked.";
          v331[0] = 770;
          mlir::ODIE::Compiler::getShapedRankedType((v232 & 0xFFFFFFFFFFFFFFF8), v146, &v328, v317);
          if (v318 != 1)
          {
            return 0;
          }

          v236 = v202[4];
          v237 = mlir::RegisteredOperationName::lookup(v7, *(**v236 + 32));
          if ((v238 & 1) == 0)
          {
            v354 = 1283;
            v352 = "coreml.reduce_argmax";
            v353 = 20;
            v320 = 259;
            llvm::operator+(&__src, v319, &__s1);
            llvm::report_fatal_error(&__s1, 1);
          }

          *&v328 = v236;
          *(&v328 + 1) = v237;
          v329 = v331;
          v330 = 0x400000000;
          v332 = v334;
          v333 = 0x400000000;
          v335 = v337;
          v336 = 0x400000000;
          v338 = 4;
          v339 = &v341;
          v340 = 0x100000000;
          v342 = &v344;
          v343 = 0x100000000;
          v345 = 0;
          v346 = 0;
          v347 = &mlir::detail::TypeIDResolver<void,void>::id;
          v348 = 0;
          v349 = 0;
          mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::build(v202, &v328, v317[0], v322, v303, v220);
          v239 = mlir::Operation::create(&v328);
          mlir::OpBuilder::insert(v202, v239);
          v240 = *(*(v239 + 6) + 16);
          mlir::OperationState::~OperationState(&v328);
          if (v240 == v7)
          {
            v241 = v239;
          }

          else
          {
            v241 = 0;
          }

          *&v328 = v241 - 16;
          v242 = *(v145 + 9);
          if (v242)
          {
            v243 = (v145 - 2);
          }

          else
          {
            v243 = 0;
          }

          mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v243, v242, &v328, 1);
          if (v145[2])
          {
            v145[2] = 0;
            v245 = *v145;
            v244 = v145[1];
            *v244 = *v145;
            *(v245 + 8) = v244;
            *v145 = 0;
            v145[1] = 0;
          }

          mlir::Operation::destroy(v145);
LABEL_30:
          v8 = v307;
          goto LABEL_51;
        }
      }

      v327 = 257;
      emitDiag(v146, 2, &__s1, &v328);
      if (v328)
      {
        mlir::Diagnostic::operator<<<37ul>(&v328 + 8, "expects 1-3 inputs and 1 output for ");
        if (v328)
        {
          v148 = v145[6];
LABEL_340:
          mlir::Diagnostic::operator<<(&v328 + 8, v148);
          goto LABEL_341;
        }
      }

      goto LABEL_341;
    }

    *&v328 = *(v311 + 6);
    v75 = mlir::OperationName::stripDialect(&v328);
    if (v76 == 17)
    {
      v77 = *v75 == 0x732E65676E617261 && *(v75 + 8) == 0x6574735F74726174;
      if (v77 && *(v75 + 16) == 112)
      {
        break;
      }
    }

    *&v328 = *(v311 + 6);
    v79 = mlir::OperationName::stripDialect(&v328);
    if (v80 == 4 && *v79 == 1936679777)
    {
      if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcosOp>(v312, v311) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *&v328 = *(v311 + 6);
      v81 = mlir::OperationName::stripDialect(&v328);
      if (v82 == 5 && (*v81 == 1936679777 ? (v83 = *(v81 + 4) == 104) : (v83 = 0), v83))
      {
        if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcoshOp>(v312, v311) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        *&v328 = *(v311 + 6);
        v84 = mlir::OperationName::stripDialect(&v328);
        if (v85 == 4 && *v84 == 1852404577)
        {
          if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinOp>(v312, v311) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *&v328 = *(v311 + 6);
          v86 = mlir::OperationName::stripDialect(&v328);
          if (v87 == 5 && (*v86 == 1852404577 ? (v88 = *(v86 + 4) == 104) : (v88 = 0), v88))
          {
            LOBYTE(v100) = replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinhOp>(v312, v311);
          }

          else
          {
            *&v328 = *(v311 + 6);
            v89 = mlir::OperationName::stripDialect(&v328);
            if (v90 == 4 && *v89 == 1851880545)
            {
              if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanOp>(v312, v311) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_51;
            }

            *&v328 = *(v311 + 6);
            v91 = mlir::OperationName::stripDialect(&v328);
            if (v92 == 5 && *v91 == 1851880545 && *(v91 + 4) == 104)
            {
              if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanhOp>(v312, v311) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_51;
            }

            *&v328 = *(v311 + 6);
            v94 = mlir::OperationName::stripDialect(&v328);
            if (v95 == 10 && *v94 == 0x6C6F6F705F677661 && *(v94 + 8) == 25650)
            {
              if (!replaceAvgPool2d(v312, v311))
              {
                return 0;
              }

              goto LABEL_51;
            }

            *&v328 = *(v311 + 6);
            v97 = mlir::OperationName::stripDialect(&v328);
            if (v98 == 11 && *v97 == 0x5F65736977746962 && *(v97 + 3) == 0x646E615F65736977)
            {
              if (!replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(v312, v311))
              {
                return 0;
              }

              goto LABEL_51;
            }

            if (v100 < 0x100u)
            {
              if (v100 < 0x100u)
              {
                if (v100 < 0x100u)
                {
                  if (v100 < 0x100u)
                  {
                    if (v100 < 0x100u)
                    {
                      if (v100 < 0x100u)
                      {
                        if (v100 < 0x100u)
                        {
                          if (v100 < 0x100u)
                          {
                            if (v101 >= 0x100u
                            {
                              v3 = a2;
                              if ((v101 & 1) == 0)
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              if (v102 >= 0x100u
                              {
                                v3 = a2;
                                if ((v102 & 1) == 0)
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v3 = a2;
                              }
                            }

                            goto LABEL_51;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          if ((v100 & 1) == 0)
          {
            return 0;
          }
        }
      }
    }

LABEL_51:
    v4 = v8;
    if (v8 == v5)
    {
      goto LABEL_438;
    }
  }

  v179 = v311;
  v180 = v312;
  v181 = *(v311 + 3);
  v317[0] = v181;
  if (*(v311 + 9) != 1 || (v311[46] & 0x80) == 0 || (*(v311 + 17) & 0xFFFFFFFE) != 2)
  {
    v327 = 257;
    emitDiag(v181, 2, &__s1, &v328);
    if (!v328)
    {
      goto LABEL_341;
    }

    mlir::Diagnostic::operator<<<37ul>(&v328 + 8, "expects 2-3 inputs and 1 output for ");
    goto LABEL_338;
  }

  __src = v312;
  v351 = v317;
  v182 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v311 - 1) & 0xFFFFFFFFFFFFFFF8));
  v319[0] = v182;
  v319[1] = v183;
  v302 = v183;
  if (!v182)
  {
    v221 = v179[3];
    v327 = 257;
    emitDiag(v221, 2, &__s1, &v328);
    if (v328)
    {
      mlir::Diagnostic::operator<<<41ul>(&v328 + 8, "expected shaped type for the output for ");
LABEL_338:
      if (!v328)
      {
        goto LABEL_341;
      }

      v148 = v179[6];
      goto LABEL_340;
    }

LABEL_341:
    v201 = v339;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v328);
    if (v201)
    {
      return 0;
    }

    goto LABEL_51;
  }

  v184 = v182;
  v307 = v8;
  v185 = *(v179[9] + 24);
  *&v328 = "expected ranked tensor for start.";
  v331[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v185, &v328, &__s1);
  if (v325)
  {
    v186 = *(v179[9] + 56);
    *&v328 = "expected ranked tensor for end.";
    v331[0] = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v186, &v328, &__s1);
    if (v325)
    {
      v300 = replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(&__src, v185, v184, v302);
      v188 = v187;
      v298 = replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(&__src, v186, v184, v302);
      v190 = v189;
      if ((*(v179 + 46) & 0x80) != 0 && *(v179 + 17) == 3)
      {
        v191 = *(v179[9] + 88);
        *&v328 = "expected ranked tensor for step.";
        v331[0] = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v191, &v328, &__s1);
        if ((v325 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        LODWORD(v328) = 1;
        v191 = mlir::ODIE::Compiler::createTensorConstant<int>(v180, &v328, 1, 0);
      }

      v222 = replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(&__src, v191, v184, v302);
      if (v188 & 1) != 0 && (v190 & 1) != 0 && (v223)
      {
        v321 = v222;
        v322 = v300;
        v355[0] = v298;
        v224 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RangeOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(v180, v180[4], v319, &v322, v355, &v321);
        v225 = *(v179 + 9);
        if (v225)
        {
          v226 = v179 - 2;
        }

        else
        {
          v226 = 0;
        }

        __s1 = v226;
        v324 = v225;
        v227 = *(v224 + 9);
        v228 = v224 - 16;
        if (!v227)
        {
          v228 = 0;
        }

        *&v328 = v228;
        *(&v328 + 1) = v227;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__s1, &v328);
        mlir::Operation::erase(v179);
        v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
        goto LABEL_30;
      }
    }
  }

  return 0;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OutputOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v7 = a3[1];
  v8 = *a3 & 0xFFFFFFFFFFFFFFF9;
  v18[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v13, v8 | 2, 0, v8 | 2, v7);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v10, *a3, *(a3 + 8));
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

uint64_t anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)const::$_0::operator()(void *a1, const void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5)
{
  v15 = *(*a1 + 48);
  v10 = mlir::OperationName::stripDialect(&v15);
  if (v11 == a3 && (!v11 || !memcmp(v10, a2, v11)))
  {
    v12 = a4(a5, a1[1], *a1);
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return v12 | (v13 << 8);
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::AddOp,true>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *(a2[6] + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = a2[9];
  v8 = v7[3];
  v9 = v7[7];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v10 = v7[11];
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = a2[3];
  v62 = v7[7];
  v63 = v8;
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor x input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, &v59);
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor y input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v56);
  if (v61 != 1 || (v58 & 1) == 0)
  {
    return 0;
  }

  v52 = v11;
  v51 = v10;
  v54 = v12;
  v14 = v59;
  v13 = v60;
  v15 = (*(v60 + 8))(v60, v59);
  v16 = v57;
  v53 = v56;
  v17 = (*(v57 + 8))(v57);
  PromotedType = getPromotedType(v15, v17);
  if ((v19 & 1) == 0)
  {
    v73[8] = 257;
    emitDiag(v54, 2, &v71, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v76, "Unable to get promoted type between ");
    }

    v33 = (*(v13 + 8))(v13, v14);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v35 = &v78[24 * v79];
      v36 = *v34;
      *(v35 + 2) = *(v34 + 16);
      *v35 = v36;
      ++v79;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v76, " and ");
      }
    }

    v37 = (*(v16 + 8))(v16, v53);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v37;
      v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v39 = &v78[24 * v79];
      v40 = *v38;
      *(v39 + 2) = *(v38 + 16);
      *v39 = v40;
      ++v79;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  v20 = PromotedType;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, PromotedType);
  if ((v22 & 1) == 0 || (v23 = v21, v63 = v21, v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20), (v25 & 1) == 0))
  {
    v49 = std::__throw_bad_optional_access[abi:nn200100]();
    return replaceWithInput(v49, v50);
  }

  v62 = v24;
  __src = v23;
  v76 = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v71);
  if ((v74 & 1) == 0)
  {
    v69 = 257;
    emitDiag(v54, 2, &v66, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v76, " Unable to broadcast LHS and RHS of ");
      if (__src)
      {
        v69 = 261;
        v66 = v5;
        v67 = v6;
        mlir::Diagnostic::operator<<(&v76, &v66);
        if (__src)
        {
          mlir::Diagnostic::operator<<<4ul>(&v76, " op");
        }
      }
    }

    goto LABEL_30;
  }

  v26 = *v71;
  v27 = *(v71 + 1);
  v62 = v27;
  v63 = v26;
  if (!v52)
  {
LABEL_40:
    v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v63, &v62);
    v42 = (v43 - 16) & 0xFFFFFFFFFFFFFF00;
    v41 = (v43 - 16);
    v31 = 1;
    goto LABEL_41;
  }

  v28 = (*(v16 + 8))(v16, v53);
  v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v51, v28);
  if ((v30 & 1) == 0)
  {
    v69 = 257;
    emitDiag(v54, 2, &v66, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<49ul>(&v76, "Failed to cast alpha to rhs element type for op ");
      if (__src)
      {
        v69 = 261;
        v66 = v5;
        v67 = v6;
        mlir::Diagnostic::operator<<(&v76, &v66);
      }
    }

LABEL_30:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v41 = 0;
    v31 = 0;
    goto LABEL_31;
  }

  __src = v27;
  v76 = v29;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v66);
  v31 = v70;
  if (v70)
  {
    v32 = *(v66 + 1);
    __src = *v66;
    v64[0] = v32;
    v55 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
    v62 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v54, &v55, &__src, v64) - 16;
  }

  else
  {
    v65 = 257;
    emitDiag(v54, 2, v64, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<41ul>(&v76, "Unable to broadcast RHS and alpha of op ");
      if (__src)
      {
        v65 = 261;
        v64[0] = v5;
        v64[1] = v6;
        mlir::Diagnostic::operator<<(&v76, v64);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v70 == 1 && v66 != &v68)
  {
    free(v66);
  }

  if (v31)
  {
    goto LABEL_40;
  }

  v41 = 0;
LABEL_31:
  v42 = 0;
LABEL_41:
  if (v74 == 1 && v71 != v73)
  {
    free(v71);
  }

  __src = (v42 | v41);
  LOBYTE(v76) = v31;
  if (!v31)
  {
    return 0;
  }

  v44 = *(a2 + 9);
  if (v44)
  {
    v45 = (a2 - 2);
  }

  else
  {
    v45 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v45, v44, &__src, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v47 = *a2;
    v46 = a2[1];
    *v46 = *a2;
    *(v47 + 8) = v46;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

uint64_t replaceWithInput(uint64_t a1, uint64_t *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v3 = a2 + 9;
    v4 = *(a2 + 17);
    if (v4 == *(a2 + 9))
    {
      v57 = a2[9];
      *&v58 = v57;
      *(&v58 + 1) = v4;
      v5 = a2 - 2;
      v6 = (a2 - 2);
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

LABEL_38:
    v46 = a2[3];
    v56 = 257;
    emitDiag(v46, 2, &v52, &v57);
    if (v57)
    {
      mlir::Diagnostic::operator<<(&v57 + 8, a2[6]);
      if (v57)
      {
        mlir::Diagnostic::operator<<<96ul>(&v57 + 8, " cannot replace an op with its operands if the number of operands and results don't match, got ");
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v47 = *(a2 + 17);
    }

    else
    {
      v47 = 0;
    }

    LODWORD(v52) = v47;
    v48 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v57, &v52);
    v49 = v48;
    if (*v48)
    {
      mlir::Diagnostic::operator<<<6ul>((v48 + 1), " vs. ");
    }

    v51 = *v3;
    v45 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v49, &v51) + 200);
    goto LABEL_46;
  }

  v3 = a2 + 9;
  if (*(a2 + 9))
  {
    goto LABEL_38;
  }

  v4 = 0;
  v57 = 0u;
  v58 = 0u;
  v5 = a2 - 2;
LABEL_4:
  v6 = 0;
LABEL_5:
  v52 = v6;
  v53 = 0;
  v54 = v6;
  v55 = v4;
  if (!mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(&v57, &v52))
  {
    v14 = a2[3];
    v56 = 257;
    emitDiag(v14, 2, &v52, &v57);
    if (v57)
    {
      mlir::Diagnostic::operator<<(&v57 + 8, a2[6]);
      if (v57)
      {
        mlir::Diagnostic::operator<<<54ul>(&v57 + 8, " expected operand and result to have the same types: ");
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      if (v57)
      {
        v15 = *(a2 + 17);
        if (!v15)
        {
          goto LABEL_24;
        }

        v16 = a2[9];
        v17 = *(*(v16 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v52) = 4;
        v53 = v17;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58 + 8, &v52, 1);
        v19 = *(&v58 + 1) + 24 * v59;
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++v59;
        if (v15 != 1)
        {
          v21 = v15 - 1;
          v22 = (v16 + 56);
          do
          {
            v52 = ", ";
            v56 = 259;
            mlir::Diagnostic::operator<<(&v57 + 8, &v52);
            v23 = *v22;
            v22 += 4;
            v24 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v52) = 4;
            v53 = v24;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58 + 8, &v52, 1);
            v26 = *(&v58 + 1) + 24 * v59;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v59;
            --v21;
          }

          while (v21);
        }

        if (v57)
        {
LABEL_24:
          mlir::Diagnostic::operator<<<5ul>(&v57 + 8, " vs ");
          v28 = *v3;
          if (v28)
          {
            v29 = v5;
          }

          else
          {
            v29 = 0;
          }

          if (v57)
          {
            if (v28)
            {
              v30 = v5[1] & 0xFFFFFFFFFFFFFFF8;
              LODWORD(v52) = 4;
              v53 = v30;
              v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58 + 8, &v52, 1);
              v32 = *(&v58 + 1) + 24 * v59;
              v33 = *v31;
              *(v32 + 16) = *(v31 + 16);
              *v32 = v33;
              ++v59;
              if (v28 != 1)
              {
                v34 = v29 - 2;
                v35 = 1;
                while (1)
                {
                  v52 = ", ";
                  v56 = 259;
                  mlir::Diagnostic::operator<<(&v57 + 8, &v52);
                  v36 = v5[1] & 7;
                  v37 = v29;
                  v38 = v35;
                  if (v36 == 6)
                  {
                    goto LABEL_34;
                  }

                  v39 = (5 - v36);
                  v40 = v34;
                  v38 = v35 - v39;
                  if (v35 > v39)
                  {
                    break;
                  }

LABEL_35:
                  v41 = v40[1] & 0xFFFFFFFFFFFFFFF8;
                  LODWORD(v52) = 4;
                  v53 = v41;
                  v42 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58 + 8, &v52, 1);
                  v43 = *(&v58 + 1) + 24 * v59;
                  v44 = *v42;
                  *(v43 + 16) = *(v42 + 16);
                  *v43 = v44;
                  ++v59;
                  ++v35;
                  v34 -= 2;
                  if (v28 == v35)
                  {
                    goto LABEL_36;
                  }
                }

                v37 = &v29[-2 * v39];
LABEL_34:
                v40 = &v37[-3 * v38];
                goto LABEL_35;
              }
            }
          }
        }
      }
    }

    else if (v57)
    {
      goto LABEL_24;
    }

LABEL_36:
    v45 = v60;
LABEL_46:
    v13 = v45 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
    return v13 & 1;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = a2[9];
    v8 = *(a2 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v52 = v7;
  v53 = v8;
  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  *&v57 = v10;
  *(&v57 + 1) = v9;
  mlir::ResultRange::replaceAllUsesWith<mlir::OperandRange>(&v57, &v52);
  if (a2[2])
  {
    a2[2] = 0;
    v12 = *a2;
    v11 = a2[1];
    *v11 = *a2;
    *(v12 + 8) = v11;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v13 = 1;
  return v13 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcosOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcosOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.acos";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::AcosOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcosOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcoshOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcoshOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.acosh";
      v52 = 12;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::AcoshOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcoshOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.asin";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::AsinOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinhOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinhOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.asinh";
      v52 = 12;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::AsinhOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinhOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.atan";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::AtanOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanhOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanhOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.atanh";
      v52 = 12;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::AtanhOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanhOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL replaceAvgPool2d(mlir::OpBuilder *a1, uint64_t *a2)
{
  v67[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 17);
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "avg_pool_2d");
  v5 = validatePoolingOpInput(a2, &__p);
  v6 = v5;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "avg_pool_2d");
  getPoolingOpKernelStridePadding(&v46, a1, a2, v4, &__p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  if (v52 != 1)
  {
    return 0;
  }

  v7 = v46;
  v8 = v47;
  v9 = v48;
  v10 = v49;
  v11 = v50;
  v12 = v51;
  BooleanFromOptionalTensor = getBooleanFromOptionalTensor(v4, a1, a2, 4, 0);
  if ((v14 & 1) == 0)
  {
    v36 = a2[3];
    v56 = 257;
    emitDiag(v36, 2, v55, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<44ul>(&v58, "avg_pool_2d - failed to construct ceil_mode");
    }

    goto LABEL_40;
  }

  v15 = BooleanFromOptionalTensor;
  v16 = getBooleanFromOptionalTensor(v4, a1, a2, 5, 1);
  if ((v17 & 1) == 0)
  {
    v37 = a2[3];
    v56 = 257;
    emitDiag(v37, 2, v55, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<52ul>(&v58, "avg_pool_2d - failed to construct count_include_pad");
    }

    goto LABEL_40;
  }

  v45 = v16;
  if (v4 <= 6)
  {
    LODWORD(__p) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__p, 1, 0);
    goto LABEL_14;
  }

  Tensor = *(a2[9] + 216);
  v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(Tensor + 1) & 0xFFFFFFFFFFFFFFF8));
  if (!v38 || ((*(v39 + 24))(v39, v38), v40))
  {
    v41 = a2[3];
    v56 = 257;
    emitDiag(v41, 2, v55, &__p);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v42 = a2[3];
    v56 = 257;
    emitDiag(v42, 2, v55, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<51ul>(&v58, "avg_pool_2d - failed to construct divisor_override");
    }

LABEL_40:
    v34 = v64 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    return v34 & 1;
  }

LABEL_14:
  if (*(a2 + 9))
  {
    v19 = a2 - 2;
  }

  else
  {
    v19 = 0;
  }

  if ((v8 & 1) == 0 || (v10 & 1) == 0 || (v12 & 1) == 0)
  {
    v43 = std::__throw_bad_optional_access[abi:nn200100]();
    return replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(v43, v44);
  }

  v20 = *(a2[9] + 24);
  v21 = v19[1];
  v22 = *(a1 + 4);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,void>::id, *(**v22 + 32));
  if ((v24 & 1) == 0)
  {
    v56 = 1283;
    v55[2] = "coreml.avg_pool_2d";
    v55[3] = 18;
    v54 = 259;
    llvm::operator+(v55, &v53, &__p);
    llvm::report_fatal_error(&__p, 1);
  }

  __p = v22;
  v58 = v23;
  v59 = v61;
  v60 = 0x400000000;
  v61[4] = v62;
  v61[5] = 0x400000000;
  v62[4] = v63;
  v62[5] = 0x400000000;
  v63[8] = 4;
  v64 = v66;
  v65 = 0x100000000;
  v66[1] = v67;
  v66[2] = 0x100000000;
  v67[1] = 0;
  v67[2] = 0;
  v67[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v67[4] = 0;
  v67[6] = 0;
  mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(a1, &__p, v21 & 0xFFFFFFFFFFFFFFF8, v20, v7, v9, v11, v15, v45, Tensor);
  v25 = mlir::Operation::create(&__p);
  mlir::OpBuilder::insert(a1, v25);
  v26 = *(*(v25 + 6) + 16);
  mlir::OperationState::~OperationState(&__p);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(a2 + 9);
  v29 = a2 - 2;
  if (!v28)
  {
    v29 = 0;
  }

  v55[0] = v29;
  v55[1] = v28;
  v30 = *(v27 + 9);
  v31 = v27 - 16;
  if (!v30)
  {
    v31 = 0;
  }

  __p = v31;
  v58 = v30;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v55, &__p);
  if (a2[2])
  {
    a2[2] = 0;
    v33 = *a2;
    v32 = a2[1];
    *v32 = *a2;
    *(v33 + 8) = v32;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v34 = 1;
  return v34 & 1;
}

BOOL replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) >= 3u)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<35ul>(v53, "expects 2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v53, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v4 = *(a2 + 68);
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v47) = v4;
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, &v47) + 200);
    goto LABEL_46;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
  }

  else
  {
    v17 = 0;
  }

  v44 = 0;
  v43 = (*(v13 + 8))(v13, v10);
  v42 = (*(v17 + 8))(v17, v14);
  v18 = mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(*a1, &v43, &v42);
  v40 = v18;
  v41 = v19;
  if ((v19 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<28ul>(v53, "Failed to compute cast for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(v53, " between types:");
        }
      }
    }

    v30 = (*(v13 + 8))(v13, v10);
    if (__src)
    {
      LODWORD(v47) = 4;
      v48 = v30;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v47, 1);
      v32 = v54 + 24 * v55;
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++v55;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v53, " and ");
      }
    }

    v34 = (*(v17 + 8))(v17, v14);
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v47) = 4;
    v48 = v34;
    goto LABEL_34;
  }

  v20 = v18;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v18);
  v23 = v22;
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
  if ((v23 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<29ul>(v53, "Failed to cast operand 0 of ");
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<(v53, *(a2 + 48));
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<5ul>(v53, " to ");
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v47) = 4;
    v48 = v20;
LABEL_34:
    v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v47, 1);
    v36 = v54 + 24 * v55;
    v37 = *v35;
    *(v36 + 16) = *(v35 + 16);
    *v36 = v37;
    ++v55;
LABEL_45:
    v5 = v56;
LABEL_46:
    v29 = (v5 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v29;
  }

  if ((v25 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<29ul>(v53, "Failed to cast operand 1 of ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<5ul>(v53, " to ");
          if (__src)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v53, &v40);
          }
        }
      }
    }

    goto LABEL_45;
  }

  __src = v21;
  v53[0] = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v47);
  if (v51)
  {
    v26 = *(v47 + 1);
    __src = *v47;
    v45[0] = v26;
    v39 = *(__src + 8) & 0xFFFFFFFFFFFFFFF8;
    v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v3, &v39, &__src, v45) - 16;
    v27 = *(a2 + 36);
    if (v27)
    {
      v28 = (a2 - 16);
    }

    else
    {
      v28 = 0;
    }

    v29 = 1;
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v44, 1);
    mlir::Operation::erase(a2);
  }

  else
  {
    v46 = 257;
    emitDiag(v3, 2, v45, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(v53, "Failed to broadcast values for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
      }
    }

    v29 = (v56 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v51 == 1 && v47 != &v49)
  {
    free(v47);
  }

  return v29;
}

BOOL replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) >= 3u)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<35ul>(v53, "expects 2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v53, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v4 = *(a2 + 68);
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v47) = v4;
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, &v47) + 200);
    goto LABEL_46;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
  }

  else
  {
    v17 = 0;
  }

  v44 = 0;
  v43 = (*(v13 + 8))(v13, v10);
  v42 = (*(v17 + 8))(v17, v14);
  v18 = mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(*a1, &v43, &v42);
  v40 = v18;
  v41 = v19;
  if ((v19 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<28ul>(v53, "Failed to compute cast for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(v53, " between types:");
        }
      }
    }

    v30 = (*(v13 + 8))(v13, v10);
    if (__src)
    {
      LODWORD(v47) = 4;
      v48 = v30;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v47, 1);
      v32 = v54 + 24 * v55;
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++v55;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v53, " and ");
      }
    }

    v34 = (*(v17 + 8))(v17, v14);
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v47) = 4;
    v48 = v34;
    goto LABEL_34;
  }

  v20 = v18;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v18);
  v23 = v22;
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
  if ((v23 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<29ul>(v53, "Failed to cast operand 0 of ");
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<(v53, *(a2 + 48));
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<5ul>(v53, " to ");
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v47) = 4;
    v48 = v20;
LABEL_34:
    v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v47, 1);
    v36 = v54 + 24 * v55;
    v37 = *v35;
    *(v36 + 16) = *(v35 + 16);
    *v36 = v37;
    ++v55;
LABEL_45:
    v5 = v56;
LABEL_46:
    v29 = (v5 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v29;
  }

  if ((v25 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<29ul>(v53, "Failed to cast operand 1 of ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<5ul>(v53, " to ");
          if (__src)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v53, &v40);
          }
        }
      }
    }

    goto LABEL_45;
  }

  __src = v21;
  v53[0] = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v47);
  if (v51)
  {
    v26 = *(v47 + 1);
    __src = *v47;
    v45[0] = v26;
    v39 = *(__src + 8) & 0xFFFFFFFFFFFFFFF8;
    v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v3, &v39, &__src, v45) - 16;
    v27 = *(a2 + 36);
    if (v27)
    {
      v28 = (a2 - 16);
    }

    else
    {
      v28 = 0;
    }

    v29 = 1;
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v44, 1);
    mlir::Operation::erase(a2);
  }

  else
  {
    v46 = 257;
    emitDiag(v3, 2, v45, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(v53, "Failed to broadcast values for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
      }
    }

    v29 = (v56 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v51 == 1 && v47 != &v49)
  {
    free(v47);
  }

  return v29;
}

BOOL replaceBitwiseNot(mlir::OpBuilder *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || (*(a2 + 68) - 3) < 0xFFFFFFFE || *(a2 + 36) != 1)
  {
    v10 = *(a2 + 24);
    v37 = 257;
    emitDiag(v10, 2, v36, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<36ul>(v39, "expect 1-2 inputs and 1 output for ");
LABEL_14:
      if (v38)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v36);
        mlir::Diagnostic::appendOp(v39, a2, v36);
      }
    }

LABEL_16:
    v8 = (v41 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    return v8;
  }

  v4 = *(*(a2 + 72) + 24);
  v38 = "Input must be a shaped type";
  v40 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v38, &v33);
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 8);
  v7 = *(a2 + 24);
  v38 = "Output must be a shaped type";
  v40 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v38, &v30);
  v8 = 0;
  if (v35 == 1 && (v32 & 1) != 0)
  {
    if (*(*(*(v34 + 8))(v34, v33) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v9 = *(a2 + 24);
      v37 = 257;
      emitDiag(v9, 2, v36, &v38);
      if (v38)
      {
        mlir::Diagnostic::operator<<<38ul>(v39, "expect integral or BOOLean input for ");
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    LODWORD(v38) = 1;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v38, 1, 0);
    AddWithScalar = mlir::ODIE::Compiler::getAddWithScalar(a1, v4, Tensor);
    if (v14)
    {
      v15 = AddWithScalar;
      LODWORD(v38) = -1;
      v16 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v38, 1, 0);
      MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v15, v16);
      if (v18)
      {
        v19 = MultiplyWithScalar;
        v20 = (*(v31 + 8))(v31, v30);
        v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v19, v20);
        v29 = v21;
        if ((v21 & 1) == 0)
        {
          v27 = *(a2 + 24);
          v37 = 257;
          emitDiag(v27, 2, v36, &v38);
          if (v38)
          {
            mlir::Diagnostic::operator<<<16ul>(v39, "failed to cast ");
            if (v38)
            {
              mlir::Diagnostic::operator<<(v39, v19);
              if (v38)
              {
                mlir::Diagnostic::operator<<<5ul>(v39, " to ");
                if (v38)
                {
                  mlir::Diagnostic::operator<<<mlir::ShapedType &>(v39, &v30);
                }
              }
            }
          }

          goto LABEL_16;
        }

        v22 = *(a2 + 36);
        if (v22)
        {
          v23 = (a2 - 16);
        }

        else
        {
          v23 = 0;
        }

        v8 = 1;
        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v23, v22, &v28, 1);
        mlir::Operation::erase(a2);
        return v8;
      }

      v26 = *(a2 + 24);
      v37 = 257;
      emitDiag(v26, 2, v36, &v38);
      if (!v38)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<20ul>(v39, "unable to multiply ");
      if (!v38)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<(v39, v15);
      if (!v38)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<6ul>(v39, " and ");
      if (!v38)
      {
        goto LABEL_16;
      }

      v25 = v16;
    }

    else
    {
      v24 = *(a2 + 24);
      v37 = 257;
      emitDiag(v24, 2, v36, &v38);
      if (!v38)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<15ul>(v39, "unable to add ");
      if (!v38)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<(v39, v4);
      if (!v38)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<6ul>(v39, " and ");
      if (!v38)
      {
        goto LABEL_16;
      }

      v25 = Tensor;
    }

    mlir::Diagnostic::operator<<(v39, v25);
    goto LABEL_16;
  }

  return v8;
}

BOOL replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) >= 3u)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<35ul>(v53, "expects 2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v53, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v4 = *(a2 + 68);
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v47) = v4;
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, &v47) + 200);
    goto LABEL_46;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
  }

  else
  {
    v17 = 0;
  }

  v44 = 0;
  v43 = (*(v13 + 8))(v13, v10);
  v42 = (*(v17 + 8))(v17, v14);
  v18 = mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(*a1, &v43, &v42);
  v40 = v18;
  v41 = v19;
  if ((v19 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<28ul>(v53, "Failed to compute cast for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(v53, " between types:");
        }
      }
    }

    v30 = (*(v13 + 8))(v13, v10);
    if (__src)
    {
      LODWORD(v47) = 4;
      v48 = v30;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v47, 1);
      v32 = v54 + 24 * v55;
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++v55;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v53, " and ");
      }
    }

    v34 = (*(v17 + 8))(v17, v14);
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v47) = 4;
    v48 = v34;
    goto LABEL_34;
  }

  v20 = v18;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v18);
  v23 = v22;
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
  if ((v23 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<29ul>(v53, "Failed to cast operand 0 of ");
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<(v53, *(a2 + 48));
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<5ul>(v53, " to ");
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v47) = 4;
    v48 = v20;
LABEL_34:
    v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v47, 1);
    v36 = v54 + 24 * v55;
    v37 = *v35;
    *(v36 + 16) = *(v35 + 16);
    *v36 = v37;
    ++v55;
LABEL_45:
    v5 = v56;
LABEL_46:
    v29 = (v5 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v29;
  }

  if ((v25 & 1) == 0)
  {
    v50 = 257;
    emitDiag(v3, 2, &v47, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<29ul>(v53, "Failed to cast operand 1 of ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<5ul>(v53, " to ");
          if (__src)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v53, &v40);
          }
        }
      }
    }

    goto LABEL_45;
  }

  __src = v21;
  v53[0] = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v47);
  if (v51)
  {
    v26 = *(v47 + 1);
    __src = *v47;
    v45[0] = v26;
    v39 = *(__src + 8) & 0xFFFFFFFFFFFFFFF8;
    v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v3, &v39, &__src, v45) - 16;
    v27 = *(a2 + 36);
    if (v27)
    {
      v28 = (a2 - 16);
    }

    else
    {
      v28 = 0;
    }

    v29 = 1;
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v44, 1);
    mlir::Operation::erase(a2);
  }

  else
  {
    v46 = 257;
    emitDiag(v3, 2, v45, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(v53, "Failed to broadcast values for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v53, *(a2 + 48));
      }
    }

    v29 = (v56 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v51 == 1 && v47 != &v49)
  {
    free(v47);
  }

  return v29;
}

uint64_t replaceBMM(void ***a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v16 = "expected ranked tensor input for bmm";
  v18 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v16, v14);
  if (v15 != 1)
  {
    return 0;
  }

  v5 = *(*(a2 + 72) + 56);
  v16 = "expected ranked tensor mat2 for bmm";
  v18 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v16, v14);
  if (v15 != 1)
  {
    return 0;
  }

  inserted = insertMatmul(a1, v4, v5);
  if ((v7 & 1) == 0)
  {
    v13[16] = 257;
    mlir::Operation::emitError(&v16, a2, v13);
    if (v16)
    {
      mlir::Diagnostic::operator<<<26ul>(v17, "Failed to insert matmul: ");
      if (v16)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v14);
        mlir::Diagnostic::appendOp(v17, a2, v14);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v16 = inserted;
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = (a2 - 16);
  }

  else
  {
    v9 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v9, v8, &v16, 1);
  if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
    v11 = *a2;
    v10 = *(a2 + 8);
    *v10 = *a2;
    v11[1] = v10;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

uint64_t replaceCat(mlir::OpBuilder *a1, uint64_t *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a2[9];
  v5 = *(v4 + 24);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1)
  {
    LODWORD(v54) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v54, 1, 0);
    v50 = Tensor;
  }

  else
  {
    Tensor = *(v4 + 56);
    v54 = "expected ranked tensor dim input to cat";
    v56[8] = 259;
    mlir::ODIE::Compiler::getShapedRankedType(Tensor, &v54, v51);
    if (v52[0] != 1)
    {
      return 0;
    }
  }

  v54 = v56;
  v55 = 0x600000000;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = *(v7 + 8) & 7;
    if (v8 == 6)
    {
      v9 = v7 + 24 * *(v7 + 16) + 120;
    }

    else
    {
      v9 = v7 + 16 * v8 + 16;
    }
  }

  else
  {
    v9 = 0;
  }

  if (disaggregateTupleInputs(v9, a2[3], &v54))
  {
    v43 = Tensor;
    if (*(a2 + 9))
    {
      v11 = a2 - 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11[1];
    v13 = a2[3];
    v51[0] = "expecting RankedTensorType for result of torch.cat";
    v53 = 259;
    mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, v51, &v48);
    v41 = v48;
    v42 = v49;
    v14 = (*(v49 + 8))();
    v51[0] = v52;
    v51[1] = 0x600000000;
    if (v55)
    {
      v15 = v14;
      v16 = v54;
      v17 = &v54[8 * v55];
      while (1)
      {
        v18 = *(*v16 + 8);
        v19 = a2[3];
        v44[0] = "expecting RankedTensorType for input of torch.cat";
        v45 = 259;
        mlir::ODIE::Compiler::getShapedRankedType((v18 & 0xFFFFFFFFFFFFFFF8), v19, v44, &v46);
        v21 = v46;
        v20 = v47;
        if (!(*(v47 + 16))(v47, v46))
        {
          goto LABEL_29;
        }

        v22 = (*(v20 + 24))(v20, v21);
        if (v23)
        {
          break;
        }

LABEL_25:
        v25 = (*(v20 + 24))(v20, v21);
        if (!v26)
        {
          goto LABEL_29;
        }

        v27 = 8 * v26;
        v28 = 1;
        do
        {
          v29 = *v25++;
          v28 *= v29;
          v27 -= 8;
        }

        while (v27);
        if (v28)
        {
          goto LABEL_29;
        }

LABEL_31:
        if (++v16 == v17)
        {
          goto LABEL_32;
        }
      }

      v24 = 8 * v23;
      while (*v22 != 0x8000000000000000)
      {
        ++v22;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_25;
        }
      }

LABEL_29:
      v30 = mlir::ODIE::Compiler::castValueToElementType(a1, *v16, v15);
      if ((v31 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v51, v30);
      goto LABEL_31;
    }

LABEL_32:
    (*(v42 + 24))(v42, v41);
    v50 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v43, v32);
    v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, *(a1 + 4), &v50, v51);
    v34 = *(a2 + 9);
    v35 = a2 - 2;
    if (!v34)
    {
      v35 = 0;
    }

    v46 = v35;
    v47 = v34;
    v36 = *(v33 + 9);
    v37 = (v33 - 16);
    if (!v36)
    {
      v37 = 0;
    }

    v44[0] = v37;
    v44[1] = v36;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v46, v44);
    if (a2[2])
    {
      a2[2] = 0;
      v39 = *a2;
      v38 = a2[1];
      *v38 = *a2;
      *(v39 + 8) = v38;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    if (v51[0] != v52)
    {
      free(v51[0]);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (v54 != v56)
  {
    free(v54);
  }

  return v10;
}

BOOL replaceCeil(void ***a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v11 = a2[3];
    v20 = 257;
    emitDiag(v11, 2, v19, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<45ul>(v22, "expect a single operand for TorchImport.ceil");
    }

    goto LABEL_14;
  }

  v4 = *(a2[9] + 24);
  v21 = "expected shaped type for input to TorchImport.ceil";
  v23 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v21, v18);
  v21 = "expected shaped type for output of TorchImport.ceil";
  v23 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v21, v16);
  v5 = 0;
  if (v18[16] != 1 || (v17 & 1) == 0)
  {
    return v5;
  }

  CeilOfTensor = mlir::ODIE::Compiler::getCeilOfTensor(a1, v4, v16[0], v16[1]);
  v15 = v6;
  if ((v6 & 1) == 0)
  {
    v13 = a2[3];
    v20 = 257;
    emitDiag(v13, 2, v19, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<43ul>(v22, "unable to get the lowering for ceiling of ");
      if (v21)
      {
        mlir::Diagnostic::operator<<(v22, v4);
      }
    }

LABEL_14:
    v5 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    return v5;
  }

  v7 = *(a2 + 9);
  if (v7)
  {
    v8 = (a2 - 2);
  }

  else
  {
    v8 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v8, v7, &CeilOfTensor, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v10 = *a2;
    v9 = a2[1];
    *v9 = *a2;
    *(v10 + 8) = v9;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

uint64_t replaceClamp(uint64_t *a1, uint64_t *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = *(a2 + 17);
  if (v3 - 4 <= 0xFFFFFFFD)
  {
LABEL_3:
    v4 = a2[3];
    v51 = 257;
    emitDiag(v4, 2, v49, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<38ul>(v54, "do not expect torch.clamp op to have ");
      if (__src)
      {
        LODWORD(v49[0]) = 5;
        v49[1] = v3;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, v49, 1);
        v6 = v55 + 24 * v56;
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++v56;
        if (__src)
        {
          mlir::Diagnostic::operator<<<10ul>(v54, " operands");
        }
      }
    }

    goto LABEL_52;
  }

  v9 = *(a2[9] + 24);
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v9 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(a2 + 9))
  {
    v11 = a2 - 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v11[1] & 0xFFFFFFFFFFFFFFF8));
  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a2[3];
    v51 = 257;
    emitDiag(v15, 2, v49, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<60ul>(v54, "input and output of torch.clamp must be shaped tensor types");
    }

    goto LABEL_52;
  }

  v16 = (*(v13 + 8))(v13, v12);
  v17 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v16);
  if ((v18 & 1) == 0)
  {
    v24 = a2[3];
    v51 = 257;
    emitDiag(v24, 2, v49, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<52ul>(v54, "unable to cast input to same element type as result");
    }

    goto LABEL_52;
  }

  v19 = v17;
  v44 = v17;
  v20 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v20)
  {
    v21 = *v20;
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22);
  }

  else
  {
    v23 = 0;
  }

  v25 = *(a2[9] + 56);
  if (*(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v26 = a2[3];
    v46 = v19;
    v27 = (*(v23 + 8))(v23, v20);
    v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v25, v27);
    if (v29)
    {
      v45 = v28;
      __src = v19;
      v54[0] = v28;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v49);
      v30 = v52;
      if (v52)
      {
        v31 = *v49[0];
        v45 = *(v49[0] + 1);
        v46 = v31;
        __src = *(v31 + 8) & 0xFFFFFFFFFFFFFFF8;
        v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v46, &v45) - 16;
      }

      else
      {
        v48 = 257;
        emitDiag(v26, 2, v47, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<58ul>(v54, "unable to broadcast min value and input to a common shape");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v19 = 0;
      }

      if (v52 == 1 && v49[0] != &v50)
      {
        free(v49[0]);
      }

      if (v30)
      {
        v44 = v19;
        goto LABEL_38;
      }
    }

    else
    {
      v51 = 257;
      emitDiag(v26, 2, v49, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<51ul>(v54, "unable to cast value to same element type as input");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    v40 = a2[3];
    v51 = 257;
    emitDiag(v40, 2, v49, &__src);
    if (__src)
    {
      v41 = "unable to insert a comparison value to do maximum";
LABEL_51:
      mlir::Diagnostic::operator<<<50ul>(v54, v41);
    }

LABEL_52:
    v39 = v57 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v39 & 1;
  }

LABEL_38:
  if (v3 >= 3)
  {
    v32 = *(a2[9] + 88);
    if (v32)
    {
      if (*(*(*(v32 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
      {
        v33 = mlir::ODIE::Compiler::insertComparisonOp<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, v19, v32, v20, v23, a2[3]);
        if (v34)
        {
          v44 = v33;
          goto LABEL_43;
        }

        v43 = a2[3];
        v51 = 257;
        emitDiag(v43, 2, v49, &__src);
        if (__src)
        {
          v41 = "unable to insert a comparison value to do minimum";
          goto LABEL_51;
        }

        goto LABEL_52;
      }
    }
  }

LABEL_43:
  v35 = *(a2 + 9);
  if (v35)
  {
    v36 = (a2 - 2);
  }

  else
  {
    v36 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v36, v35, &v44, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v38 = *a2;
    v37 = a2[1];
    *v37 = *a2;
    *(v38 + 8) = v37;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v39 = 1;
  return v39 & 1;
}

BOOL replaceComplex(mlir::OpBuilder *a1, uint64_t *a2)
{
  v48[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v16 = a2[3];
    v36 = 257;
    emitDiag(v16, 2, &v34, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<43ul>(v38, "expect two operands to TorchImport.complex");
    }

    goto LABEL_11;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  v37 = "expects shaped type for real tensor";
  LOWORD(v40) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v37, v33);
  v37 = "expects shaped type for real tensor";
  LOWORD(v40) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v37, v32);
  v7 = v32[0];
  v8 = v33[0];
  if (v33[0] != v32[0])
  {
    v9 = a2[3];
    v36 = 257;
    emitDiag(v9, 2, &v34, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<66ul>(v38, "expect real and imaginary tensors to have same type: real type = ");
      if (v37)
      {
        LODWORD(v34) = 4;
        v35 = v8;
        v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
        v11 = v39 + 24 * v40;
        v12 = *v10;
        *(v11 + 16) = *(v10 + 16);
        *v11 = v12;
        ++v40;
        if (v37)
        {
          mlir::Diagnostic::operator<<<19ul>(v38, " imaginary type = ");
          if (v37)
          {
            LODWORD(v34) = 4;
            v35 = v7;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
            v14 = v39 + 24 * v40;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v40;
          }
        }
      }
    }

LABEL_11:
    v17 = (v45 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    return v17;
  }

  if (*(a2 + 9))
  {
    v19 = a2 - 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19[1];
  v21 = *(a1 + 4);
  Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a1, *(**v21 + 32));
  v37 = v21;
  v38[0] = Complex;
  v38[1] = &v40;
  v39 = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  v43[4] = v44;
  v43[5] = 0x400000000;
  v44[8] = 4;
  v45 = v47;
  v46 = 0x100000000;
  v47[1] = v48;
  v47[2] = 0x100000000;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v48[4] = 0;
  v48[6] = 0;
  mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(a1, &v37, v20 & 0xFFFFFFFFFFFFFFF8, v5, v6);
  v23 = mlir::Operation::create(&v37);
  mlir::OpBuilder::insert(a1, v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&v37);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a2 + 9);
  if (v26)
  {
    v27 = a2 - 2;
  }

  else
  {
    v27 = 0;
  }

  v34 = v27;
  v35 = v26;
  v28 = *(v25 + 9);
  v29 = (v25 - 16);
  if (!v28)
  {
    v29 = 0;
  }

  v37 = v29;
  v38[0] = v28;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v34, &v37);
  if (a2[2])
  {
    a2[2] = 0;
    v31 = *a2;
    v30 = a2[1];
    *v30 = *a2;
    *(v31 + 8) = v30;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceConv(mlir::OpBuilder *a1, uint64_t a2)
{
  v214 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 9 || *(a2 + 36) != 1)
  {
    v11 = *(a2 + 24);
    v207 = 257;
    emitDiag(v11, 2, &v204, &v209);
    if (v209)
    {
      mlir::Diagnostic::operator<<<35ul>(&v210, "expects 9 inputs and 1 output for ");
      if (v209)
      {
        mlir::Diagnostic::operator<<(&v210, *(a2 + 48));
      }
    }

    goto LABEL_49;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 - 8);
  v209 = "expects shaped type for convolution result";
  v212 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v4, &v209, &v170);
  if (v172 != 1)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v156 = v6[7];
  v159 = v6[3];
  v168 = v156;
  v169 = v159;
  v7 = v6[11];
  v8 = v6[15];
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  v154 = v7;
  if (v8)
  {
    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16) + 120;
    }

    else
    {
      v10 = v8 + 16 * v9 + 16;
    }
  }

  else
  {
    v10 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v10, a1);
  v14 = v13;
  v152 = TupleAs1DIntTensor;
  v166 = TupleAs1DIntTensor;
  v167 = v13;
  v15 = *(*(a2 + 72) + 152);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16) + 120;
    }

    else
    {
      v17 = v15 + 16 * v16 + 16;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = getTupleAs1DIntTensor(v17, a1);
  v20 = v19;
  v150 = v18;
  v164 = v18;
  v165 = v19;
  v21 = *(*(a2 + 72) + 184);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = *(v21 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v21 + 24 * *(v21 + 16) + 120;
    }

    else
    {
      v23 = v21 + 16 * v22 + 16;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = getTupleAs1DIntTensor(v23, a1);
  v26 = v25;
  v162 = v24;
  v163 = v25;
  v27 = *(a2 + 72);
  v28 = *(v27 + 248);
  if ((~*(v28 + 8) & 7) == 0)
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = *(v28 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v28 + 24 * *(v28 + 16) + 120;
    }

    else
    {
      v30 = v28 + 16 * v29 + 16;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v27 + 216);
  v32 = getTupleAs1DIntTensor(v30, a1);
  v34 = *(*(a2 + 72) + 280);
  v161 = v34;
  if ((v20 & 1) == 0 || (v26 & 1) == 0 || (v14 & 1) == 0 || (v33 & 1) == 0)
  {
    v40 = "invalid tuple for convolution input";
LABEL_48:
    v204 = v40;
    v207 = 259;
    emitDiag(v4, 2, &v204, &v209);
LABEL_49:
    v41 = (v213 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
    return v41;
  }

  v204 = 0;
  v209 = &v204;
  if ((~*(v31 + 8) & 7) != 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v36 = v32;
    v37 = *(v35 + 8) & 7;
    if (v37 == 6)
    {
      v38 = v35 + 24 * *(v35 + 16);
      v39 = v38 + 120;
      if (v38 == -120)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v39 = v35 + 16 * v37 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v209, v39))
    {
      if ((*(v204 + 24) & 1) == 0 || ((mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v204, &v209), (v210 & 1) == 0) ? (v43 = v211[0]) : (v43 = 0), ((*(v209 + (v43 >> 3)) >> (v43 & 7)) & 1) == 0))
      {
        v204 = 0;
        v209 = &v204;
        if ((~*(v36 + 8) & 7) != 0)
        {
          v52 = v36;
        }

        else
        {
          v52 = 0;
        }

        if (!v52)
        {
          goto LABEL_114;
        }

        v53 = *(v52 + 8) & 7;
        if (v53 == 6)
        {
          v54 = v52 + 24 * *(v52 + 16);
          v55 = v54 + 120;
          if (v54 == -120)
          {
LABEL_114:
            v40 = "Non-zero output padding not supported on convolution.";
            goto LABEL_48;
          }
        }

        else
        {
          v55 = v52 + 16 * v53 + 16;
        }

        if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v209, v55) || (*(v204 + 24) & 1) == 0)
        {
          goto LABEL_114;
        }

        mlir::DenseElementsAttr::tryGetValues<int,void>(&v204, &v209);
        v80 = (v210 & 1) != 0 ? 0 : v211[0];
        if (*(v209 + v80))
        {
          goto LABEL_114;
        }

        v209 = "expects shaped type for convolution input";
        v212 = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v159, &v209, &v196);
        v209 = "expects shaped type for convolution input";
        v212 = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v156, &v209, &v201);
        v112 = 0;
        if (v198 != 1 || (v203[0] & 1) == 0)
        {
          return v112 & 1;
        }

        v113 = v197;
        v114 = v196;
        (*(v197 + 24))(v197, v196);
        if (v115 == 4)
        {
          (*(v202 + 24))(v202, v201);
          v117 = v116 == 4;
        }

        else
        {
          v117 = 0;
        }

        (*(v113 + 24))(v113, v114);
        if (v120 == 3)
        {
          (*(v202 + 24))(v202, v201);
          v122 = v121 == 3;
        }

        else
        {
          v122 = 0;
        }

        if (v117 || v122)
        {
          if (v117)
          {
            v123 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::Conv2dOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v170, &v169, &v168, &v166, &v164, &v162, &v161) - 16;
LABEL_205:
            if (*(*(*(v154 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {
              if ((~*(v123 + 2) & 7) == 0)
              {
                v123 = 0;
              }

              if (!v123)
              {
                goto LABEL_220;
              }

LABEL_215:
              v141 = *(v123 + 1) & 7;
              if (v141 == 6)
              {
                v123 += 24 * *(v123 + 2) + 120;
              }

              else
              {
                v123 += 16 * v141 + 16;
              }

LABEL_220:
              v142 = *(a2 + 36);
              if (v142)
              {
                v143 = (a2 - 16);
              }

              else
              {
                v143 = 0;
              }

              v204 = v143;
              v205 = v142;
              v144 = *(v123 + 9);
              v145 = v123 - 16;
              if (!v144)
              {
                v145 = 0;
              }

              v209 = v145;
              v210 = v144;
              mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v204, &v209);
              mlir::Operation::erase(a2);
              v112 = 1;
              return v112 & 1;
            }

            v139 = mlir::ODIE::Compiler::replacePostConvBiasImpl(a1, v123, v154, v170, v171);
            if (v140)
            {
              if ((~*(v139 + 2) & 7) != 0)
              {
                v123 = v139;
              }

              else
              {
                v123 = 0;
              }

              if (!v123)
              {
                goto LABEL_220;
              }

              goto LABEL_215;
            }

            v112 = 0;
            return v112 & 1;
          }

          v137 = mlir::ODIE::Compiler::replaceConv1dImpl(a1, v159, v156, v152, v150, v24, v34, v119, v170, v171);
          if (v138)
          {
            v123 = v137;
            goto LABEL_205;
          }

          v124 = "Couldn't decompose Conv1d op.";
        }

        else
        {
          v124 = "only supports conv1d and conv2d variant";
        }

        v204 = v124;
        v207 = 259;
        emitDiag(v4, 2, &v204, &v209);
        v112 = v213 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
        return v112 & 1;
      }
    }
  }

LABEL_58:
  v4 = *(a2 + 24);
  v44 = *(a2 + 48);
  if (*(a2 + 36))
  {
    v45 = a2 - 16;
  }

  else
  {
    v45 = 0;
  }

  v46 = *(v45 + 8);
  v209 = "expects shaped type for convolution transpose result";
  v212 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v46 & 0xFFFFFFFFFFFFFFF8), v4, &v209, &v184);
  if (v185 != 1)
  {
    return 0;
  }

  v47 = *(a2 + 72);
  v48 = v47[3];
  v182 = v47[7];
  v183 = v48;
  v49 = v47[15];
  if ((~*(v49 + 8) & 7) == 0)
  {
    v49 = 0;
  }

  if (v49)
  {
    v50 = *(v49 + 8) & 7;
    if (v50 == 6)
    {
      v51 = v49 + 24 * *(v49 + 16) + 120;
    }

    else
    {
      v51 = v49 + 16 * v50 + 16;
    }
  }

  else
  {
    v51 = 0;
  }

  v56 = v47[11];
  v157 = getTupleAs1DIntTensor(v51, a1);
  v58 = v57;
  v59 = *(*(a2 + 72) + 152);
  if ((~*(v59 + 8) & 7) == 0)
  {
    v59 = 0;
  }

  if (v59)
  {
    v60 = *(v59 + 8) & 7;
    if (v60 == 6)
    {
      v61 = v59 + 24 * *(v59 + 16) + 120;
    }

    else
    {
      v61 = v59 + 16 * v60 + 16;
    }
  }

  else
  {
    v61 = 0;
  }

  v62 = getTupleAs1DIntTensor(v61, a1);
  v64 = v63;
  v65 = *(*(a2 + 72) + 184);
  if ((~*(v65 + 8) & 7) == 0)
  {
    v65 = 0;
  }

  if (v65)
  {
    v66 = *(v65 + 8) & 7;
    if (v66 == 6)
    {
      v67 = v65 + 24 * *(v65 + 16) + 120;
    }

    else
    {
      v67 = v65 + 16 * v66 + 16;
    }
  }

  else
  {
    v67 = 0;
  }

  v68 = getTupleAs1DIntTensor(v67, a1);
  v160 = v69;
  v70 = *(*(a2 + 72) + 248);
  if ((~*(v70 + 8) & 7) == 0)
  {
    v70 = 0;
  }

  v155 = v68;
  if (v70)
  {
    v71 = *(v70 + 8) & 7;
    if (v71 == 6)
    {
      v72 = v70 + 24 * *(v70 + 16) + 120;
    }

    else
    {
      v72 = v70 + 16 * v71 + 16;
    }
  }

  else
  {
    v72 = 0;
  }

  v73 = getTupleAs1DIntTensor(v72, a1);
  if ((v64 & 1) == 0 || (v160 & 1) == 0 || (v58 & 1) == 0 || (v74 & 1) == 0)
  {
    v40 = "invalid tuple for convolution transpose input";
    goto LABEL_48;
  }

  v75 = v73;
  v151 = v56;
  v149 = *(*(a2 + 72) + 280);
  v209 = "expects shaped type for convolution transpose input";
  v212 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v48, &v209, &v179);
  v209 = "expects shaped type for convolution transpose input";
  v212 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v182, &v209, &v176);
  v41 = 0;
  if (v181 != 1 || (v178 & 1) == 0)
  {
    return v41;
  }

  v77 = v179;
  v76 = v180;
  (*(v180 + 24))(v180, v179);
  if (v78 == 3)
  {
    (*(v177 + 24))(v177, v176);
    v153 = v79 == 3;
  }

  else
  {
    v153 = 0;
  }

  v148 = v44;
  (*(v76 + 24))(v76, v77);
  if (v81 == 4)
  {
    (*(v177 + 24))(v177, v176);
    v83 = v82 == 4;
  }

  else
  {
    v83 = 0;
  }

  (*(v76 + 24))(v76, v77);
  if (v84 == 5)
  {
    (*(v177 + 24))(v177, v176);
    v86 = v85 == 5;
  }

  else
  {
    v86 = 0;
  }

  if (!v153 && !v83 && !v86)
  {
    v207 = 257;
    emitDiag(v4, 2, &v204, &v209);
    if (v209)
    {
      mlir::Diagnostic::operator<<<51ul>(&v210, "ConvTranspose is supported for 1D, 2D and 3D only.");
    }

    goto LABEL_49;
  }

  v87 = v86;
  mlir::ODIE::Compiler::extract1DIntVector<int>(v62, &v204);
  if ((v208 & 1) == 0)
  {
    v199 = 257;
    emitDiag(v4, 2, &v196, &v209);
    if (v209)
    {
      mlir::Diagnostic::operator<<<46ul>(&v210, "padding argument must be a 1d tensor constant");
    }

    v41 = (v213 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
    goto LABEL_200;
  }

  v201 = v203;
  v202 = 0xC00000000;
  if (v205)
  {
    llvm::SmallVectorImpl<int>::operator=(&v201, &v204);
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v75, &v196);
  if ((v200 & 1) == 0)
  {
    v195[8] = 257;
    emitDiag(v4, 2, v194, &v209);
    if (v209)
    {
      mlir::Diagnostic::operator<<<49ul>(&v210, "output_pad argument must be a 1d tensor constant");
    }

    v41 = (v213 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
    goto LABEL_195;
  }

  v194[0] = v195;
  v194[1] = 0xC00000000;
  if (v197)
  {
    llvm::SmallVectorImpl<int>::operator=(v194, &v196);
  }

  v175 = v184;
  LODWORD(v209) = -1;
  v174 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v209, 1);
  if (v153)
  {
    v88 = (*(v76 + 24))(v76, v77);
    v191 = v193;
    v192 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v191, v88, &v88[8 * v89]);
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v191, 1);
    v90 = v191;
    v91 = v192;
    v92 = (*(v76 + 8))(v76, v77);
    v209 = mlir::RankedTensorType::get(v90, v91, v92, 0);
    v48 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v209, &v183, &v174) - 16;
    v183 = v48;
    v94 = v176;
    v93 = v177;
    v95 = (*(v177 + 24))(v177, v176);
    v188 = v190;
    v189 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v188, v95, &v95[8 * v96]);
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v188, 1);
    v209 = v211;
    v210 = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<long long *,void>(&v209, v188, v188 + 8 * v189);
    v173 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v209, v210);
    if (v209 != v211)
    {
      free(v209);
    }

    v97 = v188;
    v98 = v189;
    v99 = (*(v93 + 8))(v93, v94);
    v209 = mlir::RankedTensorType::get(v97, v98, v99, 0);
    v182 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v209, &v182, &v173) - 16;
    NElementTensor = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, v157, 1);
    v101 = NElementTensor;
    v58 = v102;
    if (v102)
    {
      v158 = NElementTensor;
      v155 = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, v155, 1);
      v160 = v103;
      if (v103)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(&v201, 0);
        llvm::SmallVectorTemplateBase<int,true>::push_back(v194, 0);
        v104 = *(&v184 + 1);
        v41 = v184;
        v105 = (*(*(&v184 + 1) + 24))(*(&v184 + 1), v184);
        v209 = v211;
        v210 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v209, v105, &v105[8 * v106]);
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v209, 1);
        v107 = v209;
        v108 = v210;
        v109 = (*(v104 + 8))(v104, v41);
        v186[0] = mlir::RankedTensorType::get(v107, v108, v109, 0);
        *&v175 = mlir::TensorType::operator mlir::ShapedType(v186);
        *(&v175 + 1) = v110;
        if (v209 != v211)
        {
          free(v209);
        }

        v111 = 1;
      }

      else
      {
        v187 = 257;
        emitDiag(v4, 2, v186, &v209);
        if (v209)
        {
          mlir::Diagnostic::operator<<<32ul>(&v210, "Failed to expand dilations for ");
          if (v209)
          {
            mlir::Diagnostic::operator<<(&v210, v148);
          }
        }

        v41 = (v213 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
        v111 = 0;
      }

      v118 = v151;
      v101 = v158;
    }

    else
    {
      v187 = 257;
      emitDiag(v4, 2, v186, &v209);
      v118 = v151;
      if (v209)
      {
        mlir::Diagnostic::operator<<<30ul>(&v210, "Failed to expand strides for ");
        if (v209)
        {
          mlir::Diagnostic::operator<<(&v210, v148);
        }
      }

      v41 = (v213 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
      v111 = 0;
    }

    if (v188 != v190)
    {
      free(v188);
    }

    if (v191 != v193)
    {
      free(v191);
    }

    if (!v111)
    {
      goto LABEL_193;
    }
  }

  else
  {
    v118 = v151;
    v101 = v157;
  }

  if (v87)
  {
    if (v58 & 1) != 0 && (v160)
    {
      v125 = buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp>(a1, v48, v182, v118, v101, &v201, v155, v194, v149, &v175);
      goto LABEL_181;
    }
  }

  else if (v58 & 1) != 0 && (v160)
  {
    v125 = buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(a1, v48, v182, v118, v101, &v201, v155, v194, v149, &v175);
LABEL_181:
    v127 = v125;
    v188 = v125;
    LOBYTE(v189) = v126;
    if (v126)
    {
      if (v153)
      {
        v128 = *(&v184 + 1);
        v129 = v184;
        v130 = (*(*(&v184 + 1) + 24))(*(&v184 + 1), v184);
        v209 = v211;
        v210 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v209, v130, &v130[8 * v131]);
        v132 = v209;
        v133 = v210;
        v134 = (*(v128 + 8))(v128, v129);
        v191 = mlir::RankedTensorType::get(v132, v133, v134, 0);
        v127 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v191, &v188, &v174) - 16;
        if (v209 != v211)
        {
          free(v209);
        }
      }

      v209 = v127;
      v135 = *(a2 + 36);
      if (v135)
      {
        v136 = (a2 - 16);
      }

      else
      {
        v136 = 0;
      }

      v41 = 1;
      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v136, v135, &v209, 1);
      mlir::Operation::erase(a2);
    }

    else
    {
      v193[8] = 257;
      emitDiag(v4, 2, &v191, &v209);
      if (v209)
      {
        mlir::Diagnostic::operator<<<46ul>(&v210, "Failed to handle conv_transpose creation for ");
        if (v209)
        {
          mlir::Diagnostic::operator<<(&v210, v148);
        }
      }

      v41 = (v213 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v209);
    }

LABEL_193:
    if (v194[0] != v195)
    {
      free(v194[0]);
    }

LABEL_195:
    if (v200 == 1 && v196 != &v198)
    {
      free(v196);
    }

    if (v201 != v203)
    {
      free(v201);
    }

LABEL_200:
    if (v208 == 1 && v204 != &v206)
    {
      free(v204);
    }

    return v41;
  }

  v146 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceCond(v146, v147);
}

BOOL replaceCond(mlir::OpBuilder *a1, mlir::Operation *this)
{
  v45[8] = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) == 0 || !*(this + 17))
  {
    v20 = *(this + 3);
    v36 = 257;
    emitDiag(v20, 2, &v33, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<58ul>(v38, "conditionals must have at least a condition to operate on");
    }

    goto LABEL_49;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v5 = *(AttrDictionary + 16);
  if (!v5)
  {
LABEL_47:
    v22 = *(this + 3);
    v36 = 257;
    emitDiag(v22, 2, &v33, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<45ul>(v38, "conditional did not have a 'false' condition");
    }

    goto LABEL_49;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(AttrDictionary + 8);
  v9 = &v8[2 * v5];
  do
  {
    v10 = v8[1];
    v11 = *(*v8 + 16);
    v12 = *(*v8 + 24);
    if (v12 >= 0xC)
    {
      if (*v11 == 0x72675F65736C6166 && *(v11 + 2) == 1600680033)
      {
        if (v6)
        {
          v36 = 257;
          mlir::Operation::emitError(&v37, this, &v33);
          if (v37)
          {
            mlir::Diagnostic::operator<<<48ul>(v38, "Detected multiple false_graph attributes on op ");
          }

          goto LABEL_46;
        }

        if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (v10[3])
          {
            v6 = 0;
          }

          else
          {
            v6 = v8[1];
          }
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else if (v12 != 11)
    {
      goto LABEL_30;
    }

    v14 = *v11;
    v15 = *(v11 + 3);
    if (v14 == 0x6172675F65757274 && v15 == 0x5F68706172675F65)
    {
      if (!v7)
      {
        if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (v10[3])
          {
            v7 = 0;
          }

          else
          {
            v7 = v8[1];
          }
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_30;
      }

      v36 = 257;
      mlir::Operation::emitError(&v37, this, &v33);
      if (v37)
      {
        mlir::Diagnostic::operator<<<47ul>(v38, "Detected multiple true_graph attributes on op ");
      }

LABEL_46:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
      goto LABEL_47;
    }

LABEL_30:
    v8 += 2;
  }

  while (v8 != v9);
  v31 = v7;
  v32 = v6;
  if (!v6)
  {
    goto LABEL_47;
  }

  if (v7)
  {
    if (*(*(*(this - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v17 = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v17 = 0;
    }

    v30 = v17;
    if (v17)
    {
      v18 = *(v17 + 8);
      v19 = &v18[8 * *(v17 + 16)];
      v33 = v35;
      v34 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v33, v18, v19);
    }

    else
    {
      v25 = *(this + 9);
      if (v25)
      {
        v26 = this - 16;
      }

      else
      {
        v26 = 0;
      }

      v33 = v35;
      v34 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v33, v26, 0, v26, v25);
    }

    v27 = *(*(this + 9) + 24);
    v28 = *(a1 + 4);
    v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::IfOp>(a1, *(**v28 + 32));
    v37 = v28;
    v38[0] = v29;
    v38[1] = v39;
    v38[2] = 0x400000000;
    v39[4] = v40;
    v39[5] = 0x400000000;
    v40[4] = v41;
    v40[5] = 0x400000000;
    v41[8] = 4;
    v42 = v44;
    v43 = 0x100000000;
    v44[1] = v45;
    v44[2] = 0x100000000;
    v45[1] = 0;
    v45[2] = 0;
    v45[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v45[4] = 0;
    v45[6] = 0;
    mlir::ODIE::Compiler::CoreML::IfOp::build(a1, &v37, v33 & 0xFFFFFFFFFFFFFFF9 | 2, v34, v27);
  }

  v21 = *(this + 3);
  v36 = 257;
  emitDiag(v21, 2, &v33, &v37);
  if (v37)
  {
    mlir::Diagnostic::operator<<<44ul>(v38, "conditional did not have a 'true' condition");
  }

LABEL_49:
  v23 = (v42 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
  return v23;
}

uint64_t replaceCopy(mlir::OpBuilder *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v18 = a2[3];
    v31[8] = 257;
    emitDiag(v18, 2, v30, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<26ul>(v34, "copy expects two operands");
    }

    v7 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v7;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  __src = "copy op expects shaped type operands";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &__src, &v24);
  __src = "copy op expects shaped type operands";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &__src, v23);
  v7 = 0;
  if (v26 != 1 || (v23[16] & 1) == 0)
  {
    return v7;
  }

  v8 = (*(v25 + 8))(v25, v24);
  v9 = mlir::ODIE::Compiler::castValueToElementType(a1, v6, v8);
  if (v10)
  {
    v11 = v9;
    v27 = v9;
    if ((*(v9 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = *(*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    }

    __src = v5;
    v34[0] = v11;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v30);
    if (v32)
    {
      v27 = *(v30[0] + 1);
      v14 = *(a2 + 9);
      if (v14)
      {
        v15 = (a2 - 2);
      }

      else
      {
        v15 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v15, v14, &v27, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v17 = *a2;
        v16 = a2[1];
        *v16 = *a2;
        *(v17 + 8) = v16;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v7 = 1;
    }

    else
    {
      v20 = a2[3];
      v29 = 257;
      emitDiag(v20, 2, v28, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<37ul>(v34, " Unable to broadcast in1 and in2 of ");
        if (__src)
        {
          mlir::Diagnostic::operator<<(v34, a2[6]);
          if (__src)
          {
            mlir::Diagnostic::operator<<<4ul>(v34, " op");
          }
        }
      }

      v7 = (v36 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v32 == 1 && v30[0] != v31)
    {
      free(v30[0]);
    }

    return v7;
  }

  v21 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceUnaryOp<mlir::ODIE::Compiler::CoreML::CosOp>(v21, v22);
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::CosOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CosOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.cos";
      v52 = 10;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::CosOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CosOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::CoshOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoshOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.cosh";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::CoshOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoshOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceCumsum(mlir::OpBuilder *a1, uint64_t *a2)
{
  v69[8] = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v57 = 257;
    emitDiag(v4, 2, &v53, &v58);
    if (v58)
    {
      mlir::Diagnostic::operator<<<31ul>(v59, "expected exactly 2 inputs for ");
      if (v58)
      {
        mlir::Diagnostic::operator<<(v59, a2[6]);
        if (v58)
        {
          mlir::Diagnostic::operator<<<7ul>(v59, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v25 = *(a2 + 17);
    }

    else
    {
      v25 = 0;
    }

    LODWORD(v53) = v25;
    v26 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&v58, &v53) + 200);
    goto LABEL_36;
  }

  v5 = *(a2[9] + 24);
  v58 = "expected ranked tensor input to cumsum";
  LOWORD(v61) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v58, &v48);
  if (*(a2 + 9))
  {
    v6 = a2 - 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6[1];
  v8 = a2[3];
  v58 = "expect ranked tensor output from cumsum";
  LOWORD(v61) = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v7 & 0xFFFFFFFFFFFFFFF8), v8, &v58, &v45);
  v9 = 0;
  if (v50 == 1 && (v47 & 1) != 0)
  {
    v10 = v45;
    v11 = v46;
    v12 = (*(v46 + 24))(v46, v45);
    v14 = v13;
    v15 = v48;
    v16 = (*(v49 + 24))(v49, v48);
    if (v14 != v17 || memcmp(v12, v16, 8 * v14))
    {
      v18 = a2[3];
      v57 = 257;
      emitDiag(v18, 2, &v53, &v58);
      if (v58)
      {
        mlir::Diagnostic::operator<<<60ul>(v59, "cumsum encountered input and output with mismatched shape: ");
        if (v58)
        {
          LODWORD(v53) = 4;
          v54 = v15;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v60, &v53, 1);
          v20 = v60 + 24 * v61;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v61;
          if (v58)
          {
            mlir::Diagnostic::operator<<<5ul>(v59, " vs ");
            if (v58)
            {
              LODWORD(v53) = 4;
              v54 = v10;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v60, &v53, 1);
              v23 = v60 + 24 * v61;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v61;
            }
          }
        }
      }

LABEL_35:
      v26 = v66;
LABEL_36:
      v9 = v26 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      return v9 & 1;
    }

    v27 = (*(v11 + 8))(v11, v10);
    v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v27);
    if ((v29 & 1) == 0)
    {
      v43 = a2[3];
      v57 = 257;
      emitDiag(v43, 2, &v53, &v58);
      if (v58)
      {
        mlir::Diagnostic::operator<<<36ul>(v59, "failed to cast input to result type");
      }

      goto LABEL_35;
    }

    v30 = v28;
    v31 = *(a2[9] + 56);
    LOBYTE(v58) = 0;
    v32 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v58, 1);
    v33 = *(a1 + 4);
    v34 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CumSumOp,void>::id, *(**v33 + 32));
    if ((v35 & 1) == 0)
    {
      v57 = 1283;
      v55 = "coreml.cumsum";
      v56 = 13;
      v52 = 259;
      llvm::operator+(&v53, &v51, &v58);
      llvm::report_fatal_error(&v58, 1);
    }

    v58 = v33;
    v59[0] = v34;
    v59[1] = &v61;
    v60 = 0x400000000;
    v62 = v64;
    v63 = 0x400000000;
    v64[4] = v65;
    v64[5] = 0x400000000;
    v65[8] = 4;
    v66 = v68;
    v67 = 0x100000000;
    v68[1] = v69;
    v68[2] = 0x100000000;
    v69[1] = 0;
    v69[2] = 0;
    v69[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v69[4] = 0;
    v69[6] = 0;
    mlir::ODIE::Compiler::CoreML::CumSumOp::build(a1, &v58, v10, v30, v31, v32, v32);
    v36 = mlir::Operation::create(&v58);
    mlir::OpBuilder::insert(a1, v36);
    v37 = *(*(v36 + 6) + 16);
    mlir::OperationState::~OperationState(&v58);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CumSumOp,void>::id)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    v58 = v38 - 16;
    v39 = *(a2 + 9);
    if (v39)
    {
      v40 = (a2 - 2);
    }

    else
    {
      v40 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v40, v39, &v58, 1);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::DivideOp,false>(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v17 = *(*(*(a2 + 6) + 8) + 16);
  v16 = *(a2 + 3);
  v3 = *(a2 + 9);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v15[0] = 0;
  v15[8] = 0;
  v6 = getBinaryOps<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, &v17, &v16, v4, v5, v15);
  result = 0;
  v13 = v6;
  v14 = v8;
  if (v8)
  {
    v9 = *(a2 + 9);
    if (v9)
    {
      v10 = (a2 - 16);
    }

    else
    {
      v10 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v10, v9, &v13, 1);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v12 = *a2;
      v11 = *(a2 + 1);
      *v11 = *a2;
      *(v12 + 8) = v11;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  return result;
}

uint64_t replaceEmbedding(mlir::OpBuilder *a1, uint64_t *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) < 2u || *(a2 + 9) != 1)
  {
    v60 = 257;
    emitDiag(v2, 2, &v57, &v61);
    if (v61)
    {
      mlir::Diagnostic::operator<<<39ul>(&v61 + 8, "expects at least 2 inputs and 1 output");
    }

    goto LABEL_26;
  }

  v5 = a2[9];
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  *&v61 = "expected ranked tensor types for the inputs and outputs";
  v64[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v61, &v52);
  *&v61 = "expected ranked tensor types for the inputs and outputs";
  v64[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v61, &v49);
  *&v61 = "expected ranked tensor types for the inputs and outputs";
  v64[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v61, &v46);
  v8 = 0;
  if (v54 != 1 || (v51 & 1) == 0 || (v48 & 1) == 0)
  {
    return v8 & 1;
  }

  (*(v50 + 24))(v50, v49);
  if (v9 != 2)
  {
    v60 = 257;
    emitDiag(v2, 2, &v57, &v61);
    if (v61)
    {
      mlir::Diagnostic::operator<<<26ul>(&v61 + 8, "weights tensor must be 2D");
    }

LABEL_26:
    v39 = v72;
LABEL_27:
    v8 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
    return v8 & 1;
  }

  v10 = v52;
  (*(v53 + 24))(v53, v52);
  v12 = v11;
  v14 = v46;
  v13 = v47;
  (*(v47 + 24))(v47, v46);
  if (v12 != v15 + 1)
  {
    v60 = 257;
    emitDiag(v2, 2, &v57, &v61);
    if (v61)
    {
      mlir::Diagnostic::operator<<<20ul>(&v61 + 8, "given indices rank ");
    }

    (*(v13 + 24))(v13, v14);
    v57 = v41;
    v42 = mlir::InFlightDiagnostic::operator<<<long long>(&v61, &v57);
    v43 = v42;
    if (*v42)
    {
      mlir::Diagnostic::operator<<<27ul>((v42 + 1), " expect result rank to be ");
    }

    (*(v13 + 24))(v13, v14);
    v55[0] = (v44 + 1);
    v39 = *(mlir::InFlightDiagnostic::operator<<<long long>(v43, v55) + 200);
    goto LABEL_27;
  }

  v16 = (*(v13 + 24))(v13, v14);
  v57 = v59;
  v58 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v57, v16, &v16[8 * v17]);
  llvm::SmallVectorTemplateBase<long long,true>::push_back(&v57, 1);
  (*(v13 + 24))(v13, v14);
  LODWORD(v61) = v18;
  v19 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v61, 1);
  v45 = v10;
  v20 = v57;
  v21 = v58;
  v22 = (*(v13 + 8))(v13, v14);
  *&v61 = v20;
  *(&v61 + 1) = v21;
  v55[0] = v22;
  v56 = 0;
  v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v22 + 32), &v61, v55, &v56);
  v24 = *(a1 + 4);
  v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1, *(**v24 + 32));
  *&v61 = v24;
  *(&v61 + 1) = v25;
  v62 = v64;
  v63 = 0x400000000;
  v65 = v67;
  v66 = 0x400000000;
  v68 = v70;
  v69 = 0x400000000;
  v71 = 4;
  v72 = &v74;
  v73 = 0x100000000;
  v75 = &v77;
  v76 = 0x100000000;
  v78 = 0;
  v79 = 0;
  v80 = &mlir::detail::TypeIDResolver<void,void>::id;
  v81 = 0;
  v82 = 0;
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, &v61, v23, v7, v19);
  v26 = mlir::Operation::create(&v61);
  mlir::OpBuilder::insert(a1, v26);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(&v61);
  if (v27 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
  {
    v26 = 0;
  }

  v28 = *(a1 + 4);
  v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherNdOp>(a1, *(**v28 + 32));
  *&v61 = v28;
  *(&v61 + 1) = v29;
  v62 = v64;
  v63 = 0x400000000;
  v65 = v67;
  v66 = 0x400000000;
  v68 = v70;
  v69 = 0x400000000;
  v71 = 4;
  v72 = &v74;
  v73 = 0x100000000;
  v75 = &v77;
  v76 = 0x100000000;
  v78 = 0;
  v79 = 0;
  v80 = &mlir::detail::TypeIDResolver<void,void>::id;
  v81 = 0;
  v82 = 0;
  mlir::ODIE::Compiler::CoreML::GatherNdOp::build(a1, &v61, v45, v6, (v26 - 16));
  v30 = mlir::Operation::create(&v61);
  mlir::OpBuilder::insert(a1, v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(&v61);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a2 + 9);
  if (v33)
  {
    v34 = a2 - 2;
  }

  else
  {
    v34 = 0;
  }

  v55[0] = v34;
  v55[1] = v33;
  v35 = *(v32 + 9);
  v36 = v32 - 16;
  if (!v35)
  {
    v36 = 0;
  }

  *&v61 = v36;
  *(&v61 + 1) = v35;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v55, &v61);
  if (a2[2])
  {
    a2[2] = 0;
    v38 = *a2;
    v37 = a2[1];
    *v37 = *a2;
    *(v38 + 8) = v37;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  if (v57 != v59)
  {
    free(v57);
  }

  v8 = 1;
  return v8 & 1;
}

BOOL replaceEmpty(uint64_t *a1, uint64_t *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v7 = a2[3];
    v35 = 257;
    emitDiag(v7, 2, &v33, &v36);
    if (v36)
    {
      mlir::Diagnostic::operator<<<50ul>(v37, " expect a single operand for TorchImport.empty op");
    }

    goto LABEL_27;
  }

  v4 = *(a2[9] + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16) + 120;
    }

    else
    {
      v6 = v4 + 16 * v5 + 16;
    }
  }

  else
  {
    v6 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v6, a1);
  v32 = v8;
  if ((v8 & 1) == 0)
  {
    v21 = a2[3];
    v35 = 257;
    emitDiag(v21, 2, &v33, &v36);
    if (v36)
    {
      mlir::Diagnostic::operator<<<46ul>(v37, " operand to TorchImport.empty should be tuple");
    }

    goto LABEL_27;
  }

  v36 = "expected ranked tensor types for the output of TorchImport.empty";
  LOWORD(v39) = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v36, &v29);
  LODWORD(v36) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v36, 1, 0);
  v10 = v29;
  v11 = (*(v30 + 8))(v30, v29);
  v27 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v11);
  v28 = v12;
  if ((v12 & 1) == 0)
  {
    v22 = a2[3];
    v35 = 257;
    emitDiag(v22, 2, &v33, &v36);
    if (v36)
    {
      mlir::Diagnostic::operator<<<48ul>(v37, " unable to cast zero to element type of result ");
      if (v36)
      {
        LODWORD(v33) = 4;
        v34 = v10;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v38, &v33, 1);
        v24 = v38 + 24 * v39;
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++v39;
      }
    }

LABEL_27:
    v20 = (v40 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    return v20;
  }

  v13 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FillOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v29, &TupleAs1DIntTensor, &v27);
  v14 = *(a2 + 9);
  if (v14)
  {
    v15 = a2 - 2;
  }

  else
  {
    v15 = 0;
  }

  v33 = v15;
  v34 = v14;
  v16 = *(v13 + 9);
  v17 = (v13 - 16);
  if (!v16)
  {
    v17 = 0;
  }

  v36 = v17;
  v37[0] = v16;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v33, &v36);
  if (a2[2])
  {
    a2[2] = 0;
    v19 = *a2;
    v18 = a2[1];
    *v18 = *a2;
    *(v19 + 8) = v18;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceBinaryComparisonOp<mlir::ODIE::Compiler::CoreML::EqualOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v62[8] = *MEMORY[0x277D85DE8];
  __src = a2[6];
  v4 = mlir::OperationName::stripDialect(&__src);
  v6 = v4;
  v7 = v5;
  v8 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v48 = 1283;
    v46[0] = "expects 2 inputs and 1 output for ";
    v47[0] = v4;
    v47[1] = v5;
    emitDiag(v8, 2, v46, &__src);
    v21 = (v59 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v21;
  }

  v9 = a2[9];
  v10 = *(v9 + 24);
  v11 = *(v9 + 56);
  v12 = *(a2 - 1);
  v54 = 1283;
  __src = "expected ranked output from ";
  v52 = v4;
  v53 = v5;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v8, &__src, &v36);
  if (v37 != 1)
  {
    return 0;
  }

  v54 = 1283;
  __src = "expected ranked tensor inputs to ";
  v52 = v6;
  v53 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v41);
  v54 = 1283;
  __src = "expected ranked tensor inputs to ";
  v52 = v6;
  v53 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v11, &__src, &v38);
  if (v43 != 1 || (v40 & 1) == 0)
  {
    return 0;
  }

  v13 = (*(v39 + 8))(v39, v38);
  v15 = v41;
  v14 = v42;
  if (v13 != (*(v42 + 8))(v42, v41))
  {
    v16 = (*(v14 + 8))(v14, v15);
    v17 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v16);
    if ((v18 & 1) == 0)
    {
      v48 = 257;
      emitDiag(v8, 2, v46, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<47ul>(&v51, " Unable to cast RHS to same type as LHS of op ");
        if (__src)
        {
          v48 = 261;
          v46[0] = v6;
          v46[1] = v7;
          mlir::Diagnostic::operator<<(&v51, v46);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      return 0;
    }

    v11 = v17;
  }

  __src = v10;
  v51 = v11;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v46);
  if (v49)
  {
    v19 = *(v46[0] + 1);
    if (v7 == 2 && (*v6 == 25964 || *v6 == 29804))
    {
      v20 = *v46[0];
    }

    else
    {
      v20 = *(v46[0] + 1);
      v19 = *v46[0];
    }

    v25 = *(a1 + 4);
    v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::EqualOp>(a1, *(**v25 + 32));
    __src = v25;
    v51 = v26;
    v52 = &v54;
    v53 = 0x400000000;
    v55 = v57;
    v56 = 0x400000000;
    v57[4] = v58;
    v57[5] = 0x400000000;
    v58[8] = 4;
    v59 = v61;
    v60 = 0x100000000;
    v61[1] = v62;
    v61[2] = 0x100000000;
    v62[1] = 0;
    v62[2] = 0;
    v62[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v62[4] = 0;
    v62[6] = 0;
    mlir::ODIE::Compiler::CoreML::EqualOp::build(a1, &__src, v36, v19, v20);
    v27 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v27);
    v28 = *(*(v27 + 6) + 16);
    v29 = v27 - 16;
    mlir::OperationState::~OperationState(&__src);
    v30 = -16;
    if (v28 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id)
    {
      v30 = v29;
    }

    v24 = v30 & 0xFFFFFFFFFFFFFF00;
    v22 = v30;
    v23 = 1;
  }

  else
  {
    v45 = 257;
    emitDiag(v8, 2, v44, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<40ul>(&v51, " Unable to broadcast LHS and RHS of op ");
      if (__src)
      {
        v45 = 261;
        v44[0] = v6;
        v44[1] = v7;
        mlir::Diagnostic::operator<<(&v51, v44);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  if (v49 == 1 && v46[0] != v47)
  {
    free(v46[0]);
  }

  __src = (v24 | v22);
  LOBYTE(v51) = v23;
  if (!v23)
  {
    return 0;
  }

  v31 = *(a2 + 9);
  if (v31)
  {
    v32 = (a2 - 2);
  }

  else
  {
    v32 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v32, v31, &__src, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v34 = *a2;
    v33 = a2[1];
    *v33 = *a2;
    *(v34 + 8) = v33;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::ErfOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ErfOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.erf";
      v52 = 10;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::ErfOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ErfOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::ExpOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v60[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v49 = "expected ranked tensor input to unary op";
  LOWORD(v52) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v49, &v43);
  if (v45 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v43;
    v15 = v44;
    v16 = (*(v44 + 24))(v44, v43);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v48 = 257;
      emitDiag(v18, 2, &v46, &v49);
      if (v49)
      {
        mlir::Diagnostic::operator<<<66ul>(v50, "replaceUnary encountered input and output with mismatched shape: ");
        if (v49)
        {
          LODWORD(v46) = 4;
          v47 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
          v20 = v51 + 24 * v52;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v52;
          if (v49)
          {
            mlir::Diagnostic::operator<<<5ul>(v50, " vs ");
            if (v49)
            {
              LODWORD(v46) = 4;
              v47 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
              v23 = v51 + 24 * v52;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v52;
            }
          }
        }
      }

LABEL_16:
      v10 = v57 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v42 = a2[3];
        v48 = 257;
        emitDiag(v42, 2, &v46, &v49);
        if (v49)
        {
          mlir::Diagnostic::operator<<<48ul>(v50, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpOp>(*(**v31 + 32));
    v49 = v31;
    v50[0] = v32;
    v50[1] = &v52;
    v51 = 0x400000000;
    v53 = v55;
    v54 = 0x400000000;
    v55[4] = v56;
    v55[5] = 0x400000000;
    v56[8] = 4;
    v57 = v59;
    v58 = 0x100000000;
    v59[1] = v60;
    v59[2] = 0x100000000;
    v60[1] = 0;
    v60[2] = 0;
    v60[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v60[4] = 0;
    v60[6] = 0;
    mlir::ODIE::Compiler::CoreML::ExpOp::build(a1, &v49, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v33 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert(a1, v33);
    v34 = *(*(v33 + 6) + 16);
    mlir::OperationState::~OperationState(&v49);
    if (v34 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a2 + 9);
    if (v36)
    {
      v37 = a2 - 2;
    }

    else
    {
      v37 = 0;
    }

    v46 = v37;
    v47 = v36;
    v38 = *(v35 + 9);
    v39 = (v35 - 16);
    if (!v38)
    {
      v39 = 0;
    }

    v49 = v39;
    v50[0] = v38;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v46, &v49);
    if (a2[2])
    {
      a2[2] = 0;
      v41 = *a2;
      v40 = a2[1];
      *v40 = *a2;
      *(v41 + 8) = v40;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL replaceExpm1(const char **a1, mlir::Operation *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1)
  {
    v4 = *(*(a2 + 9) + 24);
    __src = "expected ranked tensor input to TorchImport.expm1";
    LOWORD(v56[0]) = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v4, &__src, &v44);
    if (v45 == 1)
    {
      v5 = *(a2 - 1);
      v6 = *(a2 + 3);
      __src = "expected shaped type for the output";
      LOWORD(v56[0]) = 259;
      mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v6, &__src, &v42);
      LODWORD(__src) = 1065353216;
      Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &__src, 1);
      v8 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, v4);
      if ((v9 & 1) == 0)
      {
        v34 = *(a2 + 3);
        v50 = 257;
        emitDiag(v34, 2, v48, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<53ul>(&v53, "failed to cast constant one to same dtype as input: ");
          if (__src)
          {
            LODWORD(v48[0]) = 4;
            v48[1] = v44;
            v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, v48, 1);
            v36 = v55 + 24 * v56[0];
            v37 = *v35;
            *(v36 + 16) = *(v35 + 16);
            *v36 = v37;
            ++v56[0];
          }
        }

        v31 = v64 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        return v31 & 1;
      }

      v10 = v8;
      __src = v4;
      v53 = v8;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v48);
      if (v51)
      {
        v41 = *(v48[0] + 1);
        v11 = a1[4];
        v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpOp>(*(**v11 + 32));
        __src = v11;
        v53 = v12;
        v54 = v56;
        v55 = 0x400000000;
        v57 = v59;
        v58 = 0x400000000;
        v60 = v62;
        v61 = 0x400000000;
        v63 = 4;
        v64 = &v66;
        v65 = 0x100000000;
        v67 = &v69;
        v68 = 0x100000000;
        v70 = 0;
        v71 = 0;
        v72 = &mlir::detail::TypeIDResolver<void,void>::id;
        v73 = 0;
        v74 = 0;
        v13 = v44;
        mlir::ODIE::Compiler::CoreML::ExpOp::build(a1, &__src, v44, v4);
        v14 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert(a1, v14);
        v15 = *(*(v14 + 6) + 16);
        mlir::OperationState::~OperationState(&__src);
        if (v15 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id)
        {
          v14 = 0;
        }

        v16 = a1[4];
        v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**v16 + 32));
        __src = v16;
        v53 = v17;
        v54 = v56;
        v55 = 0x400000000;
        v57 = v59;
        v58 = 0x400000000;
        v60 = v62;
        v61 = 0x400000000;
        v63 = 4;
        v64 = &v66;
        v65 = 0x100000000;
        v67 = &v69;
        v68 = 0x100000000;
        v70 = 0;
        v71 = 0;
        v72 = &mlir::detail::TypeIDResolver<void,void>::id;
        v73 = 0;
        v74 = 0;
        mlir::ODIE::Compiler::CoreML::SubOp::build(a1, &__src, v13, (v14 - 16), v41);
        v18 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert(a1, v18);
        v19 = *(*(v18 + 6) + 16);
        v20 = v18 - 16;
        mlir::OperationState::~OperationState(&__src);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
        {
          v21 = v20;
        }

        else
        {
          v21 = -16;
        }

        v23 = v42;
        v22 = v43;
        v24 = (*(v43 + 8))(v43, v42);
        v25 = mlir::ODIE::Compiler::castValueToElementType(a1, v21, v24);
        if (v26)
        {
          __src = v25;
          v27 = *(a2 + 9);
          if (v27)
          {
            v28 = (a2 - 16);
          }

          else
          {
            v28 = 0;
          }

          mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &__src, 1);
          if (*(a2 + 2))
          {
            *(a2 + 2) = 0;
            v30 = *a2;
            v29 = *(a2 + 1);
            *v29 = *a2;
            *(v30 + 8) = v29;
            *a2 = 0;
            *(a2 + 1) = 0;
          }

          mlir::Operation::destroy(a2);
          v31 = 1;
          goto LABEL_38;
        }

        v39 = *(a2 + 3);
        v47 = 257;
        emitDiag(v39, 2, v46, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(&v53, "failed to cast ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(&v53, v21);
            if (__src)
            {
              mlir::Diagnostic::operator<<<22ul>(&v53, " to dtype of result: ");
            }
          }
        }

        v46[0] = (*(v22 + 8))(v22, v23);
        if (__src)
        {
          mlir::Diagnostic::operator<<<mlir::Type>(&v53, v46);
        }
      }

      else
      {
        v38 = *(a2 + 3);
        v47 = 257;
        emitDiag(v38, 2, v46, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<21ul>(&v53, "failed to broadcast ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(&v53, v4);
            if (__src)
            {
              mlir::Diagnostic::operator<<<6ul>(&v53, " and ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v53, v10);
              }
            }
          }
        }
      }

      v31 = v64 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_38:
      if (v51 == 1 && v48[0] != &v49)
      {
        free(v48[0]);
      }

      return v31 & 1;
    }

    return 0;
  }

  else
  {
    v32 = *(a2 + 3);
    v50 = 257;
    emitDiag(v32, 2, v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<45ul>(&v53, "expect a single operand to TorchImport.expm1");
    }

    v33 = (v64 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v33;
}

BOOL replaceExpand(uint64_t *a1, uint64_t *a2)
{
  v54[8] = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v5 = *(a2[9] + 24);
  *&v44 = "expected ranked tensor input to expand";
  v46 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v44, v37);
  if (v37[16] != 1)
  {
    return 0;
  }

  v6 = *(a2[9] + 56);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v6 + 24 * *(v6 + 16) + 120;
    }

    else
    {
      v8 = v6 + 16 * v7 + 16;
    }
  }

  else
  {
    v8 = 0;
  }

  getTupleAsValues(&v40, v8, v4);
  if (v43)
  {
    if (v41)
    {
      for (i = 0; i < v41; ++i)
      {
        v11 = *(v40 + i);
        v44 = 0uLL;
        v35[0] = &v44;
        if ((~*(v11 + 8) & 7) != 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          v13 = *(v12 + 8) & 7;
          if (v13 != 6)
          {
            v15 = v12 + 16 * v13 + 16;
LABEL_21:
            if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v35, v15))
            {
              mlir::ODIE::Compiler::extract1DIntVector<int>(v11, &v44);
              if ((v47 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:nn200100]();
              }

              v16 = *v44;
              if (v44 != v45)
              {
                free(v44);
              }

              if (v16 == -1)
              {
                DimensionLengthOfTensor = mlir::ODIE::Compiler::getDimensionLengthOfTensor(a1, v5, i);
                *(v40 + i) = DimensionLengthOfTensor;
              }
            }

            continue;
          }

          v14 = v12 + 24 * *(v12 + 16);
          v15 = v14 + 120;
          if (v14 != -120)
          {
            goto LABEL_21;
          }
        }
      }
    }

    LODWORD(v44) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v44, 1, 0);
    v39 = v41;
    v18 = mlir::IntegerType::get(*a1, 32, 1);
    *&v44 = &v39;
    *(&v44 + 1) = 1;
    v35[0] = v18;
    v38 = 0;
    *&v44 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v18 + 32), &v44, v35, &v38);
    v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, v4, &v44, &Tensor, &v40);
    if (*(a2 + 9))
    {
      v20 = a2 - 2;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20[1];
    v22 = a1[4];
    v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a1, *(**v22 + 32));
    *&v44 = v22;
    *(&v44 + 1) = v23;
    v45[0] = &v46;
    v45[1] = 0x400000000;
    v47 = v49;
    v48 = 0x400000000;
    v49[4] = v50;
    v49[5] = 0x400000000;
    v50[8] = 4;
    v51 = v53;
    v52 = 0x100000000;
    v53[1] = v54;
    v53[2] = 0x100000000;
    v54[1] = 0;
    v54[2] = 0;
    v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v54[4] = 0;
    v54[6] = 0;
    mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(a1, &v44, v21 & 0xFFFFFFFFFFFFFFF8, v5, v19 - 16);
    v24 = mlir::Operation::create(&v44);
    mlir::OpBuilder::insert(a1, v24);
    v25 = *(*(v24 + 6) + 16);
    mlir::OperationState::~OperationState(&v44);
    if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a2 + 9);
    if (v27)
    {
      v28 = a2 - 2;
    }

    else
    {
      v28 = 0;
    }

    v35[0] = v28;
    v35[1] = v27;
    v29 = *(v26 + 9);
    v30 = v26 - 16;
    if (!v29)
    {
      v30 = 0;
    }

    *&v44 = v30;
    *(&v44 + 1) = v29;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v35, &v44);
    if (a2[2])
    {
      a2[2] = 0;
      v32 = *a2;
      v31 = a2[1];
      *v31 = *a2;
      *(v32 + 8) = v31;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v9 = 1;
  }

  else
  {
    v35[0] = "Failed to fetch tuple inputs.";
    v36 = 259;
    emitDiag(v4, 2, v35, &v44);
    v9 = (v51 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
  }

  if (v43 == 1 && v40 != &v42)
  {
    free(v40);
  }

  return v9;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::ModuloOp,false>(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    return 0;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = &v63[24 * v64];
      v32 = *v30;
      *(v31 + 2) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = &v63[24 * v64];
      v36 = *v34;
      *(v35 + 2) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if ((v20 & 1) == 0 || (v21 = v19, v53 = v19, v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18), (v23 & 1) == 0))
  {
    v42 = std::__throw_bad_optional_access[abi:nn200100]();
    return replaceFlip(v42, v43);
  }

  v52 = v22;
  __src = v21;
  v61 = v22;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
  if (v59)
  {
    v24 = *v56;
    v52 = *(v56 + 1);
    v53 = v24;
    v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v53, &v52);
    v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
    v27 = (v25 - 16);
    v28 = 1;
  }

  else
  {
    v55 = 257;
    emitDiag(v45, 2, v54, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
      if (__src)
      {
        v55 = 261;
        v54[0] = v5;
        v54[1] = v6;
        mlir::Diagnostic::operator<<(&v61, v54);
        if (__src)
        {
          mlir::Diagnostic::operator<<<4ul>(&v61, " op");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  if (v59 == 1 && v56 != v58)
  {
    free(v56);
  }

  __src = (v26 | v27);
  LOBYTE(v61) = v28;
  if (!v28)
  {
    return 0;
  }

  v37 = *(a2 + 9);
  if (v37)
  {
    v38 = (a2 - 16);
  }

  else
  {
    v38 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
  if (*(a2 + 2))
  {
    *(a2 + 2) = 0;
    v40 = *a2;
    v39 = *(a2 + 1);
    *v39 = *a2;
    *(v40 + 8) = v39;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceFlip(mlir::OpBuilder *a1, uint64_t *a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v9 = a2[3];
    v38 = 257;
    emitDiag(v9, 2, v37, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<39ul>(v40, "expect 2 operands for TorchImport.flip");
    }

    goto LABEL_12;
  }

  v4 = *(a2[9] + 24);
  v39 = "expected shaped type for input to TorchImport.flip";
  v41 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v39, &v32);
  v39 = "expected shaped type for output of TorchImport.flip";
  v41 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v39, v31);
  v5 = 0;
  if (v34 != 1 || (v31[16] & 1) == 0)
  {
    return v5;
  }

  v6 = *(a2[9] + 56);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v6 + 24 * *(v6 + 16) + 120;
    }

    else
    {
      v8 = v6 + 16 * v7 + 16;
    }
  }

  else
  {
    v8 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v8, a1);
  if ((v12 & 1) == 0)
  {
    v30 = a2[3];
    v38 = 257;
    emitDiag(v30, 2, v37, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<52ul>(v40, "unable to retrieve dimensions as 1d tensor of int32");
    }

LABEL_12:
    v5 = (v46 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    return v5;
  }

  v13 = TupleAs1DIntTensor;
  if (*(a2 + 9))
  {
    v14 = a2 - 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14[1];
  (*(v33 + 24))(v33, v32);
  v17 = mlir::ODIE::Compiler::wrapAroundDimensions(a1, v13, v16);
  v18 = *(a1 + 4);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReverseOp,void>::id, *(**v18 + 32));
  if ((v20 & 1) == 0)
  {
    v38 = 1283;
    v37[2] = "coreml.reverse";
    v37[3] = 14;
    v36 = 259;
    llvm::operator+(v37, &v35, &v39);
    llvm::report_fatal_error(&v39, 1);
  }

  v39 = v18;
  v40[0] = v19;
  v40[1] = &v41;
  v40[2] = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v44[4] = v45;
  v44[5] = 0x400000000;
  v45[8] = 4;
  v46 = v48;
  v47 = 0x100000000;
  v48[1] = v49;
  v48[2] = 0x100000000;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v49[4] = 0;
  v49[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReverseOp::build(a1, &v39, v15 & 0xFFFFFFFFFFFFFFF8, v4, v17);
  v21 = mlir::Operation::create(&v39);
  mlir::OpBuilder::insert(a1, v21);
  v22 = *(*(v21 + 6) + 16);
  mlir::OperationState::~OperationState(&v39);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReverseOp,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a2 + 9);
  if (v24)
  {
    v25 = a2 - 2;
  }

  else
  {
    v25 = 0;
  }

  v37[0] = v25;
  v37[1] = v24;
  v26 = *(v23 + 9);
  v27 = (v23 - 16);
  if (!v26)
  {
    v27 = 0;
  }

  v39 = v27;
  v40[0] = v26;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v37, &v39);
  if (a2[2])
  {
    a2[2] = 0;
    v29 = *a2;
    v28 = a2[1];
    *v28 = *a2;
    *(v29 + 8) = v28;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceFloor(mlir::OpBuilder *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v16 = a2[3];
    v30 = 257;
    emitDiag(v16, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<40ul>(v32, "expect 1 operands for TorchImport.floor");
    }

    goto LABEL_17;
  }

  v4 = *(a2[9] + 24);
  v28 = v4;
  v31 = "expected shaped type for input to TorchImport.floor";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v31, v26);
  v31 = "expected shaped type for output of TorchImport.floor";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v31, v24);
  v5 = 0;
  if (v27 != 1 || (v25 & 1) == 0)
  {
    return v5;
  }

  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<float>(a1, v4, 1.0);
  v23 = v6;
  if ((v6 & 1) == 0)
  {
    v18 = a2[3];
    v30 = 257;
    emitDiag(v18, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<50ul>(v32, "unable to create constant of 1 with same type as ");
      if (v31)
      {
        mlir::Diagnostic::operator<<(v32, v4);
      }
    }

    goto LABEL_17;
  }

  v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v26, &v28, &TensorConstantWithSameTypeAs) - 16;
  v8 = v24[0];
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v24[0]);
  if (v9)
  {
    v8 = (*(v10 + 8))(v10, v9);
  }

  v20 = mlir::ODIE::Compiler::castValueToElementType(a1, v7, v8);
  v21 = v11;
  if ((v11 & 1) == 0)
  {
    v19 = a2[3];
    v30 = 257;
    emitDiag(v19, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<16ul>(v32, "unable to cast ");
      if (v31)
      {
        mlir::Diagnostic::operator<<(v32, v7);
        if (v31)
        {
          mlir::Diagnostic::operator<<<19ul>(v32, " to same dtype as ");
          if (v31)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v32, v24);
          }
        }
      }
    }

LABEL_17:
    v5 = (v34 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    return v5;
  }

  v12 = *(a2 + 9);
  if (v12)
  {
    v13 = (a2 - 2);
  }

  else
  {
    v13 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v13, v12, &v20, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v15 = *a2;
    v14 = a2[1];
    *v14 = *a2;
    *(v15 + 8) = v14;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceFloorDiv(uint64_t *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v17 = a2[3];
    v30 = 257;
    emitDiag(v17, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<43ul>(v32, "expect 2 operands for TorchImport.floordiv");
    }

    goto LABEL_17;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v27 = *(v4 + 56);
  v6 = v27;
  v28 = v5;
  v31 = "expected shaped type for input to TorchImport.floordiv";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v31, v25);
  v31 = "expected shaped type for other to TorchImport.floordiv";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v31, v24);
  v31 = "expected shaped type for output of TorchImport.floordiv";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v31, v22);
  v7 = 0;
  if (v26 != 1 || (v24[16] & 1) == 0 || (v23 & 1) == 0)
  {
    return v7;
  }

  v8 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v25, &v28, &v27) - 16;
  v9 = v22[0];
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22[0]);
  if (v10)
  {
    v9 = (*(v11 + 8))(v11, v10);
  }

  v20 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v9);
  v21 = v12;
  if ((v12 & 1) == 0)
  {
    v19 = a2[3];
    v30 = 257;
    emitDiag(v19, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<16ul>(v32, "unable to cast ");
      if (v31)
      {
        mlir::Diagnostic::operator<<(v32, v8);
        if (v31)
        {
          mlir::Diagnostic::operator<<<19ul>(v32, " to same dtype as ");
          if (v31)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v32, v22);
          }
        }
      }
    }

LABEL_17:
    v7 = (v34 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    return v7;
  }

  v13 = *(a2 + 9);
  if (v13)
  {
    v14 = (a2 - 2);
  }

  else
  {
    v14 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v14, v13, &v20, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v16 = *a2;
    v15 = a2[1];
    *v15 = *a2;
    *(v16 + 8) = v15;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceFull(mlir::OpBuilder *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v7 = *(a2 + 24);
    v15 = 257;
    emitDiag(v7, 2, v14, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<35ul>(v17, "expects 2 inputs and 1 output for ");
      if (v16)
      {
        mlir::Diagnostic::operator<<(v17, *(a2 + 48));
      }
    }

    goto LABEL_13;
  }

  if (!llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v10 = *(a2 + 24);
    v15 = 257;
    emitDiag(v10, 2, v14, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<36ul>(v17, "expected shaped type for the output");
    }

    goto LABEL_13;
  }

  v4 = *(*(a2 + 72) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16) + 120;
    }

    else
    {
      v6 = v4 + 16 * v5 + 16;
    }
  }

  else
  {
    v6 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v6, a1);
  if ((v12 & 1) == 0)
  {
    v13 = *(a2 + 24);
    v15 = 257;
    emitDiag(v13, 2, v14, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<52ul>(v17, " first operand to TorchImport.full should be tuple.");
    }

LABEL_13:
    v8 = (v17[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return v8;
  }

  return replaceFullImpl(a1, a2, TupleAs1DIntTensor);
}

BOOL replaceFullLike(mlir::OpBuilder *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2 && *(a2 + 36) == 1)
  {
    *&v19[0] = "expected shaped type for input and output";
    v20 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(a2 - 16, v19, v14);
    v13 = *(*(a2 + 72) + 24);
    *&v19[0] = "expected shaped type for input and output";
    v20 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v13, v19, &v10);
    v4 = 0;
    if (v14[16] == 1 && (v12 & 1) != 0)
    {
      (*(v11 + 24))(v11, v10);
      v18 = v5;
      v6 = mlir::IntegerType::get(*a1, 32, 1);
      *&v19[0] = &v18;
      *(&v19[0] + 1) = 1;
      v16 = 0;
      v17 = v6;
      *&v19[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), v19, &v17, &v16);
      v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, *(a1 + 4), v19, &v13);
      return replaceFullImpl(a1, a2, v7 - 16);
    }
  }

  else
  {
    v8 = *(a2 + 24);
    v15 = 257;
    emitDiag(v8, 2, v14, v19);
    if (*&v19[0])
    {
      mlir::Diagnostic::operator<<<35ul>(v19 + 8, "expects 2 inputs and 1 output for ");
      if (*&v19[0])
      {
        mlir::Diagnostic::operator<<(v19 + 8, *(a2 + 48));
      }
    }

    v4 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
  }

  return v4;
}