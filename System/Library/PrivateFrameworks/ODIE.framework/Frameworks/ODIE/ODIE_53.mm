uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail18ContextTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_11ContextTypeEJRNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v4 = 0;
  if (((*(*v2 + 536))(v2, &v4) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a1[1], v4);
  return 1;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>(void *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id;
  v5[1] = &v6;
  v6 = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15TaskTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8TaskTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v9[1] = v5;
  v8 = *a2;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(v10, 0, v10, v11, &v8);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Type const*>(*a5, (*a5 + 8 * *(a5 + 8)), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15TaskTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8TaskTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type>(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v3 = *a2;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail21TaskResultTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14TaskResultTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v10[1] = v6;
  v9 = v3;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v11, 0, v11, v12, &v9);
  v8 = &v9;
  *&v11[0] = &v9;
  *(&v11[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail21TaskResultTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14TaskResultTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
  v10[1] = &v11;
  v11 = a1;
  v6 = *a3;
  v7 = *a5;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJNS_8ArrayRefIxEENS1_4TypeENS1_25MemRefLayoutAttrInterfaceENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v17[1] = v10;
  v13 = *a2;
  v14 = v6;
  v15 = *a4;
  v16 = v7;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v18, 0, v18, v19, &v13, &v14, &v15, &v16);
  v12 = &v13;
  *&v18[0] = &v13;
  *(&v18[0] + 1) = v17;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJNS_8ArrayRefIxEENS1_4TypeENS1_25MemRefLayoutAttrInterfaceENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type>(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id;
  v5[1] = &v6;
  v6 = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncFutureTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncFutureTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v9[1] = v5;
  v8 = a2;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v10, 0, v10, v11, &v8);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncFutureTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncFutureTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<llvm::LogicalResult mlir::StorageUniquer::mutate<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::ArrayRef<mlir::Type> &>(mlir::TypeID,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *,llvm::ArrayRef<mlir::Type> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1)
{
  v1 = **a1;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *v2;
  v4 = (*v2 + 8 * v2[1]);
  *(v1 + 32) = 0;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((v1 + 24), v3, v4);
  return 1;
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::MetaType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::MetaType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::ContextType>(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v9[1] = 0x300000000;
  *&v7 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::ContextType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v8 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v9[0] = v10;
  mlir::AbstractType::AbstractType(&v4, a1, v9, &v7, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec11ContextTypeES2_NSF_6detail18ContextTypeStorageENSB_11TypeUniquerEJNS1_9TypeTrait9IsMutableEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec11ContextTypeES2_NSE_6detail18ContextTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait9IsMutableEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, "exec.context", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v7);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v4);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::TaskType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::TaskResultType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskResultType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::AsyncMemRefType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::AsyncFutureType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncFutureType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, 0, v2);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::MetaType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSF_6detail15MetaTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSE_6detail15MetaTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, "exec.type", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSF_6detail15MetaTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSE_6detail15MetaTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  v6 = *(**a2 + 32);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v6, &v8);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::ContextType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

__guard mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[293];
}

uint64_t llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>();
    unk_27FC19940 = v1;
  }

  return llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
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

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec11ContextTypeES2_NSE_6detail18ContextTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait9IsMutableEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(**a2 + 32);
  v6 = *(a2 + 8);
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(v4, &v6, a3, a4);
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 != (a2 + 40))
  {
    free(v2);
  }
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::TaskType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSF_6detail15TaskTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSE_6detail15TaskTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, "exec.task", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSF_6detail15TaskTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSE_6detail15TaskTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a2[4];
  if (a6 < v6)
  {
    v6 = a6;
  }

  v7 = *(**a2 + 32);
  *&v9 = a5;
  *(&v9 + 1) = v6;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>(v7, &v9);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskResultType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSF_6detail21TaskResultTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSE_6detail21TaskResultTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, "exec.task_result", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSF_6detail21TaskResultTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSE_6detail21TaskResultTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  v6 = *(**a2 + 32);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type>(v6, &v8);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncMemRefType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSF_6detail22AsyncMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSE_6detail22AsyncMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, "exec.async.memref", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(**a2 + 32);
  v5 = *(a2 + 48);
  if (*(a3 + 16))
  {
    v6 = *a3;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v15 = v6;
  v14 = a4;
  v13 = *(a2 + 32);
  v12 = v5;
  v7 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v4, &v15, &v14, &v13, &v12);
  v8 = v7;
  if (v7)
  {
    v9 = *v7;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  return v8;
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncMemRefType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSF_6detail22AsyncMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = a2[4];
  v8 = a2[6];
  if (a2[3])
  {
    a5(a6);
  }

  if (v7)
  {
    a3(a4, v7);
  }

  if (v8)
  {

    a3(a4, v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSE_6detail22AsyncMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v32[10] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v21.i64[0] = a3;
  v21.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v6, v7, &v26);
  if (v9)
  {
    v9 = *a5;
  }

  v12 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(v8, v10, &v21);
  v14 = v13;
  if (v11)
  {
    v15 = v21.i64[0];
    v21 = vaddq_s64(v21, xmmword_25D0A0600);
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v31[0] = v32;
  v31[1] = 0x600000000;
  if (v27)
  {
    llvm::SmallVectorImpl<long long>::operator=(v31, &v26);
  }

  v32[6] = v9;
  v32[7] = v12;
  v32[8] = v14;
  v32[9] = v16;
  if (v26 != v28)
  {
    free(v26);
  }

  v17 = *(**a2 + 32);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,llvm::SmallVector<long long,6u>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>::__tuple_impl(&v26, v31);
  *&v25 = v26;
  *(&v25 + 1) = v27;
  v24 = v28[6];
  v23 = v29;
  v22 = v30;
  v18 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v17, &v25, &v24, &v23, &v22);
  if (v26 != v28)
  {
    free(v26);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v18;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncFutureType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSF_6detail22AsyncFutureTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSE_6detail22AsyncFutureTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, "exec.async.future", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSF_6detail22AsyncFutureTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSE_6detail22AsyncFutureTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type>(*(**a2 + 32), v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::AwaitableTypeInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>::getEventualType;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::AwaitableTypeInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>::getEventualType;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::AwaitableTypeInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>::getEventualType;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::~SmallDenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::destroyAll(a1);
  if ((*a1 & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 8), 8);
  }

  return a1;
}

void mlir::ODIE::Compiler::registerScfDialectCollapseAndHoistAllocationsModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t *a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v11 = 1283;
    v10[0] = "Attempting to attach an interface to an unregistered operation ";
    v10[2] = "scf.if";
    v10[3] = 6;
    v8 = ".";
    v9 = 259;
    llvm::operator+(v10, &v8, v12);
    llvm::report_fatal_error(v12, 1);
  }

  v3 = v1;
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v1 + 8) + 32);
  }

  else
  {
    v4 = (v1 + 24);
  }

  v5 = *v4;
  v12[0] = *(v1 + 16);
  v12[1] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v5 + 9, v12);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>>::collapseAndHoistAllocationsHook;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v3 + 32, v7, v6);
}

uint64_t mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>>::collapseAndHoistAllocationsHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(v81, a2, 0);
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(&v94, v81);
  v5 = v95;
  if (v94 != v96)
  {
    free(v94);
  }

  if (v5)
  {
    v6 = *(a2 + 44);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v8 = v7 + 24 * (v6 & 0x7FFFFF);
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        v11 = (v10 + 32);
          ;
        }

        while (i != v11)
        {
          mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(&v94, v81, i);
          if (v96[0] == 1)
          {
            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v94);
            mlir::Operation::setAttr(i, "exec.memref_index", 0x11, IndexAttr);
            v14 = mlir::Builder::getIndexAttr((a3 + 8), v95);
            mlir::Operation::setAttr(i, "exec.memref_offset", 0x12, v14);
          }

          do
          {
            i = *(i + 1);
          }

          while (i != v11 && *(*(i + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id);
        }

        v7 += 24;
      }

      while (v7 != v8);
    }

    v84[0] = 1;
    v84[1] = -4096;
    v84[10] = -4096;
    v84[19] = -4096;
    v84[28] = -4096;
    mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(&v94, v81);
    v15 = v94;
    if (v95)
    {
      v16 = v94 + 8 * v95;
      do
      {
        *&v105 = *v15;
        mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize(v81, v105, &v88);
        v17 = v88;
        if (v89)
        {
          v18 = 8 * v89;
          do
          {
            v19 = *v17;
            v17 += 2;
            v20 = *(a2 + 24);
            *&v100 = v19;
            v21 = mlir::IntegerType::get(*(a3 + 8), 8, 0);
            v83[0] = mlir::MemRefType::get(&v100, 1, v21, 0, 0, v105);
            v85 = 0;
            v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::MemRefType,decltype(nullptr)>((a3 + 8), v20, v83);
            v23 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::operator[](v84, &v105);
            llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Exec::AllocOp,true>::push_back(v23, v22);
            v18 -= 8;
          }

          while (v18);
          v17 = v88;
        }

        if (v17 != &v90)
        {
          free(v17);
        }

        v15 += 8;
      }

      while (v15 != v16);
      v15 = v94;
    }

    if (v15 != v96)
    {
      free(v15);
    }

    (*(*a3 + 40))(a3, a2);
    v24 = *(a2 + 44);
    if ((v24 & 0x7FFFFF) != 0)
    {
      v25 = ((a2 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v78 = v25 + 24 * (v24 & 0x7FFFFF);
      while (1)
      {
        v26 = *(v25 + 8);
        v27 = v26 ? v26 - 8 : 0;
        v88 = 1;
        v89 = -4096;
        v91 = -4096;
        v92 = -4096;
        v93 = -4096;
        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom(&v88, v84);
        v94 = 1;
        v95 = -4096;
        v97 = -4096;
        v98 = -4096;
        v99 = -4096;
        v28 = v88;
        v79 = v25;
        if (v88 <= 1)
        {
          break;
        }

        v32 = &v94;
        v33 = &v89;
        if ((v88 & 1) != 0 || (v33 = v89, v32 = (v89 + 72 * v90), v90))
        {
          v28 = v88 & 1;
          v31 = v33;
          do
          {
            if ((*v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              goto LABEL_49;
            }

            v31 += 9;
          }

          while (v31 != v32);
          v31 = v32;
          goto LABEL_49;
        }

        v35 = 0;
        v31 = v89;
LABEL_53:
        v34 = &v33[9 * v35];
LABEL_54:
        while (v31 != v34)
        {
          v36 = v31[1];
          v37 = *(v31 + 4);
          *&v105 = &v106;
          *(&v105 + 1) = 0x600000000;
          if (v37 < 7)
          {
            if (!v37)
            {
              v43 = 0;
              goto LABEL_62;
            }

            v38 = 0;
            v39 = &v106;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, &v106, v37, 8);
            v38 = DWORD2(v105);
            v39 = v105;
          }

          v40 = 8 * v37;
          v41 = v39 + v38;
          do
          {
            v42 = *v36++;
            *v41++ = v42 - 16;
            v40 -= 8;
          }

          while (v40);
          v43 = DWORD2(v105);
LABEL_62:
          DWORD2(v105) = v43 + v37;
          v44 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v94, v31);
          llvm::SmallVectorImpl<mlir::Value>::operator=(v44, &v105);
          if (v105 != &v106)
          {
            free(v105);
          }

          do
          {
            v31 += 9;
          }

          while (v31 != v32 && (*v31 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(&v88);
        v45 = *(a3 + 24);
        v46 = *(v27 + 40);
        *(a3 + 24) = v27;
        *(a3 + 32) = v46;
        while (v46 != v27 + 32 && *(*(v46 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
        {
          v46 = *(v46 + 8);
        }

        v80 = v45;
        *&v105 = v46;
        *(&v105 + 1) = v27 + 32;
        *&v106 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v106 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v107 = v27 + 32;
        *(&v107 + 1) = v27 + 32;
        *&v108 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v108 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v109 = "exec.memref_offset";
        *(&v109 + 1) = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v105);
        v83[0] = v27 + 32;
        v83[1] = v27 + 32;
        v83[2] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v83[3] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v83[4] = v27 + 32;
        v83[5] = v27 + 32;
        v83[6] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v83[7] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v83[8] = "exec.memref_offset";
        v83[9] = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(v83);
        v102 = v107;
        v103 = v108;
        v100 = v105;
        v101 = v106;
        v47 = v83[0];
        v85 = v87;
        v86 = 0x600000000;
        v104 = v109;
        v48 = v105;
        if (v105 == v83[0])
        {
          v53 = 0;
          v49 = 0;
          v54 = 6;
        }

        else
        {
          v49 = 0;
          do
          {
            v50 = *(v48 + 8);
            *&v105 = v50;
            v51 = *(&v105 + 1);
            if (v50 != *(&v105 + 1))
            {
              v52 = v106;
              do
              {
                if (v52(v50))
                {
                  break;
                }

                v50 = *(v50 + 8);
              }

              while (v50 != v51);
              *&v105 = v50;
            }

            ++v49;
            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v105);
            v48 = v105;
          }

          while (v105 != v47);
          v53 = v86;
          v54 = HIDWORD(v86);
        }

        v55 = v49 + v53;
        if (v55 > v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v87, v55, 8);
          v53 = v86;
        }

        v105 = v100;
        v106 = v101;
        v107 = v102;
        v108 = v103;
        v109 = v104;
        v56 = v100;
        v57 = v85;
        if (v100 != v47)
        {
          v58 = v85 + 8 * v53;
          do
          {
            *v58 = (*(&v106 + 1))(v56);
            v59 = *(v56 + 8);
            *&v105 = v59;
            v60 = *(&v105 + 1);
            if (v59 != *(&v105 + 1))
            {
              v61 = v106;
              do
              {
                if (v61(v59))
                {
                  break;
                }

                v59 = *(v59 + 8);
              }

              while (v59 != v60);
              *&v105 = v59;
            }

            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v105);
            ++v58;
            v56 = v105;
          }

          while (v105 != v47);
          v53 = v86;
          v57 = v85;
        }

        v62 = v53 + v49;
        LODWORD(v86) = v62;
        v63 = v80;
        if (v62)
        {
          v64 = *(a3 + 24);
          v65 = *(a3 + 32);
          v66 = 8 * v62;
          do
          {
            v67 = *v57;
            *(a3 + 24) = *(*v57 + 16);
            *(a3 + 32) = v67;
            v83[0] = *((*(v67 - 8) & 0xFFFFFFFFFFFFFFF8) + 48);
            v68 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(&v94, v83);
            Attr = mlir::Operation::getAttr(v67, "exec.memref_index", 0x11uLL);
            if (Attr)
            {
              if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v70 = Attr;
              }

              else
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
            }

            *&v100 = v70;
            *&v105 = *(v68[1] + 8 * mlir::IntegerAttr::getInt(&v100));
            v71 = *(v67 + 24);
            v83[0] = *(v67 - 8) & 0xFFFFFFFFFFFFFFF8;
            *&v100 = mlir::Operation::getAttr(v67, "exec.memref_offset", 0x12uLL);
            v72 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), v71, v83, &v105, &v100);
            if (*(v72 + 9))
            {
              v73 = v72 - 16;
            }

            else
            {
              v73 = 0;
            }

            v83[0] = v73;
            mlir::RewriterBase::replaceAllOpUsesWith(a3, v67, v83, 1);
            if (v64)
            {
              *(a3 + 24) = v64;
              *(a3 + 32) = v65;
            }

            else
            {
              v65 = 0;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }

            v63 = v80;
            ++v57;
            v66 -= 8;
          }

          while (v66);
          v57 = v85;
          if (v86)
          {
            v74 = 8 * v86;
            do
            {
              v75 = *v57++;
              (*(*a3 + 16))(a3, v75, v63);
              v74 -= 8;
            }

            while (v74);
            v57 = v85;
            v63 = v80;
          }
        }

        if (v57 != v87)
        {
          free(v57);
          v63 = v80;
        }

        if (v63.n128_u64[0])
        {
          *(a3 + 24) = v63;
        }

        else
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::~SmallDenseMap(&v94);
        v25 = v79 + 24;
        if (v79 + 24 == v78)
        {
          goto LABEL_117;
        }
      }

      v29 = v89;
      v30 = v90;
      if (v88)
      {
        v31 = &v94;
      }

      else
      {
        v31 = (v89 + 72 * v90);
      }

      if (v88)
      {
        v29 = &v89;
        v30 = 4;
      }

      v32 = &v29[9 * v30];
LABEL_49:
      if (v28)
      {
        v34 = &v94;
        goto LABEL_54;
      }

      v33 = v89;
      v35 = v90;
      goto LABEL_53;
    }

LABEL_117:
    (*(*a3 + 48))(a3, a2);
    llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(v84);
    v76 = 1;
  }

  else
  {
    v76 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(v82);
  MEMORY[0x25F891030](v82[0], 8);
  MEMORY[0x25F891030](v81[0], 8);
  return v76;
}

uint64_t llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t *a1)
{
  result = *a1;
  while (result != a1[4])
  {
    v3 = (a1[3])();
    result = mlir::Operation::hasAttr(v3, a1[8], a1[9]);
    if (result)
    {
      break;
    }

    v4 = a1[1];
    result = *(*a1 + 8);
    *a1 = result;
    if (result != v4)
    {
      do
      {
        v5 = (a1[2])();
        result = *a1;
        if (v5)
        {
          break;
        }

        result = *(result + 8);
        *a1 = result;
      }

      while (result != a1[1]);
    }
  }

  return result;
}

void mlir::ODIE::Compiler::registerScfDialectCollapseAndHoistAllocationsModels(mlir::DialectRegistry &)::$_1::__invoke(uint64_t *a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v11 = 1283;
    v10[0] = "Attempting to attach an interface to an unregistered operation ";
    v10[2] = "scf.while";
    v10[3] = 9;
    v8 = ".";
    v9 = 259;
    llvm::operator+(v10, &v8, v12);
    llvm::report_fatal_error(v12, 1);
  }

  v3 = v1;
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v1 + 8) + 32);
  }

  else
  {
    v4 = (v1 + 24);
  }

  v5 = *v4;
  v12[0] = *(v1 + 16);
  v12[1] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v5 + 9, v12);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>>::collapseAndHoistAllocationsHook;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v3 + 32, v7, v6);
}

uint64_t mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>>::collapseAndHoistAllocationsHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(v81, a2, 0);
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(&v94, v81);
  v5 = v95;
  if (v94 != v96)
  {
    free(v94);
  }

  if (v5)
  {
    v6 = *(a2 + 44);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v8 = v7 + 24 * (v6 & 0x7FFFFF);
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        v11 = (v10 + 32);
          ;
        }

        while (i != v11)
        {
          mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(&v94, v81, i);
          if (v96[0] == 1)
          {
            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v94);
            mlir::Operation::setAttr(i, "exec.memref_index", 0x11, IndexAttr);
            v14 = mlir::Builder::getIndexAttr((a3 + 8), v95);
            mlir::Operation::setAttr(i, "exec.memref_offset", 0x12, v14);
          }

          do
          {
            i = *(i + 1);
          }

          while (i != v11 && *(*(i + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id);
        }

        v7 += 24;
      }

      while (v7 != v8);
    }

    v84[0] = 1;
    v84[1] = -4096;
    v84[10] = -4096;
    v84[19] = -4096;
    v84[28] = -4096;
    mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(&v94, v81);
    v15 = v94;
    if (v95)
    {
      v16 = v94 + 8 * v95;
      do
      {
        *&v105 = *v15;
        mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize(v81, v105, &v88);
        v17 = v88;
        if (v89)
        {
          v18 = 8 * v89;
          do
          {
            v19 = *v17;
            v17 += 2;
            v20 = *(a2 + 24);
            *&v100 = v19;
            v21 = mlir::IntegerType::get(*(a3 + 8), 8, 0);
            v83[0] = mlir::MemRefType::get(&v100, 1, v21, 0, 0, v105);
            v85 = 0;
            v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::MemRefType,decltype(nullptr)>((a3 + 8), v20, v83);
            v23 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::operator[](v84, &v105);
            llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Exec::AllocOp,true>::push_back(v23, v22);
            v18 -= 8;
          }

          while (v18);
          v17 = v88;
        }

        if (v17 != &v90)
        {
          free(v17);
        }

        v15 += 8;
      }

      while (v15 != v16);
      v15 = v94;
    }

    if (v15 != v96)
    {
      free(v15);
    }

    (*(*a3 + 40))(a3, a2);
    v24 = *(a2 + 44);
    if ((v24 & 0x7FFFFF) != 0)
    {
      v25 = ((a2 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v78 = v25 + 24 * (v24 & 0x7FFFFF);
      while (1)
      {
        v26 = *(v25 + 8);
        v27 = v26 ? v26 - 8 : 0;
        v88 = 1;
        v89 = -4096;
        v91 = -4096;
        v92 = -4096;
        v93 = -4096;
        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom(&v88, v84);
        v94 = 1;
        v95 = -4096;
        v97 = -4096;
        v98 = -4096;
        v99 = -4096;
        v28 = v88;
        v79 = v25;
        if (v88 <= 1)
        {
          break;
        }

        v32 = &v94;
        v33 = &v89;
        if ((v88 & 1) != 0 || (v33 = v89, v32 = (v89 + 72 * v90), v90))
        {
          v28 = v88 & 1;
          v31 = v33;
          do
          {
            if ((*v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              goto LABEL_49;
            }

            v31 += 9;
          }

          while (v31 != v32);
          v31 = v32;
          goto LABEL_49;
        }

        v35 = 0;
        v31 = v89;
LABEL_53:
        v34 = &v33[9 * v35];
LABEL_54:
        while (v31 != v34)
        {
          v36 = v31[1];
          v37 = *(v31 + 4);
          *&v105 = &v106;
          *(&v105 + 1) = 0x600000000;
          if (v37 < 7)
          {
            if (!v37)
            {
              v43 = 0;
              goto LABEL_62;
            }

            v38 = 0;
            v39 = &v106;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, &v106, v37, 8);
            v38 = DWORD2(v105);
            v39 = v105;
          }

          v40 = 8 * v37;
          v41 = v39 + v38;
          do
          {
            v42 = *v36++;
            *v41++ = v42 - 16;
            v40 -= 8;
          }

          while (v40);
          v43 = DWORD2(v105);
LABEL_62:
          DWORD2(v105) = v43 + v37;
          v44 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v94, v31);
          llvm::SmallVectorImpl<mlir::Value>::operator=(v44, &v105);
          if (v105 != &v106)
          {
            free(v105);
          }

          do
          {
            v31 += 9;
          }

          while (v31 != v32 && (*v31 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(&v88);
        v45 = *(a3 + 24);
        v46 = *(v27 + 40);
        *(a3 + 24) = v27;
        *(a3 + 32) = v46;
        while (v46 != v27 + 32 && *(*(v46 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
        {
          v46 = *(v46 + 8);
        }

        v80 = v45;
        *&v105 = v46;
        *(&v105 + 1) = v27 + 32;
        *&v106 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v106 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v107 = v27 + 32;
        *(&v107 + 1) = v27 + 32;
        *&v108 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v108 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v109 = "exec.memref_offset";
        *(&v109 + 1) = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v105);
        v83[0] = v27 + 32;
        v83[1] = v27 + 32;
        v83[2] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v83[3] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v83[4] = v27 + 32;
        v83[5] = v27 + 32;
        v83[6] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v83[7] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v83[8] = "exec.memref_offset";
        v83[9] = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(v83);
        v102 = v107;
        v103 = v108;
        v100 = v105;
        v101 = v106;
        v47 = v83[0];
        v85 = v87;
        v86 = 0x600000000;
        v104 = v109;
        v48 = v105;
        if (v105 == v83[0])
        {
          v53 = 0;
          v49 = 0;
          v54 = 6;
        }

        else
        {
          v49 = 0;
          do
          {
            v50 = *(v48 + 8);
            *&v105 = v50;
            v51 = *(&v105 + 1);
            if (v50 != *(&v105 + 1))
            {
              v52 = v106;
              do
              {
                if (v52(v50))
                {
                  break;
                }

                v50 = *(v50 + 8);
              }

              while (v50 != v51);
              *&v105 = v50;
            }

            ++v49;
            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v105);
            v48 = v105;
          }

          while (v105 != v47);
          v53 = v86;
          v54 = HIDWORD(v86);
        }

        v55 = v49 + v53;
        if (v55 > v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v87, v55, 8);
          v53 = v86;
        }

        v105 = v100;
        v106 = v101;
        v107 = v102;
        v108 = v103;
        v109 = v104;
        v56 = v100;
        v57 = v85;
        if (v100 != v47)
        {
          v58 = v85 + 8 * v53;
          do
          {
            *v58 = (*(&v106 + 1))(v56);
            v59 = *(v56 + 8);
            *&v105 = v59;
            v60 = *(&v105 + 1);
            if (v59 != *(&v105 + 1))
            {
              v61 = v106;
              do
              {
                if (v61(v59))
                {
                  break;
                }

                v59 = *(v59 + 8);
              }

              while (v59 != v60);
              *&v105 = v59;
            }

            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v105);
            ++v58;
            v56 = v105;
          }

          while (v105 != v47);
          v53 = v86;
          v57 = v85;
        }

        v62 = v53 + v49;
        LODWORD(v86) = v62;
        v63 = v80;
        if (v62)
        {
          v64 = *(a3 + 24);
          v65 = *(a3 + 32);
          v66 = 8 * v62;
          do
          {
            v67 = *v57;
            *(a3 + 24) = *(*v57 + 16);
            *(a3 + 32) = v67;
            v83[0] = *((*(v67 - 8) & 0xFFFFFFFFFFFFFFF8) + 48);
            v68 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(&v94, v83);
            Attr = mlir::Operation::getAttr(v67, "exec.memref_index", 0x11uLL);
            if (Attr)
            {
              if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v70 = Attr;
              }

              else
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
            }

            *&v100 = v70;
            *&v105 = *(v68[1] + 8 * mlir::IntegerAttr::getInt(&v100));
            v71 = *(v67 + 24);
            v83[0] = *(v67 - 8) & 0xFFFFFFFFFFFFFFF8;
            *&v100 = mlir::Operation::getAttr(v67, "exec.memref_offset", 0x12uLL);
            v72 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), v71, v83, &v105, &v100);
            if (*(v72 + 9))
            {
              v73 = v72 - 16;
            }

            else
            {
              v73 = 0;
            }

            v83[0] = v73;
            mlir::RewriterBase::replaceAllOpUsesWith(a3, v67, v83, 1);
            if (v64)
            {
              *(a3 + 24) = v64;
              *(a3 + 32) = v65;
            }

            else
            {
              v65 = 0;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }

            v63 = v80;
            ++v57;
            v66 -= 8;
          }

          while (v66);
          v57 = v85;
          if (v86)
          {
            v74 = 8 * v86;
            do
            {
              v75 = *v57++;
              (*(*a3 + 16))(a3, v75, v63);
              v74 -= 8;
            }

            while (v74);
            v57 = v85;
            v63 = v80;
          }
        }

        if (v57 != v87)
        {
          free(v57);
          v63 = v80;
        }

        if (v63.n128_u64[0])
        {
          *(a3 + 24) = v63;
        }

        else
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::~SmallDenseMap(&v94);
        v25 = v79 + 24;
        if (v79 + 24 == v78)
        {
          goto LABEL_117;
        }
      }

      v29 = v89;
      v30 = v90;
      if (v88)
      {
        v31 = &v94;
      }

      else
      {
        v31 = (v89 + 72 * v90);
      }

      if (v88)
      {
        v29 = &v89;
        v30 = 4;
      }

      v32 = &v29[9 * v30];
LABEL_49:
      if (v28)
      {
        v34 = &v94;
        goto LABEL_54;
      }

      v33 = v89;
      v35 = v90;
      goto LABEL_53;
    }

LABEL_117:
    (*(*a3 + 48))(a3, a2);
    llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(v84);
    v76 = 1;
  }

  else
  {
    v76 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(v82);
  MEMORY[0x25F891030](v82[0], 8);
  MEMORY[0x25F891030](v81[0], 8);
  return v76;
}

uint64_t llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t *a1)
{
  result = *a1;
  while (result != a1[4])
  {
    v3 = (a1[3])();
    result = mlir::Operation::hasAttr(v3, a1[8], a1[9]);
    if (result)
    {
      break;
    }

    v4 = a1[1];
    result = *(*a1 + 8);
    *a1 = result;
    if (result != v4)
    {
      do
      {
        v5 = (a1[2])();
        result = *a1;
        if (v5)
        {
          break;
        }

        result = *(result + 8);
        *a1 = result;
      }

      while (result != a1[1]);
    }
  }

  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::scf::SCFDialect>(void (*)(mlir::MLIRContext *,mlir::scf::SCFDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::scf::SCFDialect>(void (*)(mlir::MLIRContext *,mlir::scf::SCFDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

BOOL anonymous namespace::FuncInlinerInterface::isLegalToInline(_anonymous_namespace_::FuncInlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id && *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 10))
  {
    return 0;
  }

  if (v3)
  {
    return *(v3 + 2 * ((*(v3 + 11) >> 23) & 1) + 10) == 0;
  }

  return 1;
}

uint64_t anonymous namespace::FuncInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void anonymous namespace::FuncInlinerInterface::handleTerminator(_anonymous_namespace_::FuncInlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v12 = a3;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v5 = *(a2 + 2);
    v4 = *(a2 + 3);
    v11[0] = *(**v4 + 32);
    v11[1] = 0;
    v11[2] = v5;
    v11[3] = a2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 17);
      v7 = *(a2 + 9);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v10[0] = v7;
    v10[1] = v6;
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(v11, v4, &v12, v10);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v9 = *a2;
      v8 = *(a2 + 1);
      *v8 = *a2;
      *(v9 + 8) = v8;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
  }
}

void anonymous namespace::FuncInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = a4;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
    if (v4)
    {
      v5 = 0;
      v6 = (*(a2 + 72) + 24);
      do
      {
        v7 = *v6;
        v6 += 4;
        v8 = mlir::ValueRange::dereference_iterator(v10, v5);
        v9 = v7;
        mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v8, &v9);
        ++v5;
      }

      while (v4 != v5);
    }
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v20[0] = v21;
  v20[1] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a4;
  v10 = a4[1];
  v11 = v9 & 0xFFFFFFFFFFFFFFF9;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v20, *a3);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v11 | 2, 0, v11 | 2, v10);
  v12 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v13;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "cf.br";
    v6[3] = 5;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::cf::ControlFlowDialect::ControlFlowDialect(mlir::cf::ControlFlowDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "cf";
  *(this + 2) = 2;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::cf::ControlFlowDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E875E8;
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(a2, a2, a3, a4);
  mlir::cf::ControlFlowDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "arith", 5, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "arith", 5uLL, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::cf::ControlFlowDialect::~ControlFlowDialect(mlir::cf::ControlFlowDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::cf::AssertOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 24);
  v9 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = *(v2 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v2 + 24 * *(v2 + 16);
    v7 = (v6 + 120);
    if (v6 == -120)
    {
      return 0;
    }
  }

  else
  {
    v7 = (v2 + 16 * v5 + 16);
  }

  result = mlir::detail::constant_int_predicate_matcher::match(&v9, v7);
  if (result)
  {
    (*(*a2 + 16))(a2, a1);
    return 1;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 40 * v3);
    v5 = *a2;
    v6 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
    *v4 = v5;
    v4[1] = v6;
    v4[2] = 0;
    v4[3] = 0;
    *(v4 + 29) = 0;
    v7 = *(a1 + 8) + 1;
    *(a1 + 8) = v7;
    return *a1 + 40 * v7 - 40;
  }
}

uint64_t mlir::cf::BranchOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 44);
  v5 = *(((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  v6 = *(a1 + 16);
  if (v5 == v6 || !*v5 || **v5)
  {
    v14 = *(((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
    if ((v4 & 0x800000) != 0)
    {
      v7 = *(a1 + 68);
      v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v7 = 0;
      v8 = 2;
    }

    v18[0] = v8;
    v18[1] = v7;
    v15 = v17;
    v16 = 0x400000000;
    if (v5 == v6 || !collapseBranch(&v14, v18, &v15))
    {
      v10 = 0;
    }

    else
    {
      v9 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>((a2 + 8), *(a1 + 24), &v14, v18);
      (*(*a2 + 8))(a2, a1, v9);
      v10 = 1;
    }

    if (v15 != v17)
    {
      free(v15);
    }
  }

  else
  {
    if ((v4 & 0x800000) != 0)
    {
      v11 = *(a1 + 72);
      v12 = *(a1 + 68);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v15 = v17;
    v16 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v15, v11, 0, v11, v12);
    (*(*a2 + 16))(a2, a1);
    (*(*a2 + 32))(a2, v5, v6, v6 + 4, v15 & 0xFFFFFFFFFFFFFFF9, v16);
    if (v15 != v17)
    {
      free(v15);
    }

    return 1;
  }

  return v10;
}

void mlir::cf::CondBranchOp::getSuccessorOperands(mlir::cf::CondBranchOp *this, uint64_t a2, int a3)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v5 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (a3)
  {
    v6 = v5[1] + *v5;
    v7 = v5[2];
    v8 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v9 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5, 3);
    __src = 2;
    v14 = v8;
    v15 = v9;
    *&v16 = a2;
    *(&v16 + 1) = __PAIR64__(v7, v6);
  }

  else
  {
    v10 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v11 = *v5;
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5, 3);
    __src = 1;
    v14 = v10;
    v15 = v12;
    *&v16 = a2;
    *(&v16 + 1) = v11;
  }

  v17 = v19;
  v18 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v17, &__src, &v16);
  *this = 0;
  *(this + 8) = v16;
  *(this + 3) = this + 40;
  *(this + 4) = 0x100000000;
  if (v18)
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v17);
  }

  if (v17 != v19)
  {
    free(v17);
  }
}

void mlir::cf::SwitchOp::build(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v31 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v31, 0, &v31, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a4, 0, a4, a5);
  v18 = 16 * a7;
  if (a7)
  {
    v19 = a6;
    do
    {
      v20 = *v19;
      v21 = v19[1];
      v19 += 2;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, v20, 0, v20, v21);
    }

    while (v19 != (a6 + 16 * a7));
    v32 = v34;
    v33 = 0xC00000000;
    v22 = (a6 + 8);
    v23 = 16 * a7;
    do
    {
      v24 = *v22;
      v22 += 4;
      llvm::SmallVectorTemplateBase<int,true>::push_back(&v32, v24);
      v23 -= 16;
    }

    while (v23);
    v25 = v32;
    v26 = v33;
  }

  else
  {
    v26 = 0;
    v32 = v34;
    v33 = 0xC00000000;
    v25 = v34;
  }

  v27 = mlir::detail::DenseArrayAttrImpl<int>::get(*a1, v25, v26);
  *mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) = v27;
  if (v32 != v34)
  {
    free(v32);
  }

  if (a7)
  {
    LODWORD(a7) = 0;
    v28 = (a6 + 8);
    do
    {
      v29 = *v28;
      v28 += 4;
      LODWORD(a7) = a7 + v29;
      v18 -= 16;
    }

    while (v18);
  }

  v30 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2);
  v30[4] = 1;
  v30[5] = a5;
  v30[6] = a7;
  if (a8)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) + 8) = a8;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a9);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), a10, 0, a10, a11);
}

void mlir::cf::SwitchOp::build(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::hashing::detail::hash_state *a7, uint64_t Raw, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = a11;
  v19 = a12;
  v21 = a9;
  v20 = a10;
  if (Raw)
  {
    v22 = Raw;
    v32 = Raw;
    v23 = mlir::VectorType::get(&v32, 1uLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
    v24 = v23;
    if (v23)
    {
      v25 = a5;
      v26 = a6;
      v27 = *v23;
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v29 = v27 + 8;
      a6 = v26;
      a5 = v25;
      v19 = a12;
      v18 = a11;
      v30 = mlir::detail::InterfaceMap::lookup(v29, v28);
    }

    else
    {
      v30 = 0;
    }

    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v24, v30, a7, 4 * v22);
    v21 = a9;
    v20 = a10;
  }

  mlir::cf::SwitchOp::build(a1, a2, a3, a5, a6, v18, v19, Raw, a4, v21, v20);
}

void mlir::cf::SwitchOp::getSuccessorOperands(mlir::cf::SwitchOp *this, mlir::Operation **a2, int a3)
{
  v36[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
    v7 = (*a2 + 16 * ((*(*a2 + 11) >> 23) & 1));
    v8 = v7[20];
    v9 = v7[21];
    v7 += 20;
    v10 = v7[2];
    v11 = v9 + v8;
    v12 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v13 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a2 + 3) + 32), v7, 3);
    __src = 2;
    v30 = v12;
    v31 = v13;
    *&v34 = v6;
    *(&v34 + 1) = __PAIR64__(v10, v11);
    v35[0] = v36;
    v35[1] = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v35, &__src, v32);
    AttrDictionary = mlir::Operation::getAttrDictionary(*a2);
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(AttrDictionary + 8), (*(AttrDictionary + 8) + 16 * *(AttrDictionary + 16)), **(*(*a2 + 6) + 96));
    if (v17)
    {
      v18 = *v15;
      v16 = v15[1];
    }

    else
    {
      v18 = 0;
    }

    mlir::MutableOperandRangeRange::MutableOperandRangeRange(&__src, &v34, v18, v16);
    if (v35[0] != v36)
    {
      free(v35[0]);
    }

    mlir::MutableOperandRangeRange::dereference(&__src, v33[5] + (a3 - 1), &v25);
    if (v31 != v33)
    {
      free(v31);
    }

    *this = 0;
    *(this + 8) = v25;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v27)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v26);
    }

    v24 = v26;
    if (v26 != v28)
    {
LABEL_16:
      free(v24);
    }
  }

  else
  {
    v19 = *a2;
    v20 = *a2 + 16 * ((*(*a2 + 11) >> 23) & 1);
    v21 = *(v20 + 10);
    v22 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v19 + 3) + 32), (v20 + 80), 3);
    __src = 1;
    v30 = v22;
    v31 = v23;
    *&v25 = v19;
    *(&v25 + 1) = v21;
    v26 = v28;
    v27 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v26, &__src, v32);
    *this = 0;
    *(this + 8) = v25;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v27)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v26);
    }

    v24 = v26;
    if (v26 != v28)
    {
      goto LABEL_16;
    }
  }
}

uint64_t simplifySwitchWithOnlyDefault(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v14[3] = v2;
  v14[4] = v3;
  v6 = *(a1 + 44);
  v7 = a1 + 16 * ((v6 >> 23) & 1);
  v14[0] = *(((v7 + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  v8 = *(v7 + 80);
  v9 = *(v7 + 84);
  if ((v6 & 0x800000) != 0)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = 0;
  }

  v13[0] = v10 + 32 * v8;
  v13[1] = (v9 + v8) - v8;
  v11 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), v14, v13);
  (*(*a2 + 8))(a2, a1, v11);
  return 1;
}

uint64_t dropSwitchCasesThatMatchDefault(uint64_t a1, uint64_t **a2)
{
  v66[6] = *MEMORY[0x277D85DE8];
  v65[0] = v66;
  v65[1] = 0x600000000;
  v63[0] = v64;
  v63[1] = 0x300000000;
  v61[0] = &v62;
  v61[1] = 0x300000000;
  v4 = a1 + 64;
  v6 = *(a1 + 40);
  v5 = *(a1 + 44);
  v7 = a1 + 64 + 16 * ((v5 >> 23) & 1);
  v52 = *(v7 + 8);
  v53 = v52 != 0;
  v8 = ((v7 + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 32;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v52, v54);
  v58 = *v54;
  v59 = *&v54[16];
  v60 = *&v54[32];
  *&v54[8] = *v54;
  *&v54[24] = v59;
  *v54 = 0;
  v10 = v55;
  v11 = v59;
  if (v59 == v55)
  {
    v12 = 0;
    goto LABEL_41;
  }

  v48 = a2;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v54[8], &v56);
    v16 = v57;
    v51 = v57;
    v49 = v14;
    v50 = v56;
    v17 = *(v9 + 32 * v14 + 24);
    v18 = *(a1 + 44);
    v19 = (v4 + 16 * ((v18 >> 23) & 1));
    if (v17 != *(((v19 + ((v18 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
    {
      goto LABEL_21;
    }

    if ((v18 & 0x800000) != 0)
    {
      v20 = *(a1 + 72);
    }

    else
    {
      v20 = 0;
    }

    if (v14)
    {
      LODWORD(v21) = 0;
      v22 = 4 * v13;
      v23 = *(*v19 + 24);
      do
      {
        v24 = *v23++;
        v21 = (v24 + v21);
        v22 -= 4;
      }

      while (v22);
      if ((v18 & 0x800000) != 0)
      {
LABEL_14:
        v25 = *(a1 + 72);
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 0;
      if ((v18 & 0x800000) != 0)
      {
        goto LABEL_14;
      }
    }

    v25 = 0;
LABEL_15:
    v26 = v19[4];
    v27 = v19[5] + v26;
    v28 = *(*(*v19 + 24) + 4 * v14);
    if (v27 - v26 == v28)
    {
      if (!v28)
      {
LABEL_20:
        v15 = 1;
        goto LABEL_29;
      }

      v29 = (v25 + 32 * v26 + 24);
      v30 = (v20 + 32 * v21 + 32 * v27 + 24);
      while (*v30 == *v29)
      {
        v29 += 4;
        v30 += 4;
        if (!--v28)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v65, v17);
    v31 = *(a1 + 44);
    if ((v31 & 0x800000) != 0)
    {
      v32 = *(a1 + 72);
    }

    else
    {
      v32 = 0;
    }

    v33 = (v4 + 16 * ((v31 >> 23) & 1));
    v34 = v33[4];
    v35 = v33[5];
    v36 = *(*v33 + 24);
    if (v49)
    {
      LODWORD(v37) = 0;
      v38 = 4 * v49;
      v39 = v36;
      do
      {
        v40 = *v39++;
        v37 = (v40 + v37);
        v38 -= 4;
      }

      while (v38);
    }

    else
    {
      v37 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(v63, (v32 + 32 * (v35 + v34) + 32 * v37) & 0xFFFFFFFFFFFFFFF9 | 2, v36[v49]);
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(v61, &v50);
    v16 = v51;
LABEL_29:
    if (v16 >= 0x41 && v50)
    {
      MEMORY[0x25F891010](v50, 0x1000C8000313F17);
    }

    ++v14;
    ++v11;
    *v54 = v14;
    *&v54[24] = v11;
    ++v13;
  }

  while (v11 != v10);
  if (v15)
  {
    v41 = *(a1 + 47);
    v42 = *(a1 + 72);
    *&v58 = *(v42 + 24);
    v49 = *(((a1 + 8 * v41 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v43 = *(a1 + 96);
    v44 = v42 + 32 * v43;
    v45 = (*(a1 + 100) + v43) - v43;
    *v54 = v44;
    *&v54[8] = v45;
    v46 = mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v48 + 1, *(a1 + 24), &v58, &v49, v54, v61, v65, v63);
    ((*v48)[1])(v48, a1, v46);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_41:
  llvm::SmallVector<llvm::APInt,3u>::~SmallVector(v61);
  if (v63[0] != v64)
  {
    free(v63[0]);
  }

  if (v65[0] != v66)
  {
    free(v65[0]);
  }

  return v12;
}

uint64_t simplifyConstSwitchValue(uint64_t a1, uint64_t a2)
{
  v12 = 1;
  v2 = *(*(a1 + 72) + 24);
  v10 = &v11;
  v11 = 0;
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (!v2)
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v2 + 24 * *(v2 + 16);
    v7 = (v6 + 120);
    if (v6 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = (v2 + 16 * v5 + 16);
  }

  if (!mlir::detail::constant_int_value_binder::match(&v10, v7))
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  foldSwitch(a1, a2, &v11);
  v8 = 1;
LABEL_11:
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  return v8;
}

uint64_t simplifyPassThroughSwitch(uint64_t a1, uint64_t **a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v45 = v57;
  v55 = v57;
  v56 = 0x600000000;
  v52 = v54;
  v53 = 0x300000000;
  v49 = &v51;
  v50 = 0x100000000;
  v4 = a1 + 64;
  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v6 = (*(*(v5 + 16) + 24))();
  if (v7)
  {
    v8 = 8 * v7;
    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      v8 -= 8;
    }

    while (v8);
    v11 = v9 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 > HIDWORD(v50))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(&v49, v11);
  }

  if (*(a1 + 40))
  {
    v12 = ((v4 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v12 = 32;
  }

  v13 = (*(*(v5 + 16) + 24))();
  if (v14)
  {
    v15 = 8 * v14;
    v16 = 1;
    do
    {
      v17 = *v13++;
      v16 *= v17;
      v15 -= 8;
    }

    while (v15);
    if (v16 < 1)
    {
      v18 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 1;
  }

  v34 = 0;
  v18 = 0;
  for (i = 0; i != v16; ++i)
  {
    v47 = *(v12 + 32 * i + 24);
    v36 = *(a1 + 44);
    if ((v36 & 0x800000) != 0)
    {
      v37 = *(a1 + 72);
    }

    else
    {
      v37 = 0;
    }

    v38 = (v4 + 16 * ((v36 >> 23) & 1));
    if (i)
    {
      LODWORD(v39) = 0;
      v40 = 4 * v34;
      v41 = *(*v38 + 24);
      do
      {
        v42 = *v41++;
        v39 = (v42 + v39);
        v40 -= 4;
      }

      while (v40);
    }

    else
    {
      v39 = 0;
    }

    v43 = v37 + 32 * (v38[5] + v38[4]) + 32 * v39;
    v44 = *(*(*v38 + 24) + 4 * i);
    v58 = v43 & 0xFFFFFFFFFFFFFFF9 | 2;
    v59 = v44;
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,6u>>::emplace_back<>(&v49);
    v18 |= collapseBranch(&v47, &v58, &v49[8 * v50 - 8]);
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v55, v47);
    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(&v52, v58, v59);
    ++v34;
  }

LABEL_16:
  v19 = *(a1 + 44);
  v20 = v4 + 16 * ((v19 >> 23) & 1);
  v46 = *(((v20 + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v21 = *(v20 + 16);
  v22 = *(v20 + 20);
  if ((v19 & 0x800000) != 0)
  {
    v23 = *(a1 + 72);
  }

  else
  {
    v23 = 0;
  }

  v47 = (v23 + 32 * v21) & 0xFFFFFFFFFFFFFFF9 | 2;
  v48 = (v22 + v21) - v21;
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,6u>>::emplace_back<>(&v49);
  if (collapseBranch(&v46, &v47, &v49[8 * v50 - 8]) & 1 | v18 & 1)
  {
    v24 = *(*(a1 + 72) + 24);
    v25 = *(a1 + 24);
    v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::SwitchOp>((a2 + 1), *(**v25 + 32));
    v58 = v25;
    v59 = v26;
    v60 = v62;
    v61 = 0x400000000;
    v62[4] = v63;
    v62[5] = 0x400000000;
    v63[4] = v64;
    v63[5] = 0x400000000;
    v64[8] = 4;
    v64[9] = v65;
    v64[10] = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[2] = 0;
    v66[1] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    v27 = v55 | 4;
    if (!v56)
    {
      v27 = 0;
    }

    mlir::cf::SwitchOp::build(a2 + 1, &v58, v24, v47, v48, v52, v53, v5, v46, v27, v56);
    v28 = mlir::Operation::create(&v58);
    mlir::OpBuilder::insert((a2 + 1), v28);
    v29 = *(*(v28 + 6) + 16);
    mlir::OperationState::~OperationState(&v58);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    ((*a2)[1])(a2, a1, v30);
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = v45;
  llvm::SmallVector<llvm::SmallVector<mlir::Value,6u>,1u>::~SmallVector(&v49);
  if (v52 != v54)
  {
    free(v52);
  }

  if (v55 != v32)
  {
    free(v55);
  }

  return v31;
}

uint64_t simplifySwitchFromSwitchOnSameCondition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = *(v3[2] + 16);
  if (*v3 || v4 == 0)
  {
    return 0;
  }

  v6 = *(v4 + 32);
  v7 = *(*(v6 + 48) + 16);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id ? v6 : 0;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  if (*(v10 + 24) != *(*(v6 + 72) + 24))
  {
    return 0;
  }

  v12 = (v6 + ((*(v6 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) == v2)
  {
    return 0;
  }

  v14 = *(v6 + 40);
  v15 = v12 + 32;
  if (!v14)
  {
    v15 = 32;
  }

  v16 = 0;
  v17 = v14 - 1;
  if (v17)
  {
    v18 = (v15 + 24);
    while (*v18 != v2)
    {
      ++v16;
      v18 += 4;
      if (v17 == v16)
      {
        goto LABEL_21;
      }
    }
  }

  if (v16 == v17)
  {
LABEL_21:
    *&v29 = *(((a1 + ((*(a1 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v19 = *(a1 + 96);
    v20 = v10 + 32 * v19;
    v21 = (*(a1 + 100) + v19) - v19;
    *&v26 = v20;
    *(&v26 + 1) = v21;
    v22 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v29, &v26);
    (*(*a2 + 8))(a2, a1, v22);
  }

  else
  {
    v23 = *(v8 + 88) != 0;
    v24 = *(v8 + 88);
    v25 = v23;
    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v24, &v26);
    v29 = v26;
    v30 = v27 + v16;
    v31 = v28;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v29, &v26);
    foldSwitch(a1, a2, &v26);
    if (DWORD2(v26) >= 0x41)
    {
      if (v26)
      {
        MEMORY[0x25F891010](v26, 0x1000C8000313F17);
      }
    }
  }

  return 1;
}

uint64_t simplifySwitchFromDefaultSwitchOnSameCondition(uint64_t a1, uint64_t **a2)
{
  v89[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = *(v3[2] + 16);
  if (*v3 || v4 == 0)
  {
    return 0;
  }

  v6 = *(v4 + 32);
  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    return 0;
  }

  if (*(*(a1 + 72) + 24) != *(*(v6 + 72) + 24))
  {
    return 0;
  }

  v8 = (v6 + ((*(v6 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) != v2)
  {
    return 0;
  }

  *v74 = 0;
  v75 = 0;
  v76 = 0;
  v12 = v8 + 32;
  if (*(v6 + 40))
  {
    v13 = v12;
  }

  else
  {
    v13 = 32;
  }

  v72 = *(v6 + 88);
  v73 = v72 != 0;
  v14 = (*(*(v72 + 16) + 24))();
  if (!v15)
  {
    v17 = 1;
LABEL_57:
    v52 = 0;
    v53 = 0;
    v54 = (v13 + 24);
    while (1)
    {
      if (v2 != *v54)
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v72, v77);
        v88 = *v77;
        v89[0] = v53 + *&v77[16];
        v89[1] = *&v77[24];
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v88, v77);
        v86[0] = 0;
        v55 = v76;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v52, v76, v77, v86) & 1) == 0)
        {
          v56 = v86[0];
          *&v88 = v86[0];
          v57 = v75;
          if (4 * v75 + 4 >= 3 * v55)
          {
            v55 *= 2;
          }

          else if (v55 + ~v75 - HIDWORD(v75) > v55 >> 3)
          {
LABEL_65:
            LODWORD(v75) = v57 + 1;
            v58 = v56[2];
            if (v58)
            {
              --HIDWORD(v75);
              if (v58 >= 0x41 && *v56)
              {
                MEMORY[0x25F891010](*v56, 0x1000C8000313F17);
              }
            }

            else if (*v56 != -1)
            {
              --HIDWORD(v75);
            }

            *v56 = *v77;
            v56[2] = *&v77[8];
            goto LABEL_72;
          }

          llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(v74, v55);
          v52 = *v74;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(*v74, v76, v77, &v88);
          v57 = v75;
          v56 = v88;
          goto LABEL_65;
        }

        if (*&v77[8] >= 0x41u && *v77)
        {
          MEMORY[0x25F891010](*v77, 0x1000C8000313F17);
        }
      }

LABEL_72:
      ++v53;
      v54 += 4;
      if (v17 == v53)
      {
        goto LABEL_18;
      }
    }
  }

  v16 = 8 * v15;
  v17 = 1;
  do
  {
    v18 = *v14++;
    v17 *= v18;
    v16 -= 8;
  }

  while (v16);
  if (v17 >= 1)
  {
    goto LABEL_57;
  }

LABEL_18:
  *&v88 = v89;
  *(&v88 + 1) = 0x600000000;
  v86[0] = v87;
  v86[1] = 0x300000000;
  v84[0] = &v85;
  v84[1] = 0x300000000;
  v20 = *(a1 + 40);
  v19 = *(a1 + 44);
  v21 = a1 + 64 + 16 * ((v19 >> 23) & 1);
  v70 = *(v21 + 8);
  v71 = v70 != 0;
  v22 = ((v21 + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (!v20)
  {
    v22 = 32;
  }

  v66 = v22;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v70, v77);
  v81 = *v77;
  v82 = *&v77[16];
  v83 = *&v77[32];
  *&v77[8] = *v77;
  *&v77[24] = v82;
  *v77 = 0;
  v23 = v78;
  v24 = v82;
  if (v82 == v78)
  {
    v9 = 0;
    goto LABEL_77;
  }

  v25 = 0;
  v63 = 0;
  v26 = *v74;
  v27 = v76;
  v65 = v76 - 1;
  v64 = *v74 + 16 * v76;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v77[8], &v79);
    v69 = v80;
    v67 = v25;
    __s1 = v79;
    v31 = v25;
    if (v27)
    {
      v80 = 0;
      v79 = -1;
      v32 = llvm::hash_value(&__s1, v28, v29, v30);
      for (i = 1; ; ++i)
      {
        v34 = v32 & v65;
        v35 = v26 + 16 * (v32 & v65);
        if (v69 == *(v35 + 8))
        {
          if (v69 > 0x40)
          {
            if (!memcmp(__s1, *v35, ((v69 + 63) >> 3) & 0x3FFFFFF8))
            {
              goto LABEL_33;
            }
          }

          else if (__s1 == *v35)
          {
            goto LABEL_33;
          }
        }

        if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v26 + 16 * v34, &v79))
        {
          break;
        }

        v32 = v34 + i;
      }

      v35 = 0;
LABEL_33:
      if (v80 >= 0x41 && v79)
      {
        MEMORY[0x25F891010](v79, 0x1000C8000313F17);
      }

      if (v35 && v35 != v64)
      {
        v63 = 1;
        goto LABEL_48;
      }

      v31 = v67;
    }

    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v88, *(v66 + 32 * v31 + 24));
    v36 = *(a1 + 44);
    if ((v36 & 0x800000) != 0)
    {
      v37 = *(a1 + 72);
    }

    else
    {
      v37 = 0;
    }

    v38 = (a1 + 64 + 16 * ((v36 >> 23) & 1));
    v39 = v38[4];
    v40 = v38[5];
    v41 = *(*v38 + 24);
    if (v67)
    {
      LODWORD(v42) = 0;
      v43 = 4 * v67;
      v44 = v41;
      do
      {
        v45 = *v44++;
        v42 = (v45 + v42);
        v43 -= 4;
      }

      while (v43);
    }

    else
    {
      v42 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(v86, (v37 + 32 * (v40 + v39) + 32 * v42) & 0xFFFFFFFFFFFFFFF9 | 2, v41[v67]);
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(v84, &__s1);
LABEL_48:
    if (v69 >= 0x41 && __s1)
    {
      MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
    }

    ++v25;
    ++v24;
    *v77 = v25;
    *&v77[24] = v24;
  }

  while (v24 != v23);
  if (v63)
  {
    v46 = *(a1 + 47);
    v47 = *(a1 + 72);
    *&v81 = *(v47 + 24);
    v67 = *(((a1 + 8 * v46 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v48 = *(a1 + 96);
    v49 = v47 + 32 * v48;
    v50 = (*(a1 + 100) + v48) - v48;
    *v77 = v49;
    *&v77[8] = v50;
    v51 = mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(a2 + 1, *(a1 + 24), &v81, &v67, v77, v84, &v88, v86);
    ((*a2)[1])(a2, a1, v51);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

LABEL_77:
  llvm::SmallVector<llvm::APInt,3u>::~SmallVector(v84);
  if (v86[0] != v87)
  {
    free(v86[0]);
  }

  if (v88 != v89)
  {
    free(v88);
  }

  v59 = *v74;
  if (v76)
  {
    v60 = (*v74 + 8);
    v61 = 16 * v76;
    do
    {
      if (*v60 >= 0x41u)
      {
        v62 = *(v60 - 1);
        if (v62)
        {
          MEMORY[0x25F891010](v62, 0x1000C8000313F17);
        }
      }

      v60 += 4;
      v61 -= 16;
    }

    while (v61);
  }

  MEMORY[0x25F891030](v59, 8);
  return v9;
}

BOOL mlir::cf::AssertOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "msg";
      v5[1] = 3;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<49ul>(v8, "' failed to satisfy constraint: string attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::cf::__mlir_ods_local_type_constraint_ControlFlowOps1(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    return 1;
  }

  v12 = 261;
  v11[0] = "operand";
  v11[1] = 7;
  mlir::Operation::emitOpError(&v16, a1, v11);
  if (v16)
  {
    mlir::Diagnostic::operator<<<3ul>(v17, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<42ul>((v5 + 1), " must be 1-bit signless integer, but got ");
    if (*v6)
    {
      v14 = 4;
      v15 = a2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v14, 1);
      v8 = v6[3] + 24 * *(v6 + 8);
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++*(v6 + 8);
    }
  }

  v4 = (v6[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v4;
}

uint64_t mlir::cf::AssertOp::parse(uint64_t a1, void *a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v12);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v14, v5))
  {
    return 0;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = a2;
  if (!mlir::cf::AssertOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12))
  {
    return 0;
  }

  v9 = (*(*a1 + 32))(a1);
  v10 = mlir::IntegerType::get(*v9, 1, 0);
  return (*(*a1 + 728))(a1, v15, v10, a2 + 2) & 1;
}

BOOL mlir::cf::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  if (((*(*a1 + 800))() & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v9, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v7) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, 0);
    v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v9, v7, v4, a2 + 16);
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::cf::CondBranchOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a4, 0, a4, a5);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a6, 0, a6, a7);
  v15 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
  *v15 = 1;
  v15[1] = a5;
  v15[2] = a7;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a8);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a9);
}

BOOL mlir::cf::CondBranchOp::parse(uint64_t a1, void *a2)
{
  v26[16] = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v24 = v26;
  v25 = 0x400000000;
  v22[0] = &v23;
  v22[1] = 0x100000000;
  v19 = v21;
  v20 = 0x400000000;
  v17[0] = &v18;
  v17[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v14) & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v22) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v13))
  {
    if ((*(*a1 + 288))(a1))
    {
      v5 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v19, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v17) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0;
    }

    (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 14))
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v14);
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v13);
      v6 = v25;
      v7 = v20;
      v8 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
      *v8 = 1;
      v8[1] = v6;
      v8[2] = v7;
      v9 = (*(*a1 + 32))(a1);
      v10 = mlir::IntegerType::get(*v9, 1, 0);
      if (((*(*a1 + 728))(a1, v15, v10, a2 + 2) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v24, v22, v4, (a2 + 2)))
      {
        v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v19, v17, v5, (a2 + 2));
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v11 = 0;
LABEL_25:
  if (v17[0] != &v18)
  {
    free(v17[0]);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v11;
}

BOOL mlir::cf::SwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v3 = a1[1];
      if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 32)
      {
        return 1;
      }
    }
  }

  a2(&v8, a3);
  if (v8)
  {
    mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
    if (v8)
    {
      v7 = 261;
      v6[0] = "case_operand_segments";
      v6[1] = 21;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<58ul>(v9, "' failed to satisfy constraint: i32 dense array attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

BOOL mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || mlir::DenseIntElementsAttr::classof(a1))
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "case_values";
      v7[1] = 11;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<59ul>(v10, "' failed to satisfy constraint: integer elements attribute");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (((*(*a1 + 56))(a1, &v14) & 1) == 0)
  {
    return 0;
  }

  v4 = v14;
  if (!v14)
  {
    return 1;
  }

  v5 = mlir::DenseIntElementsAttr::classof(v14);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v13[16] = 257;
  (*(*a1 + 16))(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
  }

  {
    llvm::getTypeName<mlir::DenseIntElementsAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DenseIntElementsAttr>();
    *algn_27FC17BF8 = v12;
  }

  if (v18)
  {
    v17 = 261;
    v15 = llvm::getTypeName<mlir::DenseIntElementsAttr>(void)::Name;
    v16 = *algn_27FC17BF8;
    mlir::Diagnostic::operator<<(v19, &v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
      if (v18)
      {
        LODWORD(v15) = 0;
        v16 = v14;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
        v9 = v20 + 24 * v21;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v21;
      }
    }
  }

  v7 = (v22 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v7;
}

BOOL mlir::cf::SwitchOp::parse(char **a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  v29[1] = 1;
  v30 = 0;
  v28 = 0;
  v29[0] = &v30;
  v55 = v57;
  v56 = 0x400000000;
  v53[0] = &v54;
  v53[1] = 0x100000000;
  v50 = v52;
  v51 = 0x200000000;
  v47 = v49;
  v48 = 0x400000000;
  v44 = v46;
  v45 = 0xC00000000;
  v42[0] = &v43;
  v42[1] = 0x100000000;
  v4 = (*(*a1 + 5))(a1);
  if (((*(*a1 + 88))(a1, v32, 1) & 1) == 0)
  {
    goto LABEL_45;
  }

  if (((*(*a1 + 13))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v36 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v36))
  {
    goto LABEL_45;
  }

  v30 = v36;
  if (((*(*a1 + 15))(a1) & 1) == 0 || ((*(*a1 + 39))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v27 = (*(*a1 + 5))(a1);
  v5 = (*(*a1 + 5))(a1);
  v39 = &v41;
  v40 = 0x100000000;
  v36 = &v38;
  v37 = 0x100000000;
  v65[8] = 257;
  if (((*(*a1 + 50))(a1, "default", 7, &v63) & 1) == 0 || ((*(*a1 + 13))(a1) & 1) == 0 || ((*(*a1 + 100))(a1, &v28) & 1) == 0 || ((*(*a1 + 36))(a1) & 1) != 0 && (((*(*a1 + 90))(a1, &v55, 0, 0, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 73))(a1, v53) & 1) == 0 || ((*(*a1 + 37))(a1) & 1) == 0))
  {
LABEL_44:
    llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v36);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v39);
LABEL_45:
    v12 = 0;
    goto LABEL_46;
  }

  v22 = v5;
  v63 = v65;
  v64 = 0x300000000;
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v30);
  if ((*(*a1 + 16))(a1))
  {
    if (IntOrFloatBitWidth)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    }

    else
    {
      v7 = 0;
    }

    v23 = v7;
    while (1)
    {
      v35 = 0;
      if ((mlir::AsmParser::parseInteger<long long>(a1, &v35) & 1) == 0)
      {
        break;
      }

      LODWORD(v59) = IntOrFloatBitWidth;
      if (IntOrFloatBitWidth > 0x40)
      {
        llvm::APInt::initSlowCase(&v58, v35, 1);
      }

      v58 = (v35 & v23);
      v8 = llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(&v63, &v58, 1);
      v9 = &v63[16 * v64];
      *(v9 + 2) = *(v8 + 8);
      *v9 = *v8;
      *(v8 + 8) = 0;
      LODWORD(v64) = v64 + 1;
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      v34 = 0;
      v61[0] = v62;
      v61[1] = 0x100000000;
      v58 = v60;
      v59 = 0x600000000;
      if (((*(*a1 + 13))(a1) & 1) == 0 || ((*(*a1 + 100))(a1, &v34) & 1) == 0 || ((*(*a1 + 36))(a1) & 1) != 0 && (((*(*a1 + 90))(a1, v61, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 73))(a1, &v58) & 1) == 0 || ((*(*a1 + 37))(a1) & 1) == 0))
      {
        if (v58 != v60)
        {
          free(v58);
        }

        if (v61[0] != v62)
        {
          free(v61[0]);
        }

        break;
      }

      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v50, v34);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(&v39, v61);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>>::emplace_back<llvm::SmallVector<mlir::Type,6u>&>(&v36, &v58);
      if (v58 != v60)
      {
        free(v58);
      }

      if (v61[0] != v62)
      {
        free(v61[0]);
      }

      if (((*(*a1 + 16))(a1) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
    goto LABEL_44;
  }

LABEL_36:
  if (v64)
  {
    v61[0] = v64;
    v10 = mlir::VectorType::get(v61, 1uLL, v30, 0, 0);
    _ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeELPv0EEET_(&v58, v10);
    v11 = mlir::DenseElementsAttr::get(v58, v59, v63, v64);
    llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
    if (v11)
    {
      *(mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) + 8) = v11;
    }
  }

  else
  {
    llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
  }

  if (v40)
  {
    v14 = v39;
    v24 = &v39[6 * v40];
    do
    {
      llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(&v47, *v14, &(*v14)[32 * *(v14 + 2)]);
      llvm::SmallVectorTemplateBase<int,true>::push_back(&v44, *(v14 + 2));
      v14 += 6;
    }

    while (v14 != v24);
  }

  if (v37)
  {
    v15 = v36;
    v25 = &v36[8 * v37];
    do
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v42, *v15, &(*v15)[8 * *(v15 + 2)]);
      v15 += 8;
    }

    while (v15 != v25);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v36);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v39);
  if (((*(*a1 + 41))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v63 = (*(*a1 + 5))(a1);
  if (((*(*a1 + 61))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_45;
  }

  v16 = a2[1];
  v36 = a1;
  v37 = &v63;
  v38 = a2;
  if (!mlir::cf::SwitchOp::verifyInherentAttrs(v16, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v36))
  {
    goto LABEL_45;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v28);
  v17 = v51 ? v50 | 4 : 0;
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v17, 0, v17, v51);
  v18 = v56;
  v26 = v48;
  v19 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2);
  v19[4] = 1;
  v19[5] = v18;
  v19[6] = v26;
  v20 = (*(*a1 + 4))(a1);
  v21 = mlir::detail::DenseArrayAttrImpl<int>::get(*v20, v44, v45);
  *mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) = v21;
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v29, v4, (a2 + 2)) || !mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v55, v53, v27, (a2 + 2)))
  {
    goto LABEL_45;
  }

  v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v47, v42, v22, (a2 + 2));
LABEL_46:
  if (v42[0] != &v43)
  {
    free(v42[0]);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  if (v53[0] != &v54)
  {
    free(v53[0]);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  return v12;
}

void llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 5);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 32);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 32 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 5);
}

BOOL mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 1;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 1;
  }

  return 0;
}

uint64_t collapseBranch(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1 + 32);
  if (*(*(*a1 + 40) + 8) != v4)
  {
    return 0;
  }

  v5 = *v4;
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    return 0;
  }

  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  if (v10 != v11)
  {
    v12 = *(v3 + 48);
    do
    {
      v13 = *v12;
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v13[2] != v5)
        {
          return 0;
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  v14 = *(v5 + 44);
  v15 = *(((v5 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v15 == v3)
  {
    return 0;
  }

  if ((v14 & 0x800000) != 0)
  {
    v16 = *(v5 + 72);
    v17 = *(v5 + 68);
    if (v10 != v11)
    {
      if (v17)
      {
        v18 = (v16 + 24);
        do
        {
          v19 = *v18;
          if ((~*(*v18 + 8) & 7) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = *v18;
          }

          if (v20)
          {
            if (*(v20 + 16) == *a1)
            {
              v19 = mlir::ValueRange::dereference_iterator(a2, *(v20 + 24));
            }
          }

          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a3, v19);
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      goto LABEL_23;
    }

LABEL_26:
    *a1 = v15;
    v21 = v16 & 0xFFFFFFFFFFFFFFF9 | 2;
    goto LABEL_27;
  }

  if (v10 == v11)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_26;
  }

LABEL_23:
  *a1 = v15;
  v17 = *(a3 + 8);
  v21 = *a3 & 0xFFFFFFFFFFFFFFF9;
LABEL_27:
  *a2 = v21;
  a2[1] = v17;
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v20[0] = v21;
  v20[1] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v11 = *a4;
  v10 = a4[1];
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v20, v9);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v11, 0, v11, v10);
  v12 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v13;
}

uint64_t **_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeELPv0EEET_(uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  if (a2)
  {
    v3 = *a2;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v5 = mlir::detail::InterfaceMap::lookup(v3 + 8, v4);
  }

  else
  {
    v5 = 0;
  }

  a1[1] = v5;
  return a1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v20[0] = v21;
  v20[1] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a4;
  v10 = a4[1];
  v11 = v9 & 0xFFFFFFFFFFFFFFF9;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v20, *a3);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v11 | 2, 0, v11 | 2, v10);
  v12 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v13;
}

const void **llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(uint64_t a1, unint64_t a2)
{
  result = llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(a1, a2, 1);
  v4 = *a1 + 16 * *(a1 + 8);
  v5 = *(result + 2);
  *(v4 + 8) = v5;
  if (v5 > 0x40)
  {
    operator new[]();
  }

  *v4 = *result;
  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 16 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v6);
  llvm::SmallVectorTemplateBase<llvm::APInt,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void *llvm::SmallVectorTemplateBase<llvm::APInt,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = (a2 + 8);
    v5 = 16 * v3;
    v6 = v2 + 1;
    do
    {
      *v4 = *v6;
      *(v4 - 1) = *(v6 - 1);
      *v6 = 0;
      v6 += 4;
      v4 += 4;
      v5 -= 16;
    }

    while (v5);
    v2 = *a1;
    v7 = *(a1 + 2);
  }

  else
  {
    v7 = 0;
  }

  return llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(v2, &v2[2 * v7]);
}

void *llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(void *result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 2);
      v2 -= 2;
      if (v4 >= 0x41)
      {
        result = *v2;
        if (*v2)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v15 = a1;
  v53[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::SwitchOp>(a1, *(**a2 + 32));
  v48[0] = a2;
  v48[1] = v16;
  v48[2] = v49;
  v48[3] = 0x400000000;
  v49[4] = v50;
  v49[5] = 0x400000000;
  v50[4] = v51;
  v50[5] = 0x400000000;
  v51[8] = 4;
  v51[9] = v52;
  v51[10] = 0x100000000;
  v52[1] = v53;
  v52[2] = 0x100000000;
  v53[1] = 0;
  v53[2] = 0;
  v53[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v53[4] = 0;
  v53[6] = 0;
  v17 = *a3;
  v18 = *a4;
  v20 = *a5;
  v19 = a5[1];
  v21 = *(a6 + 8);
  v22 = *a7;
  v23 = *(a7 + 2);
  v24 = *a8;
  v25 = *(a8 + 8);
  if (v21)
  {
    v45 = v18;
    v46 = v19;
    v26 = *a6;
    v47 = v21;
    v27 = mlir::VectorType::get(&v47, 1uLL, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
    v28 = v27;
    if (v27)
    {
      v44 = v15;
      v29 = v17;
      v30 = v22;
      v31 = v20;
      v32 = v25;
      v33 = v24;
      v34 = v26;
      v35 = *v27;
      v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v37 = v35 + 8;
      v26 = v34;
      v24 = v33;
      v25 = v32;
      v20 = v31;
      v22 = v30;
      v17 = v29;
      v15 = v44;
      v38 = mlir::detail::InterfaceMap::lookup(v37, v36);
    }

    else
    {
      v38 = 0;
    }

    v39 = mlir::DenseElementsAttr::get(v28, v38, v26, v21);
    v18 = v45;
    v19 = v46;
  }

  else
  {
    v39 = 0;
  }

  v40 = v22 | 4;
  if (!v23)
  {
    v40 = 0;
  }

  mlir::cf::SwitchOp::build(v15, v48, v17, v20 & 0xFFFFFFFFFFFFFFF9 | 2, v19, v24, v25, v39, v18, v40, v23);
  v41 = mlir::Operation::create(v48);
  mlir::OpBuilder::insert(v15, v41);
  if (*(*(v41 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  mlir::OperationState::~OperationState(v48);
  return v42;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::SwitchOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "cf.switch";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void **llvm::SmallVector<llvm::APInt,3u>::~SmallVector(void **a1)
{
  llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(*a1, *a1 + 2 * *(a1 + 2));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

uint64_t foldSwitch(uint64_t a1, uint64_t a2, void **a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1 + 64;
  v6 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
  v34 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v35 = v6;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v34, v36);
  v40 = *v36;
  v41 = *&v36[16];
  v42 = *&v36[32];
  *&v36[8] = *v36;
  *&v36[24] = v41;
  *v36 = 0;
  v7 = v37 - v41;
  if (v37 != v41)
  {
    v8 = 0;
    v9 = v41 + 1;
    v10 = 24;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v36[8], &__s1);
      v11 = v39;
      v12 = __s1;
      if (v39 > 0x40)
      {
        if (!memcmp(__s1, *a3, ((v39 + 63) >> 3) & 0x3FFFFFF8))
        {
LABEL_14:
          v20 = *(a1 + 44);
          v21 = (v5 + 16 * ((v20 >> 23) & 1));
          if (*(a1 + 40))
          {
            v22 = ((v21 + ((v20 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
          }

          else
          {
            v22 = 32;
          }

          v33 = *(v22 + v10);
          if ((v20 & 0x800000) != 0)
          {
            v23 = *(a1 + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = v23 + 32 * (v21[5] + v21[4]);
          v25 = *(*v21 + 24);
          if (v8)
          {
            LODWORD(v26) = 0;
            v27 = 4 * v8;
            v28 = v25;
            do
            {
              v29 = *v28++;
              v26 = (v29 + v26);
              v27 -= 4;
            }

            while (v27);
          }

          else
          {
            v26 = 0;
          }

          v30 = v25[v8];
          __s1 = (v24 + 32 * v26);
          v39 = v30;
          v31 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v33, &__s1);
          result = (*(*a2 + 8))(a2, a1, v31);
          if (v11 >= 0x41)
          {
            if (v12)
            {
              return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
            }
          }

          return result;
        }

        if (v12)
        {
          MEMORY[0x25F891010](v12, 0x1000C8000313F17);
        }
      }

      else if (__s1 == *a3)
      {
        goto LABEL_14;
      }

      *&v36[24] = v9 + v8;
      v10 += 32;
      *v36 = ++v8;
    }

    while (v7 != v8);
  }

  v13 = *(a1 + 44);
  v14 = v5 + 16 * ((v13 >> 23) & 1);
  *&v40 = *(((v14 + ((v13 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v15 = *(v14 + 16);
  v16 = *(v14 + 20);
  if ((v13 & 0x800000) != 0)
  {
    v17 = *(a1 + 72);
  }

  else
  {
    v17 = 0;
  }

  *v36 = v17 + 32 * v15;
  *&v36[8] = (v16 + v15) - v15;
  v18 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v40, v36);
  return (*(*a2 + 8))(a2, a1, v18);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,6u>>::emplace_back<>(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= *(result + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::growAndEmplaceBack<>(result);
  }

  v2 = (*result + (v1 << 6));
  *v2 = v2 + 2;
  v2[1] = 0x600000000;
  ++*(result + 8);
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
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
    }
  }
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::growAndEmplaceBack<>(uint64_t a1)
{
  v8 = 0;
  v2 = a1 + 16;
  v3 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v8);
  v4 = &v3[8 * *(a1 + 8)];
  *v4 = v4 + 2;
  v4[1] = 0x600000000;
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::moveElementsForGrow(a1, v3);
  v5 = v8;
  if (*a1 != v2)
  {
    free(*a1);
  }

  *a1 = v3;
  v6 = (*(a1 + 8) + 1);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  return &v3[8 * v6 - 8];
}

char ***llvm::SmallVector<llvm::SmallVector<mlir::Value,6u>,1u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3 - 8];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(uint64_t a1, const llvm::APInt *a2, llvm::hashing::detail::hash_state **this, unint64_t *a4)
{
  if (a2)
  {
    v6 = a2;
    v20 = 0;
    v19 = -1;
    v18 = 0;
    v17 = -2;
    v8 = llvm::hash_value(this, a2, this, a4);
    v9 = 0;
    v10 = v6 - 1;
    for (i = 1; ; ++i)
    {
      v12 = v8 & v10;
      v13 = a1 + 16 * (v8 & v10);
      v14 = *(this + 2);
      if (v14 == *(v13 + 8))
      {
        if (v14 > 0x40)
        {
          if (!memcmp(*this, *v13, ((v14 + 63) >> 3) & 0x3FFFFFF8))
          {
LABEL_12:
            v15 = 1;
            goto LABEL_13;
          }
        }

        else if (*this == *v13)
        {
          goto LABEL_12;
        }
      }

      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(a1 + 16 * v12, &v19))
      {
        break;
      }

      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(a1 + 16 * v12, &v17) && v9 == 0)
      {
        v9 = a1 + 16 * v12;
      }

      v8 = v12 + i;
    }

    v15 = 0;
    if (v9)
    {
      v13 = v9;
    }

LABEL_13:
    *a4 = v13;
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x25F891010](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  else
  {
    v15 = 0;
    *a4 = 0;
  }

  return v15;
}

BOOL llvm::DenseMapInfo<llvm::APInt,void>::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    return memcmp(*a1, *a2, ((v2 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  return *a1 == *a2;
}

uint64_t *llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 16 * v10;
      v12 = result + 1;
      do
      {
        *v12 = 0;
        *(v12 - 1) = -1;
        v12 += 2;
        v11 -= 16;
      }

      while (v11);
    }

    if (v3)
    {
      v13 = 16 * v3;
      v14 = v4;
      do
      {
        if (*(v14 + 2) || *v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(*a1, *(a1 + 16), v14, &v18);
          llvm::APInt::operator=(v18, v14);
          ++*(a1 + 8);
          if (*(v14 + 2) >= 0x41u)
          {
            if (*v14)
            {
              MEMORY[0x25F891010](*v14, 0x1000C8000313F17);
            }
          }
        }

        v14 += 2;
        v13 -= 16;
      }

      while (v13);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 16 * v15;
    v17 = result + 1;
    do
    {
      *v17 = 0;
      *(v17 - 1) = -1;
      v17 += 2;
      v16 -= 16;
    }

    while (v16);
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void *llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 48 * v3);
    *v4 = v4 + 2;
    v4[1] = 0x100000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v4, a2);
    }

    v5 = *(a1 + 8) + 1;
    *(a1 + 8) = v5;
    return (*a1 + 48 * v5 - 48);
  }
}

void *llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>>::emplace_back<llvm::SmallVector<mlir::Type,6u>&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>(a1, a2);
  }

  else
  {
    v4 = (*a1 + (v3 << 6));
    *v4 = v4 + 2;
    v4[1] = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=(v4, a2);
    }

    v5 = (*(a1 + 8) + 1);
    *(a1 + 8) = v5;
    return (*a1 + (v5 << 6) - 64);
  }
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 48, &v10);
  v6 = &v5[6 * *(a1 + 8)];
  *v6 = v6 + 2;
  v6[1] = 0x100000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v6, a2);
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(a1, v5);
  v7 = v10;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v8 = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  return &v5[6 * v8 - 6];
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = *a1;
    v6 = 48 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x100000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(a2, v5);
      }

      a2 += 6;
      v5 += 48;
      v6 -= 48;
    }

    while (v6);
    v7 = *(a1 + 2);
    if (v7)
    {
      v8 = (*a1 + 48 * v7 - 48);
      v9 = -48 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 6;
        v9 += 48;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 32 * v6 - 4);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 32 * v7 - 4);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 32);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 32 * v7), (*a2 + 32 * v7), 32 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 32 * v4 - 4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 32 * v5 - 4);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 32);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 32 * v5), (*a2 + 32 * v5), 32 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v10);
  v6 = &v5[8 * *(a1 + 8)];
  *v6 = v6 + 2;
  v6[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::Type>::operator=(v6, a2);
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::moveElementsForGrow(a1, v5);
  v7 = v10;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v8 = (*(a1 + 8) + 1);
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  return &v5[8 * v8 - 8];
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::Type>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
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
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 29549 ? (v4 = *(a3 + 2) == 103) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 29549 && v6 == 103)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "msg";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "msg", 3uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "msg";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
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

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v14 = v16;
  v15 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v14, "msg", 3);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, v15);
  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    v9 = "requires attribute 'msg'";
    v10 = 259;
    mlir::Operation::emitOpError(v11, a1, &v9);
    v7 = v12 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    return v7 & 1;
  }

  v11[0] = a1;
  if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v11))
  {
    v7 = mlir::cf::__mlir_ods_local_type_constraint_ControlFlowOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0);
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

double mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 20) = v2;
  *(a2 + 24) = a2 + 40;
  *&result = 0x100000000;
  *(a2 + 32) = 0x100000000;
  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorBlockArgument(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a2[10];
  if (!v3)
  {
    return 0;
  }

  v6 = a2 + 16;
  for (i = 24; ; i += 32)
  {
    v8 = a2[11];
    v9 = (v8 & 0x800000) != 0 ? a2[17] : 0;
    v15 = 0;
    v16 = a2;
    v17 = 0;
    v18 = v9;
    v19 = v21;
    v20 = 0x100000000;
    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(&v15, a3, *(((&v6[4 * ((v8 >> 23) & 1) + 1] + ((v8 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + i));
    v12 = v11;
    if (v19 != v21)
    {
      free(v19);
    }

    if (v12)
    {
      break;
    }

    if (!--v3)
    {
      v14 = 0;
      return v14 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
    }
  }

  v14 = BranchSuccessorArgument;
  return v14 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

__guard mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[300];
}

uint64_t llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>();
    *algn_27FC19978 = v1;
  }

  return llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BranchOpInterface::Trait<Empty>]";
  v6 = 99;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 176))(a3, *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, "(", 1uLL);
    }

    else
    {
      *v10 = 40;
      ++*(v9 + 4);
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v11 = *(a2 + 68);
      v12 = *(a2 + 72);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = (*(*a3 + 16))(a3);
    if (v11)
    {
      v14 = v13;
      (*(*a3 + 160))(a3, *(v12 + 24));
      v15 = v11 - 1;
      if (v15)
      {
        v16 = (v12 + 56);
        do
        {
          v17 = *(v14 + 4);
          if (*(v14 + 3) - v17 > 1uLL)
          {
            *v17 = 8236;
            *(v14 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v14, ", ", 2uLL);
          }

          v18 = *v16;
          v16 += 4;
          (*(*a3 + 160))(a3, v18);
          --v15;
        }

        while (v15);
      }
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (*(v21 + 3) == v22)
    {
      llvm::raw_ostream::write(v21, ":", 1uLL);
    }

    else
    {
      *v22 = 58;
      ++*(v21 + 4);
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (v24 >= *(v23 + 3))
    {
      llvm::raw_ostream::write(v23, 32);
    }

    else
    {
      *(v23 + 4) = v24 + 1;
      *v24 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v25 = *(a2 + 68);
      if (v25)
      {
        v26 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v25 != 1)
        {
          v27 = v25 - 1;
          v28 = (v26 + 56);
          do
          {
            v29 = (*(*a3 + 16))(a3);
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
            (*(*a3 + 32))(a3, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v27;
          }

          while (v27);
        }
      }
    }

    v32 = (*(*a3 + 16))(a3);
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
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, 0);
}

uint64_t mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyOneSuccessor(a1, v4))
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
LABEL_16:
      IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
      return IsTerminator & 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
      v12 = 0;
      v13 = a1;
      v14 = 0;
      v15 = v8;
      v16 = v18;
      v17 = 0x100000000;
      v9 = mlir::detail::verifyBranchSuccessorOperands(a1, v7, &v12);
      if (v16 != v18)
      {
        free(v16);
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_16;
      }
    }
  }

  IsTerminator = 0;
  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    v4 = *(a3 + 11);
    v5 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v6 = 1400139365;
  }

  else
  {
    if (a4 != 21)
    {
      goto LABEL_15;
    }

    v4 = *(a3 + 13);
    v5 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v6 = 1935635566;
  }

  v7 = v6 | 0x73657A6900000000;
  if (v5 && v4 == v7)
  {
    v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
    v10 = v11 & 0xFFFFFFFFFFFFFF00;
    v9 = v11;
    return v10 | v9;
  }

LABEL_15:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 19)
  {
    v6 = *v4 ^ 0x53646E617265706FLL;
    v7 = v4[1] ^ 0x6953746E656D6765;
    v8 = *(v4 + 11);
    v9 = 1400139365;
  }

  else
  {
    if (v5 != 21)
    {
      return result;
    }

    v6 = *v4 ^ 0x5F646E617265706FLL;
    v7 = v4[1] ^ 0x5F746E656D676573;
    v8 = *(v4 + 13);
    v9 = 1935635566;
  }

  if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 == 0;
  }

  if (!v10 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v11 = *(a4 + 8);
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11[2] == 32 && *(a4 + 16) == 3)
    {
      v12 = *(a4 + 32);
      if (v12 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), *(a4 + 24), v12 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 8) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, void *), uint64_t a6)
{
  v17[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v16, a6, a2, a3);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if (v12 & 1) != 0 && (v13 = *(v11 + 8)) != 0 || (v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v15) && (v13 = *(v14 + 8)) != 0)
  {
    if ((convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3, 3, v13, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v12 = v14;
  v13 = 0x300000000;
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(v2, v3 + 64, 3);
  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "operandSegmentSizes";
  v10[1] = 19;
  v7 = mlir::StringAttr::get(v5, v10, v6);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v7, v4);
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v2, v12, v13);
  }

  else
  {
    v8 = 0;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  return v8;
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = *(a2 + 4);
  v3 = 0x9DDFEA08EB382D69 * (*a2 ^ __ROR8__(v2 + 12, 12) ^ 0xFF51AFD7ED558CCDLL);
  v4 = __ROR8__(v2 + 12, 12) ^ (v3 >> 47);
  v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ v3)) >> 47))) ^ v2;
  v6 = 8 * v5 + 8;
  v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
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
      memmove(v3, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3uLL) & 1) != 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 3);
    (*(*a3 + 16))(a3, v6);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorBlockArgument(int a1, uint64_t a2, unsigned int a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + 64;
  for (i = 24; ; i += 32)
  {
    mlir::cf::CondBranchOp::getSuccessorOperands(v14, a2, v6);
    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v14, a3, *(((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + i));
    v11 = v10;
    if (v15 != v16)
    {
      free(v15);
    }

    if (v11)
    {
      break;
    }

    if (v3 == ++v6)
    {
      v12 = 0;
      return v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
    }
  }

  v12 = BranchSuccessorArgument;
  return v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorForOperands(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3 || *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  if (*(v3 + 24) > 0x40u)
  {
    operator new[]();
  }

  if (*(v3 + 16) == 1)
  {
    v6 = 24;
  }

  else
  {
    v6 = 56;
  }

  return *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v6);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
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

  v13 = a2 + 64;
  (*(*a3 + 176))(a3, *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (!*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 4))
  {
    goto LABEL_43;
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    *v15 = 40;
    ++*(v14 + 4);
  }

  v16 = *(a2 + 44);
  v17 = (v13 + 16 * ((v16 >> 23) & 1));
  v18 = v17[1];
  if ((v16 & 0x800000) != 0)
  {
    v19 = *(a2 + 72);
  }

  else
  {
    v19 = 0;
  }

  v20 = *v17;
  v21 = (*(*a3 + 16))(a3);
  if (v18)
  {
    v22 = v21;
    v23 = v18 + v20;
    v24 = v19 + 32 * v20;
    (*(*a3 + 160))(a3, *(v24 + 24));
    if (v23 - v20 != 1)
    {
      v25 = ~v20 + v23;
      v26 = (v24 + 56);
      do
      {
        v27 = *(v22 + 4);
        if (*(v22 + 3) - v27 > 1uLL)
        {
          *v27 = 8236;
          *(v22 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v22, ", ", 2uLL);
        }

        v28 = *v26;
        v26 += 4;
        (*(*a3 + 160))(a3, v28);
        --v25;
      }

      while (v25);
    }
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a3 + 16))(a3);
  v32 = *(v31 + 4);
  if (*(v31 + 3) == v32)
  {
    llvm::raw_ostream::write(v31, ":", 1uLL);
  }

  else
  {
    *v32 = 58;
    ++*(v31 + 4);
  }

  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  v35 = *(a2 + 44);
  v36 = (v13 + 16 * ((v35 >> 23) & 1));
  v37 = v36[1];
  if ((v35 & 0x800000) != 0)
  {
    v38 = *(a2 + 72);
    if (v37)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v38 = 0;
    if (v37)
    {
LABEL_34:
      v39 = *v36;
      v40 = v37 + v39;
      v41 = v38 + 32 * v39;
      (*(*a3 + 32))(a3, *(*(v41 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v40 - v39 != 1)
      {
        v42 = ~v39 + v40;
        v43 = (v41 + 56);
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

          v46 = *v43;
          v43 += 4;
          (*(*a3 + 32))(a3, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v42;
        }

        while (v42);
      }
    }
  }

  v47 = (*(*a3 + 16))(a3);
  v48 = *(v47 + 4);
  if (*(v47 + 3) == v48)
  {
    llvm::raw_ostream::write(v47, ")", 1uLL);
  }

  else
  {
    *v48 = 41;
    ++*(v47 + 4);
  }

LABEL_43:
  v49 = (*(*a3 + 16))(a3);
  v50 = *(v49 + 4);
  if (*(v49 + 3) == v50)
  {
    llvm::raw_ostream::write(v49, ",", 1uLL);
  }

  else
  {
    *v50 = 44;
    ++*(v49 + 4);
  }

  v51 = (*(*a3 + 16))(a3);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  (*(*a3 + 176))(a3, *(((v13 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56));
  if (*(v13 + 16 * ((*(a2 + 44) >> 23) & 1) + 8))
  {
    v53 = (*(*a3 + 16))(a3);
    v54 = *(v53 + 4);
    if (*(v53 + 3) == v54)
    {
      llvm::raw_ostream::write(v53, "(", 1uLL);
    }

    else
    {
      *v54 = 40;
      ++*(v53 + 4);
    }

    v55 = *(a2 + 44);
    v56 = (v13 + 16 * ((v55 >> 23) & 1));
    v57 = v56[2];
    if ((v55 & 0x800000) != 0)
    {
      v58 = *(a2 + 72);
    }

    else
    {
      v58 = 0;
    }

    v59 = *v56;
    v60 = v56[1];
    v61 = (*(*a3 + 16))(a3);
    if (v57)
    {
      v62 = v61;
      v63 = (v60 + v59);
      v64 = (v57 + v63);
      v65 = v58 + 32 * v63;
      (*(*a3 + 160))(a3, *(v65 + 24));
      if (v64 - v63 != 1)
      {
        v66 = ~v63 + v64;
        v67 = (v65 + 56);
        do
        {
          v68 = *(v62 + 4);
          if (*(v62 + 3) - v68 > 1uLL)
          {
            *v68 = 8236;
            *(v62 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v62, ", ", 2uLL);
          }

          v69 = *v67;
          v67 += 4;
          (*(*a3 + 160))(a3, v69);
          --v66;
        }

        while (v66);
      }
    }

    v70 = (*(*a3 + 16))(a3);
    v71 = *(v70 + 4);
    if (v71 >= *(v70 + 3))
    {
      llvm::raw_ostream::write(v70, 32);
    }

    else
    {
      *(v70 + 4) = v71 + 1;
      *v71 = 32;
    }

    v72 = (*(*a3 + 16))(a3);
    v73 = *(v72 + 4);
    if (*(v72 + 3) == v73)
    {
      llvm::raw_ostream::write(v72, ":", 1uLL);
    }

    else
    {
      *v73 = 58;
      ++*(v72 + 4);
    }

    v74 = (*(*a3 + 16))(a3);
    v75 = *(v74 + 4);
    if (v75 >= *(v74 + 3))
    {
      llvm::raw_ostream::write(v74, 32);
    }

    else
    {
      *(v74 + 4) = v75 + 1;
      *v75 = 32;
    }

    v76 = *(a2 + 44);
    v77 = (v13 + 16 * ((v76 >> 23) & 1));
    v78 = v77[2];
    if ((v76 & 0x800000) != 0)
    {
      v79 = *(a2 + 72);
      if (v78)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v79 = 0;
      if (v78)
      {
LABEL_73:
        v80 = (v77[1] + *v77);
        v81 = (v78 + v80);
        v82 = v79 + 32 * v80;
        (*(*a3 + 32))(a3, *(*(v82 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v81 - v80 != 1)
        {
          v83 = ~v80 + v81;
          v84 = (v82 + 56);
          do
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

            v87 = *v84;
            v84 += 4;
            (*(*a3 + 32))(a3, *(v87 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v83;
          }

          while (v83);
        }
      }
    }

    v88 = (*(*a3 + 16))(a3);
    v89 = *(v88 + 4);
    if (*(v88 + 3) == v89)
    {
      llvm::raw_ostream::write(v88, ")", 1uLL);
    }

    else
    {
      *v89 = 41;
      ++*(v88 + 4);
    }
  }

  v91 = v93;
  v92 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v91, "operandSegmentSizes", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v91, v92);
  if (v91 != v93)
  {
    free(v91);
  }
}

uint64_t mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyNSuccessors(a1, 2) & 1) == 0 || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0 || ((*(a1 + 46) & 0x80) == 0 ? (v4 = 0) : (v4 = *(a1 + 68)), !mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4)))
  {
LABEL_20:
    IsTerminator = 0;
    return IsTerminator & 1;
  }

  v6 = *(a1 + 44);
  v7 = *(a1 + 16 * ((v6 >> 23) & 1) + 64);
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(a1 + 72);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if (v7)
    {
LABEL_10:
      v9 = 0;
      v10 = v8 + 24;
      while (mlir::cf::__mlir_ods_local_type_constraint_ControlFlowOps1(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), v9))
      {
        ++v9;
        v10 += 32;
        if (v7 == v9)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_13:
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = 0;
    do
    {
      mlir::cf::CondBranchOp::getSuccessorOperands(v16, a1, v12);
      v13 = mlir::detail::verifyBranchSuccessorOperands(a1, v12, v16);
      if (v17 != v18)
      {
        free(v17);
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (v11 != ++v12);
  }

  IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 11)
  {
    if (*a3 != 0x6C61765F65736163 || *(a3 + 3) != 0x7365756C61765F65)
    {
      goto LABEL_29;
    }

    v11 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_32;
  }

  if (a4 != 19)
  {
    if (a4 != 21)
    {
LABEL_29:
      LOBYTE(v11) = 0;
      v12 = 0;
      return v12 | v11;
    }

    if (*a3 != 0x65706F5F65736163 || a3[1] != 0x6765735F646E6172 || *(a3 + 13) != 0x73746E656D676573)
    {
      v6 = *(a3 + 13);
      v7 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v8 = 1935635566;
      goto LABEL_19;
    }

    v11 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
LABEL_32:
    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    return v12 | v11;
  }

  v6 = *(a3 + 11);
  v7 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
  v8 = 1400139365;
LABEL_19:
  v9 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v9)
  {
    goto LABEL_29;
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80, 3);
  v12 = v11 & 0xFFFFFFFFFFFFFF00;
  return v12 | v11;
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  switch(v7)
  {
    case 11:
      v18 = *v6;
      v19 = *(v6 + 3);
      if (v18 == 0x6C61765F65736163 && v19 == 0x7365756C61765F65)
      {
        if (a4)
        {
          if (mlir::DenseIntElementsAttr::classof(a4))
          {
            v21 = a4;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v5[1] = v21;
      }

      break;
    case 19:
      v10 = *v6 ^ 0x53646E617265706FLL;
      v11 = v6[1] ^ 0x6953746E656D6765;
      v12 = *(v6 + 11);
      v13 = 1400139365;
LABEL_13:
      if (v10 | v11 | v12 ^ (v13 | 0x73657A6900000000))
      {
        v14 = 1;
      }

      else
      {
        v14 = a4 == 0;
      }

      if (!v14 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v15 = a4[1];
        if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v15[2] == 32 && a4[2] == 3)
        {
          v16 = a4[4];
          if (v16 >= 4)
          {
            v17 = a4[3];

            memmove(v5 + 2, v17, v16 & 0xFFFFFFFFFFFFFFFCLL);
          }
        }
      }

      return;
    case 21:
      if (*v6 != 0x65706F5F65736163 || v6[1] != 0x6765735F646E6172 || *(v6 + 13) != 0x73746E656D676573)
      {
        v10 = *v6 ^ 0x5F646E617265706FLL;
        v11 = v6[1] ^ 0x5F746E656D676573;
        v12 = *(v6 + 13);
        v13 = 1935635566;
        goto LABEL_13;
      }

      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v22 = a4[1], *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v22[2] == 32)
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

      *v5 = v23;
      break;
    default:
      return;
  }
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v20 = 261;
    v18 = "case_operand_segments";
    v19 = 21;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "case_values";
    v19 = 11;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 16, 3);
  v15 = *(**v14 + 32);
  v20 = 261;
  v18 = "operandSegmentSizes";
  v19 = 19;
  v17 = mlir::StringAttr::get(v15, &v18, v16);
  mlir::NamedAttrList::push_back(a3, v17, v14);
}

double mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v27, a6, a2, a3);
    if (v27)
    {
      mlir::Diagnostic::operator<<<42ul>(v28, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "case_operand_segments", 0x15uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v14 = v13[1], *(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v14[2] != 32)
      {
        a5(&v27, a6);
        if (v27)
        {
          goto LABEL_27;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
        return 0;
      }

      *a3 = v13;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "case_values", 0xBuLL);
  if (v16)
  {
    v13 = *(v15 + 8);
    if (v13)
    {
      if (mlir::DenseIntElementsAttr::classof(*(v15 + 8)))
      {
        a3[1] = v13;
        goto LABEL_17;
      }

      a5(&v27, a6);
      if (v27)
      {
LABEL_27:
        if (v27)
        {
          v25 = 0;
          v26 = v13;
          v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
          v23 = v29 + 24 * v30;
          v24 = *v22;
          *(v23 + 16) = *(v22 + 16);
          *v23 = v24;
          ++v30;
        }

        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

LABEL_17:
  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v18 & 1) == 0 || (v19 = *(v17 + 8)) == 0)
  {
    v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v21 & 1) == 0)
    {
      return 1;
    }

    v19 = *(v20 + 8);
    if (!v19)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 2, 3, v19, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v22 = v24;
  v23 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v21 = 261;
    v19 = "case_operand_segments";
    v20 = 21;
    v9 = mlir::StringAttr::get(v8, &v19, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v22, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v21 = 261;
    v19 = "case_values";
    v20 = 11;
    v12 = mlir::StringAttr::get(v11, &v19, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v22, v12, v10);
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 16, 3);
  v14 = *(**v13 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v16 = mlir::StringAttr::get(v14, &v19, v15);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v22, v16, v13);
  if (v23)
  {
    v17 = mlir::DictionaryAttr::get(v3, v22, v23);
  }

  else
  {
    v17 = 0;
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return v17;
}

__n128 mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a3 + 16) == *(a2 + 16) && *(a3 + 24) == *(a2 + 24);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = *(a2 + 20);
  v7 = __ROR8__(v6 + 12, 12);
  v8 = 0x9DDFEA08EB382D69 * (a2[2] ^ v7 ^ 0xFF51AFD7ED558CCDLL);
  v10 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47))) ^ v6;
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v12, 0, v13, &v13[3] + 8, &v11, &v10);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1))
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
      memmove(v3 + 2, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 3uLL) & 1) != 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 16))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 16, 3);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 16), 3);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorBlockArgument(uint64_t a1, mlir::Operation *a2, unsigned int a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 10);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a2 + 64);
  for (i = 24; ; i += 32)
  {
    v14 = a2;
    mlir::cf::SwitchOp::getSuccessorOperands(v15, &v14, v6);
    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v15, a3, *(((&v7[4 * ((*(a2 + 11) >> 23) & 1) + 1] + ((*(a2 + 11) >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + i));
    v11 = v10;
    if (v16 != v17)
    {
      free(v16);
    }

    if (v11)
    {
      break;
    }

    if (v3 == ++v6)
    {
      v12 = 0;
      return v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
    }
  }

  v12 = BranchSuccessorArgument;
  return v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorForOperands(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 64 + 16 * ((v3 >> 23) & 1);
  v22 = *(v4 + 8);
  v23 = v22 != 0;
  if (!v22)
  {
    v6 = v4 + ((v3 >> 21) & 0x7F8);
    return *(((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  if (*(a2 + 40))
  {
    v5 = ((v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v5 = 32;
  }

  v7 = *a3;
  if (!*a3 || *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v19 = a2 + 64;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v22, v24);
  v9 = *&v24[16];
  v28 = *v24;
  v29 = *&v24[16];
  v30 = *&v24[32];
  *&v24[8] = *v24;
  *&v24[24] = v9;
  *v24 = 0;
  v10 = v25 - v9;
  if (v25 == v9)
  {
LABEL_27:
    v6 = v19 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
    return *(((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  v11 = v9 + 1;
  v12 = (v5 + 24);
  v13 = 1;
  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v24[8], &__s1);
    v14 = v27;
    v15 = __s1;
    if (*(v7 + 24) > 0x40u)
    {
      operator new[]();
    }

    v16 = *(v7 + 16);
    if (v27 > 0x40)
    {
      v17 = memcmp(__s1, v16, ((v27 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      v17 = __s1 == v16;
    }

    v18 = v17;
    if (v18)
    {
      v21 = *v12;
    }

    if (v14 >= 0x41)
    {
      if (v15)
      {
        MEMORY[0x25F891010](v15, 0x1000C8000313F17);
      }
    }

    if (v18)
    {
      return v21;
    }

    *v24 = v13;
    *&v24[24] = v11++;
    v12 += 4;
    ++v13;
    if (!--v10)
    {
      goto LABEL_27;
    }
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[19] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
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
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ",", 1uLL);
  }

  else
  {
    *v16 = 44;
    ++*(v15 + 4);
  }

  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, "[", 1uLL);
  }

  else
  {
    *v20 = 91;
    ++*(v19 + 4);
  }

  (*(*a3 + 128))(a3);
  v21 = *(a2 + 80);
  v22 = *(v21 + 16);
  *&v23 = *(a2 + 72) + 32 * (*(a2 + 100) + *(a2 + 96));
  *(&v23 + 1) = v21;
  v24 = 0;
  v25 = v22;
  mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v26, 0, v22, &v23);
}

uint64_t mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0 || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4))
  {
    goto LABEL_35;
  }

  v5 = a1 + 64;
  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v60 = a1;
    if (!mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v60))
    {
      goto LABEL_35;
    }

    v60 = a1;
    if (!mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v60))
    {
      goto LABEL_35;
    }

    v9 = *(a1 + 44);
    v10 = (v9 >> 23) & 1;
    v11 = *(v5 + 16 * v10 + 16);
    if ((v9 & 0x800000) != 0)
    {
      v12 = *(a1 + 72);
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_13:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8;
          v55 = v13;
          if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            v57 = 261;
            v56[0] = "operand";
            v56[1] = 7;
            mlir::Operation::emitOpError(&v60, a1, v56);
            if (v60)
            {
              mlir::Diagnostic::operator<<<3ul>(v61, " #");
            }

            v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v60, &v55);
            v17 = v16;
            if (*v16)
            {
              mlir::Diagnostic::operator<<<27ul>((v16 + 1), " must be integer, but got ");
              if (*v17)
              {
                LODWORD(v58) = 4;
                v59 = v15;
                v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v58, 1);
                v19 = v17[3] + 24 * *(v17 + 8);
                v20 = *v18;
                *(v19 + 16) = *(v18 + 16);
                *v19 = v20;
                ++*(v17 + 8);
              }
            }

            v21 = *(v17 + 200);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
            if (v21)
            {
              goto LABEL_35;
            }
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            v10 = (*(a1 + 44) >> 23) & 1;
            v22 = *(v5 + 16 * v10 + 16);
            goto LABEL_28;
          }
        }
      }
    }

    v22 = 0;
LABEL_28:
    if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "case_operand_segments", 0x15uLL, "caseOperands", 12, (*(v5 + 16 * v10 + 24) + *(v5 + 16 * v10 + 20) + v22) - (*(v5 + 16 * v10 + 20) + v22)))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v56[0] = "requires attribute 'case_operand_segments'";
    v57 = 259;
    mlir::Operation::emitOpError(&v60, a1, v56);
    v23 = v64;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
    if (v23)
    {
      goto LABEL_35;
    }
  }

  if (mlir::detail::BranchOpInterfaceTrait<mlir::cf::SwitchOp>::verifyTrait(a1) & 1) != 0 && (mlir::OpTrait::impl::verifyIsTerminator(a1, v24))
  {
    v25 = *(a1 + 40);
    v26 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
    if (v25)
    {
      v27 = v25 - 1;
      if (!v26 && v25 == 1)
      {
LABEL_52:
        v28 = 1;
        return v28 & 1;
      }
    }

    else
    {
      v27 = -1;
    }

    v30 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v31 = (*(*(v26 + 16) + 8))();
    if (v30 == v31)
    {
      v32 = (*(*(v26 + 16) + 24))();
      if (v33)
      {
        v34 = 8 * v33;
        v35 = 1;
        do
        {
          v36 = *v32++;
          v35 *= v36;
          v34 -= 8;
        }

        while (v34);
      }

      else
      {
        v35 = 1;
      }

      if (v35 == v27)
      {
        goto LABEL_52;
      }

      v57 = 257;
      mlir::Operation::emitOpError(&v60, a1, v56);
      if (v60)
      {
        mlir::Diagnostic::operator<<<24ul>(v61, "number of case values (");
      }

      v45 = (*(*(v26 + 16) + 24))();
      if (v46)
      {
        v47 = 8 * v46;
        v48 = 1;
        do
        {
          v49 = *v45++;
          v48 *= v49;
          v47 -= 8;
        }

        while (v47);
      }

      else
      {
        v48 = 1;
      }

      if (v60)
      {
        LODWORD(v58) = 2;
        v59 = v48;
        v50 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v62, &v58, 1);
        v51 = v62 + 24 * v63;
        v52 = *v50;
        *(v51 + 16) = *(v50 + 16);
        *v51 = v52;
        ++v63;
        if (v60)
        {
          mlir::Diagnostic::operator<<<45ul>(v61, ") should match number of case destinations (");
        }
      }

      v58 = v27;
      v53 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v60, &v58);
      v54 = v53;
      if (*v53)
      {
        mlir::Diagnostic::operator<<<2ul>((v53 + 1), ")");
      }

      v44 = *(v54 + 200);
    }

    else
    {
      v37 = v31;
      v57 = 257;
      mlir::Operation::emitOpError(&v60, a1, v56);
      if (v60)
      {
        mlir::Diagnostic::operator<<<14ul>(v61, "'flag' type (");
        if (v60)
        {
          LODWORD(v58) = 4;
          v59 = v30;
          v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v62, &v58, 1);
          v39 = v62 + 24 * v63;
          v40 = *v38;
          *(v39 + 16) = *(v38 + 16);
          *v39 = v40;
          ++v63;
          if (v60)
          {
            mlir::Diagnostic::operator<<<33ul>(v61, ") should match case value type (");
            if (v60)
            {
              LODWORD(v58) = 4;
              v59 = v37;
              v41 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v62, &v58, 1);
              v42 = v62 + 24 * v63;
              v43 = *v41;
              *(v42 + 16) = *(v41 + 16);
              *v42 = v43;
              ++v63;
              if (v60)
              {
                mlir::Diagnostic::operator<<<2ul>(v61, ")");
              }
            }
          }
        }
      }

      v44 = v64;
    }

    v28 = v44 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
    return v28 & 1;
  }

LABEL_35:
  v28 = 0;
  return v28 & 1;
}

uint64_t mlir::detail::BranchOpInterfaceTrait<mlir::cf::SwitchOp>::verifyTrait(mlir::Operation *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v1 = *(a1 + 10);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    mlir::cf::SwitchOp::getSuccessorOperands(v7, &v6, v3);
    v4 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v7);
    if (v8 != v9)
    {
      free(v8);
    }

    if ((v4 & 1) == 0)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

__guard mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>();
      mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[315];
}

uint64_t llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>()
{
  {
    llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::bufferization::BufferDeallocationOpInterface>();
    unk_27FC199F0 = v1;
  }

  return llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::bufferization::BufferDeallocationOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::bufferization::BufferDeallocationOpInterface]";
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

uint64_t mlir::detail::constant_int_predicate_matcher::match(uint64_t (**this)(uint64_t *), mlir::Operation *a2)
{
  v7 = 1;
  v5 = &v6;
  v6 = 0;
  if (mlir::detail::constant_int_value_binder::match(&v5, a2))
  {
    v3 = (*this)(&v6);
  }

  else
  {
    v3 = 0;
  }

  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t *mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>()
{
  {
    mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID();
  }

  return &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = *a2;
  v8[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v8[2] = 0;
  v9[0] = 0;
  *(v9 + 5) = 0;
  v3 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v8, 1);
  v4 = *a1 + 40 * *(a1 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 40 * v4 - 40;
}

void anonymous namespace::SimplifyConstCondBranchPred::~SimplifyConstCondBranchPred(_anonymous_namespace_::SimplifyConstCondBranchPred *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyConstCondBranchPred::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v23[0] = mlir::m_NonZero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  v6 = *(v5 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  if (mlir::detail::constant_int_predicate_matcher::match(v23, v10))
  {
    v11 = *(a2 + 44);
    v12 = a2 + 16 * ((v11 >> 23) & 1);
    v24 = *(((v12 + 64 + ((v11 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v13 = *(v12 + 64);
    v14 = *(v12 + 68);
    if ((v11 & 0x800000) == 0)
    {
LABEL_23:
      v15 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v15 = *(a2 + 72);
LABEL_12:
    v23[0] = (v15 + 32 * v13);
    v23[1] = ((v14 + v13) - v13);
    v16 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v24, v23);
    (*(*a3 + 8))(a3, a2, v16);
    return 1;
  }

  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8) & 7;
LABEL_14:
  v23[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v6 == 7)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v18 = *(v5 + 8) & 7;
  if (v18 == 6)
  {
    v19 = v5 + 24 * *(v5 + 16);
    v20 = (v19 + 120);
    if (v19 == -120)
    {
      return 0;
    }
  }

  else
  {
    v20 = (v5 + 16 * v18 + 16);
  }

  result = mlir::detail::constant_int_predicate_matcher::match(v23, v20);
  if (result)
  {
    v21 = *(a2 + 44);
    v22 = (a2 + 16 * ((v21 >> 23) & 1));
    v24 = *(((v22 + ((v21 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 56);
    v13 = (v22[17] + v22[16]);
    v14 = v22[18];
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t mlir::m_NonZero(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 != 0;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 != 0;
  }

  return 1;
}

BOOL mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 0;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 0;
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyConstCondBranchPred>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyConstCondBranchPred]";
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

void anonymous namespace::SimplifyPassThroughCondBranch::~SimplifyPassThroughCondBranch(_anonymous_namespace_::SimplifyPassThroughCondBranch *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyPassThroughCondBranch::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = a2 + 16 * ((v5 >> 23) & 1);
  v7 = v6 + 64;
  v8 = (v6 + 64 + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  v25 = *(v8 + 56);
  v26 = v9;
  v11 = *(v6 + 64);
  v10 = *(v6 + 68);
  if ((v5 & 0x800000) != 0)
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
  }

  v13 = (v10 + v11);
  v33 = (v12 + 32 * v11) & 0xFFFFFFFFFFFFFFF9 | 2;
  v34 = v13 - v11;
  v14 = *(v7 + 8);
  if ((v5 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  v31 = (v15 + 32 * v13) & 0xFFFFFFFFFFFFFFF9 | 2;
  v32 = (v14 + v13) - v13;
  v29[0] = v30;
  v29[1] = 0x400000000;
  v27[0] = v28;
  v27[1] = 0x400000000;
  v16 = collapseBranch(&v26, &v33, v29);
  if ((collapseBranch(&v25, &v31, v27) | v16) == 1)
  {
    v17 = *(*(a2 + 72) + 24);
    v18 = *(a2 + 24);
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::CondBranchOp>(a3 + 8, *(**v18 + 32));
    v35[0] = v18;
    v35[1] = v19;
    v35[2] = v36;
    v35[3] = 0x400000000;
    v36[4] = v37;
    v36[5] = 0x400000000;
    v37[4] = v38;
    v37[5] = 0x400000000;
    v38[8] = 4;
    v38[9] = v39;
    v38[10] = 0x100000000;
    v39[1] = v40;
    v39[2] = 0x100000000;
    v40[1] = 0;
    v40[2] = 0;
    v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v40[4] = 0;
    v40[6] = 0;
    mlir::cf::CondBranchOp::build(v19, v35, v17, v33, v34, v31, v32, v26, v25);
    v20 = mlir::Operation::create(v35);
    mlir::OpBuilder::insert((a3 + 8), v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(v35);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    (*(*a3 + 8))(a3, a2, v22);
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  return v23;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::CondBranchOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "cf.cond_br";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyPassThroughCondBranch>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyPassThroughCondBranch]";
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

void anonymous namespace::SimplifyCondBranchIdenticalSuccessors::~SimplifyCondBranchIdenticalSuccessors(_anonymous_namespace_::SimplifyCondBranchIdenticalSuccessors *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyCondBranchIdenticalSuccessors::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = (a2 + 16 * ((v3 >> 23) & 1) + 64);
  v5 = (v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 24);
  v40 = v6;
  if (v6 != *(v5 + 56))
  {
    return 0;
  }

  v10 = *v4;
  v11 = *(a2 + 16 * ((v3 >> 23) & 1) + 68);
  if ((v3 & 0x800000) != 0)
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
  }

  v13 = (v11 + v10);
  v14 = v12 + 32 * v10;
  v15 = v13 - v10;
  v16 = *(a2 + 16 * ((v3 >> 23) & 1) + 72);
  v17 = (v16 + v13);
  if (v13 - v10 == v17 - v13)
  {
    if (!v11)
    {
LABEL_10:
      v21 = *(a2 + 24);
      v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a3 + 8, *(**v21 + 32));
      v41 = v21;
      v42 = v22;
      v43[0] = v44;
      v43[1] = 0x400000000;
      v44[4] = v45;
      v44[5] = 0x400000000;
      v45[4] = v46;
      v45[5] = 0x400000000;
      v46[8] = 4;
      v47[0] = v48;
      v47[1] = 0x100000000;
      v48[1] = v49;
      v48[2] = 0x100000000;
      v49[1] = 0;
      v49[2] = 0;
      v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v49[4] = 0;
      v49[6] = 0;
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v47, v6);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v43, (v12 + 32 * v10) & 0xFFFFFFFFFFFFFFF9 | 2, 0, (v12 + 32 * v10) & 0xFFFFFFFFFFFFFFF9 | 2, v15);
      v23 = mlir::Operation::create(&v41);
      mlir::OpBuilder::insert((a3 + 8), v23);
      v24 = *(*(v23 + 6) + 16);
      mlir::OperationState::~OperationState(&v41);
      if (v24 == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      (*(*a3 + 8))(a3, a2, v25);
      return 1;
    }

    v18 = (v12 + 32 * v13 + 24);
    v19 = (v14 + 24);
    v20 = v13 - v10;
    while (*v19 == *v18)
    {
      v18 += 4;
      v19 += 4;
      if (!--v20)
      {
        goto LABEL_10;
      }
    }
  }

  v26 = *v6;
  if (*v6)
  {
    v27 = *(v26[2] + 16);
    while (1)
    {
      v26 = *v26;
      if (!v26)
      {
        break;
      }

      if (*(v26[2] + 16) != v27)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v27 = 0;
  }

  if (v27 != *(a2 + 16))
  {
    return 0;
  }

  v41 = v43;
  v42 = 0x800000000;
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v13 - v10, 8);
    v14 = v12 + 32 * v10;
  }

  v39 = *(*(a2 + 72) + 24);
  if (v11 && v16)
  {
    v28 = ~v13 + v17;
    v29 = ~v10 + v13;
    v30 = (v12 + 32 * v13 + 24);
    v31 = (v14 + 24);
    do
    {
      v32 = *v31;
      v33 = *v30;
      v37 = v32;
      v38 = v33;
      if (v32 != v33)
      {
        v32 = mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v39, &v37, &v38) - 16;
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, v32);
      v34 = v28-- != 0;
      v35 = v34;
      v34 = v29-- != 0;
      if (!v34)
      {
        break;
      }

      v30 += 4;
      v31 += 4;
    }

    while ((v35 & 1) != 0);
  }

  v36 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>((a3 + 8), *(a2 + 24), &v40, &v41);
  (*(*a3 + 8))(a3, a2, v36);
  if (v41 != v43)
  {
    free(v41);
  }

  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SelectOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::arith::SelectOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SelectOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.select";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v20[0] = v21;
  v20[1] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v10 = *a4;
  v11 = *(a4 + 2);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v20, v9);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v12 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyCondBranchIdenticalSuccessors>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyCondBranchIdenticalSuccessors]";
  v6 = 122;
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

void anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::~SimplifyCondBranchFromCondBranchOnSameCondition(_anonymous_namespace_::SimplifyCondBranchFromCondBranchOnSameCondition *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v5 = *(v4[2] + 16);
  if (*v4 || v5 == 0)
  {
    return 0;
  }

  v7 = *(v5 + 32);
  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
  {
    return 0;
  }

  v9 = *(a2 + 72);
  if (*(v9 + 24) != *(*(v7 + 72) + 24))
  {
    return 0;
  }

  v12 = *(((v7 + ((*(v7 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
  v13 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == v12)
  {
    v18 = *(v13 + 24);
    v14 = *(a2 + 80);
    v15 = *(a2 + 84);
  }

  else
  {
    v18 = *(v13 + 56);
    v14 = (*(a2 + 84) + *(a2 + 80));
    v15 = *(a2 + 88);
  }

  v17[0] = v9 + 32 * v14;
  v17[1] = (v15 + v14) - v14;
  v16 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v18, v17);
  (*(*a3 + 8))(a3, a2, v16);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyCondBranchFromCondBranchOnSameCondition]";
  v6 = 132;
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

void anonymous namespace::CondBranchTruthPropagation::~CondBranchTruthPropagation(_anonymous_namespace_::CondBranchTruthPropagation *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CondBranchTruthPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = (a3 + 1);
  v33 = mlir::IntegerType::get(a3[1], 1, 0);
  v6 = a2 + 64;
  v7 = *(a2 + 44);
  v8 = (v7 >> 23) & 1;
  v9 = (v7 >> 21) & 0x7F8;
  v10 = **(((a2 + 64 + 16 * v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v10)
  {
    if (*v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10[2] + 16) == 0;
    }

    if (v11 || (v12 = **(*(a2 + 72) + 24)) == 0)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = 0;
      v13 = 0;
      do
      {
        v14 = *v12;
        v15 = v12[2];
        if (*(v15 + 16) == *(((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
        {
          if (!v13)
          {
            v16 = *(a2 + 24);
            v32 = *(**v5 + 600);
            v13 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(v5, v16, &v33, &v32) - 16);
            v15 = v12[2];
          }

          ((*a3)[5])(a3, v15);
          v17 = v12[1];
          if (v17)
          {
            v18 = *v12;
            *v17 = *v12;
            if (v18)
            {
              v18[1] = v12[1];
            }
          }

          v12[3] = v13;
          v12[1] = v13;
          v19 = *v13;
          *v12 = *v13;
          if (v19)
          {
            *(v19 + 8) = v12;
          }

          *v13 = v12;
          ((*a3)[6])(a3, v15);
          LOBYTE(v10) = 1;
        }

        v12 = v14;
      }

      while (v14);
      v20 = *(a2 + 44);
      v8 = (v20 >> 23) & 1;
      v9 = (v20 >> 21) & 0x7F8;
    }
  }

  v21 = **(((v6 + 16 * v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
  if (v21)
  {
    if (!*v21 && *(v21[2] + 16) != 0)
    {
      v23 = **(*(a2 + 72) + 24);
      if (v23)
      {
        v24 = 0;
        do
        {
          v25 = *v23;
          v26 = v23[2];
          if (*(v26 + 16) == *(((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56))
          {
            if (!v24)
            {
              v27 = *(a2 + 24);
              v32 = *(**v5 + 592);
              v24 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(v5, v27, &v33, &v32) - 16);
              v26 = v23[2];
            }

            ((*a3)[5])(a3, v26);
            v28 = v23[1];
            if (v28)
            {
              v29 = *v23;
              *v28 = *v23;
              if (v29)
              {
                v29[1] = v23[1];
              }
            }

            v23[3] = v24;
            v23[1] = v24;
            v30 = *v24;
            *v23 = *v24;
            if (v30)
            {
              *(v30 + 8) = v23;
            }

            *v24 = v23;
            ((*a3)[6])(a3, v26);
            LOBYTE(v10) = 1;
          }

          v23 = v25;
        }

        while (v25);
      }
    }
  }

  return v10 & 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v8;
  v18[2] = &v19;
  v18[3] = 0x400000000;
  v20[0] = v21;
  v20[1] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  v9 = *a3;
  v10 = mlir::BoolAttr::operator mlir::TypedAttr(a4);
  v12 = v11;
  v17 = v9;
  v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v18);
  *v13 = v10;
  v13[1] = v12;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v20, &v17, v18);
  v14 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.constant";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *mlir::BoolAttr::operator mlir::TypedAttr(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CondBranchTruthPropagation>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CondBranchTruthPropagation]";
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

void *mlir::RewritePatternSet::add(void *a1, uint64_t *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v8 = a1 + 1;
    v9 = a1[1];
    v10 = v5 - v9;
    v11 = (v5 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::unique_ptr<mlir::RewritePattern>>::__throw_length_error[abi:nn200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    v23[4] = a1 + 1;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::RewritePattern>>>(v8, v15);
    }

    v16 = v11;
    v17 = (8 * v11);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v7 = v17 + 1;
    memcpy(v19, v9, v10);
    v20 = a1[1];
    a1[1] = v19;
    a1[2] = v7;
    v21 = a1[3];
    a1[3] = 0;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::~__split_buffer(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  a1[2] = v7;
  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(llvm::LogicalResult (*)(mlir::cf::SwitchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F4F0))
  {
    qword_27FC1F4E0 = llvm::detail::getTypeNameImpl<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>();
    *algn_27FC1F4E8 = v1;
    __cxa_guard_release(&qword_27FC1F4F0);
  }

  return qword_27FC1F4E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::cf::detail::AssertOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::cf::AssertOp>(llvm::LogicalResult (*)(mlir::cf::AssertOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void mlir::RewritePatternSet::add<mlir::cf::BranchOp>(llvm::LogicalResult (*)(mlir::cf::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

uint64_t llvm::getTypeName<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F518))
  {
    qword_27FC1F508 = llvm::detail::getTypeNameImpl<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>();
    unk_27FC1F510 = v1;
    __cxa_guard_release(&qword_27FC1F518);
  }

  return qword_27FC1F508;
}

const char *llvm::detail::getTypeNameImpl<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F540))
  {
    qword_27FC1F530 = llvm::detail::getTypeNameImpl<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>();
    *algn_27FC1F538 = v1;
    __cxa_guard_release(&qword_27FC1F540);
  }

  return qword_27FC1F530;
}

const char *llvm::detail::getTypeNameImpl<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties]";
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

BOOL mlir::AsmParser::parseType<mlir::IntegerType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 536))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

char ***llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[6 * v3 - 6];
    v5 = -48 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 6;
      v5 += 48;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char ***llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3 - 8];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void mlir::arith::ConstantOp::getAsmResultNames(mlir::arith::ConstantOp *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v5 = *(*a1 - 8);
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(a1);
  if (*(*ValueAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = ValueAttr;
  }

  else
  {
    v7 = 0;
  }

  v29 = v7;
  if (!v7)
  {
    if (*(*a1 + 36))
    {
      v14 = *a1 - 16;
    }

    else
    {
      v14 = 0;
    }

    v12 = "cst";
    v13 = a3;
    v11 = 3;
    goto LABEL_23;
  }

  v8 = *(*(v5 & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x3FFFFFFF) == 1)
  {
    if (*(*a1 + 36))
    {
      v9 = *a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    Int = mlir::IntegerAttr::getInt(&v29);
    if (Int)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    if (Int)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = a3;
    v14 = v9;
LABEL_23:

    a2(v13, v14, v12, v11);
    return;
  }

  v30 = v32;
  v31 = xmmword_25D0A05C0;
  v22 = 2;
  v26 = 0;
  v27 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = &unk_286E79DA0;
  v28 = &v30;
  llvm::raw_ostream::SetUnbuffered(&v21);
  v15 = v25;
  if (v25 >= v24)
  {
    llvm::raw_ostream::write(&v21, 99);
  }

  else
  {
    ++v25;
    *v15 = 99;
  }

  v20 = *(v7 + 6);
  if (v20 > 0x40)
  {
    operator new[]();
  }

  v19 = v7[2];
  llvm::APInt::print(&v19, &v21, 1);
  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x25F891010](v19, 0x1000C8000313F17);
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v16 = v25;
    if (v25 >= v24)
    {
      llvm::raw_ostream::write(&v21, 95);
    }

    else
    {
      ++v25;
      *v16 = 95;
    }

    v19 = v5 & 0xFFFFFFFFFFFFFFF8;
    mlir::Type::print(&v19, &v21);
  }

  if (*(*a1 + 36))
  {
    v17 = *a1 - 16;
  }

  else
  {
    v17 = 0;
  }

  a2(a3, v17, *v28, v28[1]);
  llvm::raw_ostream::~raw_ostream(&v21);
  if (v30 != v32)
  {
    free(v30);
  }
}