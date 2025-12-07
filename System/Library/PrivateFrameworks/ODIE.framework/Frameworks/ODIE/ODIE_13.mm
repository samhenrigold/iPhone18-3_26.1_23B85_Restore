unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v10 = *(*a1 + 16);
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v7 = 0;
  *(v7 + 8) = v4;
  *(v7 + 16) = v6;
  *(v7 + 24) = v10;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail23RankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_16RankedTensorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange &>(void *a1, uint64_t *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v4 = a2[1];
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v11[1] = v7;
  v12[0] = v3;
  v12[1] = v4;
  v5 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v3, 0, v3, v4);
  v9[0] = v12;
  v9[1] = v11;
  v10 = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::TupleTypeStorage::construct(a2, **a1, *(*a1 + 8));
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::TupleTypeStorage::construct(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3 + 16, 3);
  *v5 = 0;
  *(v5 + 8) = a3;
  if (a3)
  {
    v6 = 0;
    do
    {
      *(v5 + 16 + 8 * v6) = mlir::TypeRange::dereference_iterator(a2, v6);
      ++v6;
    }

    while (a3 != v6);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange>(void *a1, uint64_t *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v4 = a2[1];
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v11[1] = v7;
  v12[0] = v3;
  v12[1] = v4;
  v5 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v3, 0, v3, v4);
  v9[0] = v12;
  v9[1] = v11;
  v10 = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::TupleTypeStorage::construct(a2, **a1, *(*a1 + 8));
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v8[1] = &v9;
  v9 = a1;
  v4 = *a2;
  v5 = *a3;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v13[1] = v8;
  v11 = v4;
  v12 = v5;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,mlir::Attribute>(v14, 0, v14, v15, &v11, &v12);
  v10 = &v11;
  *&v14[0] = &v11;
  *(&v14[0] + 1) = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v3 = *a2;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
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
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void llvm::SmallVectorImpl<BOOL>::append(void *result, size_t __len, int __c)
{
  v6 = result[1];
  if (v6 + __len > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v6 + __len, 1);
    v6 = result[1];
    if (!__len)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__len)
  {
LABEL_3:
    memset((*result + v6), __c, __len);
  }

LABEL_4:
  result[1] = v6 + __len;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::VectorType,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(void *a1, __int128 *a2, uint64_t *a3, unint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v12[1] = &v13;
  v13 = a1;
  v5 = *a3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v17[1] = v12;
  v14 = *a2;
  v15 = v5;
  v16 = *a4;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v19 = llvm::hashing::detail::hash_combine_range_impl<long long const>(v14, v14 + 8 * *(&v14 + 1), a3, a4);
  v20 = ((v5 >> 4) ^ (v5 >> 9));
  v18 = 0;
  v8 = llvm::hashing::detail::hash_combine_range_impl<BOOL const>(v16, v16 + *(&v16 + 1), v6, v7);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v19, &v18, v21, v22, v8);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v19, v18, v9, v22);
  v18 = &v14;
  v19 = &v14;
  v20 = v17;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v19);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<BOOL const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && (v5 = *(a2 + 40), v5 == *(v2 + 32)))
  {
    return memcmp(*(a2 + 32), *(v2 + 24), v5) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, **a1, *(*a1 + 8));
  v9 = v8;
  if (v6)
  {
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v6, 0);
    v11 = v6;
    v12 = v10;
    do
    {
      v13 = *v5++;
      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
  *v14 = 0;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = v4;
  v14[4] = v10;
  v14[5] = v6;
  v15 = *(a1 + 8);
  if (*v15)
  {
    (*v15)(*(v15 + 8), v14);
  }

  return v14;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void mlir::Dialect::addType<mlir::ComplexType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ComplexType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, 0, v2);
}

void *mlir::Dialect::addType<mlir::Float8E5M2Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E5M2Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E5M2Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E4M3Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E4M3Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E4M3FNType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E4M3FNType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3FNType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E5M2FNUZType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E5M2FNUZType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E5M2FNUZType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E4M3FNUZType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E4M3FNUZType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3FNUZType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E4M3B11FNUZType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E4M3B11FNUZType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3B11FNUZType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E3M4Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E3M4Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E3M4Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float4E2M1FNType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float4E2M1FNType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float4E2M1FNType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float6E2M3FNType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float6E2M3FNType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float6E2M3FNType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float6E3M2FNType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float6E3M2FNType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float6E3M2FNType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id);
}

void *mlir::Dialect::addType<mlir::Float8E8M0FNUType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float8E8M0FNUType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float8E8M0FNUType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id);
}

void *mlir::Dialect::addType<mlir::BFloat16Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::BFloat16Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::BFloat16Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float16Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float16Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float16Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id);
}

void *mlir::Dialect::addType<mlir::FloatTF32Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::FloatTF32Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::FloatTF32Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float32Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float32Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float32Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float64Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float64Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float64Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float80Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float80Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float80Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id);
}

void *mlir::Dialect::addType<mlir::Float128Type>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::Float128Type>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::Float128Type>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id);
}

void mlir::Dialect::addType<mlir::FunctionType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::FunctionType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, 0, v2);
}

void *mlir::Dialect::addType<mlir::IndexType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::IndexType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::IndexType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id);
}

void mlir::Dialect::addType<mlir::IntegerType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::IntegerType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::MemRefType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::MemRefType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, 0, v2);
}

void *mlir::Dialect::addType<mlir::NoneType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::NoneType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::NoneType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id);
}

void mlir::Dialect::addType<mlir::OpaqueType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::OpaqueType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::RankedTensorType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::RankedTensorType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::TupleType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::TupleType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::UnrankedMemRefType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::UnrankedMemRefType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::UnrankedTensorType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::UnrankedTensorType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, 0, v2);
}

void mlir::Dialect::addType<mlir::VectorType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::VectorType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, 0, v2);
}

void mlir::AbstractType::get<mlir::ComplexType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ComplexType,mlir::Type,mlir::detail::ComplexTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSB_18ComplexTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSA_18ComplexTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, "builtin.complex", 15);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSB_18ComplexTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

void *mlir::AbstractType::AbstractType(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  a1[1] = a1 + 3;
  v17 = a1 + 1;
  a1[2] = 0x300000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v17, a3);
  }

  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase((a1 + 9), a4);
  a1[13] = a5;
  a1[14] = a6;
  a1[15] = a7;
  a1[16] = a8;
  a1[17] = a9;
  a1[18] = a10;
  a1[19] = a11;
  return a1;
}

void mlir::AbstractType::get<mlir::Float8E5M2Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E5M2Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E5M2Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E5M2Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E5M2TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E5M2TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, "builtin.f8E5M2", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E5M2Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D868))
  {
    v1 = llvm::getTypeName<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>>();
    _MergedGlobals_7 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D868);
  }

  return _MergedGlobals_7;
}

uint64_t llvm::getTypeName<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(qword_27FC1D880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27FC1D880))
  {
    qword_27FC1D870 = llvm::detail::getTypeNameImpl<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>>();
    *algn_27FC1D878 = v1;
    __cxa_guard_release(qword_27FC1D880);
  }

  return qword_27FC1D870;
}

const char *llvm::detail::getTypeNameImpl<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FloatType::Trait<Empty>]";
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

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E5M2Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E5M2TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 0;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E5M2TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E4M3Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E4M3Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E4M3TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E4M3TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, "builtin.f8E4M3", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E4M3Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E4M3TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E4M3TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E4M3FNType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3FNType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3FNType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E4M3FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float8E4M3FNTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float8E4M3FNTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, "builtin.f8E4M3FN", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E4M3FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3FNType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float8E4M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float8E4M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E5M2FNUZType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E5M2FNUZType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E5M2FNUZType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E5M2FNUZType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E5M2FNUZTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E5M2FNUZTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, "builtin.f8E5M2FNUZ", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E5M2FNUZType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E5M2FNUZType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E5M2FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E5M2FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E4M3FNUZType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3FNUZType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3FNUZType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E4M3FNUZType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E4M3FNUZTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E4M3FNUZTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, "builtin.f8E4M3FNUZ", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E4M3FNUZType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3FNUZType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E4M3FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E4M3FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E4M3B11FNUZType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3B11FNUZType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E4M3B11FNUZType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E4M3B11FNUZType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_21Float8E4M3B11FNUZTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_21Float8E4M3B11FNUZTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, "builtin.f8E4M3B11FNUZ", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E4M3B11FNUZType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E4M3B11FNUZType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_21Float8E4M3B11FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_21Float8E4M3B11FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E3M4Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E3M4Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E3M4Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E3M4Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E3M4TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E3M4TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, "builtin.f8E3M4", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E3M4Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E3M4Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E3M4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E3M4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float4E2M1FNType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float4E2M1FNType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float4E2M1FNType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float4E2M1FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float4E2M1FNTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float4E2M1FNTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, "builtin.f4E2M1FN", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float4E2M1FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float4E2M1FNType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float4E2M1FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float4E2M1FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float6E2M3FNType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float6E2M3FNType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float6E2M3FNType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float6E2M3FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E2M3FNTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E2M3FNTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, "builtin.f6E2M3FN", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float6E2M3FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float6E2M3FNType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E2M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E2M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float6E3M2FNType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float6E3M2FNType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float6E3M2FNType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float6E3M2FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E3M2FNTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E3M2FNTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, "builtin.f6E3M2FN", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float6E3M2FNType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float6E3M2FNType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E3M2FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E3M2FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float8E8M0FNUType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E8M0FNUType>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float8E8M0FNUType>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float8E8M0FNUType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17Float8E8M0FNUTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17Float8E8M0FNUTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id, "builtin.f8E8M0FNU", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float8E8M0FNUType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float8E8M0FNUType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_17Float8E8M0FNUTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_17Float8E8M0FNUTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::BFloat16Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::BFloat16Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::BFloat16Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::BFloat16Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12BFloat16TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12BFloat16TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, "builtin.bf16", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::FloatTypeInterfaceTraits::Model<mlir::BFloat16Type>::scaleElementBitwidth(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 4)
  {
    if (a3 != 2)
    {
      return 0;
    }

    v3 = *(**(**a2 + 32) + 440);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_6;
  }

  v3 = *(**(**a2 + 32) + 448);
  if (v3)
  {
LABEL_6:
    v4 = *v3;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v3;
}

BOOL mlir::detail::StorageUserBase<mlir::BFloat16Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::BFloat16Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12BFloat16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12BFloat16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float16Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float16Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float16Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float16Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float16TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float16TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, "builtin.f16", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float16Type>::scaleElementBitwidth(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 4)
  {
    if (a3 != 2)
    {
      return 0;
    }

    v3 = *(**(**a2 + 32) + 440);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_6;
  }

  v3 = *(**(**a2 + 32) + 448);
  if (v3)
  {
LABEL_6:
    v4 = *v3;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v3;
}

BOOL mlir::detail::StorageUserBase<mlir::Float16Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float16Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::FloatTF32Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::FloatTF32Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::FloatTF32Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::FloatTF32Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13FloatTF32TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13FloatTF32TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, "builtin.tf32", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::FloatTF32Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::FloatTF32Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_13FloatTF32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_13FloatTF32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float32Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float32Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float32Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float32Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float32TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float32TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, "builtin.f32", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float32Type>::scaleElementBitwidth(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 2)
  {
    return 0;
  }

  v3 = *(**(**a2 + 32) + 448);
  if (v3)
  {
    v4 = *v3;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v3;
}

BOOL mlir::detail::StorageUserBase<mlir::Float32Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float32Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float64Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float64Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float64Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float64Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float64TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float64TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, "builtin.f64", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float64Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float64Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float64TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float64TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float80Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float80Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float80Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float80Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float80TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float80TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, "builtin.f80", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float80Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float80Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float80TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float80TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::Float128Type>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float128Type>::getFloatSemantics;
  v4[1] = mlir::detail::FloatTypeInterfaceTraits::Model<mlir::Float128Type>::scaleElementBitwidth;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::Float128Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12Float128TypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJNS1_9FloatType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12Float128TypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJNS1_9FloatType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, "builtin.f128", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::Float128Type,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer,mlir::FloatType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::FloatType::Trait<mlir::TypeID mlir::TypeID::get<mlir::FloatType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void *mlir::detail::TypeUniquer::registerType<mlir::Float128Type>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12Float128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12Float128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::FunctionType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::FunctionType,mlir::Type,mlir::detail::FunctionTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSB_19FunctionTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSA_19FunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, "builtin.function", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSB_19FunctionTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v8 = *(a2 + 16);
  v10 = *(a2 + 8);
  v9 = *(a2 + 12);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = mlir::TypeRange::dereference_iterator(v8 & 0xFFFFFFFFFFFFFFF9 | 2, i);
      if (v12)
      {
        a5(a6, v12);
      }
    }
  }

  if (v9)
  {
    v13 = 0;
    v14 = (v8 + 8 * v10) & 0xFFFFFFFFFFFFFFF9;
    do
    {
      v15 = mlir::TypeRange::dereference_iterator(v14 | 2, v13);
      if (v15)
      {
        a5(a6, v15);
      }

      ++v13;
    }

    while (v9 != v13);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSA_19FunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a6 - v6;
  if (a6 >= v6)
  {
    v9 = a2[2];
  }

  else
  {
    v9 = a6;
  }

  v10 = a5 + 8 * v6;
  if (v8 < v7)
  {
    v7 = v8;
  }

  v11 = *(**a2 + 32);
  *&v14 = a5 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v14 + 1) = v9;
  *&v13 = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v13 + 1) = v7;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v11, &v14, &v13);
}

void mlir::AbstractType::get<mlir::IndexType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::IndexType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9IndexTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9IndexTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, "builtin.index", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void *mlir::detail::TypeUniquer::registerType<mlir::IndexType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_9IndexTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_9IndexTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::IntegerType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::IntegerType,mlir::Type,mlir::detail::IntegerTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSB_18IntegerTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSA_18IntegerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, "builtin.integer", 15);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractType::get<mlir::MemRefType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSB_17MemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSA_17MemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, "builtin.memref", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::cloneWith(uint64_t a1, uint64_t *a2, __int128 *a3, mlir::MLIRContext *a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  v7 = mlir::BaseMemRefType::cloneWith(a2, &v5, a4);
  return mlir::BaseMemRefType::operator mlir::ShapedType(&v7);
}

uint64_t *mlir::BaseMemRefType::operator mlir::ShapedType(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

BOOL mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
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

uint64_t mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3160);
}

uint64_t llvm::getTypeName<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>();
    unk_27FC17C70 = v1;
  }

  return llvm::getTypeName<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType::Trait<Empty>]";
  v6 = 92;
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

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSB_17MemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSA_17MemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v25[10] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v20.i64[0] = a3;
  v20.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v6, v7, &v21);
  if (v9)
  {
    v9 = *a5;
  }

  v12 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(v8, v10, &v20);
  v14 = v13;
  if (v11)
  {
    v15 = v20.i64[0];
    v20 = vaddq_s64(v20, xmmword_25D0A0600);
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v24[0] = v25;
  v24[1] = 0x600000000;
  if (v22)
  {
    llvm::SmallVectorImpl<long long>::operator=(v24, &v21);
  }

  v25[6] = v9;
  v25[7] = v12;
  v25[8] = v14;
  v25[9] = v16;
  if (v21 != v23)
  {
    free(v21);
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,llvm::SmallVector<long long,6u>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>::__tuple_impl(&v21, v24);
  v17 = mlir::MemRefType::get(v21, v22, v23[6], v23[7], v23[8], v23[9]);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  return v17;
}

uint64_t *mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a3;
  *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
  v4 = *v3.i64[0];
  if (*v3.i64[0])
  {
    v5 = *v4;
    v6 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  return v4;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,llvm::SmallVector<long long,6u>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(a1, a2);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void mlir::AbstractType::get<mlir::NoneType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::NoneType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8NoneTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8NoneTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, "builtin.none", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void *mlir::detail::TypeUniquer::registerType<mlir::NoneType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_8NoneTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_8NoneTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::OpaqueType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSB_17OpaqueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSA_17OpaqueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, "builtin.opaque", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSB_17OpaqueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSA_17OpaqueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = *(a2 + 16);
  return mlir::detail::TypeUniquer::get<mlir::OpaqueType,mlir::StringAttr &,llvm::StringRef &>(*(**v5 + 32), &v5, &v4);
}

void mlir::AbstractType::get<mlir::RankedTensorType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSB_23RankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSA_23RankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, "builtin.tensor", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 16);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return mlir::TensorType::operator mlir::ShapedType(&v8);
}

BOOL mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3200);
}

uint64_t llvm::getTypeName<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>();
    *algn_27FC17C98 = v1;
  }

  return llvm::getTypeName<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ValueSemantics<Empty>]";
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

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSB_23RankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = *(a2 + 32);
  if (*(a2 + 24))
  {
    v8 = a3;
    a5(a6);
    a3 = v8;
  }

  if (v7)
  {

    a3(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSA_23RankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2[3];
  v6 = a2[4];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(a2[1], a2[2], &v17);
  if (v5)
  {
    v5 = *a5;
  }

  if (v6)
  {
    v7 = *a3;
  }

  else
  {
    v7 = 0;
  }

  v20 = v22;
  v21 = 0x600000000;
  if (v18)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v20, &v17);
  }

  v23 = v5;
  v24 = v7;
  if (v17 != v19)
  {
    free(v17);
  }

  v17 = v19;
  v18 = 0x600000000;
  if (v21)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v17, &v20);
    v8 = v17;
    v9 = v18;
  }

  else
  {
    v9 = 0;
    v8 = v19;
  }

  v19[6] = v23;
  v19[7] = v24;
  *&v16 = v8;
  *(&v16 + 1) = v9;
  v14 = v24;
  v15 = v23;
  v10 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v23 + 32), &v16, &v15, &v14);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v10;
}

void mlir::AbstractType::get<mlir::TupleType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::TupleType,mlir::Type,mlir::detail::TupleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSB_16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSA_16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, "builtin.tuple", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSB_16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    v9 = 0;
    v10 = (a2 + 16) & 0xFFFFFFFFFFFFFFF9;
    do
    {
      v11 = mlir::TypeRange::dereference_iterator(v10 | 2, v9);
      if (v11)
      {
        a5(a6, v11);
      }

      ++v9;
    }

    while (v6 != v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSA_16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (a6 < v6)
  {
    v6 = a6;
  }

  v7 = *(**a2 + 32);
  v9[0] = a5 & 0xFFFFFFFFFFFFFFF9 | 2;
  v9[1] = v6;
  return mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange &>(v7, v9);
}

void mlir::AbstractType::get<mlir::UnrankedMemRefType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSB_25UnrankedMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSA_25UnrankedMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, "builtin.unranked_memref", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::cloneWith(uint64_t a1, uint64_t *a2, __int128 *a3, mlir::MLIRContext *a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  v7 = mlir::BaseMemRefType::cloneWith(a2, &v5, a4);
  return mlir::BaseMemRefType::operator mlir::ShapedType(&v7);
}

BOOL mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
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

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSB_25UnrankedMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v8 = a3;
    a5(a6);
    a3 = v8;
  }

  if (v7)
  {

    a3(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSA_25UnrankedMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  if (!*(a2 + 8))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    return mlir::UnrankedMemRefType::get(v6, v7);
  }

  v6 = *a5;
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *a3;
  return mlir::UnrankedMemRefType::get(v6, v7);
}

void mlir::AbstractType::get<mlir::UnrankedTensorType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::UnrankedTensorType,mlir::TensorType,mlir::detail::UnrankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSB_25UnrankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSA_25UnrankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, "builtin.unranked_tensor", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 16);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return mlir::TensorType::operator mlir::ShapedType(&v8);
}

BOOL mlir::detail::StorageUserBase<mlir::UnrankedTensorType,mlir::TensorType,mlir::detail::UnrankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSB_25UnrankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

void mlir::AbstractType::get<mlir::VectorType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSB_17VectorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v7, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSA_17VectorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, "builtin.vector", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v4 = *a3;
    v5 = (a3 + 8);
  }

  else
  {
    v5 = (a2 + 16);
    v4 = *(a2 + 8);
  }

  v6 = mlir::VectorType::get(v4, *v5, a4, *(a2 + 32), *(a2 + 40));
  v7 = v6;
  if (v6)
  {
    v8 = *v6;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  return v7;
}

BOOL mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSB_17VectorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 24);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSA_17VectorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v35[5] = *MEMORY[0x277D85DE8];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(a2[1], a2[2], &v19);
  if (v5)
  {
    v5 = *a5;
  }

  v26 = v28;
  v8 = xmmword_25D0A0550;
  v27 = xmmword_25D0A0550;
  if (v7)
  {
    do
    {
      v9 = *v6;
      v10 = v27;
      if (v27 >= *(&v27 + 1))
      {
        llvm::SmallVectorTemplateBase<BOOL,true>::push_back(&v26, v9 & 1);
        v8 = xmmword_25D0A0550;
      }

      else
      {
        *(v26 + v27) = v9;
        *&v27 = v10 + 1;
      }

      ++v6;
      --v7;
    }

    while (v7);
    v33 = v35;
    v34 = v8;
    if (v27)
    {
      llvm::SmallVectorImpl<BOOL>::operator=(&v33, &v26);
    }
  }

  else
  {
    v33 = v35;
    v34 = xmmword_25D0A0550;
  }

  if (v26 != v28)
  {
    free(v26);
  }

  v26 = &v27 + 8;
  *&v27 = 0x600000000;
  if (v20)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v26, &v19);
  }

  v29 = v5;
  __src = v32;
  *__n = xmmword_25D0A0550;
  if (v34)
  {
    llvm::SmallVectorImpl<BOOL>::operator=(&__src, &v33);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v19 = v21;
  v20 = 0x600000000;
  if (v27)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v19, &v26);
  }

  v11 = v29;
  v12 = __n[0];
  v22 = v29;
  v23 = v25;
  v24 = xmmword_25D0A0550;
  if (!__n[0])
  {
    v15 = v25;
    goto LABEL_32;
  }

  if (__n[0] < 0x29)
  {
    v14 = v25;
    v13 = __n[0];
    goto LABEL_30;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v23, v25, __n[0], 1);
  v13 = __n[0];
  if (__n[0])
  {
    v14 = v23;
LABEL_30:
    memcpy(v14, __src, v13);
  }

  *&v24 = v12;
  v11 = v22;
  v15 = v23;
LABEL_32:
  v16 = mlir::VectorType::get(v19, v20, v11, v15, v12);
  if (v23 != v25)
  {
    free(v23);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (__src != v32)
  {
    free(__src);
  }

  if (v26 != &v27 + 8)
  {
    free(v26);
  }

  return v16;
}

uint64_t llvm::SmallVectorImpl<BOOL>::operator=(uint64_t a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 3;
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = a2[1];
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, a2[1]);
        }
      }

      else
      {
        if (*(a1 + 16) >= v6)
        {
          if (v7)
          {
            memmove(*a1, v4, *(a1 + 8));
          }
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v6, 1);
          v7 = 0;
        }

        v8 = a2[1];
        if (v8 != v7)
        {
          memcpy((*a1 + v7), *a2 + v7, v8 - v7);
        }
      }

      *(a1 + 8) = v6;
      a2[1] = 0;
    }

    else
    {
      llvm::SmallVectorImpl<BOOL>::assignRemote(a1, a2);
    }
  }

  return a1;
}

__n128 llvm::SmallVectorImpl<BOOL>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 24);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a2 + 24;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<32ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<186ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v14);
  v7 = v14;
  if (result)
  {
    v8 = a1 + 8;
    if (*a1)
    {
      v9 = 4;
    }

    else
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
    }

    v12 = 0;
    v13 = v8 + 4 * v9;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, v14);
    v7 = result;
    *result = *a2;
    v10 = a1 + 8;
    if (*a1)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
    }

    v13 = v10 + 4 * v11;
    v12 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (37 * *a2) & (v4 - 1);
  v7 = (v3 + 4 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 4 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::InsertIntoBucketImpl<unsigned int>(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(a1, v7, a3);
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -1)
  {
    --a1[1];
  }

  return a3;
}

_DWORD *llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(unsigned int *a1, unsigned int a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      a2 = v6 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 1) = llvm::allocate_buffer((4 * a2), 4uLL);
      *(a1 + 2) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(a1, v7, &v7[v8]);

    JUMPOUT(0x25F891030);
  }

  v9 = v15;
  for (i = 2; i != 6; ++i)
  {
    v11 = a1[i];
    if (v11 <= 0xFFFFFFFD)
    {
      *v9++ = v11;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 1) = llvm::allocate_buffer((4 * a2), 4uLL);
    *(a1 + 2) = v12;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(a1, v15, v9);
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v7 = 4;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(result + 1);
  }

  result = memset(v8, 255, 4 * v7);
LABEL_9:
  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v9 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v9);
      *v9 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::MemRefType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v10[1] = &v11;
  v11 = a1;
  v6 = *a3;
  v7 = *a5;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_;
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
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 384), &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v17 = a2;
  v14 = llvm::hashing::detail::hash_combine_range_impl<long long const>(*a5, *a5 + 8 * *(a5 + 8), a3, a4);
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, a3, a4, v14);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(a1, v17, v15, a4, a6, a7, a8);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v13 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::MemRefLayoutAttrInterface,mlir::Attribute>(a1, v13, v11, a4, a6, a7);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5, _DWORD *a6)
{
  v11 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute>(a1, v11, v9, a4, a6);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v12 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, **a1, *(*a1 + 8));
  v8 = v7;
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x38uLL, 3);
  *v9 = 0;
  *(v9 + 8) = v6;
  *(v9 + 16) = v8;
  *(v9 + 24) = v12;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*v10)(*(v10 + 8), v9);
  }

  return v9;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<20ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<35ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

char *llvm::SmallVectorImpl<long long>::insert<long long const*,void>(unsigned int *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = (a4 - __src) >> 3;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v9 + v11, 8);
    v7 = *a1;
    v9 = a1[2];
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5;
        v5 += 8;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<long long>::append<std::move_iterator<long long *>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

void llvm::SmallVectorImpl<long long>::append<long long const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = result[2];
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    LODWORD(v7) = result[2];
  }

  if (__src != a3)
  {
    memcpy((*result + 8 * v7), __src, v6);
    LODWORD(v7) = result[2];
  }

  result[2] = v7 + (v6 >> 3);
}

void llvm::SmallVectorImpl<long long>::append<std::move_iterator<long long *>,void>(uint64_t result, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(result + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v8, 8);
    LODWORD(v7) = *(result + 8);
  }

  if (a3 != v4)
  {
    v9 = (*result + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(result + 8) = v7 + (v6 >> 3);
}

void mlir::DiagnosticArgument::print(mlir::DiagnosticArgument *this, llvm::raw_ostream *a2)
{
  v4 = *this;
  if (*this > 2)
  {
    switch(v4)
    {
      case 3:
        v7 = *(this + 1);
        v8 = *(this + 2);

        llvm::raw_ostream::operator<<(a2, v7, v8);
        break;
      case 4:
        v10 = *(a2 + 4);
        if (v10 >= *(a2 + 3))
        {
          llvm::raw_ostream::write(a2, 39);
        }

        else
        {
          *(a2 + 4) = v10 + 1;
          *v10 = 39;
        }

        v12 = *(this + 1);
        mlir::Type::print(&v12, a2);
        v11 = *(a2 + 4);
        if (v11 >= *(a2 + 3))
        {
          llvm::raw_ostream::write(a2, 39);
        }

        else
        {
          *(a2 + 4) = v11 + 1;
          *v11 = 39;
        }

        break;
      case 5:
        v6 = *(this + 1);

        write_unsigned<unsigned long long>(a2, v6, 0, 0, 0);
        break;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v9 = *(this + 1);

      llvm::write_double(a2, 0, 0, 0, v9);
    }

    else if (v4 == 2)
    {
      v5 = *(this + 1);

      llvm::write_integer(a2, v5, 0, 0);
    }
  }

  else
  {
    v12 = *(this + 1);
    mlir::Attribute::print(&v12, a2, 0);
  }
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, const char **a2)
{
  v8 = 3;
  v9 = twineToStrRef(a2, a1 + 128);
  v10 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

{
  v8 = 3;
  v9 = twineToStrRef(a2, a1 + 128);
  v10 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

const char *twineToStrRef(const char **a1, uint64_t a2)
{
  v7[8] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = xmmword_25D0A05D0;
  v2 = llvm::Twine::toStringRef(a1, &v5);
  if (v3)
  {
    operator new[]();
  }

  if (v5 != v7)
  {
    free(v5);
  }

  return v2;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a2;
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

{
  v3 = *(a2 + 8);
  v8 = 3;
  v9 = *(v3 + 16);
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

{
  v19 = 0;
  v20 = a2;
  v18[0] = 0;
  v18[1] = 0;
  v11 = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_286E79D28;
  v17 = v18;
  llvm::raw_ostream::SetUnbuffered(&v10);
  mlir::OpPrintingFlags::OpPrintingFlags(v6);
  v3 = *(a1 + 8);
  v4 = WORD4(v7);
  WORD4(v7) |= 0x20u;
  *&v6[0] = 16;
  BYTE8(v6[0]) = 1;
  if (v3 == 2)
  {
    WORD4(v7) = v4 | 0x24;
  }

  v8[0] = v6[0];
  v8[1] = v6[1];
  v9 = v7;
  mlir::Value::print(&v20, &v10, v8);
  LOWORD(v9) = 260;
  *&v8[0] = v18;
  mlir::Diagnostic::operator<<(a1, v8);
  llvm::raw_ostream::~raw_ostream(&v10);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return a1;
}

void mlir::Diagnostic::appendOp(mlir::Diagnostic *this, mlir::Operation *a2, const mlir::OpPrintingFlags *a3)
{
  memset(&v22, 0, sizeof(v22));
  v15 = 0;
  v19 = 0;
  v20 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_286E79D28;
  v21 = &v22;
  llvm::raw_ostream::SetUnbuffered(&v14);
  *v10 = *(a3 + 9);
  *&v10[15] = *(a3 + 24);
  v6 = *(a3 + 20);
  v12 = *(a3 + 42);
  v13 = *(a3 + 23);
  if (*(this + 2) == 2)
  {
    v7 = 36;
  }

  else
  {
    v7 = 32;
  }

  v8 = 16;
  v9 = 1;
  v11 = v7 | v6;
  mlir::Operation::print(a2, &v14, &v8);
}

uint64_t *std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 176);
    if (v3 != (v2 + 192))
    {
      free(v3);
    }

    v6 = (v2 + 152);
    std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v6);
    v6 = (v2 + 128);
    std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v6);
    v4 = *(v2 + 16);
    if (v4 != (v2 + 32))
    {
      free(v4);
    }

    MEMORY[0x25F891040](v2, 0x10A0C40DB3FE637);
  }

  return a1;
}

void mlir::InFlightDiagnostic::report(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::detail::DiagnosticEngineImpl::emit(**this, this + 1);
    *this = 0;
  }

  v2 = this + 200;
  if (*(this + 200) == 1)
  {
    v3 = *(this + 23);
    if (v3 != v2)
    {
      free(v3);
    }

    v5 = (this + 160);
    std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (this + 136);
    std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v4 = *(this + 3);
    if (v4 != this + 40)
    {
      free(v4);
    }

    *v2 = 0;
  }
}

void mlir::detail::DiagnosticEngineImpl::emit(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(a1);
  v5 = *(a1 + 120);
  v6 = *(a1 + 112) + 40 * v5;
  v7 = (v6 - 32);
  v8 = -40 * v5;
  while (v8)
  {
    v9 = *(v6 - 8);
    v10 = v7;
    if ((v9 & 2) == 0)
    {
      v10 = *v7;
    }

    v6 -= 40;
    v4 = (*(v9 & 0xFFFFFFFFFFFFFFF8))(v10, a2);
    v7 -= 5;
    v8 += 40;
    if (v4)
    {
      goto LABEL_23;
    }
  }

  if (*(a2 + 2) == 2)
  {
    v11 = llvm::errs(v4);
    if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      v19 = *a2;
      mlir::Attribute::print(&v19, v11, 0);
      v12 = *(v11 + 4);
      if (*(v11 + 3) - v12 > 1uLL)
      {
        *v12 = 8250;
        *(v11 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v11, ": ", 2uLL);
      }
    }

    v13 = *(v11 + 4);
    if (*(v11 + 3) - v13 > 6uLL)
    {
      *(v13 + 3) = 540701295;
      *v13 = 1869771365;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "error: ", 7uLL);
    }

    v14 = *(a2 + 6);
    if (v14)
    {
      v15 = a2[2];
      v16 = 24 * v14;
      do
      {
        mlir::DiagnosticArgument::print(v15, v11);
        v15 = (v15 + 24);
        v16 -= 24;
      }

      while (v16);
    }

    v17 = *(v11 + 4);
    if (v17 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 10);
    }

    else
    {
      *(v11 + 4) = v17 + 1;
      *v17 = 10;
    }

    v18 = *(v11 + 2);
    if (*(v11 + 4) != v18)
    {
      *(v11 + 4) = v18;
      (*(*v11 + 72))(v11);
    }
  }

LABEL_23:
  std::recursive_mutex::unlock(a1);
}

void mlir::DiagnosticEngine::~DiagnosticEngine(mlir::DiagnosticEngine *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>::~SmallVector((v1 + 112));
    if ((*(v1 + 72) & 1) == 0)
    {
      MEMORY[0x25F891030](*(v1 + 80), 8);
    }

    std::recursive_mutex::~recursive_mutex(v1);
    MEMORY[0x25F891040]();
  }
}

uint64_t mlir::DiagnosticEngine::registerHandler(std::recursive_mutex **a1, __int128 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v6 = *&(*a1)[3].__m_.__opaque[8];
  *&v5[3].__m_.__opaque[8] = v6 + 1;
  v8 = v6;
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::UniqueFunctionBase(v9, a2);
  llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::try_emplace<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>(v5[1].__m_.__opaque, &v8, v9);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(v9);
  std::recursive_mutex::unlock(v4);
  return v6;
}

void mlir::DiagnosticEngine::eraseHandler(std::recursive_mutex **this, uint64_t a2)
{
  v4 = a2;
  v3 = *this;
  std::recursive_mutex::lock(*this);
  llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase((*this)[1].__m_.__opaque, &v4);
  std::recursive_mutex::unlock(v3);
}

uint64_t llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::find(a1, a2);
  if (v3 == (*(a1 + 40) + 40 * *(a1 + 48)))
  {
    return 0;
  }

  llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase(a1, v3);
  return 1;
}

void emitDiag(void **a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(**a1 + 32);
  v7 = *v6 + 32;
  v12 = a1;
  v13 = a2;
  v14 = &v16;
  v15 = 0x400000000;
  memset(v20, 0, sizeof(v20));
  v21 = &v23;
  v22 = 0;
  *a4 = v7;
  mlir::Diagnostic::Diagnostic(a4 + 8, &v12);
  *(a4 + 200) = 1;
  if (v21 != &v23)
  {
    free(v21);
  }

  __p = &v20[1] + 8;
  std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&__p);
  __p = v20;
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (v14 != &v16)
  {
    free(v14);
  }

  if (*(a3 + 32) >= 2u && *a4)
  {
    mlir::Diagnostic::operator<<(a4 + 8, a3);
  }

  if (*(*v6 + 43) == 1)
  {
    __p = 0;
    v10 = 0;
    v13 = 0;
    v17 = 0;
    v18 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v11 = 0;
    v12 = &unk_286E79D28;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v12);
    llvm::raw_ostream::~raw_ostream(&v12);
    v8 = HIBYTE(v11);
    if (v11 < 0)
    {
      v8 = v10;
    }

    if (v8)
    {
      mlir::Diagnostic::attachNote((a4 + 8), 0, 0);
    }

    if (v11 < 0)
    {
      operator delete(__p);
    }
  }
}

void mlir::detail::ParallelDiagnosticHandlerImpl::setOrderIDForThread(mlir::detail::ParallelDiagnosticHandlerImpl *this, uint64_t a2)
{
  {
    v5 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v6 = llvm::get_threadid(void)::Self();
    *v6 = v7;
  }

  v8 = v5;
  std::recursive_mutex::lock((this + 16));
  *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](this + 11, &v8) = a2;
  std::recursive_mutex::unlock((this + 16));
}

void mlir::detail::ParallelDiagnosticHandlerImpl::eraseOrderIDForThread(mlir::detail::ParallelDiagnosticHandlerImpl *this)
{
  {
    v3 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v5 = llvm::get_threadid(void)::Self();
    *v5 = v6;
  }

  v7 = v3;
  std::recursive_mutex::lock((this + 16));
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::doFind<unsigned long long>(this + 11, &v7);
  if (v4)
  {
    *v4 = -2;
    *(this + 12) = vadd_s32(*(this + 96), 0x1FFFFFFFFLL);
  }

  std::recursive_mutex::unlock((this + 16));
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
      (*((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::StringMap<unsigned int,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

mlir::detail::ParallelDiagnosticHandlerImpl *mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::detail::ParallelDiagnosticHandlerImpl *this, mlir::MLIRContext *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = &unk_286E78A18;
  MEMORY[0x25F890CE0](this + 16);
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = a2;
  v4 = *a2;
  *&v6 = this;
  v7 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1},mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1},void>::Callbacks + 2;
  *(this + 17) = mlir::DiagnosticEngine::registerHandler((v4 + 32), &v6);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(&v6);
  return this;
}

void mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl(mlir::detail::ParallelDiagnosticHandlerImpl *this)
{
  mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl(this);

  JUMPOUT(0x25F891040);
}

{
  *this = &unk_286E78A18;
  mlir::DiagnosticEngine::eraseHandler((**(this + 18) + 32), *(this + 17));
  v2 = *(this + 14);
  if (v2 != *(this + 15))
  {
    v5 = this;
    mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(this, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl()::{lambda(mlir::Diagnostic &)#1}>, &v5);
    v2 = *(this + 14);
  }

  if (v2)
  {
    v3 = *(this + 15);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 -= 200;
        std::allocator_traits<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>>::destroy[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,0>(v3);
      }

      while (v3 != v2);
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  MEMORY[0x25F891030](*(this + 11), 8);
  std::recursive_mutex::~recursive_mutex((this + 16));
}

void mlir::detail::ParallelDiagnosticHandlerImpl::print(uint64_t this, llvm::raw_ostream *a2)
{
  if (*(this + 112) != *(this + 120))
  {
    v7[3] = v2;
    v7[4] = v3;
    v6 = *(a2 + 4);
    if (*(a2 + 3) - v6 > 0x16uLL)
    {
      qmemcpy(v6, "In-Flight Diagnostics:\n", 23);
      *(a2 + 4) += 23;
    }

    else
    {
      llvm::raw_ostream::write(a2, "In-Flight Diagnostics:\n", 0x17uLL);
    }

    v7[0] = a2;
    mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(this, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::print(llvm::raw_ostream &)::{lambda(mlir::Diagnostic const&)#1}>, v7);
  }
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallImpl<mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  {
    v5 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v24 = llvm::get_threadid(void)::Self();
    *v24 = v25;
  }

  v26 = v5;
  std::recursive_mutex::lock((v3 + 16));
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::doFind<unsigned long long>((v3 + 88), &v26))
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[]((v3 + 88), &v26);
    v8 = *(v3 + 120);
    v7 = *(v3 + 128);
    if (v8 >= v7)
    {
      v11 = *(v3 + 112);
      v12 = 0x8F5C28F5C28F5C29 * ((v8 - v11) >> 3);
      if (v12 + 1 > 0x147AE147AE147AELL)
      {
        std::vector<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::__throw_length_error[abi:nn200100]();
      }

      v13 = 0x8F5C28F5C28F5C29 * ((v7 - v11) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v12 + 1)
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0xA3D70A3D70A3D7)
      {
        v15 = 0x147AE147AE147AELL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 <= 0x147AE147AE147AELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>((200 * v12), *v6, a2);
      v16 = *(v3 + 112);
      v17 = *(v3 + 120);
      v18 = 200 * v12 - (v17 - v16);
      v9 = 200 * v12 + 200;
      if (v17 != v16)
      {
        v19 = 200 * v12 - 8 * ((v17 - v16) >> 3) + 8;
        v20 = *(v3 + 112);
        v21 = v20;
        do
        {
          v22 = *v21;
          v21 += 200;
          *(v19 - 8) = v22;
          v19 = mlir::Diagnostic::Diagnostic(v19, v20 + 1) + 200;
          v20 = v21;
        }

        while (v21 != v17);
        do
        {
          std::allocator_traits<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>>::destroy[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,0>(v16);
          v16 += 200;
        }

        while (v16 != v17);
        v16 = *(v3 + 112);
      }

      *(v3 + 112) = v18;
      *(v3 + 120) = v9;
      *(v3 + 128) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(*(v3 + 120), *v6, a2);
      v9 = v8 + 200;
    }

    *(v3 + 120) = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  std::recursive_mutex::unlock((v3 + 16));
  return v10;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = 0;
  }

  return inserted + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::doFind<unsigned long long>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v6 = *(*a1 + 16 * (v4 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2))));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -1)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

void std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(void *a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  mlir::Diagnostic::Diagnostic(v6, a3);
  *a1 = a2;
  mlir::Diagnostic::Diagnostic((a1 + 1), v6);
  if (v11 != &v12)
  {
    free(v11);
  }

  v5 = &v10;
  std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = &v9;
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v5);
  if (v7 != &v8)
  {
    free(v7);
  }
}

void std::allocator_traits<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>>::destroy[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,0>(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2 != (a1 + 200))
  {
    free(v2);
  }

  v4 = (a1 + 160);
  std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 136);
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 24);
  if (v3 != (a1 + 40))
  {
    free(v3);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::InsertIntoBucketImpl<unsigned long long>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -1;
        }

        if (v18.i8[4])
        {
          *v17 = -1;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(a1, v20, &v29);
          *v29 = *v20;
          ++*(a1 + 8);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 2;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -1;
      }

      if (v28.i8[4])
      {
        *v27 = -1;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

void mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  if (v7 - v6 < 1)
  {
    v11 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v7, (0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3)), 0, v11);
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3);
    while (1)
    {
      v10 = operator new(200 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v13 = v10;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v7, (0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3)), v10, v9);
    operator delete(v13);
  }

  v15 = *(a1 + 112);
  v14 = *(a1 + 120);
  while (v15 != v14)
  {
    a2(a3, v15 + 8);
    v15 += 200;
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t *a1, unint64_t *a2, void **a3, unint64_t *a4, int64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 25) < *a1)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &>(a1, a2 - 25);
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v13 = (a1 + 25);
        if (a1 + 25 != a2)
        {
          v14 = 0;
          v15 = a1;
          do
          {
            v16 = v13;
            v17 = *v13;
            if (v17 < *v15)
            {
              v32 = v17;
              mlir::Diagnostic::Diagnostic(v33, v15 + 26);
              v18 = *v15;
              v19 = v14;
              while (1)
              {
                v20 = a1 + v19;
                *(a1 + v19 + 200) = v18;
                mlir::Diagnostic::operator=(a1 + v19 + 208, (a1 + v19 + 8));
                if (!v19)
                {
                  break;
                }

                v18 = *(v20 - 25);
                v19 -= 200;
                if (v32 >= v18)
                {
                  v21 = (a1 + v19 + 200);
                  goto LABEL_22;
                }
              }

              v21 = a1;
LABEL_22:
              *v21 = v32;
              mlir::Diagnostic::operator=((v20 + 8), v33);
              if (v38 != &v39)
              {
                free(v38);
              }

              v31 = &v37;
              std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v31);
              v31 = &v36;
              std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v31);
              if (v34 != &v35)
              {
                free(v34);
              }
            }

            v13 = (v16 + 25);
            v14 += 200;
            v15 = v16;
          }

          while (v16 + 25 != a2);
        }
      }
    }

    else
    {
      v9 = a4;
      v10 = a3 >> 1;
      v11 = &a1[25 * (a3 >> 1)];
      if (a3 <= a5)
      {
        v31 = 0;
        v32 = a4;
        v33[0] = &v31;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, &a1[25 * (a3 >> 1)], a3 >> 1, a4);
        v31 = (a3 >> 1);
        v22 = &v9[25 * v10];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(&a1[25 * (a3 >> 1)], a2, a3 - v10, v22);
        v31 = a3;
        v23 = &v9[25 * a3];
        v24 = a1 + 1;
        v25 = v22;
        while (v25 != v23)
        {
          if (*v25 >= *v9)
          {
            *(v24 - 1) = *v9;
            v26 = mlir::Diagnostic::operator=(v24, v9 + 1);
            v9 += 25;
          }

          else
          {
            *(v24 - 1) = *v25;
            v26 = mlir::Diagnostic::operator=(v24, v25 + 1);
            v25 += 25;
          }

          v24 = (v26 + 200);
          if (v9 == v22)
          {
            if (v25 != v23)
            {
              v27 = v25;
              do
              {
                v28 = *v27;
                v27 += 25;
                *(v24 - 1) = v28;
                v24 = (mlir::Diagnostic::operator=(v24, v25 + 1) + 200);
                v25 = v27;
              }

              while (v27 != v23);
            }

            goto LABEL_41;
          }
        }

        if (v9 != v22)
        {
          v29 = v9;
          do
          {
            v30 = *v29;
            v29 += 25;
            *(v24 - 1) = v30;
            v24 = (mlir::Diagnostic::operator=(v24, v9 + 1) + 200);
            v9 = v29;
          }

          while (v29 != v22);
        }

LABEL_41:
        std::unique_ptr<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,std::__destruct_n &>::~unique_ptr[abi:nn200100](&v32);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, &a1[25 * (a3 >> 1)], a3 >> 1, a4, a5);
        v12 = a3 - v10;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v11, a2, v12, v9, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(a1, v11, a2, v10, v12, v9, a5);
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &>(uint64_t *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  mlir::Diagnostic::Diagnostic(v6, a1 + 1);
  *a1 = *a2;
  mlir::Diagnostic::operator=((a1 + 1), a2 + 1);
  *a2 = v5;
  mlir::Diagnostic::operator=((a2 + 1), v6);
  if (v11 != &v12)
  {
    free(v11);
  }

  v4 = &v10;
  std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = &v9;
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v4);
  if (v7 != &v8)
  {
    free(v7);
  }
}

unint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(unint64_t *result, unint64_t *a2, unint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    return result;
  }

  v7 = result;
  if (a3 == 2)
  {
    v31 = &v32;
    v32 = 0;
    v8 = *(a2 - 25);
    if (v8 >= *result)
    {
      *a4 = *result;
      mlir::Diagnostic::Diagnostic((a4 + 1), result + 1);
      v9 = (a2 - 24);
      v7 = a2 - 25;
    }

    else
    {
      *a4 = v8;
      mlir::Diagnostic::Diagnostic((a4 + 1), a2 - 24);
      v9 = (v7 + 1);
    }

    v18 = *v7;
    ++v32;
    a4[25] = v18;
    mlir::Diagnostic::Diagnostic((a4 + 26), v9);
LABEL_25:
    v30 = 0;
    return std::unique_ptr<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,std::__destruct_n &>::~unique_ptr[abi:nn200100](&v30);
  }

  if (a3 != 1)
  {
    if (a3 > 8)
    {
      v19 = 25 * (a3 >> 1);
      v20 = &result[v19];
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, &result[v19], a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(&v7[v19], a2, a3 - (a3 >> 1), &a4[v19], a3 - (a3 >> 1));
      v30 = a4;
      v31 = &v32;
      v32 = 0;
      v21 = a4 + 1;
      v22 = &v7[v19];
      while (v22 != a2)
      {
        if (*v22 >= *v7)
        {
          *(v21 - 1) = *v7;
          v23 = mlir::Diagnostic::Diagnostic(v21, v7 + 1);
          v7 += 25;
        }

        else
        {
          *(v21 - 1) = *v22;
          v23 = mlir::Diagnostic::Diagnostic(v21, v22 + 1);
          v22 += 25;
        }

        ++v32;
        v21 = (v23 + 200);
        if (v7 == v20)
        {
          if (v22 != a2)
          {
            v24 = v22;
            do
            {
              v25 = *v24;
              v24 += 25;
              *(v21 - 1) = v25;
              v26 = mlir::Diagnostic::Diagnostic(v21, v22 + 1);
              ++v32;
              v21 = (v26 + 200);
              v22 = v24;
            }

            while (v24 != a2);
          }

          goto LABEL_25;
        }
      }

      if (v7 != v20)
      {
        v27 = v7;
        do
        {
          v28 = *v27;
          v27 += 25;
          *(v21 - 1) = v28;
          v29 = mlir::Diagnostic::Diagnostic(v21, v7 + 1);
          ++v32;
          v21 = (v29 + 200);
          v7 = v27;
        }

        while (v27 != v20);
      }
    }

    else
    {
      if (result == a2)
      {
        return result;
      }

      v30 = a4;
      v31 = &v32;
      v32 = 0;
      v10 = result + 25;
      *a4 = *result;
      mlir::Diagnostic::Diagnostic((a4 + 1), result + 1);
      ++v32;
      if (v10 != a2)
      {
        v11 = 0;
        v12 = a4;
        do
        {
          v13 = v10;
          v14 = (v12 + 26);
          if (*v10 >= *v12)
          {
            v12[25] = *v10;
            mlir::Diagnostic::Diagnostic(v14, v7 + 26);
            ++v32;
          }

          else
          {
            v12[25] = *v12;
            mlir::Diagnostic::Diagnostic(v14, v12 + 1);
            ++v32;
            v15 = a4;
            if (v12 != a4)
            {
              v16 = v11;
              while (1)
              {
                v15 = (a4 + v16);
                v17 = *(a4 + v16 - 200);
                if (*v13 >= v17)
                {
                  break;
                }

                *v15 = v17;
                mlir::Diagnostic::operator=((v15 + 1), v15 - 24);
                v16 -= 200;
                if (!v16)
                {
                  v15 = a4;
                  break;
                }
              }
            }

            *v15 = *v13;
            mlir::Diagnostic::operator=((v15 + 1), v7 + 26);
          }

          v10 = v13 + 25;
          v11 += 200;
          v12 += 25;
          v7 = v13;
        }

        while (v13 + 25 != a2);
      }
    }

    goto LABEL_25;
  }

  *a4 = *result;

  return mlir::Diagnostic::Diagnostic((a4 + 1), result + 1);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    while (a4 > a7 && v7 > a7)
    {
      if (!a4)
      {
        return;
      }

      v11 = 0;
      v12 = -a4;
      while (*a2 >= *&a1[v11])
      {
        v11 += 200;
        v46 = __CFADD__(v12++, 1);
        if (v46)
        {
          return;
        }
      }

      v13 = &a1[v11];
      v63 = a3;
      if (-v12 >= v7)
      {
        if (v12 == -1)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &>(&a1[v11], a2);
          return;
        }

        v22 = -v12 / 2;
        if (a3 == a2)
        {
          v15 = a3;
        }

        else
        {
          v23 = 0x8F5C28F5C28F5C29 * (a3 - a2);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[25 * (v23 >> 1)];
            v27 = *v25;
            v26 = (v25 + 25);
            v23 += ~(v23 >> 1);
            if (v27 < *&a1[200 * v22 + v11])
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0x8F5C28F5C28F5C29 * (v15 - a2);
        v16 = &a1[200 * v22 + v11];
      }

      else
      {
        v14 = v7 / 2;
        v15 = &a2[25 * (v7 / 2)];
        v16 = a2;
        if (a2 - a1 != v11)
        {
          v17 = 0x8F5C28F5C28F5C29 * ((a2 - a1 - v11) >> 3);
          v16 = &a1[v11];
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[25 * (v17 >> 1)];
            v21 = *v19;
            v20 = v19 + 25;
            v17 += ~(v17 >> 1);
            if (*v15 < v21)
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = 0x8F5C28F5C28F5C29 * ((v16 - a1 - v11) >> 3);
      }

      v28 = v15;
      if (v16 != a2)
      {
        v28 = v16;
        if (v15 != a2)
        {
          v59 = v14;
          v60 = v22;
          v61 = v13;
          v62 = a7;
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &>(v16, a2);
          v28 = v16 + 25;
          for (i = a2 + 25; i != v15; i += 25)
          {
            if (v28 == a2)
            {
              a2 = i;
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &>(v28, i);
            v28 += 25;
          }

          if (v28 != a2)
          {
            v30 = v28;
            v31 = a2;
            do
            {
              while (1)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *> &>(v30, a2);
                v30 += 25;
                a2 += 25;
                if (a2 == v15)
                {
                  break;
                }

                if (v30 == v31)
                {
                  v31 = a2;
                }
              }

              a2 = v31;
            }

            while (v30 != v31);
          }

          v13 = v61;
          a7 = v62;
          v14 = v59;
          v22 = v60;
        }
      }

      a4 = -(v22 + v12);
      v32 = v7 - v14;
      if ((v22 + v14) >= (v7 - (v22 + v14) - v12))
      {
        v35 = v13;
        v36 = v22;
        v37 = -(v22 + v12);
        v38 = v14;
        v33 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v28, v15, v63, v37, v32, a6, a7);
        v34 = v35;
        v15 = v16;
        v32 = v38;
        a4 = v36;
        a3 = v28;
      }

      else
      {
        v33 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v13, v16, v28, v22, v14, a6, a7);
        v34 = v28;
        a3 = v63;
      }

      a2 = v15;
      a1 = v34;
      v7 = v32;
      a7 = v33;
      if (!v32)
      {
        return;
      }
    }

    v39 = a6;
    v65[0] = a6;
    v65[1] = &v66;
    v66 = 0;
    if (a4 <= v7)
    {
      if (a2 != a1)
      {
        v49 = a3;
        v50 = 0;
        do
        {
          a6[v50] = *&a1[v50 * 8];
          mlir::Diagnostic::Diagnostic(&a6[v50 + 1], &a1[v50 * 8 + 8]);
          ++v66;
          v50 += 25;
        }

        while (&a1[v50 * 8] != a2);
        v51 = (a1 + 8);
        v52 = &a6[v50];
        v53 = v52 - 25;
        while (a2 != v49)
        {
          if (*a2 >= *v39)
          {
            *(v51 - 1) = *v39;
            v54 = mlir::Diagnostic::operator=(v51, v39 + 1);
            v39 += 25;
          }

          else
          {
            *(v51 - 1) = *a2;
            v54 = mlir::Diagnostic::operator=(v51, a2 + 1);
            a2 += 25;
          }

          v51 = (v54 + 200);
          if (v52 == v39)
          {
            goto LABEL_85;
          }
        }

        v57 = v39 + 1;
        do
        {
          v58 = v57 - 1;
          *(v51 - 1) = *(v57 - 1);
          v51 = (mlir::Diagnostic::operator=(v51, v57) + 200);
          v57 += 25;
        }

        while (v53 != v58);
      }
    }

    else if (a2 != a3)
    {
      v40 = a3;
      v41 = 0;
      do
      {
        a6[v41] = a2[v41];
        mlir::Diagnostic::Diagnostic(&a6[v41 + 1], &a2[v41 + 1]);
        ++v66;
        v41 += 25;
      }

      while (&a2[v41] != v40);
      v42 = v40 - 25;
      v43 = &a6[v41];
      while (a2 != a1)
      {
        v44 = *(v43 - 25);
        v45 = *(a2 - 25);
        v46 = v44 >= v45;
        if (v44 <= v45)
        {
          v44 = *(a2 - 25);
        }

        if (v46)
        {
          v47 = v43;
        }

        else
        {
          v47 = a2;
        }

        if (v46)
        {
          v43 -= 25;
        }

        else
        {
          a2 -= 25;
        }

        *v42 = v44;
        v48 = v42 - 25;
        mlir::Diagnostic::operator=((v42 + 1), v47 - 24);
        v42 = v48;
        if (v43 == a6)
        {
          goto LABEL_85;
        }
      }

      if (v43 != a6)
      {
        v55 = v42;
        do
        {
          v56 = *(v43 - 25);
          v43 -= 25;
          *v55 = v56;
          v55 -= 25;
          mlir::Diagnostic::operator=((v42 + 1), v43 + 1);
          v42 = v55;
        }

        while (v43 != a6);
      }
    }

LABEL_85:
    std::unique_ptr<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,std::__destruct_n &>::~unique_ptr[abi:nn200100](v65);
  }
}

uint64_t mlir::Diagnostic::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 16, (a2 + 2));
  v6 = (a1 + 128);
  v5 = *(a1 + 128);
  if (v5)
  {
    std::vector<std::unique_ptr<char []>>::__base_destruct_at_end[abi:nn200100](a1 + 128, v5);
    operator delete(*v6);
    *v6 = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  v8 = (a1 + 152);
  v7 = *(a1 + 152);
  if (v7)
  {
    std::vector<std::unique_ptr<mlir::Diagnostic>>::__base_destruct_at_end[abi:nn200100](a1 + 152, v7);
    operator delete(*v8);
    *v8 = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  if (a1 != a2)
  {
    if (*(a2 + 46))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::assignRemote(a1 + 176, (a2 + 22));
    }

    else
    {
      *(a1 + 184) = 0;
    }
  }

  return a1;
}

uint64_t *std::unique_ptr<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,std::__destruct_n &>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 200);
      do
      {
        v6 = *(v5 - 2);
        if (v5 != v6)
        {
          free(v6);
        }

        v9 = (v5 - 5);
        std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v9);
        v9 = (v5 - 8);
        std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v9);
        v7 = *(v5 - 22);
        if (v5 - 20 != v7)
        {
          free(v7);
        }

        ++v4;
        v5 += 25;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::print(llvm::raw_ostream &)::{lambda(mlir::Diagnostic const&)#1}>(llvm::raw_ostream **a1, mlir::DiagnosticArgument **a2)
{
  llvm::raw_ostream::write(*a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 4uLL);
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    v4 = *a1;
    v14 = *a2;
    mlir::Attribute::print(&v14, v4, 0);
    v5 = *(v4 + 4);
    if (*(v4 + 3) - v5 > 1uLL)
    {
      *v5 = 8250;
      *(v4 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v4, ": ", 2uLL);
    }
  }

  v6 = *(a2 + 2);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = "error: ";
      v8 = 7;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_15;
      }

      v7 = "remark: ";
      v8 = 8;
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_15;
    }

    v7 = "warning: ";
    v8 = 9;
  }

  else
  {
    v7 = "note: ";
    v8 = 6;
  }

  llvm::raw_ostream::operator<<(*a1, v7, v8);
LABEL_15:
  v9 = *a1;
  v10 = *(a2 + 6);
  if (v10)
  {
    v11 = a2[2];
    v12 = 24 * v10;
    do
    {
      mlir::DiagnosticArgument::print(v11, v9);
      v11 = (v11 + 24);
      v12 -= 24;
    }

    while (v12);
  }

  v13 = *(v9 + 4);
  if (v13 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 10);
  }

  else
  {
    *(v9 + 4) = v13 + 1;
    *v13 = 10;
  }
}

char ***llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[5 * v3 - 4];
    v5 = -40 * v3;
    do
    {
      v4 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(v4) - 5);
      v5 += 40;
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

uint64_t llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::try_emplace<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>(uint64_t a1, void *a2, __int128 *a3)
{
  v8 = *a2;
  v9 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::try_emplace<unsigned int>(a1, &v8, &v9, &v10);
  if (v11 != 1)
  {
    return *(a1 + 40) + 40 * *(v10 + 8);
  }

  *(v10 + 8) = *(a1 + 48);
  v7 = a3;
  v8 = a2;
  llvm::SmallVectorImpl<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>(a1 + 40, &std::piecewise_construct, &v8, &v7);
  return *(a1 + 40) + 40 * *(a1 + 48) - 40;
}

char *llvm::SmallVectorImpl<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>(uint64_t a1, uint64_t a2, void **a3, __int128 **a4)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>(a1, a2, a3, a4);
  }

  else
  {
    v6 = (*a1 + 40 * v5);
    v7 = *a4;
    *v6 = **a3;
    llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::UniqueFunctionBase((v6 + 1), v7);
    v8 = *(a1 + 8) + 1;
    *(a1 + 8) = v8;
    return (*a1 + 40 * v8 - 40);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::try_emplace<unsigned int>@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(a1, *a2, &v20);
  v10 = v20;
  if (result)
  {
    v11 = a1 + 2;
    if (*a1)
    {
      v12 = 2;
    }

    else
    {
      v11 = *(a1 + 1);
      v12 = a1[4];
    }

    v16 = 0;
    v17 = &v11[4 * v12];
    goto LABEL_17;
  }

  v21 = v20;
  v13 = *a1;
  v14 = *a1 >> 1;
  if (*a1)
  {
    v15 = 2;
  }

  else
  {
    v15 = a1[4];
  }

  if (4 * v14 + 4 >= 3 * v15)
  {
    v15 *= 2;
    goto LABEL_19;
  }

  if (v15 + ~v14 - a1[1] <= v15 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::grow(a1, v15, v9);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(a1, *a2, &v21);
    v13 = *a1;
    v10 = v21;
  }

  *a1 = v13 + 2;
  if (*v10 != -1)
  {
    --a1[1];
  }

  *v10 = *a2;
  *(v10 + 8) = *a3;
  v18 = a1 + 2;
  if (*a1)
  {
    v19 = 2;
  }

  else
  {
    v18 = *(a1 + 1);
    v19 = a1[4];
  }

  v17 = &v18[4 * v19];
  v16 = 1;
LABEL_17:
  *a4 = v10;
  *(a4 + 8) = v17;
  *(a4 + 16) = v16;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v7 = (v3 + 16 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 16 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

int *llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::grow(unsigned int *a1, unsigned int a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 >= 3)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      a2 = v6 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 2)
    {
      v14 = a2;
      *(a1 + 1) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 2) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::moveFromOldBuckets(a1, v7, v7 + 16 * v8);

    JUMPOUT(0x25F891030);
  }

  v9 = 0;
  v10 = v15;
  do
  {
    v11 = *&a1[v9 + 2];
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *v10 = v11;
      *(v10 + 2) = a1[v9 + 4];
      v10 += 16;
    }

    v9 += 4;
  }

  while (v9 != 8);
  if (a2 > 2)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 1) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 2) = v12;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::moveFromOldBuckets(a1, v15, v10);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::moveFromOldBuckets(int *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 10;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -1;
    }

    if (v14.i8[4])
    {
      *v13 = -1;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      *(v16 + 2) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

char *llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>(uint64_t a1, uint64_t a2, void **a3, __int128 **a4)
{
  v14 = 0;
  v7 = a1 + 16;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v14);
  v9 = &v8[40 * *(a1 + 8)];
  v10 = *a4;
  *v9 = **a3;
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::UniqueFunctionBase((v9 + 8), v10);
  llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::moveElementsForGrow(a1, v8);
  v11 = v14;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  *(a1 + 12) = v11;
  return &v8[40 * v12 - 40];
}

void *llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::moveElementsForGrow(void *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = result;
    v4 = *result;
    result = (a2 + 8);
    v5 = 40 * v2;
    v6 = (v4 + 8);
    do
    {
      *(result - 1) = *(v6 - 1);
      result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::UniqueFunctionBase(result, v6) + 40);
      v6 = (v6 + 40);
      v5 -= 40;
    }

    while (v5);
    v7 = *(v3 + 2);
    if (v7)
    {
      result = (*v3 + 40 * v7 - 32);
      v8 = -40 * v7;
      do
      {
        result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(result) - 5;
        v8 += 40;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::find(uint64_t a1, uint64_t *a2)
{
  v3 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::find(a1, a2);
  if (*a1)
  {
    v4 = a1 + 40;
  }

  else
  {
    v4 = *(a1 + 8) + 16 * *(a1 + 16);
  }

  if (v4 == v3)
  {
    v5 = (a1 + 48);
  }

  else
  {
    v5 = (v3 + 8);
  }

  return *(a1 + 40) + 40 * *v5;
}

uint64_t *llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase(int *a1, uint64_t *a2)
{
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::doFind<unsigned long long>(a1, *a2);
  if (v4)
  {
    *v4 = -2;
    v5 = a1[1] + 1;
    *a1 -= 2;
    a1[1] = v5;
  }

  v7 = a1 + 10;
  v6 = *(a1 + 5);
  v8 = a2 + 5;
  v9 = a1[12];
  v10 = (v6 + 40 * v9);
  if (a2 + 5 != v10)
  {
    do
    {
      *(v8 - 5) = *v8;
      v11 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(v8 - 4);
      llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::UniqueFunctionBase(v11, (v8 + 1));
      v8 += 5;
    }

    while (v8 != v10);
    v9 = a1[12];
    v6 = *(a1 + 5);
  }

  v12 = v9 - 1;
  a1[12] = v12;
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase((v6 + 40 * v12 + 8));
  v13 = *(a1 + 5);
  if ((v13 + 40 * a1[12]) != a2)
  {
    v14 = *a1;
    if (*a1 > 1)
    {
      if (v14)
      {
        v18 = a1 + 2;
        v20 = a1 + 10;
      }

      else
      {
        v18 = *(a1 + 1);
        v19 = a1[4];
        v20 = &v18[4 * v19];
        if (!v19)
        {
          v21 = 0;
          v17 = *(a1 + 1);
LABEL_23:
          v7 = &v18[4 * v21];
          goto LABEL_24;
        }
      }

      v17 = v18;
      while (*v17 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v17 += 4;
        if (v17 == v20)
        {
          v17 = v20;
          break;
        }
      }

      if (*a1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v14)
      {
        v15 = a1 + 2;
        v16 = 2;
        v17 = a1 + 10;
      }

      else
      {
        v15 = *(a1 + 1);
        v16 = a1[4];
        v17 = &v15[4 * v16];
      }

      v20 = &v15[4 * v16];
      if (v14)
      {
LABEL_24:
        if (v17 != v7)
        {
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13) >> 3);
          do
          {
            v23 = v17[2];
            if (v22 < v23)
            {
              v17[2] = v23 - 1;
            }

            do
            {
              v17 += 4;
            }

            while (v17 != v20 && *v17 >= 0xFFFFFFFFFFFFFFFELL);
          }

          while (v17 != v7);
        }

        return a2;
      }
    }

    v18 = *(a1 + 1);
    v21 = a1[4];
    goto LABEL_23;
  }

  return a2;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::find(uint64_t a1, uint64_t *a2)
{
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::doFind<unsigned long long>(a1, *a2);
  if (!result)
  {
    if (*a1)
    {
      return a1 + 40;
    }

    else
    {
      return *(a1 + 8) + 16 * *(a1 + 16);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::doFind<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 2;
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 0;
    }

    v2 = *(a1 + 8);
  }

  v4 = v3 - 1;
  v5 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v6 = *(v2 + 16 * v5);
  if (v6 == a2)
  {
    return v2 + 16 * v5;
  }

  v8 = 1;
  while (v6 != -1)
  {
    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v2 + 16 * v5);
    if (v6 == a2)
    {
      return v2 + 16 * v5;
    }
  }

  return 0;
}

void mlir::Dialect::~Dialect(mlir::Dialect *this)
{
  *this = &unk_286E78A40;
  MEMORY[0x25F891030](*(this + 9), 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::destroyAll(this + 12);
  MEMORY[0x25F891030](*(this + 6), 8);
}

{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::Dialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v13[25] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v9 = 257;
  (*(*a2 + 24))(&v12, a2, v4, v8);
  if (v12)
  {
    mlir::Diagnostic::operator<<<10ul>(v13, "dialect '");
    if (v12)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      v11 = 261;
      v10[0] = v5;
      v10[1] = v6;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<37ul>(v13, "' provides no attribute parsing hook");
      }
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return 0;
}

uint64_t mlir::Dialect::parseType(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 41) == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v20 = 261;
    *&v19[0] = v6;
    *(&v19[0] + 1) = v7;
    v8 = mlir::StringAttr::get(v5, v19, a3);
    v9 = (*(*a2 + 656))(a2);
    v17[0] = v8;
    *&v19[0] = v9;
    *(&v19[0] + 1) = v10;
    return mlir::detail::TypeUniquer::get<mlir::OpaqueType,mlir::StringAttr &,llvm::StringRef &>(*(**v8 + 32), v17, v19);
  }

  else
  {
    v12 = (*(*a2 + 16))(a2, a2, a3);
    v16 = 257;
    (*(*a2 + 24))(v19, a2, v12, v15);
    if (*&v19[0])
    {
      mlir::Diagnostic::operator<<<10ul>(v19 + 8, "dialect '");
      if (*&v19[0])
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        v18 = 261;
        v17[0] = v13;
        v17[1] = v14;
        mlir::Diagnostic::operator<<(v19 + 8, v17);
        if (*&v19[0])
        {
          mlir::Diagnostic::operator<<<32ul>(v19 + 8, "' provides no type parsing hook");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return 0;
  }
}

void *mlir::Dialect::addInterface(int32x2_t *a1, uint64_t *a2)
{
  v4 = *(*a2 + 16);
  v7[0] = a1[3];
  v7[1] = v4;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(a1 + 9, v7);
  v6 = *(*a2 + 16);
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::try_emplace<std::unique_ptr<mlir::DialectInterface>>(&a1[6], &v6, a2, v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::try_emplace<std::unique_ptr<mlir::DialectInterface>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v13);
  v9 = v13;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::InsertIntoBucketImpl<mlir::TypeID>(a1, a2, v13);
    v9 = result;
    *result = *a2;
    v11 = *a3;
    *a3 = 0;
    *(result + 8) = v11;
    v10 = 1;
  }

  v12 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v12;
  *(a4 + 16) = v10;
  return result;
}

uint64_t mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(uint64_t a1, mlir::MLIRContext *this, uint64_t *a3)
{
  *a1 = &unk_286E78AC0;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  mlir::MLIRContext::getLoadedDialects(&v28, this);
  v7 = v28;
  v8 = v29;
  if (v28 != v29)
  {
    v27 = v5;
    while (1)
    {
      v9 = *v7;
      v31 = a3;
      v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>((v9 + 48), &v31);
      if (v10 && v10 != *(v9 + 48) + 16 * *(v9 + 64))
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          break;
        }
      }

LABEL_28:
      if (++v7 == v8)
      {
        v7 = v28;
        goto LABEL_32;
      }
    }

    v30 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(*(a1 + 8), *(a1 + 24), v12, &v30))
    {
LABEL_14:
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      if (v18 >= v17)
      {
        v20 = *v6;
        v21 = v18 - *v6;
        v22 = v21 >> 3;
        v23 = (v21 >> 3) + 1;
        if (v23 >> 61)
        {
          std::vector<mlir::DialectInterface const*>::__throw_length_error[abi:nn200100]();
        }

        v24 = v17 - v20;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        *(8 * v22) = v12;
        v19 = 8 * v22 + 8;
        memcpy(0, v20, v21);
        *(a1 + 32) = 0;
        *(a1 + 40) = v19;
        *(a1 + 48) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v18 = v12;
        v19 = (v18 + 1);
      }

      *(a1 + 40) = v19;
      goto LABEL_28;
    }

    v14 = v30;
    v15 = *(a1 + 24);
    v31 = v30;
    v16 = *(a1 + 16);
    if (4 * v16 + 4 >= 3 * v15)
    {
      v15 *= 2;
    }

    else if (v15 + ~v16 - *(a1 + 20) > v15 >> 3)
    {
LABEL_11:
      *(a1 + 16) = v16 + 1;
      if (*v14 != -4096)
      {
        --*(a1 + 20);
      }

      *v14 = v12;
      goto LABEL_14;
    }

    llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::grow(v27, v15, v13);
    llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(*(a1 + 8), *(a1 + 24), v12, &v31);
    v16 = *(a1 + 16);
    v14 = v31;
    goto LABEL_11;
  }

LABEL_32:
  if (v7)
  {
    v29 = v7;
    operator delete(v7);
  }

  return a1;
}

void mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(mlir::detail::DialectInterfaceCollectionBase *this)
{
  *this = &unk_286E78AC0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  MEMORY[0x25F891030](*(this + 1), 8);
}

{
  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(mlir::detail::DialectInterfaceCollectionBase *this, mlir::Operation *a2)
{
  v3 = *(a2 + 6);
  if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v3 + 8) + 32);
  }

  else
  {
    v4 = (v3 + 24);
  }

  v7 = *v4;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::doFind<mlir::Dialect *>(this + 1, &v7);
  result = 0;
  if (v5)
  {
    if (v5 != *(this + 1) + 8 * *(this + 6))
    {
      return *v5;
    }
  }

  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::BuiltinDialect>(uint64_t **a1)
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286E78B10;
  v2[3] = v2;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, "builtin", 7uLL, v2);
  return std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v2);
}

void (*mlir::DialectRegistry::getDialectAllocator(uint64_t a1, const void *a2, size_t a3))(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v4 + 55);
    v9 = (v4 + 32);
    if (v8 < 0)
    {
      v9 = *(v4 + 32);
    }

    if (v8 < 0)
    {
      v8 = *(v4 + 40);
    }

    v15 = v9;
    v16 = v8;
    v10 = llvm::StringRef::compare(&v15, a2, a3);
    if (v10 >= 0)
    {
      v7 = v4;
    }

    v4 = *(v4 + ((v10 >> 28) & 8));
  }

  while (v4);
  if (v3 == v7 || ((v11 = *(v7 + 55), v11 >= 0) ? (v12 = (v7 + 32)) : (v12 = *(v7 + 32)), v11 >= 0 ? (v13 = *(v7 + 55)) : (v13 = *(v7 + 40)), v15 = a2, v16 = a3, (llvm::StringRef::compare(&v15, v12, v13) & 0x80000000) != 0))
  {
LABEL_18:
    v7 = v3;
  }

  if (v3 == v7)
  {
    return 0;
  }

  else
  {
    return llvm::function_ref<mlir::Dialect * ()(mlir::MLIRContext *)>::callback_fn<std::function<mlir::Dialect * ()(mlir::MLIRContext *)> const>;
  }
}

uint64_t mlir::DialectRegistry::insert(uint64_t **a1, size_t a2, void *__src, size_t __len, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v33 = a2;
  v10 = *(a5 + 24);
  if (!v10)
  {
    v35 = 0;
    *__p = __dst;
    v37 = v32;
    v38 = a2;
LABEL_15:
    v40 = 0;
    goto LABEL_16;
  }

  if (v10 == a5)
  {
    v35 = v34;
    (*(*v10 + 24))(v10, v34);
    v12 = v33;
    v11 = v35;
  }

  else
  {
    v11 = (*(*v10 + 16))(v10);
    v35 = v11;
    v12 = a2;
  }

  *__p = __dst;
  v37 = v32;
  v38 = v12;
  if (!v11)
  {
    goto LABEL_15;
  }

  if (v11 == v34)
  {
    v40 = v39;
    (*(*v11 + 24))(v11, v39);
  }

  else
  {
    v40 = v11;
    v35 = 0;
  }

LABEL_16:
  v13 = a2;
  v30 = __src;
  v14 = a1[1];
  if (!v14)
  {
LABEL_41:
    operator new();
  }

  if (SHIBYTE(v37) >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = __p[1];
  }

  if (SHIBYTE(v37) >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  while (1)
  {
    while (1)
    {
      v17 = v14;
      v20 = v14[4];
      v18 = v14 + 4;
      v19 = v20;
      v21 = *(v18 + 23);
      if (v21 >= 0)
      {
        v22 = *(v18 + 23);
      }

      else
      {
        v22 = v18[1];
      }

      if (v21 >= 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = v19;
      }

      if (v22 >= v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v16, v23, v24);
      v26 = v15 < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        break;
      }

      v14 = *v17;
      if (!*v17)
      {
        goto LABEL_41;
      }
    }

    v27 = memcmp(v23, v16, v24);
    v28 = v22 < v15;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (!v28)
    {
      break;
    }

    v14 = v17[1];
    if (!v14)
    {
      goto LABEL_41;
    }
  }

  std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v39);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v34);
  if (v17[7] != v13)
  {
    v39[0] = 1283;
    __p[0] = "Trying to register different dialects for the same namespace: ";
    v37 = v30;
    v38 = __len;
    llvm::report_fatal_error(__p, 1);
  }

  return result;
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, mlir::Dialect *a2)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v29 = a2;
  v2 = *(a2 + 4);
  *__s2 = *(a2 + 8);
  v3 = *(this + 14);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 6);
    v6 = v5 + 16 * v3;
    while (1)
    {
      v7 = v6 - v5;
      v8 = (v6 - v5) >> 4;
      v30 = v32;
      v31 = 0x600000000;
      if (v8 < 7)
      {
        v9 = 0;
        v10 = v32;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v8, 8);
        v9 = v31;
        v10 = v30;
      }

      v4 += v7 >> 4;
      v11 = &v10[8 * v9];
      do
      {
        *v11++ = *(v5 + 8);
        v5 += 16;
      }

      while (v5 != v6);
      v12 = v30;
      v13 = v9 + (v7 >> 4);
      LODWORD(v31) = v13;
      if (v13)
      {
        break;
      }

LABEL_31:
      v25 = *(this + 6);
      v26 = *(this + 14);
      if (v12 != v32)
      {
        free(v12);
      }

      v5 = v25 + 16 * v4;
      v6 = v25 + 16 * v26;
      if (v4 == v26)
      {
        return;
      }
    }

    v14 = v30 + 8 * v13;
    while (1)
    {
      v15 = *v12;
      v16 = *(*v12 + 8);
      v17 = *(*v12 + 16);
      if (v17 == 1)
      {
        v18 = *(v16 + 8);
        if (v18 != __s2[1] || v18 && memcmp(*v16, __s2[0], v18))
        {
          goto LABEL_29;
        }
      }

      else if (v17)
      {
        v19 = std::__find[abi:nn200100]<llvm::StringRef const*,llvm::StringRef const*,llvm::StringRef,std::__identity>(*(*v12 + 8), v16 + 16 * v17, __s2);
        if (v19 != v16 + 16 * v17)
        {
          v21 = v19;
          v33 = v35;
          v34 = 0x600000000;
          if (v17 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v17, 8);
          }

          v22 = 16 * v17;
          do
          {
            if (v16 == v21)
            {
              v24 = v29;
            }

            else
            {
              LoadedDialect = mlir::MLIRContext::getLoadedDialect(v2, *v16, *(v16 + 8), v20);
              if (!LoadedDialect)
              {
                goto LABEL_27;
              }

              v24 = LoadedDialect;
            }

            llvm::SmallVectorTemplateBase<mlir::Dialect *,true>::push_back(&v33, v24);
            v16 += 16;
            v22 -= 16;
          }

          while (v22);
          (*(*v15 + 16))(v15, v2, v33, v34);
LABEL_27:
          if (v33 != v35)
          {
            free(v33);
          }
        }

        goto LABEL_29;
      }

      (*(*v15 + 16))(v15, v2, &v29, 1);
LABEL_29:
      v12 += 8;
      if (v12 == v14)
      {
        v12 = v30;
        goto LABEL_31;
      }
    }
  }
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v4 = *(this + 14);
  if (v4)
  {
    v7 = 0;
    v8 = *(this + 6);
    v9 = v8 + 16 * v4;
    do
    {
      v10 = v9 - v8;
      v11 = (v9 - v8) >> 4;
      v25 = v27;
      v26 = 0x600000000;
      if (v11 < 7)
      {
        v12 = 0;
        v13 = v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v11, 8);
        v12 = v26;
        v13 = v25;
      }

      v7 += v10 >> 4;
      v14 = &v13[8 * v12];
      do
      {
        *v14++ = *(v8 + 8);
        v8 += 16;
      }

      while (v8 != v9);
      v15 = v25;
      v16 = v12 + (v10 >> 4);
      LODWORD(v26) = v16;
      if (v16)
      {
        v17 = v25 + 8 * v16;
        do
        {
          v18 = *v15;
          v19 = *(*v15 + 16);
          if (v19)
          {
            v20 = v18[1];
            __p = v30;
            v29 = 0x600000000;
            if (v19 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v30, v19, 8);
            }

            v21 = &v20[2 * v19];
            while (1)
            {
              LoadedDialect = mlir::MLIRContext::getLoadedDialect(a2, *v20, v20[1], a4);
              if (!LoadedDialect)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<mlir::Dialect *,true>::push_back(&__p, LoadedDialect);
              v20 += 2;
              if (v20 == v21)
              {
                (*(*v18 + 16))(v18, a2, __p, v29);
                break;
              }
            }

            if (__p != v30)
            {
              free(__p);
            }
          }

          else
          {
            mlir::MLIRContext::getLoadedDialects(&__p, a2);
            (*(*v18 + 16))(v18, a2);
            if (__p)
            {
              v29 = __p;
              operator delete(__p);
            }
          }

          v15 += 8;
        }

        while (v15 != v17);
        v15 = v25;
      }

      v23 = *(this + 6);
      v24 = *(this + 14);
      if (v15 != v27)
      {
        free(v15);
      }

      v8 = v23 + 16 * v7;
      v9 = v23 + 16 * v24;
    }

    while (v7 != v24);
  }
}

BOOL mlir::DialectRegistry::isSubsetOf(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = 16 * v4;
    while (1)
    {
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((a2 + 24), v5);
      result = 0;
      if (!v7 || v7 == *(a2 + 24) + 16 * *(a2 + 40))
      {
        break;
      }

      v5 += 2;
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = *a1;
    v9 = (a1 + 8);
    v10 = v11;
    if (v11 == v9)
    {
      return 1;
    }

    else
    {
      do
      {
        v12 = std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__count_unique<std::string>(a2, v10 + 4);
        result = v12 != 0;
        if (!v12)
        {
          break;
        }

        v13 = v10[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v10[2];
            v15 = *v14 == v10;
            v10 = v14;
          }

          while (!v15);
        }

        v10 = v14;
      }

      while (v14 != v9);
    }
  }

  return result;
}

BOOL llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(int32x2_t *a1, void *a2)
{
  v3 = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::doFind<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2);
  if (v3)
  {
    *v3 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  return v3 != 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::doFind<std::pair<mlir::TypeID,mlir::TypeID>>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a2[1];
  v5 = 0xBF58476D1CE4E5B9 * ((v4 >> 4) ^ (v4 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v6 = v2 - 1;
  v7 = v6 & ((v5 >> 31) ^ v5);
  result = (*a1 + 16 * v7);
  v10 = *result;
  v9 = result[1];
  if (*a2 != *result || v4 != v9)
  {
    v12 = 1;
    while (v10 != -4096 || v9 != -4096)
    {
      v13 = v7 + v12++;
      v7 = v13 & v6;
      result = (v3 + 16 * v7);
      v10 = *result;
      v9 = result[1];
      if (*a2 == *result && v4 == v9)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::doFind<mlir::Dialect *>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = -348639895 * ((v5 >> 47) ^ v5);
  v7 = v2 - 1;
  for (i = 1; ; ++i)
  {
    v9 = v6 & v7;
    v10 = *(v3 + 8 * v9);
    if (v10 != -8192)
    {
      if (v10 == -4096)
      {
        return 0;
      }

      if (*(v10 + 8) == *a2)
      {
        break;
      }
    }

    v6 = v9 + i;
  }

  return v3 + 8 * v9;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::InsertIntoBucketImpl<mlir::TypeID>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::LookupBucketFor<mlir::TypeID>(a1, v20, &v32);
          *v32 = *v20;
          v21 = v32;
          v22 = v20[1];
          v20[1] = 0;
          v21[1] = v22;
          ++*(a1 + 8);
          v23 = v20[1];
          v20[1] = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v24 + 0xFFFFFFFFFFFFFFFLL;
    v27 = v26 & 0xFFFFFFFFFFFFFFFLL;
    v28 = (v26 & 0xFFFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
    v29 = vdupq_n_s64(v27);
    v30 = result + 2;
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
      if (v31.i8[0])
      {
        *(v30 - 2) = -4096;
      }

      if (v31.i8[4])
      {
        *v30 = -4096;
      }

      v25 += 2;
      v30 += 4;
    }

    while (v28 != v25);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = HIDWORD(*(a3 + 8));
    v5 = 0x9DDFEA08EB382D69 * ((8 * *(a3 + 8) - 0xAE502812AA7333) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)))) & (a2 - 1);
    v8 = (a1 + 8 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 8 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((8 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0x1FFFFFFFFFFFFFFFLL;
      v14 = v13 & 0x1FFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 1;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 1) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 8 * v4;
      v20 = v5;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(*a1, *(a1 + 16), v21, &v30);
          *v30 = *v20;
          ++*(a1 + 8);
        }

        ++v20;
        v19 -= 8;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x1FFFFFFFFFFFFFFFLL;
    v25 = v24 & 0x1FFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x1FFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 1;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 1) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 2;
    }

    while (v26 != v23);
  }

  return result;
}

void llvm::function_ref<mlir::Dialect * ()(mlir::MLIRContext *)>::callback_fn<std::function<mlir::Dialect * ()(mlir::MLIRContext *)> const>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v5 = a2;
  if (v2)
  {
    (*(*v2 + 48))(v2, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::SmallVectorTemplateBase<mlir::Dialect *,true>::push_back(v3, v4);
  }
}

void llvm::SmallVectorTemplateBase<mlir::Dialect *,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t mlir::DialectResourceBlobManager::lookup(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  pthread_rwlock_rdlock(*a1);
  v7 = llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::find(a1 + 16, a2, a3, v6);
  if ((*(a1 + 16) + 8 * *(a1 + 24)) == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 8;
  }

  pthread_rwlock_unlock(*a1);
  return v8;
}

uint64_t llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

uint64_t *mlir::DialectResourceBlobManager::insert(pthread_rwlock_t **a1, unsigned __int8 *a2, unint64_t a3, __int128 *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 2);
  pthread_rwlock_wrlock(*a1);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v11 = llvm::xxh3_64bits(a2, a3, v9, v10);
  v12 = llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>(v8, a2, a3, v11, &v40);
  v14 = v13;
  if (v45 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(&v41);
  }

  if (v14)
  {
    v15 = *v12;
    v16 = (*v12 + 12);
    v17 = **v12;
    LOBYTE(v35) = 0;
    v39 = 0;
    if (*(a4 + 64) == 1)
    {
      v35 = *a4;
      v36 = *(a4 + 2);
      llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v37, (a4 + 24));
      v38 = *(a4 + 56);
      v39 = 1;
    }

    v15[1] = v16;
    v15[2] = v17;
    std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>((v15 + 3), &v35);
    if (v39 == 1)
    {
      mlir::AsmResourceBlob::~AsmResourceBlob(&v35);
    }

    v18 = *v12;
  }

  else
  {
    v32 = v34;
    v33 = xmmword_25D0A05C0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v32, a2, &a2[a3]);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v32, 95);
    for (i = 1; ; ++i)
    {
      *&v35 = i;
      LOWORD(v42) = 267;
      *&v40 = &v35;
      llvm::Twine::toVector(&v40, &v32);
      v20 = v32;
      v21 = v33;
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v24 = llvm::xxh3_64bits(v32, v33, v22, v23);
      v25 = llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>(v8, v20, v21, v24, &v40);
      v27 = v26;
      if (v45 == 1)
      {
        mlir::AsmResourceBlob::~AsmResourceBlob(&v41);
      }

      if (v27)
      {
        break;
      }

      llvm::SmallVectorImpl<char>::resizeImpl<false>(&v32, a3 + 1);
    }

    v28 = *v25;
    v29 = (*v25 + 12);
    v30 = **v25;
    LOBYTE(v35) = 0;
    v39 = 0;
    if (*(a4 + 64) == 1)
    {
      v35 = *a4;
      v36 = *(a4 + 2);
      llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v37, (a4 + 24));
      v38 = *(a4 + 56);
      v39 = 1;
    }

    v28[1] = v29;
    v28[2] = v30;
    std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>((v28 + 3), &v35);
    if (v39 == 1)
    {
      mlir::AsmResourceBlob::~AsmResourceBlob(&v35);
    }

    v18 = *v25;
    if (v32 != v34)
    {
      free(v32);
    }
  }

  pthread_rwlock_unlock(*a1);
  return v18 + 1;
}

uint64_t std::optional<mlir::AsmResourceBlob>::operator=[abi:nn200100]<mlir::AsmResourceBlob,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) == 1)
  {
    mlir::AsmResourceBlob::operator=(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a1 + 24, (a2 + 24));
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  return a1;
}

uint64_t *mlir::AsmResourceBlob::operator=(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 3;
  v5 = a1[6];
  if (v5 >= 8)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1 + 3;
    if ((v5 & 2) == 0)
    {
      v9 = *v4;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v9, v6, v7, v8);
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  if (a1 != a2)
  {
    v10 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(v4);
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v10, (a2 + 24));
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t **llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 97), 8uLL);
  v15 = buffer;
  v16 = buffer + 12;
  if (a3)
  {
    memcpy(buffer + 12, a2, a3);
  }

  *(v16 + a3) = 0;
  *v15 = a3;
  *(v15 + 1) = *a5;
  *(v15 + 24) = 0;
  *(v15 + 88) = 0;
  if (*(a5 + 80) == 1)
  {
    *(v15 + 3) = *(a5 + 16);
    v15[5] = *(a5 + 32);
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase((v15 + 6), (a5 + 40));
    *(v15 + 80) = *(a5 + 72);
    *(v15 + 88) = 1;
  }

  *i = v15;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(mlir::AsmResourceBlob *this, __int128 *a2)
{
  if (*(this + 64) == *(a2 + 64))
  {
    if (*(this + 64))
    {

      mlir::AsmResourceBlob::operator=(this, a2);
    }
  }

  else if (*(this + 64))
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(this);
    *(this + 64) = 0;
  }

  else
  {
    v4 = *a2;
    *(this + 2) = *(a2 + 2);
    *this = v4;
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(this + 24, (a2 + 24));
    *(this + 56) = *(a2 + 56);
    *(this + 64) = 1;
  }
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndex(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::doFind<mlir::Block const*>((a1 + 88), &v5);
  result = 0;
  if (v3)
  {
    if (v3 != *(a1 + 88) + 16 * *(a1 + 104))
    {
      return *(v3 + 8) | 0x100000000;
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a3 != a2)
  {
    v4 = a3;
    if (a3)
    {
      if (!a2)
      {
        return 0;
      }

      if (*(a3 + 8) == a2)
      {
        return 1;
      }

      if (*(a2 + 8) == a3)
      {
        return 0;
      }

      v6 = *(a2 + 16);
      if (v6 >= *(a3 + 16))
      {
        return 0;
      }

      if (*(a1 + 128) == 1)
      {
LABEL_10:
        if (*(v4 + 72) >= *(a2 + 72))
        {
          return *(v4 + 76) <= *(a2 + 76);
        }

        return 0;
      }

      v7 = *(a1 + 132) + 1;
      *(a1 + 132) = v7;
      if (v7 > 0x20)
      {
        llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(a1);
        goto LABEL_10;
      }

      do
      {
        v8 = v4;
        v4 = *(v4 + 8);
      }

      while (v4 && *(v4 + 16) >= v6);
      return v8 == a2;
    }
  }

  return v3;
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  NodeIndex = llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndex(a1, a2);
  if ((NodeIndex & 0x100000000) != 0 && NodeIndex < *(a1 + 32))
  {
    v7 = *(*(a1 + 24) + 8 * NodeIndex);
  }

  else
  {
    v7 = 0;
  }

  v8 = llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndex(a1, a3);
  if ((v8 & 0x100000000) != 0 && v8 < *(a1 + 32))
  {
    v9 = *(*(a1 + 24) + 8 * v8);
  }

  else
  {
    v9 = 0;
  }

  return llvm::DominatorTreeBase<mlir::Block,false>::dominates(a1, v7, v9);
}

void llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(uint64_t a1)
{
  v11[64] = *MEMORY[0x277D85DE8];
  if (*(a1 + 128) == 1)
  {
    *(a1 + 132) = 0;
  }

  else
  {
    v9 = v11;
    v10 = 0x2000000000;
    v2 = *(a1 + 112);
    if (v2)
    {
      llvm::SmallVectorTemplateBase<std::pair<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*>,true>::push_back(&v9, *(a1 + 112), *(v2 + 24));
      *(v2 + 72) = 0;
      v3 = v10;
      if (v10)
      {
        v4 = 1;
        do
        {
          v5 = v9 + 16 * v3;
          v7 = *(v5 - 2);
          v6 = *(v5 - 1);
          if (v6 == (*(v7 + 24) + 8 * *(v7 + 32)))
          {
            *(v7 + 76) = v4;
            LODWORD(v10) = --v3;
          }

          else
          {
            v8 = *v6;
            *(v5 - 1) = v6 + 1;
            llvm::SmallVectorTemplateBase<std::pair<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*>,true>::push_back(&v9, v8, *(v8 + 24));
            *(v8 + 72) = v4;
            v3 = v10;
          }

          ++v4;
        }

        while (v3);
      }

      *(a1 + 132) = 0;
      *(a1 + 128) = 1;
      if (v9 != v11)
      {
        free(v9);
      }
    }
  }
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*>,true>::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *(result + 8);
  if (v6 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v6 + 1, 16);
    LODWORD(v6) = *(result + 8);
  }

  v7 = (*result + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(result + 8);
}

uint64_t findAncestorIteratorInRegion(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (v2 != a1)
  {
    if (v2)
    {
      while (1)
      {
        v3 = *(v2 + 16);
        if (!v3)
        {
          break;
        }

        a2 = *(v3 + 16);
        if (!a2)
        {
          return a2;
        }

        v2 = *(a2 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v2)
        {
          return 0;
        }

        if (v2 == a1)
        {
          return a2;
        }
      }

      return 0;
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2)
  {
    v4 = *(a1 + 16);
    v5 = v3;
    if (v4)
    {
      v6 = 16 * v4;
      v5 = v3;
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_16;
        }
      }
    }

    v7 = &v3[2 * v4];
    if (v5 != v7)
    {
LABEL_8:
      v8 = v5[1] & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        MEMORY[0x25F891030](*(v8 + 88), 8);
        llvm::SmallVector<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,6u>::~SmallVector((v8 + 24));
        if (*v8 != v8 + 16)
        {
          free(*v8);
        }

        MEMORY[0x25F891040](v8, 0x10A0C40913A486CLL);
      }

      while (1)
      {
        v5 += 2;
        if (v5 == v7)
        {
          break;
        }

        if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v5 != v7)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      v3 = *a1;
    }
  }

LABEL_16:
  MEMORY[0x25F891030](v3, 8);
  return a1;
}

unint64_t mlir::detail::DominanceInfoBase<false>::getDominanceInfo(void *a1, void *a2, int a3)
{
  v20 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>,mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 4), a2, &v20);
  v8 = v20;
  if (v6)
  {
    v9 = v20 + 1;
    if (!a3 || *v9 > 7 || *a2 != a2 && *(a2[1] + 8) == a2)
    {
      return *v9;
    }

LABEL_13:
    operator new();
  }

  v21 = v20;
  v10 = *(a1 + 2);
  v11 = *(a1 + 4);
  if (4 * v10 + 4 >= 3 * v11)
  {
    v11 *= 2;
  }

  else if (v11 + ~v10 - *(a1 + 3) > v11 >> 3)
  {
    goto LABEL_9;
  }

  llvm::DenseMap<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>::grow(a1, v11, v7);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>,mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 4), a2, &v21);
  v10 = *(a1 + 2);
  v8 = v21;
LABEL_9:
  *(a1 + 2) = v10 + 1;
  if (*v8 != -4096)
  {
    --*(a1 + 3);
  }

  *v8 = a2;
  v8[1] = 4;
  v9 = v8 + 1;
  if (*a2 == a2 || *(a2[1] + 8) != a2)
  {
    goto LABEL_13;
  }

  v13 = a2[2];
  if (v13)
  {
    if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      *v9 = 0;
    }

    else if (llvm::DefaultDoCastIfPossible<mlir::RegionKindInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionKindInterface,mlir::Operation *,void>>::doCastIfPossible(v13))
    {
      v15 = a2[2];
      v16 = *(v15 + 44);
      if ((v16 & 0x7FFFFF) != 0)
      {
        v17 = ((v15 + 16 * ((v16 >> 23) & 1) + ((v16 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v15 + 40);
      }

      else
      {
        v17 = 0;
      }

      v18 = (*(v14 + 8))(-1431655765 * ((a2 - v17) >> 3));
      v19 = 4;
      if (!v18)
      {
        v19 = 0;
      }

      *v9 = *v9 & 0xFFFFFFFFFFFFFFFBLL | v19;
    }
  }

  return *v9;
}

BOOL mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(void *a1, uint64_t a2)
{
  v3 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3[1];
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == a2)
  {
    return 1;
  }

  v6 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, v3, 1) & 0xFFFFFFFFFFFFFFF8;

  return llvm::DominatorTreeBase<mlir::Block,false>::isReachableFromEntry(v6, a2);
}

uint64_t mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(void *a1, uint64_t a2, mlir::Operation *a3, uint64_t a4, mlir::Operation *a5, char a6)
{
  v7 = a5;
  v8 = a4;
  v12 = *(a2 + 24);
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
  if (a2 == a4 && a3 == a5)
  {
    return (mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, (v12 & 0xFFFFFFFFFFFFFFF8), 0) & 4) == 0;
  }

  if (v13 != (*(a4 + 24) & 0xFFFFFFFFFFFFFFF8))
  {
    if (!v13)
    {
      return 0;
    }

    result = findAncestorIteratorInRegion(v13, a4);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v16;
    v17 = result == a2 && v16 == a3;
    if (v17 && (a6 & 1) != 0)
    {
      return 1;
    }
  }

  if (v8 != a2)
  {
    v15 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, v13, 1) & 0xFFFFFFFFFFFFFFF8;

    return llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(v15, a2, v8);
  }

  if ((mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, v13, 0) & 4) == 0)
  {
    return 1;
  }

  if (v7 == a3 || (a2 + 32) == a3)
  {
    return 0;
  }

  if ((a2 + 32) == v7)
  {
    return 1;
  }

  return mlir::Operation::isBeforeInBlock(a3, v7);
}

uint64_t mlir::DominanceInfo::properlyDominates(void *a1, uint64_t a2, mlir::Operation *a3)
{
  v3 = a3;
  v4 = *(a2 + 8) & 7;
  if (!a2 || v4 != 7)
  {
    if (v4 == 7)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v7 = (v9 + 24 * *(v9 + 16) + 120);
    }

    else
    {
      v7 = (v9 + 16 * v10 + 16);
    }

    v5 = *(v7 + 2);
    v6 = *(v3 + 2);
    v8 = 0;
    return mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(a1, v5, v7, v6, v3, v8);
  }

  v5 = *(a2 + 16);
  v6 = *(a3 + 2);
  if (v5 != v6)
  {
    v7 = *(v5 + 40);
    v3 = *(v6 + 40);
    v8 = 1;
    return mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(a1, v5, v7, v6, v3, v8);
  }

  return 1;
}

char ***llvm::SmallVector<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[v3 - 1];
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<llvm::DomTreeNodeBase<mlir::Block>>::operator()[abi:nn200100](v5, v6);
      }

      --v5;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::RegionKindInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionKindInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t llvm::SmallVectorImpl<mlir::Block *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::Block *>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::Block *>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::LookupBucketFor<mlir::Block const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::LookupBucketFor<mlir::Block const*>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          *(v22 + 2) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::CalculateFromScratch(uint64_t a1)
{
  v149[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 120);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = -8 * v4;
    v6 = (*(a1 + 24) + 8 * v4 - 8);
    do
    {
      v7 = *v6;
      *v6 = 0;
      if (v7)
      {
        std::default_delete<llvm::DomTreeNodeBase<mlir::Block>>::operator()[abi:nn200100](v6, v7);
      }

      --v6;
      v5 += 8;
    }

    while (v5);
  }

  *(a1 + 32) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *(a1 + 104);
    if (v9 > 4 * v8 && v9 >= 0x41)
    {
      v10 = 1 << (33 - __clz(v8 - 1));
      if (v10 <= 64)
      {
        v11 = 64;
      }

      else
      {
        v11 = v10;
      }

LABEL_15:
      if (v11 == v9)
      {
        v12 = 0;
        *(a1 + 96) = 0;
        v13 = v9 + 0xFFFFFFFFFFFFFFFLL;
        v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
        v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
        v16 = vdupq_n_s64(v14);
        v17 = (*(a1 + 88) + 16);
        do
        {
          v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
          if (v18.i8[0])
          {
            *(v17 - 2) = -4096;
          }

          if (v18.i8[4])
          {
            *v17 = -4096;
          }

          v12 += 2;
          v17 += 4;
        }

        while (v15 != v12);
      }

      else
      {
        MEMORY[0x25F891030](*(a1 + 88), 8);
        if (v11)
        {
          v120 = (4 * v11 / 3u + 1) | ((4 * v11 / 3u + 1) >> 1);
          v121 = v120 | (v120 >> 2) | ((v120 | (v120 >> 2)) >> 4);
          LODWORD(v121) = (((v121 | (v121 >> 8)) >> 16) | v121 | (v121 >> 8)) + 1;
          *(a1 + 104) = v121;
          buffer = llvm::allocate_buffer((16 * v121), 8uLL);
          *(a1 + 88) = buffer;
          *(a1 + 96) = 0;
          v123 = *(a1 + 104);
          if (v123)
          {
            v124 = 0;
            v125 = v123 + 0xFFFFFFFFFFFFFFFLL;
            v126 = v125 & 0xFFFFFFFFFFFFFFFLL;
            v127 = (v125 & 0xFFFFFFFFFFFFFFFLL) - (v125 & 1) + 2;
            v128 = vdupq_n_s64(v126);
            v129 = buffer + 2;
            do
            {
              v130 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(vdupq_n_s64(v124), xmmword_25D0A0500)));
              if (v130.i8[0])
              {
                *(v129 - 2) = -4096;
              }

              if (v130.i8[4])
              {
                *v129 = -4096;
              }

              v124 += 2;
              v129 += 4;
            }

            while (v127 != v124);
          }
        }

        else
        {
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!*(a1 + 100))
    {
      goto LABEL_31;
    }

    v9 = *(a1 + 104);
    if (v9 > 0x40)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  if (v9)
  {
    v19 = 0;
    v20 = v9 + 0xFFFFFFFFFFFFFFFLL;
    v21 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v22 = (v20 & 0xFFFFFFFFFFFFFFFLL) - (v20 & 1) + 2;
    v23 = vdupq_n_s64(v21);
    v24 = (*(a1 + 88) + 16);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v19), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *(v24 - 2) = -4096;
      }

      if (v25.i8[4])
      {
        *v24 = -4096;
      }

      v19 += 2;
      v24 += 4;
    }

    while (v22 != v19);
  }

  *(a1 + 96) = 0;
LABEL_31:
  *(a1 + 8) = 0;
  *(a1 + 132) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = v3;
  __src = 0;
  v137 = v139;
  v138 = 0x4000000000;
  llvm::SmallVectorImpl<mlir::Block *>::append<mlir::Block * const*,void>(&v137, &__src, &v144);
  v140 = 0u;
  v141 = 0;
  v142 = 0;
  __src = &v145;
  v144 = 0x100000000;
  v26 = *(*(a1 + 120) + 8);
  if (v26)
  {
    v27 = v26 - 8;
  }

  else
  {
    v27 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&__src, v27);
  llvm::SmallVectorImpl<mlir::Block *>::operator=(a1, &__src);
  if (__src != &v145)
  {
    free(__src);
  }

  v28 = **a1;
  __src = &v145;
  v145 = v28;
  v146 = 0;
  v144 = 0x4000000001;
  v147 = v28;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v140, &v147) + 4) = 0;
  v29 = v144;
  if (v144)
  {
    LODWORD(v30) = 0;
    while (1)
    {
      v31 = __src + 16 * v29;
      v32 = *(v31 - 2);
      v33 = *(v31 - 2);
      LODWORD(v144) = v29 - 1;
      v147 = v32;
      v34 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v140, &v147);
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back((v34 + 6), v33);
      if (!*v34)
      {
        break;
      }

LABEL_106:
      v29 = v144;
      if (!v144)
      {
        goto LABEL_107;
      }
    }

    v30 = (v30 + 1);
    v34[2] = v30;
    v34[3] = v30;
    *v34 = v30;
    v34[1] = v33;
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v137, v32);
    if (!v142)
    {
      mlir::SuccessorRange::SuccessorRange(&v135, v32);
      v46 = v135;
      mlir::SuccessorRange::SuccessorRange(&v135, v32);
      v147 = v149;
      v148 = 0x800000000;
      v136 = v135;
      v131 = v46;
      v132 = 0;
      v133 = v46;
      v134 = 0;
      llvm::SmallVectorImpl<mlir::Block *>::append<std::reverse_iterator<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>(&v147, &v135, &v131);
      v47 = std::remove[abi:nn200100]<mlir::Block **,decltype(nullptr)>(v147, &v147[v148]);
      v48 = v147;
      v49 = ((v47 - v147) >> 3);
      LODWORD(v148) = (v47 - v147) >> 3;
      if (!v148)
      {
LABEL_104:
        if (v48 != v149)
        {
          free(v48);
        }

        goto LABEL_106;
      }

LABEL_99:
      v83 = v144;
      v84 = 8 * v49;
      do
      {
        v85 = *v48;
        if (v83 >= HIDWORD(v144))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v145, v83 + 1, 16);
          v83 = v144;
        }

        v1 = v1 & 0xFFFFFFFF00000000 | v30;
        v86 = __src + 16 * v83;
        *v86 = v85;
        v86[1] = v1;
        v83 = v144 + 1;
        LODWORD(v144) = v144 + 1;
        ++v48;
        v84 -= 8;
      }

      while (v84);
      v48 = v147;
      goto LABEL_104;
    }

    v35 = *(v142 + 8);
    mlir::SuccessorRange::SuccessorRange(&v135, v32);
    v36 = v135;
    mlir::SuccessorRange::SuccessorRange(&v135, v32);
    v147 = v149;
    v148 = 0x800000000;
    v136 = v135;
    v131 = v36;
    v132 = 0;
    v133 = v36;
    v134 = 0;
    llvm::SmallVectorImpl<mlir::Block *>::append<std::reverse_iterator<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>(&v147, &v135, &v131);
    v37 = std::remove[abi:nn200100]<mlir::Block **,decltype(nullptr)>(v147, &v147[v148]);
    v38 = v147;
    v39 = (v37 - v147) >> 3;
    LODWORD(v148) = v39;
    v40 = v35 + 2;
    v41 = *v35;
    if (*v35)
    {
      v42 = 4;
    }

    else
    {
      v40 = *(v35 + 1);
      v42 = v35[4];
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
LABEL_43:
        v45 = &v40[18 * v44];
LABEL_50:
        v53 = &v40[18 * v43];
        goto LABEL_59;
      }
    }

    v50 = v42 - 1;
    v51 = (v42 - 1) & ((v32 >> 4) ^ (v32 >> 9));
    v45 = &v40[18 * v51];
    v52 = *v45;
    if (*v45 == v32)
    {
LABEL_48:
      if ((v41 & 1) == 0)
      {
        v40 = *(v35 + 1);
        v43 = v35[4];
        goto LABEL_50;
      }
    }

    else
    {
      v54 = 1;
      while (v52 != -4096)
      {
        v55 = v51 + v54++;
        v51 = v55 & v50;
        v45 = &v40[18 * (v55 & v50)];
        v52 = *v45;
        if (*v45 == v32)
        {
          goto LABEL_48;
        }
      }

      if ((v41 & 1) == 0)
      {
        v40 = *(v35 + 1);
        v43 = v35[4];
        v44 = v43;
        goto LABEL_43;
      }

      v45 = v35 + 74;
    }

    v53 = v35 + 74;
LABEL_59:
    if (v53 != v45)
    {
      v56 = v45[4];
      if (v56)
      {
        v57 = *(v45 + 1);
        v58 = &v57[v56];
        v59 = (v37 - v147) >> 3;
        do
        {
          v60 = *v57;
          v61 = &v38[v59];
          v62 = v38;
          if (v59)
          {
            v63 = 8 * v59;
            v62 = v38;
            while (*v62 != v60)
            {
              ++v62;
              v63 -= 8;
              if (!v63)
              {
                v62 = &v38[v59];
                goto LABEL_76;
              }
            }
          }

          v64 = v62 + 1;
          if (v62 != v61 && v64 != v61)
          {
            v66 = &v38[v59] - v62 - 8;
            do
            {
              if (*v64 != v60)
              {
                *v62++ = *v64;
              }

              ++v64;
              v66 -= 8;
            }

            while (v66);
            v38 = v147;
          }

LABEL_76:
          v59 = (v62 - v38) >> 3;
          ++v57;
        }

        while (v57 != v58);
        LODWORD(v148) = (v62 - v38) >> 3;
        v39 = (v62 - v38) >> 3;
      }

      else
      {
        v59 = (v37 - v147) >> 3;
      }

      v67 = *(v45 + 5);
      v68 = v45[12];
      v69 = &v67[8 * v68];
      if (v59 == v39)
      {
        llvm::SmallVectorImpl<mlir::Block *>::append<mlir::Block * const*,void>(&v147, *(v45 + 5), &v67[8 * v68]);
      }

      else
      {
        v70 = v39;
        v71 = v68 + v39;
        v72 = v38;
        if (v71 > HIDWORD(v148))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v71, 8);
          v72 = v147;
          v70 = v148;
          LODWORD(v39) = v148;
        }

        v73 = 8 * v59;
        v74 = &v72[v73];
        v75 = &v72[8 * v70];
        v76 = 8 * v70 - v73;
        v77 = v76 >> 3;
        if (v76 >> 3 >= v68)
        {
          v80 = v68 + v39;
          if (v80 > HIDWORD(v148))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v80, 8);
            LODWORD(v39) = v148;
          }

          if (v68)
          {
            v81 = &v147[v39];
            v82 = -8 * v68;
            do
            {
              *v81++ = *&v75[v82];
              v82 += 8;
            }

            while (v82);
          }

          LODWORD(v148) = v39 + v68;
          if (&v75[-8 * v68] != v74)
          {
            memmove(&v74[8 * v68], v74, &v75[-8 * v68] - v74);
          }

          if (v68)
          {
            memmove(v74, v67, 8 * v68);
          }
        }

        else
        {
          v78 = v39 + v68;
          LODWORD(v148) = v78;
          if (8 * v70 != v73)
          {
            memcpy(&v72[8 * v78 + -8 * v77], &v72[v73], v76);
            do
            {
              v79 = *v67;
              v67 += 8;
              *v74 = v79;
              v74 += 8;
              --v77;
            }

            while (v77);
          }

          if (v67 != v69)
          {
            memcpy(v75, v67, v69 - v67);
          }
        }
      }
    }

    v49 = v148;
    v48 = v147;
    if (!v148)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_107:
  if (__src != &v145)
  {
    free(__src);
  }

  v87 = v138;
  v147 = v149;
  v148 = 0x800000001;
  v149[0] = 0;
  if (v138 < 9)
  {
    if (v138 < 2)
    {
      goto LABEL_114;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v138, 8);
  }

  v88 = 1;
  do
  {
    __src = *(v137 + v88);
    v89 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v140, &__src);
    *(v89 + 16) = *(v137 + *(v89 + 4));
    llvm::SmallVectorTemplateBase<llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec *,true>::push_back(&v147, v89);
    ++v88;
  }

  while (v87 != v88);
LABEL_114:
  v90 = &v145;
  __src = &v145;
  v144 = 0x2000000000;
  v91 = (v87 - 1);
  if (v91 >= 2)
  {
    v92 = v147;
    v93 = v87;
    do
    {
      v94 = v92[v91];
      v95 = *(v94 + 4);
      *(v94 + 8) = v95;
      v96 = *(v94 + 32);
      if (v96)
      {
        v97 = *(v94 + 24);
        v98 = &v97[v96];
        do
        {
          v99 = v92[*v97];
          if (*(v99 + 4) >= v93)
          {
            do
            {
              llvm::SmallVectorTemplateBase<llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec *,true>::push_back(&__src, v99);
              v99 = v92[*(v99 + 4)];
              v101 = *(v99 + 4);
            }

            while (v101 >= v93);
            v102 = v92[*(v99 + 12)];
            v90 = __src;
            v103 = __src - 8;
            v104 = v144;
            do
            {
              v105 = *&v103[8 * v104];
              *(v105 + 4) = v101;
              v100 = *(v105 + 12);
              v106 = v92[v100];
              if (*(v102 + 8) < *(v106 + 8))
              {
                v100 = *(v99 + 12);
                *(v105 + 12) = v100;
                v106 = v102;
              }

              v99 = v105;
              v102 = v106;
              --v104;
            }

            while (v104);
            LODWORD(v144) = 0;
            v92 = v147;
            v95 = *(v94 + 8);
          }

          else
          {
            v100 = *(v99 + 12);
          }

          v107 = *(v92[v100] + 8);
          if (v107 < v95)
          {
            *(v94 + 8) = v107;
            v95 = v107;
          }

          ++v97;
        }

        while (v97 != v98);
      }

      v93 = v91--;
    }

    while ((v91 & 0xFFFFFFFE) != 0);
    if (v87 >= 3)
    {
      for (i = 2; i != v87; ++i)
      {
        v109 = v147[i];
        v110 = *v147[*(v109 + 8)];
        v111 = (v109 + 16);
        v112 = (v109 + 16);
        do
        {
          v113 = *v112;
          *&v135 = *v112;
          v114 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v140, &v135);
          v115 = *v114;
          v112 = (v114 + 4);
        }

        while (v115 > v110);
        *v111 = v113;
      }

      v90 = __src;
    }

    if (v90 != &v145)
    {
      free(v90);
    }
  }

  if (v147 != v149)
  {
    free(v147);
  }

  if (*(a1 + 8))
  {
    llvm::DominatorTreeBase<mlir::Block,false>::createNode(a1, **a1, 0);
  }

  v116 = v140;
  if (v141)
  {
    v117 = (v140 + 48);
    v118 = v141 << 6;
    do
    {
      if ((*(v117 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v119 = *(v117 - 2);
        if (v117 != v119)
        {
          free(v119);
        }
      }

      v117 += 8;
      v118 -= 64;
    }

    while (v118);
    v116 = v140;
  }

  MEMORY[0x25F891030](v116, 8);
  if (v137 != v139)
  {
    free(v137);
  }
}

void llvm::SmallVectorImpl<mlir::Block *>::append<mlir::Block * const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = result[2];
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    LODWORD(v7) = result[2];
  }

  if (__src != a3)
  {
    memcpy((*result + 8 * v7), __src, v6);
    LODWORD(v7) = result[2];
  }

  result[2] = v7 + (v6 >> 3);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 4), *a2, &v10);
  v6 = v10;
  if (v4)
  {
    return v6 + 8;
  }

  v11 = v10;
  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(a1, v8, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 4), *a2, &v11);
    v7 = *(a1 + 2);
    v6 = v11;
  }

  *(a1 + 2) = v7 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  *v6 = *a2;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 56) = 0;
  *(v6 + 32) = v6 + 48;
  *(v6 + 44) = 4;
  return v6 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + (v4 << 6));
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + (v4 << 6));
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t *llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((v9 << 6), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0x3FFFFFFFFFFFFFFLL;
      v14 = v13 & 0x3FFFFFFFFFFFFFFLL;
      v15 = (v13 & 0x3FFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 8;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 8) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 16;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = v5 + 32;
      v20 = v4 << 6;
      do
      {
        v21 = *(v19 - 32);
        if ((v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v35 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v21, &v35);
          v22 = v35;
          v23 = v35;
          *v35 = *(v19 - 32);
          v24 = *(v19 - 24);
          v25 = *(v19 - 8);
          v22[4] = v23 + 6;
          v26 = (v22 + 4);
          *(v26 - 8) = v25;
          *(v26 - 24) = v24;
          *(v26 + 8) = 0x400000000;
          if (*(v19 + 8))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(v26, v19);
          }

          ++*(a1 + 8);
          if (v19 + 16 != *v19)
          {
            free(*v19);
          }
        }

        v19 += 64;
        v20 -= 64;
      }

      while (v20);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v27 + 0x3FFFFFFFFFFFFFFLL;
    v30 = v29 & 0x3FFFFFFFFFFFFFFLL;
    v31 = (v29 & 0x3FFFFFFFFFFFFFFLL) - (v29 & 1) + 2;
    v32 = vdupq_n_s64(v30);
    v33 = result + 8;
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v28), xmmword_25D0A0500)));
      if (v34.i8[0])
      {
        *(v33 - 8) = -4096;
      }

      if (v34.i8[4])
      {
        *v33 = -4096;
      }

      v28 += 2;
      v33 += 16;
    }

    while (v31 != v28);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<unsigned int>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 4 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 4 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 4);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
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
        memmove(*a1, *a2, 4 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 4);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}