uint64_t mlir::DynamicOpDefinition::foldHook(uint64_t a1)
{
  v2 = (a1 + 240);
  v3 = *(a1 + 264);
  if ((v3 & 2) == 0)
  {
    v2 = *v2;
  }

  return (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2);
}

uint64_t mlir::DynamicOpDefinition::getCanonicalizationPatterns(uint64_t a1)
{
  v2 = (a1 + 272);
  v3 = *(a1 + 296);
  if ((v3 & 2) == 0)
  {
    v2 = *v2;
  }

  return (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2);
}

uint64_t mlir::DynamicOpDefinition::getParseAssemblyFn@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = this;
  a2[3] = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<mlir::DynamicOpDefinition::getParseAssemblyFn(void)::{lambda(mlir::OpAsmParser &,mlir::OperationState &)#1},mlir::DynamicOpDefinition::getParseAssemblyFn(void)::{lambda(mlir::OpAsmParser &,mlir::OperationState &)#1},void>::Callbacks + 2;
  return this;
}

uint64_t mlir::DynamicOpDefinition::populateDefaultAttrs(uint64_t a1)
{
  v2 = (a1 + 304);
  v3 = *(a1 + 328);
  if ((v3 & 2) == 0)
  {
    v2 = *v2;
  }

  return (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2);
}

uint64_t mlir::DynamicOpDefinition::printAssembly(uint64_t a1)
{
  v2 = (a1 + 208);
  v3 = *(a1 + 232);
  if ((v3 & 2) == 0)
  {
    v2 = *v2;
  }

  return (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2);
}

uint64_t mlir::DynamicOpDefinition::verifyInvariants(mlir::DynamicOpDefinition *this, Operation *a2)
{
  v3 = (this + 112);
  v4 = *(this + 17);
  if ((v4 & 2) == 0)
  {
    v3 = *v3;
  }

  return (*(v4 & 0xFFFFFFFFFFFFFFF8))(v3, a2);
}

uint64_t mlir::DynamicOpDefinition::verifyRegionInvariants(mlir::DynamicOpDefinition *this, Operation *a2)
{
  v3 = (this + 144);
  v4 = *(this + 21);
  if ((v4 & 2) == 0)
  {
    v3 = *v3;
  }

  return (*(v4 & 0xFFFFFFFFFFFFFFF8))(v3, a2);
}

uint64_t mlir::DynamicOpDefinition::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  (a5)(v19, a6, a2, a3, a4);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "extensible Dialects don't support properties";
    v18 = 44;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::ExtensibleDialect::~ExtensibleDialect(mlir::ExtensibleDialect *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  mlir::ExtensibleDialect::~ExtensibleDialect(this, a2, a3, a4);
}

{
  *this = &unk_28689CE18;
  if (*(this + 66))
  {
    llvm::deallocate_buffer(**(this + 32), *(*(this + 32) + 8));
  }

  *(this + 66) = 0;
  v5 = *(this + 54);
  if (v5)
  {
    *(this + 34) = 0;
    v6 = *(this + 26);
    v7 = *v6 + 4096;
    *(this + 24) = *v6;
    *(this + 25) = v7;
    if (v5 != 1)
    {
      v8 = ((v6 + 8 - *(this + 26)) >> 10) & 0x1FFFFFF;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      llvm::deallocate_buffer(*(v6 + 8), (4096 << v8));
    }

    *(this + 54) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 192, a2, a3, a4);
  if (*(this + 45))
  {
    v9 = *(this + 44);
    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = *(*(this + 21) + v10);
        if (v11 != -8 && v11 != 0)
        {
          llvm::deallocate_buffer(v11, (*v11 + 17));
        }

        v10 += 8;
      }

      while (8 * v9 != v10);
    }
  }

  free(*(this + 21));
  v16 = *(this + 40);
  v17 = *(this + 18);
  if (v16)
  {
    v18 = (v17 + 8);
    v19 = 16 * v16;
    while (1)
    {
      if ((*(v18 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v20 = *v18;
        *v18 = 0;
        if (v20)
        {
          mlir::DynamicAttrDefinition::~DynamicAttrDefinition(v20, v13, v14, v15);
          MEMORY[0x259C63180]();
        }
      }

      v18 += 2;
      v19 -= 16;
      if (!v19)
      {
        llvm::deallocate_buffer(*(this + 18), (16 * *(this + 40)));
      }
    }
  }

  llvm::deallocate_buffer(v17, 0);
}

void sub_25710BC30()
{

  JUMPOUT(0x259C63180);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l(void *a1)
{
  v1 = *a1;
  v2 = (*(**a1 + 16))(*a1);
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicAttrEJRPNS1_21DynamicAttrDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l(void *a1)
{
  v1 = *a1;
  v2 = (*(**a1 + 16))(*a1);
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

void sub_25710BFFC(int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  mlir::Dialect::~Dialect(v16, a2, a3, a4);
}

void mlir::DynamicAttrDefinition::~DynamicAttrDefinition(mlir::DynamicAttrDefinition *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 15);
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      v6 = (this + 96);
      if ((v5 & 2) == 0)
      {
        v6 = *v6;
      }

      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, a2, a3, a4);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 12), *(this + 13));
    }
  }

  v7 = *(this + 11);
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v8 = (this + 64);
      if ((v7 & 2) == 0)
      {
        v8 = *v8;
      }

      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, a2, a3, a4);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 8), *(this + 9));
    }
  }

  v9 = *(this + 7);
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (this + 32);
      if ((v9 & 2) == 0)
      {
        v10 = *v10;
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v10, a2, a3, a4);
    }

    if ((v9 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 4), *(this + 5));
    }
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, uint64_t *a2)
{
  v3 = mlir::detail::DynamicTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::DynamicTypeStorage::construct(uint64_t *a1, void *a2)
{
  a1[10] += 32;
  v3 = *a1;
  v4 = a1[1];
  result = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = result + 4;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v22 = a2;
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
    a2 = v22;
    v8 = *v22;
    v9 = v22[2];
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_15:
    Slow = 0;
    goto LABEL_19;
  }

  *a1 = v6;
  v8 = *a2;
  v9 = a2[2];
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_6:
  v10 = a2[1];
  v11 = 8 * v9;
  a1[10] += 8 * v9;
  if (!*a1 || (Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + v11 > a1[1]))
  {
    v23 = result;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v9, 8 * v9, 3);
    result = v23;
    v13 = v11 - 8;
    if ((v11 - 8) >= 0x18)
    {
      goto LABEL_9;
    }

LABEL_17:
    v14 = Slow;
    v15 = v10;
    do
    {
LABEL_18:
      v24 = *v15++;
      *v14++ = v24;
    }

    while (v15 != (v10 + 8 * v9));
    goto LABEL_19;
  }

  *a1 = Slow + v11;
  v13 = v11 - 8;
  if ((v11 - 8) < 0x18)
  {
    goto LABEL_17;
  }

LABEL_9:
  v14 = Slow;
  v15 = v10;
  if (Slow - v10 < 0x20)
  {
    goto LABEL_18;
  }

  v16 = (v13 >> 3) + 1;
  v17 = 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL);
  v14 = (Slow + v17);
  v15 = (v10 + v17);
  v18 = (v10 + 16);
  v19 = (Slow + 16);
  v20 = v16 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v21 = *v18;
    *(v19 - 1) = *(v18 - 1);
    *v19 = v21;
    v18 += 2;
    v19 += 2;
    v20 -= 4;
  }

  while (v20);
  if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_18;
  }

LABEL_19:
  *result = 0;
  result[1] = v8;
  result[2] = Slow;
  result[3] = v9;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18DynamicTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypeTrait::IsDynamicType<Empty>]";
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicAttrStorage * mlir::StorageUniquer::get<mlir::detail::DynamicAttrStorage,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicAttrStorage *)>,mlir::TypeID,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicAttrStorage * mlir::StorageUniquer::get<mlir::detail::DynamicAttrStorage,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicAttrStorage *)>,mlir::TypeID,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::DynamicTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

const char *llvm::getTypeName<mlir::AttributeTrait::IsDynamicAttr<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsDynamicAttr>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::AttributeTrait::IsDynamicAttr<Empty>]";
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

BOOL llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallImpl<mlir::DynamicOpDefinition::get(llvm::StringRef,mlir::ExtensibleDialect *,llvm::unique_function<llvm::LogicalResult ()(mlir::Operation *)const> &&,llvm::unique_function<llvm::LogicalResult ()(mlir::Operation *)const> &)::$_0>(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = (*(*a2 + 40))(a2);
  v14 = "dynamic operation do not define any parser function";
  v15 = 259;
  (*(*a2 + 24))(v16, a2, v3, &v14);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v22;
      v7 = __p;
      if (v22 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v22 = v5;
      operator delete(v7);
    }

    v8 = v19;
    if (v19)
    {
      v9 = v20;
      v10 = v19;
      if (v20 != v19)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v19;
      }

      v20 = v8;
      operator delete(v10);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v4;
}

void anonymous namespace::IsExtensibleDialect::~IsExtensibleDialect(_anonymous_namespace_::IsExtensibleDialect *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v11 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::moveFromOldBuckets(a1, v4, &v11[v4], v10);

    llvm::deallocate_buffer(v4, v11);
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v12 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = v13 + 1;
      v15 = (v13 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v16 = &result[2 * v15];
      v17 = result + 2;
      v18 = v15;
      do
      {
        *(v17 - 2) = -4096;
        *v17 = -4096;
        v17 += 4;
        v18 -= 2;
      }

      while (v18);
      if (v14 == v15)
      {
        return result;
      }
    }

    else
    {
      v16 = result;
    }

    v19 = &result[2 * v12];
    do
    {
      *v16 = -4096;
      v16 += 2;
    }

    while (v16 != v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  *(result + 8) = 0;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = *result;
    v9 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v10 = v9 + 1;
      v11 = (v9 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v12 = &v8[2 * v11];
      v13 = v8 + 2;
      v14 = v11;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v10 == v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = *result;
    }

    v15 = &v8[2 * v7];
    do
    {
      *v12 = -4096;
      v12 += 2;
    }

    while (v12 != v15);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v5;
      if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(v6 + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v19 = (*v6 + 16 * v18);
        v20 = *v19;
        if (v16 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*v6 + 16 * (v25 & v17));
            v20 = *v19;
            if (v16 == *v19)
            {
              goto LABEL_15;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_15:
        v21 = v5[1];
        v5[1] = 0;
        *v19 = v16;
        v19[1] = v21;
        ++*(v6 + 8);
        result = v5[1];
        v5[1] = 0;
        if (result)
        {
          mlir::DynamicAttrDefinition::~DynamicAttrDefinition(result, a2, a3, a4);
          result = MEMORY[0x259C63180]();
        }
      }

      v5 += 2;
    }

    while (v5 != a3);
  }

  return result;
}

BOOL mlir::detail::StorageUserBase<mlir::DynamicType,mlir::Type,mlir::detail::DynamicTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsDynamicType>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::DynamicType::classof();
  return mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::detail::StorageUserBase<mlir::DynamicAttr,mlir::Attribute,mlir::detail::DynamicAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsDynamicAttr>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsDynamicAttr<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsDynamicAttr>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::DynamicAttr::classof();
  return mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsDynamicAttr<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsDynamicAttr>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void anonymous namespace::IsDynamicDialect::~IsDynamicDialect(_anonymous_namespace_::IsDynamicDialect *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallImpl<mlir::DynamicOpDefinition::getParseAssemblyFn(void)::{lambda(mlir::OpAsmParser &,mlir::OperationState &)#1}>(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 176);
  v3 = *(v1 + 200);
  if ((v3 & 2) == 0)
  {
    v2 = *v2;
  }

  return (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2);
}

uint64_t mlir::IntegerSet::getNumEqualities(mlir::IntegerSet *this, double a2, int32x4_t a3)
{
  v3 = *(*this + 16);
  if (!*(*this + 16))
  {
    return 0;
  }

  v4 = *(*this + 24);
  if (v3 < 4)
  {
    v5 = 0;
    LODWORD(result) = 0;
    goto LABEL_14;
  }

  if (v3 >= 0x20)
  {
    v7 = 0uLL;
    v8 = 0uLL;
    v5 = v3 & 0xFFFFFFE0;
    v9 = v4 + 2;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v9[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v9);
      v21 = vmovl_high_u8(*v9->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v8 = vaddw_high_u16(v8, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v9 += 4;
      v10 -= 32;
    }

    while (v10);
    a3 = vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12));
    result = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a3));
    if ((v3 & 0x1F) == 0)
    {
      return result;
    }

    if ((v3 & 0x1F) <= 3)
    {
LABEL_14:
      v27 = (v4 + v5);
      v28 = v3 - v5;
      do
      {
        v29 = v27->u8[0];
        v27 = (v27 + 1);
        result = (result + v29);
        --v28;
      }

      while (v28);
      return result;
    }
  }

  else
  {
    LODWORD(result) = 0;
    v5 = 0;
  }

  v22 = (v4 + v5);
  v23 = v5 + (v3 & 3);
  v5 = v3 & 0xFFFFFFFC;
  v24 = result;
  v25 = v23 - v3;
  do
  {
    v26 = *v22++;
    a3.i32[0] = v26;
    a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
    v24 = vaddw_u16(v24, *a3.i8);
    v25 += 4;
  }

  while (v25);
  result = vaddvq_s32(v24);
  if ((v3 & 3) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t mlir::IntegerSet::getNumInequalities(mlir::IntegerSet *this, double a2, int32x4_t a3)
{
  v3 = *(*this + 16);
  if (!*(*this + 16))
  {
    return v3;
  }

  v4 = *(*this + 24);
  if (v3 >= 4)
  {
    if (v3 >= 0x20)
    {
      v8 = 0uLL;
      v9 = 0uLL;
      v5 = v3 & 0xFFFFFFE0;
      v10 = v4 + 2;
      v11 = v5;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = *v10[-2].i8;
        v19 = vmovl_u8(*v18.i8);
        v20 = vmovl_high_u8(v18);
        v21 = vmovl_u8(*v10);
        v22 = vmovl_high_u8(*v10->i8);
        v13 = vaddw_high_u16(v13, v20);
        v12 = vaddw_u16(v12, *v20.i8);
        v9 = vaddw_high_u16(v9, v19);
        v8 = vaddw_u16(v8, *v19.i8);
        v17 = vaddw_high_u16(v17, v22);
        v16 = vaddw_u16(v16, *v22.i8);
        v15 = vaddw_high_u16(v15, v21);
        v14 = vaddw_u16(v14, *v21.i8);
        v10 += 4;
        v11 -= 32;
      }

      while (v11);
      a3 = vaddq_s32(vaddq_s32(v15, v9), vaddq_s32(v17, v13));
      v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a3));
      if ((v3 & 0x1F) == 0)
      {
        return v3 - v6;
      }

      if ((v3 & 0x1F) < 4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v23 = (v4 + v5);
    v24 = v5 + (v3 & 3);
    v5 = v3 & 0xFFFFFFFC;
    v25 = v6;
    v26 = v24 - v3;
    do
    {
      v27 = *v23++;
      a3.i32[0] = v27;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v25 = vaddw_u16(v25, *a3.i8);
      v26 += 4;
    }

    while (v26);
    v6 = vaddvq_s32(v25);
    if ((v3 & 3) == 0)
    {
      return v3 - v6;
    }

    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
LABEL_14:
  v28 = v3 - v5;
  v29 = (v4 + v5);
  do
  {
    v30 = v29->u8[0];
    v29 = (v29 + 1);
    v6 += v30;
    --v28;
  }

  while (v28);
  return v3 - v6;
}

BOOL mlir::IntegerSet::isEmptyIntegerSet(int **this)
{
  v2 = **this;
  v3 = (*this)[1];
  AffineConstantExpr = **(*this + 1);
  Context = mlir::AffineExpr::getContext(&AffineConstantExpr);
  AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v5);
  v7 = 1;
  return *this == mlir::IntegerSet::get(v2, v3, &AffineConstantExpr, 1, &v7, 1);
}

uint64_t mlir::IntegerSet::walkExprs(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*result + 16))
  {
    mlir::AffineExpr::walk<void>();
  }

  return result;
}

uint64_t mlir::IntegerSet::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15 >= 9uLL)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    v16 = v14[1];
    v17 = 8 * v15;
    do
    {
      v22 = *v16;
      v18 = mlir::AffineExpr::replaceDimsAndSymbols(&v22, a2, a3, a4, a5);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v18;
      v19 = v24 + 1;
      LODWORD(v24) = v24 + 1;
      ++v16;
      v17 -= 8;
    }

    while (v17);
    v14 = *a1;
  }

  else
  {
    v19 = v24;
  }

  result = mlir::IntegerSet::get(a6, a7, v23, v19, v14[3], v14[4]);
  if (v23 != v25)
  {
    v21 = result;
    free(v23);
    return v21;
  }

  return result;
}

uint64_t mlir::CallSiteLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::FileLineColLoc::get(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v11[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail25FileLineColLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14FileLineColLocEJRNS1_10StringAttrERjSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v16[1] = v11;
  v14 = v10;
  v15 = a2 | (a3 << 32);
  v7 = __ROR8__(v15 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ (v10 >> 4) ^ (v10 >> 9));
  v12[0] = &v14;
  v12[1] = v16;
  v13 = &v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ a2, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::FileLineColLoc::get(mlir::StringAttr *a1, const char *a2, const llvm::Twine *a3, unsigned int a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = "-";
  v16 = 261;
  if (a3)
  {
    v9 = a2;
  }

  v15[0] = v9;
  v15[1] = v8;
  v10 = mlir::StringAttr::get(a1, v15, a3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v17[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail25FileLineColLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14FileLineColLocEJNS1_10StringAttrERjSC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v22[1] = v17;
  v20 = v10;
  v21 = a4 | (a5 << 32);
  v12 = __ROR8__(v21 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v18[0] = &v20;
  v18[1] = v22;
  v19 = &v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13)))) ^ a4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::FusedLoc::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v10 = (a4 >> 4) ^ (a4 >> 9);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::NameLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::NameLoc::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  v4 = mlir::UnknownLoc::get(v2, v3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrENS1_10UnknownLocEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = v4;
  v6 = (v4 >> 4) ^ (v4 >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::OpaqueLoc::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  Context = mlir::Attribute::getContext(&v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail20OpaqueLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9OpaqueLocEJRmRNS1_6TypeIDERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextESC_DpOT0_EUlPSK_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = v14;
  v7 = (a2 >> 4) ^ (a2 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v14 >> 4) ^ (v14 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * a1 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * a1 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::LocationAttr::walk(void *a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  result = a2(a3, *a1);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  v8 = *(*v7 + 136);
  if (v7)
  {
    v9 = v8 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v15 = v7[1];
    result = mlir::LocationAttr::walk(&v15, a2, a3);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v10 = v8 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = v7[2];
    if (!v12)
    {
      return 1;
    }

    v13 = v7[1];
    v14 = 8 * v12;
    while (1)
    {
      v15 = *v13;
      result = mlir::LocationAttr::walk(&v15, a2, a3);
      if (!result)
      {
        break;
      }

      ++v13;
      v14 -= 8;
      if (!v14)
      {
        return 1;
      }
    }

    return result;
  }

  if (v7 && v8 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
LABEL_16:
    v11 = v7[2];
    goto LABEL_17;
  }

  result = 1;
  if (v7 && v8 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v11 = v7[3];
LABEL_17:
    v15 = v11;
    return mlir::LocationAttr::walk(&v15, a2, a3);
  }

  return result;
}

BOOL mlir::LocationAttr::classof(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
    return 1;
  }

  return v1 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
}

uint64_t mlir::CallSiteLoc::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 8 * a3;
  ParametricStorageTypeImpl = *(v3 - 8);
  if (v3 - 8 != a2)
  {
    v5 = 8 * a3;
    v6 = a2 - 16;
    do
    {
      v19 = *(v6 + v5);
      Context = mlir::Attribute::getContext(&v19);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v20 = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
      v21 = Context;
      v27 = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
      v28 = &v20;
      v25 = v19;
      v26 = ParametricStorageTypeImpl;
      v9 = (ParametricStorageTypeImpl >> 4) ^ (ParametricStorageTypeImpl >> 9);
      v10 = __ROR8__(v9 + 16, 16);
      v11 = 0x9DDFEA08EB382D69 * (v10 ^ 0xFF51AFD7ED558CCDLL ^ (v19 >> 4) ^ (v19 >> 9));
      v22 = &v25;
      v23 = &v27;
      v24 = &v25;
      ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v22);
      v5 -= 8;
    }

    while (v5 != 8);
  }

  v19 = a1;
  v12 = mlir::Attribute::getContext(&v19);
  v13 = mlir::MLIRContext::getAttributeUniquer(v12);
  v20 = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v21 = v12;
  v27 = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v28 = &v20;
  v25 = v19;
  v26 = ParametricStorageTypeImpl;
  v14 = (ParametricStorageTypeImpl >> 4) ^ (ParametricStorageTypeImpl >> 9);
  v15 = __ROR8__(v14 + 16, 16);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v19 >> 4) ^ (v19 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v22 = &v25;
  v23 = &v27;
  v24 = &v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(v13, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 32) >> 15) ^ (-348639895 * (v15 ^ (v16 >> 47) ^ v16)))) ^ v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v22);
}

void mlir::FusedLoc::get(uint64_t **a1, mlir::MLIRContext *a2, uint64_t a3, mlir::UnknownLoc *this)
{
  v83[4] = *MEMORY[0x277D85DE8];
  v80 = 0;
  *v79 = 0u;
  v81 = v83;
  v82 = 0x400000000;
  if (!a2)
  {
    goto LABEL_109;
  }

  v6 = a1;
  v7 = &a1[a2];
  while (1)
  {
    v8 = *v6;
    v73 = v8;
    v9 = *(*v8 + 136);
    if (v8 && v9 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
    {
      break;
    }

    if (v9 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (++v6 == v7)
    {
      v51 = v82;
      if (v82)
      {
        v52 = v81;
        if (v82 == 1 && !a3)
        {
          v67 = v81;
          if (v81 == v83)
          {
LABEL_115:
            llvm::deallocate_buffer(v79[0], (8 * v80));
          }

LABEL_114:
          free(v67);
          goto LABEL_115;
        }

        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
        v68 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
        v69 = this;
        v76 = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJRNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
        v77 = &v68;
        v73 = v52;
        v74 = v51;
        v75 = a3;
        v54 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v52, &v52[v51]);
        v55 = (a3 >> 4) ^ (a3 >> 9);
        v56 = __ROR8__(v55 + 16, 16);
        v57 = 0x9DDFEA08EB382D69 * (v56 ^ ((0x9DDFEA08EB382D69 * (v56 ^ 0xFF51AFD7ED558CCDLL ^ v54)) >> 47) ^ (0x9DDFEA08EB382D69 * (v56 ^ 0xFF51AFD7ED558CCDLL ^ v54)));
        v70 = &v73;
        v71 = &v76;
        v72 = &v73;
        v58 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
        v59 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
        v60 = (-348639895 * ((v57 >> 47) ^ v57)) ^ v55;
        v61 = AttributeUniquer;
LABEL_111:
        mlir::StorageUniquer::getParametricStorageTypeImpl(v61, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, v60, v58, &v72, v59, &v70);
        v67 = v81;
        if (v81 == v83)
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }

LABEL_109:
      if (!a3)
      {
        mlir::UnknownLoc::get(this, a2);
        v67 = v81;
        if (v81 == v83)
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      v78 = mlir::UnknownLoc::get(this, a2);
      v62 = mlir::MLIRContext::getAttributeUniquer(this);
      v68 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
      v69 = this;
      v76 = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
      v77 = &v68;
      v73 = &v78;
      v74 = 1;
      v75 = a3;
      v63 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(&v78, v79);
      v64 = (a3 >> 4) ^ (a3 >> 9);
      v65 = __ROR8__(v64 + 16, 16);
      v66 = 0x9DDFEA08EB382D69 * (v65 ^ ((0x9DDFEA08EB382D69 * (v65 ^ v63 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v65 ^ v63 ^ 0xFF51AFD7ED558CCDLL)));
      v70 = &v73;
      v71 = &v76;
      v72 = &v73;
      v58 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
      v59 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
      v60 = (-348639895 * ((v66 >> 47) ^ v66)) ^ v64;
      v61 = v62;
      goto LABEL_111;
    }
  }

  if (v8[3] == a3)
  {
    v11 = v8[2];
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v8[1];
    v13 = &v12[v11];
    while (2)
    {
      if (LODWORD(v79[1]))
      {
        a2 = v80;
        if (!v80)
        {
          goto LABEL_86;
        }

        v14 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v80 - 1);
        v15 = v79[0] + 8 * v14;
        v16 = *v15;
        if (*v12 == *v15)
        {
LABEL_15:
          if (++v12 == v13)
          {
            goto LABEL_5;
          }

          continue;
        }

        v39 = 0;
        v40 = 1;
        while (v16 != -4096)
        {
          if (v39)
          {
            v41 = 0;
          }

          else
          {
            v41 = v16 == -8192;
          }

          if (v41)
          {
            v39 = v15;
          }

          v42 = v14 + v40++;
          v14 = v42 & (v80 - 1);
          v15 = v79[0] + 8 * v14;
          v16 = *v15;
          if (*v12 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v15;
        }

        if (4 * LODWORD(v79[1]) + 4 < 3 * v80)
        {
          if (v80 + ~LODWORD(v79[1]) - HIDWORD(v79[1]) <= v80 >> 3)
          {
            goto LABEL_87;
          }

          ++LODWORD(v79[1]);
          if (*v43 == -4096)
          {
LABEL_22:
            v17 = *v12;
            *v43 = *v12;
            if (v82 >= HIDWORD(v82))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v81 + v82) = v17;
            LODWORD(v82) = v82 + 1;
            goto LABEL_15;
          }
        }

        else
        {
LABEL_86:
          LODWORD(a2) = 2 * v80;
LABEL_87:
          llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(v79, a2);
          if (v80)
          {
            v44 = v80 - 1;
            v45 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v80 - 1);
            v43 = v79[0] + 8 * v45;
            v46 = *v43;
            if (*v12 != *v43)
            {
              v47 = 0;
              v48 = 1;
              while (v46 != -4096)
              {
                if (v47)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v46 == -8192;
                }

                if (v49)
                {
                  v47 = v43;
                }

                v50 = v45 + v48++;
                v45 = v50 & v44;
                v43 = v79[0] + 8 * (v50 & v44);
                v46 = *v43;
                if (*v12 == *v43)
                {
                  goto LABEL_100;
                }
              }

              if (v47)
              {
                v43 = v47;
              }
            }
          }

          else
          {
            v43 = 0;
          }

LABEL_100:
          ++LODWORD(v79[1]);
          if (*v43 == -4096)
          {
            goto LABEL_22;
          }
        }

        --HIDWORD(v79[1]);
        goto LABEL_22;
      }

      break;
    }

    v18 = v81;
    if (v82)
    {
      v19 = *v12;
      v20 = 8 * v82;
      v18 = v81;
      do
      {
        if (*v18 == v19)
        {
          goto LABEL_70;
        }

        ++v18;
        v20 -= 8;
      }

      while (v20);
      if (v82 >= HIDWORD(v82))
      {
LABEL_72:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    else
    {
LABEL_70:
      if (v18 != (v81 + 8 * v82))
      {
        goto LABEL_15;
      }

      v19 = *v12;
      if (v82 >= HIDWORD(v82))
      {
        goto LABEL_72;
      }
    }

    *(v81 + v82) = v19;
    v21 = v82 + 1;
    LODWORD(v82) = v21;
    if (v21 < 5)
    {
      goto LABEL_15;
    }

    v22 = v81;
    v23 = v81 + 8 * v21;
    while (2)
    {
      a2 = v80;
      if (!v80)
      {
LABEL_52:
        LODWORD(a2) = 2 * v80;
        goto LABEL_53;
      }

      v24 = ((*v22 >> 4) ^ (*v22 >> 9)) & (v80 - 1);
      v25 = v79[0] + 8 * v24;
      v26 = *v25;
      if (*v22 == *v25)
      {
LABEL_32:
        if (++v22 == v23)
        {
          goto LABEL_15;
        }

        continue;
      }

      break;
    }

    v27 = 0;
    v28 = 1;
    while (v26 != -4096)
    {
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 == -8192;
      }

      if (v29)
      {
        v27 = v25;
      }

      v30 = v24 + v28++;
      v24 = v30 & (v80 - 1);
      v25 = v79[0] + 8 * v24;
      v26 = *v25;
      if (*v22 == *v25)
      {
        goto LABEL_32;
      }
    }

    if (v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = v25;
    }

    if (4 * LODWORD(v79[1]) + 4 >= 3 * v80)
    {
      goto LABEL_52;
    }

    if (v80 + ~LODWORD(v79[1]) - HIDWORD(v79[1]) <= v80 >> 3)
    {
LABEL_53:
      llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(v79, a2);
      if (v80)
      {
        v32 = v80 - 1;
        v33 = ((*v22 >> 4) ^ (*v22 >> 9)) & (v80 - 1);
        v31 = v79[0] + 8 * v33;
        v34 = *v31;
        if (*v22 != *v31)
        {
          v35 = 0;
          v36 = 1;
          while (v34 != -4096)
          {
            if (v35)
            {
              v37 = 0;
            }

            else
            {
              v37 = v34 == -8192;
            }

            if (v37)
            {
              v35 = v31;
            }

            v38 = v33 + v36++;
            v33 = v38 & v32;
            v31 = v79[0] + 8 * (v38 & v32);
            v34 = *v31;
            if (*v22 == *v31)
            {
              goto LABEL_65;
            }
          }

          if (v35)
          {
            v31 = v35;
          }
        }
      }

      else
      {
        v31 = 0;
      }

LABEL_65:
      ++LODWORD(v79[1]);
      if (*v31 != -4096)
      {
LABEL_37:
        --HIDWORD(v79[1]);
      }
    }

    else
    {
      ++LODWORD(v79[1]);
      if (*v31 != -4096)
      {
        goto LABEL_37;
      }
    }

    *v31 = *v22;
    goto LABEL_32;
  }

LABEL_4:
  llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(v79, &v73);
  goto LABEL_5;
}

uint64_t llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v15);
    if (v15[16] == 1)
    {
      v4 = *a2;
      v5 = *(a1 + 32);
      if (v5 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a1 + 24) + 8 * v5) = v4;
      ++*(a1 + 32);
      return 1;
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    v10 = *a2;
    v11 = 8 * v8;
    v9 = *(a1 + 24);
    while (*v9 != v10)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 != &v7[v8])
  {
    return 0;
  }

  v10 = *a2;
LABEL_13:
  if (v8 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7[v8] = v10;
  v12 = *(a1 + 32) + 1;
  *(a1 + 32) = v12;
  if (v12 >= 5)
  {
    v13 = *(a1 + 24);
    v14 = 8 * v12;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v13++, v15);
      v14 -= 8;
    }

    while (v14);
  }

  return 1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 24;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = Slow + 3;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    Slow[1] = v2;
    Slow[2] = v3;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  Slow[1] = v2;
  Slow[2] = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 24;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = Slow + 3;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    Slow[1] = v2;
    Slow[2] = v3;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  Slow[1] = v2;
  Slow[2] = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::FusedLocAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v5 = 8 * v2;
    a1[10] += 8 * v2;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = Slow + 8 * v2;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = Slow;
        v11 = v4;
        if (Slow - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (Slow + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (Slow + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = Slow;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v2));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = (v20 + 4);
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = Slow;
  v20[2] = v2;
  v20[3] = v3;
  return v20;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 1);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
    *(Slow + 16) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 16) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], Slow);
  }

  return Slow;
}

void mlir::Dialect::addAttribute<mlir::CallSiteLoc>(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::CallSiteLoc,mlir::LocationAttr,mlir::detail::CallSiteLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSB_22CallSiteLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSA_22CallSiteLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v23 = "builtin.call_site_loc";
  v24 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::FileLineColLoc>(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::FileLineColLoc,mlir::LocationAttr,mlir::detail::FileLineColLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSB_25FileLineColLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSA_25FileLineColLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v23 = "builtin.file_line_loc";
  v24 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::FusedLoc>(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::FusedLoc,mlir::LocationAttr,mlir::detail::FusedLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSB_19FusedLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSA_19FusedLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v23 = "builtin.fused_loc";
  v24 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::NameLoc>(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::NameLoc,mlir::LocationAttr,mlir::detail::NameLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSB_18NameLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSA_18NameLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v23 = "builtin.name_loc";
  v24 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::OpaqueLoc>(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::OpaqueLoc,mlir::LocationAttr,mlir::detail::OpaqueLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSB_20OpaqueLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSA_20OpaqueLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v23 = "builtin.opaque_loc";
  v24 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::UnknownLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::UnknownLoc,mlir::LocationAttr,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10UnknownLocENS1_12LocationAttrENS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = v11;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10UnknownLocENS1_12LocationAttrENS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v24 = "builtin.unknown_loc";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_10UnknownLocEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSB_22CallSiteLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSA_22CallSiteLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v3 = *a3;
  v4 = a3[1];
  mlir::Attribute::getContext(&v11);
  v12 = v3;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = v4;
  v7 = (v4 >> 4) ^ (v4 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v12 >> 4) ^ (v12 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSB_25FileLineColLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSA_25FileLineColLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FileLineColLoc>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FileLineColLoc>(uint64_t a1, uint64_t **a2)
{
  v9 = a1;
  v2 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v3 = **a2;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v9);
  v10 = v3;
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail25FileLineColLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14FileLineColLocEJRNS1_10StringAttrERjSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = v2;
  v6 = __ROR8__(v2 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v10 >> 4) ^ (v10 >> 9));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v2, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSB_19FusedLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  if (v6)
  {
    v9 = 8 * v6;
    do
    {
      v10 = *v7++;
      mlir::AttrTypeImmediateSubElementWalker::walk(v12, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return mlir::AttrTypeImmediateSubElementWalker::walk(v12, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSA_19FusedLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FusedLoc>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FusedLoc>(uint64_t a1, int64x2_t *a2, __int128 *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v3 = *(a1 + 8);
  v17 = *(a1 + 24);
  v15 = *a2;
  v16 = v3;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::Location>,mlir::Attribute>,void>::replace(&v16, &v15, &v27);
  Context = mlir::Attribute::getContext(&v18);
  v24 = v26;
  v25 = 0x600000000;
  v5 = v28;
  if (v28)
  {
    if (v28 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v26, v27, 8 * v28);
    LODWORD(v25) = v5;
    v6 = v24;
  }

  else
  {
    v5 = 0;
    v6 = v26;
  }

  v7 = v30;
  v26[6] = v30;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v19[1] = Context;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v23[1] = v19;
  v22[0] = v6;
  v22[1] = v5;
  v22[2] = v7;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v6, &v6[2 * v5]);
  v10 = (v7 >> 4) ^ (v7 >> 9);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v20[0] = v22;
  v20[1] = v23;
  v21 = v22;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != &v29)
  {
    free(v27);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::Location>,mlir::Attribute>,void>::replace(void *a1@<X0>, int64x2_t *a2@<X1>, uint64_t a4@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::Location>,void>::replace(a1[1], a2, &__src);
  if (a1[2])
  {
    v7 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_25736B7B0);
    v8 = *v7.i64[0];
  }

  else
  {
    v8 = 0;
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  v9 = v13;
  v10 = __src;
  if (v13 && &__src != a4)
  {
    if (__src == v15)
    {
      if (v13 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a4 + 16), __src, 8 * v13);
      v10 = __src;
      *(a4 + 8) = v9;
    }

    else
    {
      *a4 = __src;
      v11 = v14;
      *(a4 + 8) = v9;
      *(a4 + 12) = v11;
      __src = v15;
      v14 = 0;
      v10 = v15;
    }

    v13 = 0;
  }

  *(a4 + 64) = v8;
  if (v10 != v15)
  {
    free(v10);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::Location>,void>::replace(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a1)
  {
    v3 = 8 * a1;
    v4 = xmmword_25736B7B0;
    do
    {
      while (1)
      {
        v5 = *a2;
        *a2 = vaddq_s64(*a2, v4);
        v6 = *v5.i64[0];
        v14 = *v5.i64[0];
        if (v16 >= HIDWORD(v16))
        {
          break;
        }

        *(__src + v16) = v6;
        LODWORD(v16) = v16 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v7 = a3;
      v8 = a2;
      v13 = v4;
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&__src, &v14);
      v4 = v13;
      a2 = v8;
      a3 = v7;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v9 = v16;
    v10 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v9 && &__src != a3)
    {
      if (v10 == v17)
      {
        if (v9 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = a3;
        memcpy(*a3, v10, 8 * v9);
        v10 = __src;
        *(v12 + 8) = v9;
      }

      else
      {
        *a3 = v10;
        v11 = HIDWORD(v16);
        *(a3 + 8) = v9;
        *(a3 + 12) = v11;
        __src = v17;
        HIDWORD(v16) = 0;
        v10 = v17;
      }

      LODWORD(v16) = 0;
    }

    if (v10 != v17)
    {
      free(v10);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSB_18NameLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSA_18NameLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::NameLoc>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::NameLoc>(uint64_t a1, uint64_t **a2)
{
  v12 = a1;
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = *v2++;
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5 = *v2;
  mlir::Attribute::getContext(&v12);
  v13 = v3;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v14[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v13;
  v17[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSB_20OpaqueLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSA_20OpaqueLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueLoc>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueLoc>(uint64_t a1, uint64_t **a2)
{
  v14 = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **a2;
  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v16[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail20OpaqueLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9OpaqueLocEJRmRNS1_6TypeIDERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextESC_DpOT0_EUlPSK_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v15;
  v7 = (v3 >> 4) ^ (v3 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v15 >> 4) ^ (v15 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * v2 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * v2 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void mlir::registerMLIRContextCLOptions(mlir *this)
{
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }
}

void mlir::MLIRContext::MLIRContext(mlir::DictionaryAttr *a1, uint64_t a2)
{
  v2 = a2;
  mlir::DialectRegistry::DialectRegistry(v4);
  mlir::MLIRContext::MLIRContext(a1, v4, v2);
}

_BYTE *mlir::DialectRegistry::appendTo(_BYTE *this, mlir::DialectRegistry *a2)
{
  v3 = this;
  v4 = this + 8;
  v5 = *this;
  if (*this != this + 8)
  {
    do
    {
      v9 = *(v5 + 55);
      if (v9 >= 0)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 = v5[4];
      }

      if (v9 >= 0)
      {
        v11 = *(v5 + 55);
      }

      else
      {
        v11 = v5[5];
      }

      this = mlir::DialectRegistry::insert(a2, v5[7], v10, v11, (v5 + 8));
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  v6 = *(v3 + 14);
  if (v6)
  {
    v7 = *(v3 + 6);
    v8 = 16 * v6;
    do
    {
      (*(**(v7 + 8) + 24))(&v18);
      v20 = *v7;
      v21 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(a2 + 3, &v20, &v21, &v22);
      if (v23 == 1)
      {
        v15 = *(a2 + 14);
        *(v22 + 8) = v15;
        v19 = &v18;
        v20 = v7;
        if (v15 >= *(a2 + 15))
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(a2 + 48, &std::piecewise_construct, &v20, &v19);
        }

        v16 = (*(a2 + 6) + 16 * v15);
        *v16 = *v7;
        v17 = v18;
        v18 = 0;
        v16[1] = v17;
        *(a2 + 14) = v15 + 1;
      }

      this = v18;
      v18 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      v7 += 16;
      v8 -= 16;
    }

    while (v8);
  }

  return this;
}

void mlir::MLIRContext::~MLIRContext(mlir::MLIRContextImpl **this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *this;
  *this = 0;
  if (v5)
  {
    mlir::MLIRContextImpl::~MLIRContextImpl(v5, a2, a3, a4);
  }
}

{
  v5 = *this;
  *this = 0;
  if (v5)
  {
    mlir::MLIRContextImpl::~MLIRContextImpl(v5, a2, a3, a4);
  }
}

uint64_t mlir::MLIRContext::registerActionHandler(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 24);
  *(v3 + 24) = 0;
  if (result != v3)
  {
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    *(v3 + 24) = 0;
    return result;
  }

  result = (*(*result + 32))(result);
  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5 == a2)
  {
    *(v3 + 24) = v3;
    v6 = *(**(a2 + 24) + 24);

    return v6();
  }

  else
  {
    *(v3 + 24) = v5;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t mlir::MLIRContext::executeActionInternal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v8[0] = a2;
  v8[1] = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, v8, a4);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::MLIRContext::hasActionHandler(v7);
}

void mlir::MLIRContext::appendDialectRegistry(mlir::MLIRContext *this, const mlir::DialectRegistry *a2)
{
  if ((mlir::DialectRegistry::isSubsetOf(a2, *this + 272) & 1) == 0)
  {
    mlir::DialectRegistry::appendTo(a2, (*this + 272));

    mlir::DialectRegistry::applyExtensions(a2, this);
  }
}

void mlir::MLIRContext::getLoadedDialects(void **__return_ptr a1@<X8>, mlir::MLIRContext *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(*this + 256))
  {
    operator new();
  }
}

void mlir::MLIRContext::getAvailableDialects(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(*this + 272);
  v4 = *this + 280;
  if (v3 != v4)
  {
    do
    {
      v5 = v3[4];
      v6 = *(v3 + 55);
      if (v6 >= 0)
      {
        v5 = v3 + 4;
      }

      if (v6 < 0)
      {
        v6 = v3[5];
      }

      *&v10 = v5;
      *(&v10 + 1) = v6;
      std::vector<llvm::StringRef>::push_back[abi:nn200100](a1, &v10);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }
}

void std::vector<llvm::StringRef>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t mlir::MLIRContext::getLoadedDialect(uint64_t *a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v4 = *a1;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a1 + 248), v8);
  v6 = *(v4 + 248) + 24 * *(v4 + 264);
  if (v5)
  {
    v6 = v5;
  }

  if (v6 == *(*a1 + 248) + 24 * *(*a1 + 264))
  {
    return 0;
  }

  else
  {
    return *(v6 + 16);
  }
}

uint64_t *(*mlir::MLIRContext::getOrLoadDialect(uint64_t *a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3))(uint64_t a1, uint64_t a2)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = *a1;
  v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a1 + 248), v11);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v6 + 248) + 24 * *(v6 + 264);
  }

  if (v8 == *(*a1 + 248) + 24 * *(*a1 + 264) || (result = *(v8 + 16)) == 0)
  {
    result = mlir::DialectRegistry::getDialectAllocator(*a1 + 272, a2, a3);
    if (result)
    {
      return result(v10, a1);
    }
  }

  return result;
}

size_t *mlir::MLIRContext::getOrLoadDialect(int32x2_t **a1, llvm::hashing::detail *a2, uint64_t a3, uint64_t a4, void (*a5)(llvm::formatv_object_base **__return_ptr, uint64_t), uint64_t a6)
{
  v34 = a2;
  v35 = a3;
  v9 = *a1;
  v31[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::try_emplace<decltype(nullptr)>(v9 + 248, &v34, &v32);
  if (v33 == 1)
  {
    a5(v31, a6);
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::operator[](v9 + 248, &v34);
    v11 = v31[0];
    v31[0] = 0;
    v12 = *v10;
    *v10 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v31[0];
    v31[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *v10;
    v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::doFind<llvm::StringRef>((v9 + 792), &v34);
    if (v15 && v15 != *(v9 + 792) + 80 * *(v9 + 808))
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v17)
      {
        v18 = *(v15 + 16);
        if (((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_13;
        }

        v19 = ((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v18 = &v16[v19 & 0x3FFFFFFFFFFFFFFELL];
        v20 = v16 + 1;
        v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v22 = *v20;
          *(*(v20 - 1) + 32) = v14;
          *(v22 + 32) = v14;
          v20 += 2;
          v21 -= 2;
        }

        while (v21);
        if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_13:
          v23 = &v16[v17];
          do
          {
            v24 = *v18++;
            *(v24 + 32) = v14;
          }

          while (v18 != v23);
        }
      }

      if (v16 != (v15 + 32))
      {
        v25 = v15;
        free(v16);
        v15 = v25;
      }

      *v15 = xmmword_257393000;
      *(v9 + 800) = vadd_s32(*(v9 + 800), 0x1FFFFFFFFLL);
    }

    mlir::DialectRegistry::applyExtensions((v9 + 272), v14);
    return v14;
  }

  else
  {
    if (*(*(v32 + 16) + 24) != a4)
    {
      v30 = 1283;
      v29[0] = "a dialect with namespace '";
      v29[2] = v34;
      v29[3] = v35;
      v27 = "' has already been registered";
      v28 = 259;
      llvm::operator+(v29, &v27, v31);
      llvm::report_fatal_error(v31, 1);
    }

    return *(v32 + 16);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t a1@<X0>, llvm::hashing::detail **a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v12);
  v7 = v12;
  if (!result)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*v7 == -1)
      {
LABEL_7:
        *v7 = *a2;
        v7[2] = 0;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(a1, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 24 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::operator[](uint64_t a1, llvm::hashing::detail **a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

BOOL mlir::MLIRContext::isDialectLoading(uint64_t *a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v4 = *a1;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a1 + 248), v8);
  v6 = *(v4 + 248) + 24 * *(v4 + 264);
  if (v5)
  {
    v6 = v5;
  }

  return v6 != *(*a1 + 248) + 24 * *(*a1 + 264) && *(v6 + 16) == 0;
}

mlir::DynamicDialect *mlir::MLIRContext::getOrLoadDynamicDialect(mlir::StringAttr *a1, llvm::hashing::detail *a2, llvm::formatv_object_base *a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  v21 = a3;
  v6 = *a1;
  v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a1 + 248), &v20);
  if (v7)
  {
    v10 = v7 == *(v6 + 248) + 24 * *(v6 + 264);
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v19 = 261;
    v18[0] = v20;
    v18[1] = v21;
    v16[0] = mlir::StringAttr::get(a1, v18, v9);
    operator new();
  }

  v11 = *(v7 + 16);
  v12 = mlir::DynamicDialect::classof(v11, v8);
  if (!v11 || !v12)
  {
    v17 = 1283;
    v16[0] = "a dialect with namespace '";
    v16[2] = v20;
    v16[3] = v21;
    v14 = "' has already been registered";
    v15 = 259;
    llvm::operator+(v16, &v14, v18);
    llvm::report_fatal_error(v18, 1);
  }

  return v11;
}

void mlir::MLIRContext::loadAllAvailableDialects(mlir::MLIRContext *this)
{
  v1 = *(*this + 272);
  v2 = *this + 280;
  if (v1 != v2)
  {
    operator new();
  }
}

unint64_t mlir::MLIRContext::getRegistryHash(mlir::MLIRContext *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 256);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = 0;
  LODWORD(v11) = v2;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
  v4 = *(*this + 624);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = v3;
  LODWORD(v11) = v4;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
  v6 = *(*this + 192);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = v5;
  LODWORD(v11) = v6;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
  v8 = *(*this + 368);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = v7;
  LODWORD(v11) = v8;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
}

void mlir::MLIRContext::disableMultithreading(uint64_t *this, char a2)
{
  if (atomic_load(clOptions))
  {
    if (atomic_load_explicit(clOptions, memory_order_acquire))
    {
      if (*(clOptions[0] + 128))
      {
        return;
      }
    }

    else
    {
      if (*(clOptions[0] + 128))
      {
        return;
      }
    }
  }

  v5 = *this;
  *(v5 + 41) = a2 ^ 1;
  mlir::StorageUniquer::disableMultithreading(v5 + 352, a2);
  mlir::StorageUniquer::disableMultithreading(*this + 640, a2);
  mlir::StorageUniquer::disableMultithreading(*this + 384, a2);
  v6 = *this;
  if ((a2 ^ 1))
  {
    if (!*(v6 + 48))
    {
      operator new();
    }
  }

  else
  {
    v7 = *(v6 + 56);
    if (v7)
    {
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v8 = *(*v7 + 16);

      v8();
    }
  }
}

void mlir::MLIRContext::setThreadPool(mlir::MLIRContext *this, llvm::ThreadPoolInterface *a2)
{
  v3 = *this;
  v4 = *(*this + 56);
  *(v3 + 48) = a2;
  *(v3 + 56) = 0;
  if (v4)
  {
    v5 = this;
    (*(*v4 + 16))(v4);
    this = v5;
    v2 = vars8;
  }

  mlir::MLIRContext::disableMultithreading(this, 0);
}

uint64_t mlir::MLIRContext::getNumThreads(mlir::MLIRContext *this)
{
  if (*(*this + 41) == 1)
  {
    return (*(**(*this + 48) + 40))();
  }

  else
  {
    return 1;
  }
}

BOOL mlir::MLIRContext::isOperationRegistered(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v6 = *a1;
  v7 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey((v6 + 208), a2, a3, v7);
  return Key != -1 && Key != *(v6 + 216);
}

uint64_t mlir::RegisteredOperationName::lookup(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v6 = *a3;
  v7 = llvm::StringMapImpl::hash(a1, a2, a3, a4);
  Key = llvm::StringMapImpl::FindKey((v6 + 208), a1, a2, v7);
  if (Key == -1 || Key == *(v6 + 216))
  {
    return 0;
  }

  else
  {
    return *(*(*(v6 + 208) + 8 * Key) + 8);
  }
}

void *mlir::Dialect::addType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = Slow + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *Slow = *a3;
  *(Slow + 8) = Slow + 24;
  *(Slow + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(Slow + 8, (a3 + 8));
  }

  *(Slow + 96) = 0;
  v11 = *(a3 + 96);
  *(Slow + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(Slow + 72, a3 + 72);
      (*((*(Slow + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(Slow + 88) = *(a3 + 88);
      *(Slow + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(Slow + 152) = *(a3 + 152);
  *(Slow + 136) = v15;
  *(Slow + 120) = v14;
  *(Slow + 104) = v13;
  *&v22 = a2;
  *(&v22 + 1) = Slow;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v5 + 45, &v22, &v22 + 1, v25);
  if ((v26 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Type already registered.", 1, v16);
  }

  v22 = *(Slow + 144);
  v23[0] = Slow;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>((v5 + 49), &v22, v23, v25);
  if ((v26 & 1) == 0)
  {
    v18 = *(Slow + 144);
    v19 = *(Slow + 152);
    v24 = 1283;
    *&v22 = "Dialect Type with name ";
    v23[0] = v18;
    v23[1] = v19;
    v20 = " is already registered.";
    v21 = 259;
    llvm::operator+(&v22, &v20, v25);
    llvm::report_fatal_error(v25, 1);
  }

  return result;
}

void *mlir::Dialect::addAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = Slow + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *Slow = *a3;
  *(Slow + 8) = Slow + 24;
  *(Slow + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(Slow + 8, (a3 + 8));
  }

  *(Slow + 96) = 0;
  v11 = *(a3 + 96);
  *(Slow + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(Slow + 72, a3 + 72);
      (*((*(Slow + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(Slow + 88) = *(a3 + 88);
      *(Slow + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(Slow + 152) = *(a3 + 152);
  *(Slow + 136) = v15;
  *(Slow + 120) = v14;
  *(Slow + 104) = v13;
  *&v22 = a2;
  *(&v22 + 1) = Slow;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v5 + 77, &v22, &v22 + 1, v25);
  if ((v26 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Attribute already registered.", 1, v16);
  }

  v22 = *(Slow + 144);
  v23[0] = Slow;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>((v5 + 81), &v22, v23, v25);
  if ((v26 & 1) == 0)
  {
    v18 = *(Slow + 144);
    v19 = *(Slow + 152);
    v24 = 1283;
    *&v22 = "Dialect Attribute with name ";
    v23[0] = v18;
    v23[1] = v19;
    v20 = " is already registered.";
    v21 = 259;
    llvm::operator+(&v22, &v20, v25);
    llvm::report_fatal_error(v25, 1);
  }

  return result;
}

uint64_t mlir::AbstractAttribute::lookup(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(*a2 + 632);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(*a2 + 616);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != a1)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1, a3);
  }

LABEL_3:
  result = *(v4 + 16 * v6 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::AbstractAttribute::lookupMutable(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 632);
  if (v2)
  {
    v3 = *(*a2 + 616);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 == a1)
    {
      return *(v3 + 16 * v5 + 8);
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        return *(v3 + 16 * v5 + 8);
      }
    }
  }

  return 0;
}

uint64_t mlir::AbstractAttribute::lookup(llvm::hashing::detail *a1, llvm::hashing::detail *a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a3 + 648), v4);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void *mlir::OperationName::Impl::Impl(void *a1, size_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 32);
  v20 = 261;
  v19[0] = a2;
  v19[1] = a3;
  v11 = mlir::StringAttr::get(v10, v19, a3);
  v21 = v23;
  v22 = 0x300000000;
  if (*(a6 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(&v21, a6);
    v12 = v22 == 0;
  }

  else
  {
    v12 = 1;
  }

  *a1 = &unk_28685E580;
  a1[1] = v11;
  a1[2] = a5;
  a1[3] = a4;
  a1[4] = a1 + 6;
  a1[5] = 0x300000000;
  if (v12)
  {
    a1[12] = 0;
    a1[13] = 0;
  }

  else
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=((a1 + 4), &v21);
    v13 = v22;
    a1[12] = 0;
    a1[13] = 0;
    v14 = v21;
    if (!v13)
    {
      goto LABEL_10;
    }

    v15 = 16 * v13;
    v16 = (v21 + 8);
    do
    {
      v17 = *v16;
      v16 += 2;
      free(v17);
      v15 -= 16;
    }

    while (v15);
  }

  v14 = v21;
LABEL_10:
  if (v14 != v23)
  {
    free(v14);
  }

  return a1;
}

void *mlir::OperationName::OperationName(void *a1, unsigned int *a2, const unsigned __int8 *a3, mlir::StringAttr *a4)
{
  v8 = 0;
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v9 = *a4;
  if (*(*a4 + 41) == 1)
  {
    v10 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
    Key = llvm::StringMapImpl::FindKey((v9 + 208), a2, a3, v10);
    if (Key != -1 && Key != *(v9 + 216))
    {
      *a1 = *(*(*(v9 + 208) + 8 * Key) + 8);
      return a1;
    }

    if ((mlir::OperationName::OperationName(v9, a2, a3, a1, v22) & 1) == 0)
    {
      return a1;
    }

    v8 = v22[0];
  }

  v19[1] = a2;
  v19[2] = a3;
  v20[0] = 0;
  v12 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  v14 = llvm::StringMap<std::unique_ptr<mlir::DialectVersion>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::DialectVersion>>((v9 + 160), a2, a3, v12, v20);
  v16 = v15;
  v17 = v20[0];
  v20[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (v16)
  {
    v23 = 261;
    v22[0] = a2;
    v22[1] = a3;
    v19[0] = mlir::StringAttr::get(a4, v22, v13);
    mlir::StringAttr::getReferencedDialect(v19);
    memset(v21, 0, sizeof(v21));
    v20[1] = v21;
    v20[2] = 0x300000000;
    operator new();
  }

  *a1 = *(*v14 + 8);
  if (v8)
  {
    llvm::sys::RWMutexImpl::unlock(v8);
  }

  return a1;
}

uint64_t llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::find(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  v9 = *a1;
  if (Key == -1)
  {
    return v9 + 8 * *(a1 + 2);
  }

  else
  {
    return v9 + 8 * Key;
  }
}

uint64_t mlir::OperationName::getDialectNamespace(mlir::OperationName *this)
{
  v2 = *this;
  if (*(*this + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v6[0] = *(v2 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v6);
    if (ReferencedDialect)
    {
      return *(ReferencedDialect + 8);
    }
  }

  else
  {
    ReferencedDialect = *(v2 + 24);
    if (ReferencedDialect)
    {
      return *(ReferencedDialect + 8);
    }
  }

  v6[0] = *(*this + 8);
  v6[0] = mlir::StringAttr::getValue(v6);
  v6[1] = v5;
  v7 = 46;
  llvm::StringRef::find(v6, &v7, 1uLL, 0);
  return v6[0];
}

unint64_t mlir::OperationName::UnregisteredOpModel::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (!v4)
  {
    return 0;
  }

  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  v9 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = mlir::DictionaryAttr::get(&v9, a3, a4);
  v6 = v5 & 0xFFFFFFFFFFFFFF00;
  v7 = v5;
  if (!v5)
  {
    v7 = 0;
    v6 = 0;
  }

  return v6 | v7;
}

void mlir::OperationName::UnregisteredOpModel::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[9] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v8)
  {
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
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

  mlir::NamedAttrList::NamedAttrList(v13, v9);
  mlir::NamedAttrList::set(v13, a3, a4);
  Context = mlir::Attribute::getContext((a2 + 24));
  Dictionary = mlir::NamedAttrList::getDictionary(v13, Context);
  if (HIBYTE(*(a2 + 44)))
  {
    v12 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  }

  else
  {
    v12 = 0;
  }

  *v12 = Dictionary;
  if (v13[0] != v14)
  {
    free(v13[0]);
  }
}

uint64_t mlir::RegisteredOperationName::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 200);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a2 + 184);
  v4 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != a1)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a1)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8);
}

uint64_t mlir::RegisteredOperationName::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*(*a1 + 24) + 32);
  v6 = *v5;
  if (a3)
  {
    v8 = (v6 + 64);
    v9 = *(v6 + 64);
    v10 = 8 * a3;
    *(v6 + 144) += v10;
    v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11 + v10;
    if (v9)
    {
      v13 = v12 > *(v6 + 72);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v51 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v8, v10, v10, 3);
      a2 = v51;
      v11 = Slow;
      v14 = a3;
      if (a3)
      {
LABEL_7:
        v15 = (a2 + 8);
        v16 = v11;
        do
        {
          v55 = 261;
          v54[0] = *(v15 - 1);
          v17 = *v15;
          v15 += 2;
          v54[1] = v17;
          *v16++ = mlir::StringAttr::get(v5, v54, v10);
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      *v8 = v12;
      v14 = a3;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    v4[12] = v11;
    v4[13] = a3;
  }

  v54[0] = v4[1];
  Value = mlir::StringAttr::getValue(v54);
  v20 = v19;
  v53 = 0;
  v23 = llvm::StringMapImpl::hash(Value, v19, v21, v22);
  v24 = llvm::StringMap<std::unique_ptr<mlir::DialectVersion>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::DialectVersion>>((v6 + 160), Value, v20, v23, &v53);
  v25 = v53;
  v53 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *v24;
  v27 = *a1;
  *a1 = 0;
  v28 = *(v26 + 8);
  *(v26 + 8) = v27;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = v4[2];
  v56 = v4;
  v57 = v29;
  llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::try_emplace<mlir::pdl_interp::ApplyConstraintOp>((v6 + 184), &v57, &v56, v54);
  v57 = v4;
  v32 = llvm::StringMapImpl::hash(Value, v20, v30, v31);
  result = llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>((v6 + 208), Value, v20, v32, &v57);
  v34 = v54[0];
  v35 = *(v6 + 232);
  v36 = *(v6 + 240);
  if (v36)
  {
    v37 = *(v6 + 232);
    do
    {
      v38 = v36 >> 1;
      v39 = &v37[v36 >> 1];
      v40 = *(*v39 + 8);
      v56 = *(*(v34 + 8) + 8);
      v57 = v40;
      if (v56 == v40 || ((v41 = mlir::StringAttr::getValue(&v56), v43 = v42, result = mlir::StringAttr::getValue(&v57), v45 = v44, v44 >= v43) ? (v46 = v43) : (v46 = v44), (!v46 || (result = memcmp(v41, result, v46), !result)) && v43 == v45))
      {
        v37 = v39 + 1;
        v38 = v36 + ~v38;
      }

      v36 = v38;
    }

    while (v38);
    v35 = *(v6 + 232);
    v47 = *(v34 + 8);
    v48 = *(v6 + 240);
    if ((v35 + 8 * v48) != v37)
    {
      if (v48 >= *(v6 + 244))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v35 + 8 * v48) = *(v35 + 8 * v48 - 8);
      v49 = *(v6 + 240);
      v50 = *(v6 + 232) + 8 * v49 - 8;
      if (v50 != v37)
      {
        result = memmove(v37 + 1, v37, v50 - v37);
        LODWORD(v49) = *(v6 + 240);
      }

      *(v6 + 240) = v49 + 1;
      *v37 = v47;
      return result;
    }
  }

  else
  {
    v47 = *(v54[0] + 8);
    v48 = 0;
  }

  if (v48 >= *(v6 + 244))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v35 + 8 * v48) = v47;
  ++*(v6 + 240);
  return result;
}

uint64_t mlir::AbstractType::lookup(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(*a2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(*a2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != a1)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1, a3);
  }

LABEL_3:
  result = *(v4 + 16 * v6 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::AbstractType::lookupMutable(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 376);
  if (v2)
  {
    v3 = *(*a2 + 360);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 == a1)
    {
      return *(v3 + 16 * v5 + 8);
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        return *(v3 + 16 * v5 + 8);
      }
    }
  }

  return 0;
}

uint64_t mlir::AbstractType::lookup(llvm::hashing::detail *a1, llvm::hashing::detail *a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a3 + 392), v4);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t mlir::IntegerType::get(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 > 31)
  {
    switch(a2)
    {
      case 0x20u:
        v7 = *(*a1 + 584);
        if (v7)
        {
          return v7;
        }

        break;
      case 0x40u:
        v7 = *(*a1 + 592);
        if (v7)
        {
          return v7;
        }

        break;
      case 0x80u:
        v7 = *(*a1 + 600);
        if (!v7)
        {
          break;
        }

        return v7;
      default:
        break;
    }

LABEL_2:
    v9 = a1;
    v3 = *a1;
    v8[0] = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
    v8[1] = &v9;
    v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
    v13[1] = v8;
    v12 = a2 | (a3 << 32);
    v4 = a3 ^ 0xFF51AFD7ED558CCDLL;
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * a2 + 8));
    v11 = &v12;
    v10[0] = &v12;
    v10[1] = v13;
    return mlir::StorageUniquer::getParametricStorageTypeImpl((v3 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  }

  if (a2 == 1)
  {
    v7 = *(*a1 + 560);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 == 8)
  {
    v7 = *(*a1 + 568);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 != 16)
  {
    goto LABEL_2;
  }

  v7 = *(*a1 + 576);
  if (!v7)
  {
    goto LABEL_2;
  }

  return v7;
}

uint64_t mlir::IntegerType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (!a5)
  {
    if (a4 > 31)
    {
      switch(a4)
      {
        case 0x20u:
          v11 = *(*a3 + 584);
          if (v11)
          {
            return v11;
          }

          break;
        case 0x40u:
          v11 = *(*a3 + 592);
          if (v11)
          {
            return v11;
          }

          break;
        case 0x80u:
          v11 = *(*a3 + 600);
          if (v11)
          {
            return v11;
          }

          break;
      }
    }

    else
    {
      switch(a4)
      {
        case 1u:
          v11 = *(*a3 + 560);
          if (v11)
          {
            return v11;
          }

          break;
        case 8u:
          v11 = *(*a3 + 568);
          if (v11)
          {
            return v11;
          }

          break;
        case 0x10u:
          v11 = *(*a3 + 576);
          if (v11)
          {
            return v11;
          }

          break;
      }
    }
  }

  if (mlir::IntegerType::verifyInvariants(a1, a2, a4))
  {
    v14 = a3;
    v8 = *a3;
    v13[0] = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
    v13[1] = &v14;
    v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
    v18[1] = v13;
    v17 = a4 | (a5 << 32);
    v9 = a5 ^ 0xFF51AFD7ED558CCDLL;
    v10 = 0x9DDFEA08EB382D69 * (v9 ^ (8 * a4 + 8));
    v15[0] = &v17;
    v15[1] = v18;
    v16 = &v17;
    return mlir::StorageUniquer::getParametricStorageTypeImpl((v8 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  return 0;
}

uint64_t mlir::NoneType::get(mlir::NoneType *this, mlir::MLIRContext *a2)
{
  v2 = *this;
  result = *(*this + 608);
  if (!result)
  {
    return mlir::StorageUniquer::getSingletonImpl((v2 + 384), &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id);
  }

  return result;
}

void *mlir::detail::AttributeUniquer::initializeAttributeStorage(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 632);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(*a2 + 616);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != a3)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a3)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1, a3);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *result = v8;
  return result;
}

uint64_t mlir::BoolAttr::get(mlir::BoolAttr *this, mlir::MLIRContext *a2)
{
  v2 = 672;
  if (a2)
  {
    v2 = 680;
  }

  return *(*this + v2);
}

void *mlir::detail::DistinctAttributeUniquer::allocateStorage(void *a1, uint64_t a2)
{
  v3 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get((*a1 + 816));
  v3[10] += 16;
  v4 = ((*v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = v4 + 2;
  if (*v3)
  {
    v6 = v5 > v3[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v3, 16, 16, 3);
    *result = 0;
    result[1] = a2;
  }

  else
  {
    *v3 = v5;
    *v4 = 0;
    v4[1] = a2;
    return v4;
  }

  return result;
}

void mlir::detail::StringAttrStorage::initialize(mlir::detail::StringAttrStorage *this, mlir::MLIRContext *a2)
{
  LOBYTE(v18[0]) = 46;
  v4 = llvm::StringRef::find(this + 2, v18, 1uLL, 0);
  if (v4 != -1)
  {
    v6 = *(this + 2);
    v5 = *(this + 3);
    v7 = (v4 >= v5 ? *(this + 3) : v4);
    v8 = v5 >= v4 + 1 ? v4 + 1 : *(this + 3);
    v17[0] = *(this + 2);
    v17[1] = v7;
    v17[2] = (v6 + v8);
    v17[3] = (v5 - v8);
    if (v7 && v5 > v4 + 1)
    {
      v18[0] = v17[0];
      v18[1] = v7;
      v10 = *a2;
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((*a2 + 248), v18);
      v12 = *(v10 + 248) + 24 * *(v10 + 264);
      if (v11)
      {
        v12 = v11;
      }

      v13 = *a2;
      if (v12 == *(v13 + 248) + 24 * *(v13 + 264))
      {
        *(this + 4) = 0;
      }

      else
      {
        v14 = *(v12 + 16);
        *(this + 4) = v14;
        if (v14)
        {
          return;
        }
      }

      std::recursive_mutex::lock((v13 + 720));
      v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::operator[]((v13 + 792), v17);
      v16 = *(v15 + 2);
      if (v16 >= *(v15 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *&(*v15)[8 * v16] = this;
      ++*(v15 + 2);
      std::recursive_mutex::unlock((v13 + 720));
    }
  }
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::operator[](uint64_t *a1, llvm::hashing::detail **a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 2);
    v7 = *(a1 + 4);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = (v5 + 4);
        v5[3] = 0x600000000;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 3);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 2);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

uint64_t mlir::AffineMap::getImpl(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a1;
  v9 = a2;
  v5 = *a5;
  v7 = &v8;
  v8 = a5;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v5 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v7, &v10, &v9, v11);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, void *a6)
{
  {
    v13 = a3;
    v14 = a6;
    v12 = a5;
    v15 = a2;
    v16 = a4;
    mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>();
    a2 = v15;
    a4 = v16;
    a3 = v13;
    a6 = v14;
    a5 = v12;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::detail::AffineMapStorage,void>::resolveTypeID(void)::id;
  v21[0] = a2;
  v21[1] = a3;
  v8 = *a5;
  v19[0] = *a4;
  v19[1] = v8;
  v20 = *a6;
  v9 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(v20, (v20 + 8 * *(&v20 + 1)))) | ((37 * v8) << 32));
  v10 = 0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ v9 | ((37 * v19[0]) << 32));
  v17[0] = v19;
  v17[1] = v21;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, (v10 >> 31) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::AffineMap::get(mlir::AffineMap *this, mlir::MLIRContext *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v7 = 0;
  v6 = 0;
  v2 = *this;
  v4 = &v5;
  v5 = this;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v2 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v4, &v7, &v6, v8);
}

uint64_t mlir::AffineMap::get(mlir::AffineMap *this, int a2, void *a3, mlir::MLIRContext *a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v9 = this;
  v8 = a2;
  v4 = *a3;
  v6 = &v7;
  v7 = a3;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v4 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v6, &v9, &v8, v10);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v14[0] = a3;
  Context = mlir::AffineExpr::getContext(&v8);
  v13[0] = v14;
  v13[1] = 1;
  v11 = a2;
  v12 = a1;
  v10 = Context;
  v6 = *Context;
  v9 = &v10;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v6 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v9, &v12, &v11, v13);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a1;
  v9 = a2;
  v5 = *a5;
  v7 = &v8;
  v8 = a5;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v5 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v7, &v10, &v9, v11);
}

uint64_t mlir::IntegerSet::get(int a1, int a2, mlir::AffineExpr *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = this;
  v12[1] = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  v9 = a2;
  v10 = a1;
  Context = mlir::AffineExpr::getContext(this);
  return mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>((*Context + 352), llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>::callback_fn<mlir::IntegerSet::get(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,llvm::ArrayRef<BOOL>)::$_0>, &v8, &v10, &v9, v12, &v11);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, void *a6, _OWORD *a7)
{
  {
    v20 = a5;
    v21 = a7;
    v17 = a6;
    v18 = a4;
    v22 = a3;
    v19 = a2;
    mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>();
    a2 = v19;
    a5 = v20;
    a7 = v21;
    a3 = v22;
    a4 = v18;
    a6 = v17;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::detail::IntegerSetStorage,void>::resolveTypeID(void)::id;
  v28[0] = a2;
  v28[1] = a3;
  v9 = *a5;
  v25[0] = *a4;
  v25[1] = v9;
  v10 = *a7;
  v26 = *a6;
  v27 = v10;
  v11 = (37 * v9);
  v12 = llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(v26, (v26 + 8 * *(&v26 + 1)));
  v13 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v27, v27 + *(&v27 + 1))) | (v12 << 32));
  v14 = 0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ v13 | (v11 << 32));
  v15 = 0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ v14 | ((37 * v25[0]) << 32));
  v23[0] = v25;
  v23[1] = v28;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v8, (v15 >> 31) ^ v15, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

uint64_t *mlir::detail::getDefaultDiagnosticEmitFn@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = this;
  a1[3] = llvm::detail::UniqueFunctionBase<mlir::InFlightDiagnostic>::CallbacksHolder<mlir::detail::getDefaultDiagnosticEmitFn(mlir::MLIRContext *)::$_0,mlir::detail::getDefaultDiagnosticEmitFn(mlir::MLIRContext *)::$_0,void>::Callbacks + 2;
  return this;
}

void *mlir::detail::getDefaultDiagnosticEmitFn@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[3] = &llvm::detail::UniqueFunctionBase<mlir::InFlightDiagnostic>::CallbacksHolder<mlir::detail::getDefaultDiagnosticEmitFn(mlir::Location const&)::$_0,mlir::detail::getDefaultDiagnosticEmitFn(mlir::Location const&)::$_0,void>::Callbacks + 2;
  return result;
}

void mlir::OperationName::UnregisteredOpModel::~UnregisteredOpModel(mlir::OperationName::UnregisteredOpModel *this)
{
  *this = &unk_28685E580;
  v2 = *(this + 4);
  v3 = *(this + 10);
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
    v2 = *(this + 4);
  }

  if (v2 != (this + 48))
  {
    free(v2);
  }
}

{
  *this = &unk_28685E580;
  v2 = *(this + 4);
  v3 = *(this + 10);
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
    v2 = *(this + 4);
  }

  if (v2 != (this + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = -24 * v6;
    v8 = &v5[24 * v6 - 24];
    do
    {
      v8 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(v8, v2, v3, v4) - 3;
      v7 += 24;
    }

    while (v7);
    v5 = *(a1 + 24);
  }

  if (v5 != (a1 + 40))
  {

    free(v5);
  }
}

uint64_t *mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1[2];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = a1[1];
      if (v7)
      {
        *v7 = 0;
        atomic_store(0, (v7 + 8));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v10, a2, a3, a4);
    MEMORY[0x259C63180](v11, 0x1090C40A49D047FLL);
  }

  return a1;
}

BOOL mlir::MLIRContext::getLoadedDialects(void)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (v4)
  {
    v5 = memcmp(*(*a1 + 8), *(*a2 + 8), v4);
    if (v5)
    {
      return v5 >> 31;
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  return v2 < v3;
}

uint64_t mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get(uint64_t *a1)
{
  {
    mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get();
  }

  v2 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache(void)::cache();
  v3 = *a1;
  v16 = *a1;
  v4 = v2 + 8;
  if (*v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v4 = *(v2 + 8);
  }

  v6 = v5 - 1;
  v7 = v6 & ((v3 >> 4) ^ (v3 >> 9));
  v8 = v4 + 40 * v7;
  v9 = *v8;
  if (v3 != *v8)
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
      v8 = v4 + 40 * v7;
      v9 = *v8;
      if (v3 == *v8)
      {
        goto LABEL_8;
      }
    }

    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = v8;
    }

LABEL_13:
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v2, v11, &v16);
  }

LABEL_8:
  result = **(v8 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    if (*(*a1 + 8) < *(*a1 + 12))
    {
      operator new();
    }

    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(*a1, (v8 + 8));
  }

  return result;
}

void mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::clearExpiredEntries(int *a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v7 = &v3[10 * v5];
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 42;
    if (v4 == a1 + 42)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v2)
  {
    v4 = a1 + 2;
    v7 = a1 + 42;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v6 = a1[4];
    v7 = &v4[10 * v6];
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = (*(a1 + 1) + 40 * a1[4]);
  if (v4 == v8)
  {
    return;
  }

LABEL_17:
  v9 = v4 + 10;
  if (v4 + 10 != v7)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = atomic_load((*(v4 + 1) + 8));
    if ((v11 & 1) == 0)
    {
      v12 = *(v4 + 4);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = *(v4 + 2);
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      *v4 = -8192;
      v10 = a1[1] + 1;
      *a1 -= 2;
      a1[1] = v10;
    }

    v4 = v9;
    if (v9 == v8)
    {
      break;
    }

    v9 += 10;
    if (v4 + 10 != v7)
    {
      do
      {
LABEL_22:
        if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }

        v9 += 10;
      }

      while (v9 != v7);
    }
  }
}

int *mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::~CacheType(int *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  if (*a1 <= 1)
  {
    if (v5)
    {
      v6 = a1 + 2;
      v7 = a1 + 42;
      v8 = 4;
    }

    else
    {
      v6 = *(a1 + 1);
      v8 = a1[4];
      v7 = &v6[10 * v8];
    }

    v10 = &v6[10 * v8];
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_12:
    v11 = a1 + 42;
    if (v7 == a1 + 42)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v7 = a1 + 2;
    v10 = a1 + 42;
LABEL_8:
    while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v7 += 10;
      if (v7 == v10)
      {
        v7 = v10;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    v9 = a1[4];
    v10 = &v7[10 * v9];
    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v11 = (*(a1 + 1) + 40 * a1[4]);
  if (v7 == v11)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v12 = *(v7 + 4);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = v13;
        v15 = *(v7 + 3);
        if (v15)
        {
          mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState::remove(v15, **(v7 + 1));
        }

        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }
    }

    do
    {
      v7 += 10;
    }

    while (v7 != v10 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v7 != v11);
LABEL_28:

  return llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(a1, a2, a3, a4);
}

void mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState::remove(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *a1 + 24 * v8;
  v10 = *a1;
  if (v8)
  {
    v11 = 24 * v8;
    v10 = *a1;
    while (*v10 != a2)
    {
      v10 += 3;
      v11 -= 24;
      if (!v11)
      {
        v10 = (*a1 + 24 * v8);
        break;
      }
    }
  }

  if (v10 + 3 != v9)
  {
    v12 = v10 + 4;
    do
    {
      v14 = *(v12 - 1);
      *(v12 - 1) = 0;
      v15 = *(v12 - 4);
      *(v12 - 4) = v14;
      if (v15)
      {
        v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v15, v4, v5, v6);
        MEMORY[0x259C63180](v16, 0x1090C40A49D047FLL);
      }

      v17 = *v12;
      *v12 = 0;
      v12[1] = 0;
      v18 = *(v12 - 2);
      *(v12 - 3) = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      v13 = v12 + 2;
      v12 += 3;
    }

    while (v13 != v9);
    LODWORD(v8) = *(a1 + 8);
    v7 = *a1;
  }

  v19 = v8 - 1;
  *(a1 + 8) = v19;
  mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(&v7[3 * v19], v4, v5, v6);

  std::recursive_mutex::unlock((a1 + 40));
}

int *llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(int *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  if (*a1)
  {
    v7 = a1 + 2;
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 1);
  }

  v8 = (v7 + 4);
  v9 = 40 * v6;
  do
  {
    if ((*(v8 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v10 = v8[2];
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v11 = *v8;
      if (*v8 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11, a2, a3, a4);
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    v8 += 5;
    v9 -= 40;
  }

  while (v9);
  v5 = *a1;
LABEL_14:
  if ((v5 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (40 * a1[4]));
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 40 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v3 + 40 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v21[15] = *MEMORY[0x277D85DE8];
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v6 > 4)
    {
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v6;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(a1, v7, &v7[5 * v8]);

    llvm::deallocate_buffer(v7, (40 * v8));
  }

  v9 = &v18;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 32);
    v19 = *(a1 + 16);
    v20 = v17;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = v21;
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_12:
      v11 = *(a1 + 88);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  *v9 = v10;
  *(v9 + 1) = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(v9 + 3) = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 += 5;
  v11 = *(a1 + 88);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *v9 = v11;
  *(v9 + 1) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(v9 + 3) = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v9 += 5;
  v12 = *(a1 + 128);
  if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v6 >= 5)
  {
LABEL_15:
    *a1 &= ~1u;
    v13 = a1;
    v14 = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
    a1 = v13;
    *(v13 + 8) = v14;
    *(v13 + 16) = v6;
  }

LABEL_16:
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(a1, &v18, v9);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = a1 + 42;
    v9 = a1 + 2;
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[10 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 10;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[10 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 20;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (v15 != *v19)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (v15 == *v19)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 2) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 6) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void *llvm::object_deleter<anonymous namespace::MLIRContextOptions>::call(void *result)
{
  if (result)
  {
    v1 = result;
    result[48] = &unk_28689F938;
    v2 = result + 68;
    v3 = result[71];
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      v1[48] = &unk_28689F010;
      v4 = v1[60];
      if (v4 != v1[59])
      {
LABEL_6:
        free(v4);
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v1[48] = &unk_28689F010;
      v4 = v1[60];
      if (v4 != v1[59])
      {
        goto LABEL_6;
      }
    }

    v5 = v1[56];
    if (v5 != v1 + 58)
    {
      free(v5);
    }

    v1[24] = &unk_28689F938;
    v6 = v1[47];
    if (v6 == v1 + 44)
    {
      (*(*v6 + 32))(v6);
      v1[24] = &unk_28689F010;
      v7 = v1[36];
      if (v7 != v1[35])
      {
LABEL_13:
        free(v7);
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v1[24] = &unk_28689F010;
      v7 = v1[36];
      if (v7 != v1[35])
      {
        goto LABEL_13;
      }
    }

    v8 = v1[32];
    if (v8 != v1 + 34)
    {
      free(v8);
    }

    *v1 = &unk_28689F938;
    v9 = v1[23];
    if (v9 == v1 + 20)
    {
      (*(*v9 + 32))(v9);
      *v1 = &unk_28689F010;
      v10 = v1[12];
      if (v10 != v1[11])
      {
LABEL_20:
        free(v10);
      }
    }

    else
    {
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      *v1 = &unk_28689F010;
      v10 = v1[12];
      if (v10 != v1[11])
      {
        goto LABEL_20;
      }
    }

    v11 = v1[8];
    if (v11 != v1 + 10)
    {
      free(v11);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

void mlir::MLIRContextImpl::~MLIRContextImpl(mlir::MLIRContextImpl *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(this + 92))
  {
    v5 = *(this + 94);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *(this + 45);
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v7 = *(this + 45);
    }

    v18 = *(this + 45) + 16 * v5;
    while (v7 != v18)
    {
      v19 = v7[1];
      v20 = *(v19 + 96);
      if (v20 >= 8)
      {
        if ((v20 & 4) != 0)
        {
          v21 = (v19 + 72);
          if ((v20 & 2) == 0)
          {
            v21 = *v21;
          }

          (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v21, a2, a3, a4);
        }

        if ((v20 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v19 + 72), *(v19 + 80));
        }
      }

      v22 = *(v19 + 8);
      v23 = *(v19 + 16);
      if (v23)
      {
        v24 = 16 * v23;
        v25 = v22 + 1;
        do
        {
          v26 = *v25;
          v25 += 2;
          free(v26);
          v24 -= 16;
        }

        while (v24);
        v22 = *(v19 + 8);
      }

      if (v22 != (v19 + 24))
      {
        free(v22);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v18 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_6:
  if (*(this + 156))
  {
    v8 = *(this + 158);
    if (v8)
    {
      v9 = 16 * v8;
      v10 = *(this + 77);
      while ((*v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v10 += 2;
        v9 -= 16;
        if (!v9)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v10 = *(this + 77);
    }

    v27 = *(this + 77) + 16 * v8;
    while (v10 != v27)
    {
      v28 = v10[1];
      v29 = *(v28 + 96);
      if (v29 >= 8)
      {
        if ((v29 & 4) != 0)
        {
          v30 = (v28 + 72);
          if ((v29 & 2) == 0)
          {
            v30 = *v30;
          }

          (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v30, a2, a3, a4);
        }

        if ((v29 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v28 + 72), *(v28 + 80));
        }
      }

      v31 = *(v28 + 8);
      v32 = *(v28 + 16);
      if (v32)
      {
        v33 = 16 * v32;
        v34 = v31 + 1;
        do
        {
          v35 = *v34;
          v34 += 2;
          free(v35);
          v33 -= 16;
        }

        while (v33);
        v31 = *(v28 + 8);
      }

      if (v31 != (v28 + 24))
      {
        free(v31);
      }

      do
      {
        v10 += 2;
      }

      while (v10 != v27 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_11:
  v11 = *(this + 103);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11, a2, a3, a4);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(this + 202);
    v13 = *(this + 99);
    if (v12)
    {
LABEL_14:
      v14 = 80 * v12;
      v15 = v13 + 32;
      do
      {
        if (*(v15 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = *(v15 - 2);
          if (v15 != v16)
          {
            free(v16);
          }
        }

        v15 += 80;
        v14 -= 80;
      }

      while (v14);
      v13 = *(this + 99);
      v17 = 80 * *(this + 202);
LABEL_60:
      llvm::deallocate_buffer(v13, v17);
    }
  }

  else
  {
    v12 = *(this + 202);
    v13 = *(this + 99);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  v17 = 0;
  goto LABEL_60;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_(uint64_t result, void *a2, BOOL a3)
{
  v3 = ***(result + 8);
  v4 = *(v3 + 376);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 360);
  v6 = v4 - 1;
  v7 = (v4 - 1) & ((*result >> 4) ^ (*result >> 9));
  v8 = *(v5 + 16 * (v6 & ((*result >> 4) ^ (*result >> 9))));
  if (v8 != *result)
  {
    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v5 + 16 * v7);
      if (v8 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1, a3);
  }

LABEL_3:
  v9 = *(v5 + 16 * v7 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  *a2 = v9;
  return result;
}

const char *llvm::getTypeName<mlir::detail::AffineMapStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineMapStorage]";
  v6 = 80;
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

const char *llvm::getTypeName<mlir::detail::IntegerSetStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::IntegerSetStorage]";
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

_OWORD *llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL);
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B6D0;
        *(v17 + 24) = xmmword_25736B6D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v30);
              v23 = v30;
              *v30 = *v22;
              v24 = *(v22 + 2);
              *(v22 + 2) = 0;
              v23[2] = v24;
              ++*(a1 + 8);
              v25 = *(v22 + 2);
              *(v22 + 2) = 0;
              if (v25)
              {
                (*(*v25 + 8))(v25);
              }
            }

            v22 = (v22 + 24);
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = result + 24 * v10;
    do
    {
      *v12 = xmmword_25736B6D0;
      v12 += 24;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_26:
      v29 = result + 24 * v13;
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 += 24;
      }

      while (v15 != v29);
      return result;
    }

    v26 = v14 / 0x18 + 1;
    v15 = result + 24 * (v26 & 0x1FFFFFFFFFFFFFFELL);
    v27 = result;
    v28 = v26 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v27 = xmmword_25736B6D0;
      *(v27 + 24) = xmmword_25736B6D0;
      v27 += 3;
      v28 -= 2;
    }

    while (v28);
    if (v26 != (v26 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::doFind<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v6 = v2 - 1;
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 80 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 80 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }
  }

  else if (v7 == -2)
  {
    v16 = 1;
    v17 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 80 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    v28 = 1;
    v29 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v30 = *result;
    if (*result == -2)
    {
      goto LABEL_27;
    }

    while (v30 != -1)
    {
      if (!*(result + 8))
      {
        return result;
      }

      do
      {
LABEL_27:
        v31 = v28 + v29;
        ++v28;
        v29 = v31 & v6;
        result = v3 + 80 * (v31 & v6);
        v30 = *result;
      }

      while (*result == -2);
    }
  }

  if (v7 != -1)
  {
    return 0;
  }

  return result;
}

uint64_t llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::MLIRContext::getOrLoadDynamicDialect(llvm::StringRef,llvm::function_ref<void ()(mlir::DynamicDialect *)>)::$_0>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(a1 + 8))(*(a1 + 16), *a1);
  *a2 = *a1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>@<X0>(uint64_t a1@<X0>, llvm::hashing::detail **a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v9[2] = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t result, void *a2, BOOL a3)
{
  v3 = ***(result + 8);
  v4 = *(v3 + 376);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 360);
  v6 = v4 - 1;
  v7 = (v4 - 1) & ((*result >> 4) ^ (*result >> 9));
  v8 = *(v5 + 16 * (v6 & ((*result >> 4) ^ (*result >> 9))));
  if (v8 != *result)
  {
    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v5 + 16 * v7);
      if (v8 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1, a3);
  }

LABEL_3:
  v9 = *(v5 + 16 * v7 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  *a2 = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = v4 - 1;
  v9 = *a2;
  v10 = a2[1];
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 80 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 80 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 80 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 80 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 80 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 80 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(80 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 80 * v10 - 80;
    if (v11 >= 0x50)
    {
      v16 = v11 / 0x50 + 1;
      v12 = &result[5 * (v16 & 0x7FFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B6D0;
        v17[5] = xmmword_25736B6D0;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 5 * v3;
        if (v3)
        {
          v21 = 80 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v30);
              v23 = v30;
              *v30 = *v22;
              v23[3] = 0x600000000;
              v23[2] = (v23 + 4);
              v24 = (v23 + 2);
              if (*(v22 + 6))
              {
                llvm::SmallVectorImpl<unsigned long>::operator=(v24, v22 + 2);
              }

              ++*(a1 + 8);
              v25 = *(v22 + 2);
              if (v22 + 32 != v25)
              {
                free(v25);
              }
            }

            v22 = (v22 + 80);
            v21 -= 80;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (16 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[5 * v10];
    do
    {
      *v12 = xmmword_25736B6D0;
      v12 += 5;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 80 * v13 - 80;
    if (v14 < 0x50)
    {
      v15 = result;
LABEL_28:
      v29 = &result[5 * v13];
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 += 5;
      }

      while (v15 != v29);
      return result;
    }

    v26 = v14 / 0x50 + 1;
    v15 = &result[5 * (v26 & 0x7FFFFFFFFFFFFFELL)];
    v27 = result;
    v28 = v26 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v27 = xmmword_25736B6D0;
      v27[5] = xmmword_25736B6D0;
      v27 += 10;
      v28 -= 2;
    }

    while (v28);
    if (v26 != (v26 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_28;
    }
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(void *a1, void *a2)
{
  v106[1] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v95 = 0;
  }

  else
  {
    v2 = HIDWORD(*a1);
    v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    *&v102 = v4;
    if (a1 + 1 == a2)
    {
      v95 = 8;
    }

    else
    {
      v5 = HIDWORD(a1[1]);
      v6 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v5);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
      *(&v102 + 1) = v7;
      if (a1 + 2 == a2)
      {
        v95 = 16;
      }

      else
      {
        v8 = HIDWORD(a1[2]);
        v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
        v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
        *&v103 = v10;
        if (a1 + 3 == a2)
        {
          v95 = 24;
        }

        else
        {
          v11 = HIDWORD(a1[3]);
          v12 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v11);
          v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
          *(&v103 + 1) = v13;
          if (a1 + 4 == a2)
          {
            v95 = 32;
          }

          else
          {
            v14 = HIDWORD(a1[4]);
            v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
            v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
            *&v104 = v16;
            if (a1 + 5 == a2)
            {
              v95 = 40;
            }

            else
            {
              v17 = HIDWORD(a1[5]);
              v18 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v17);
              v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
              *(&v104 + 1) = v19;
              if (a1 + 6 == a2)
              {
                v95 = 48;
              }

              else
              {
                v20 = HIDWORD(a1[6]);
                v21 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v20);
                v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
                *&v105 = v22;
                if (a1 + 7 == a2)
                {
                  v95 = 56;
                }

                else
                {
                  v23 = HIDWORD(a1[7]);
                  v24 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v23);
                  *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                  v25 = a1 + 8;
                  if (a1 + 8 != a2)
                  {
                    v101 = &v103;
                    v26 = v16 + 0x4BF62CB950C3753ALL;
                    v27 = v19 + v22 + v16 + 0x4BF62CB950C3753ALL;
                    v28 = v27 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                    v29 = v19 - 0x4B6D499041670D8DLL * __ROR8__(v22 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v30 = __ROR8__(v27, 44) + v26 + __ROR8__(v29 + v10 + v26 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47)), 21);
                    v31 = v4 + 0x298DF016A9F64655 + v7 + v10 + v13;
                    v32 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v33 = __ROR8__(v4 + 0x298DF016A9F64655 + v7 + v10, 44) + v4 + 0x298DF016A9F64655 + __ROR8__(v32 + v4 + 0x298DF016A9F64655 + v13 - 0xAE502812AB8D92, 21);
                    v34 = 0x544962662A7EE1A4;
                    v35 = 64;
                    while (1)
                    {
                      v45 = v25 + 1;
                      v46 = HIDWORD(*v25);
                      v47 = 0x9DDFEA08EB382D69 * ((8 * *v25 - 0xAE502812AA7333) ^ v46);
                      *&v102 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) ^ ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) >> 47));
                      v48 = v25 + 1 == a2;
                      if (v25 + 1 == a2)
                      {
                        v63 = 0;
                        v64 = &v102 + 8;
                        v65 = 8;
                      }

                      else
                      {
                        v49 = HIDWORD(v25[1]);
                        v50 = 0x9DDFEA08EB382D69 * ((8 * v25[1] - 0xAE502812AA7333) ^ v49);
                        *(&v102 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) ^ ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) >> 47));
                        v45 = v25 + 2;
                        v48 = v25 + 2 == a2;
                        if (v25 + 2 == a2)
                        {
                          v63 = 8;
                          v64 = v101;
                          v65 = 16;
                        }

                        else
                        {
                          v51 = HIDWORD(v25[2]);
                          v52 = 0x9DDFEA08EB382D69 * ((8 * v25[2] - 0xAE502812AA7333) ^ v51);
                          *&v103 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
                          v45 = v25 + 3;
                          v48 = v25 + 3 == a2;
                          if (v25 + 3 == a2)
                          {
                            v63 = 16;
                            v64 = &v103 + 8;
                            v65 = 24;
                          }

                          else
                          {
                            v53 = HIDWORD(v25[3]);
                            v54 = 0x9DDFEA08EB382D69 * ((8 * v25[3] - 0xAE502812AA7333) ^ v53);
                            *(&v103 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
                            v45 = v25 + 4;
                            v48 = v25 + 4 == a2;
                            if (v25 + 4 == a2)
                            {
                              v63 = 24;
                              v64 = &v104;
                              v65 = 32;
                            }

                            else
                            {
                              v55 = HIDWORD(v25[4]);
                              v56 = 0x9DDFEA08EB382D69 * ((8 * v25[4] - 0xAE502812AA7333) ^ v55);
                              *&v104 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) ^ ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) >> 47));
                              v45 = v25 + 5;
                              v48 = v25 + 5 == a2;
                              if (v25 + 5 == a2)
                              {
                                v63 = 32;
                                v64 = &v104 + 8;
                                v65 = 40;
                              }

                              else
                              {
                                v57 = HIDWORD(v25[5]);
                                v58 = 0x9DDFEA08EB382D69 * ((8 * v25[5] - 0xAE502812AA7333) ^ v57);
                                *(&v104 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) ^ ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) >> 47));
                                v45 = v25 + 6;
                                v48 = v25 + 6 == a2;
                                if (v25 + 6 == a2)
                                {
                                  v63 = 40;
                                  v64 = &v105;
                                  v65 = 48;
                                }

                                else
                                {
                                  v59 = HIDWORD(v25[6]);
                                  v60 = 0x9DDFEA08EB382D69 * ((8 * v25[6] - 0xAE502812AA7333) ^ v59);
                                  *&v105 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) ^ ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) >> 47));
                                  v45 = v25 + 7;
                                  v48 = v25 + 7 == a2;
                                  if (v25 + 7 != a2)
                                  {
                                    v61 = HIDWORD(v25[7]);
                                    v62 = 0x9DDFEA08EB382D69 * ((8 * v25[7] - 0xAE502812AA7333) ^ v61);
                                    *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
                                    v25 += 8;
                                    v48 = v25 == a2;
                                    v63 = 56;
                                    v64 = v106;
                                    v65 = 64;
                                    goto LABEL_28;
                                  }

                                  v63 = 48;
                                  v64 = &v105 + 8;
                                  v65 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v25 = v45;
LABEL_28:
                      if ((v65 & 0x38) != 0)
                      {
                        v66 = 56 - v63;
                        v67 = v65;
                        if (v65 != 56 - v63)
                        {
                          do
                          {
                            v74 = v67;
                            v67 = v66;
                            v66 = v74 % v66;
                          }

                          while (v66);
                          v75 = (&v102 + v67);
                          do
                          {
                            v77 = *(v75 - 1);
                            v75 = (v75 - 1);
                            v76 = v77;
                            v78 = (v75 + v65);
                            v79 = v75;
                            do
                            {
                              v80 = v79;
                              v79 = v78;
                              *v80 = *v78;
                              v81 = v65 < v106 - v78;
                              v82 = &v102 + v65 - (v106 - v78);
                              v78 = (v78 + v65);
                              if (!v81)
                              {
                                v78 = v82;
                              }
                            }

                            while (v78 != v75);
                            *v79 = v76;
                          }

                          while (v75 != &v102);
                          goto LABEL_11;
                        }

                        v68 = v63 | 7;
                        if (55 - v63 < (v63 | 7uLL))
                        {
                          v68 = 55 - v63;
                        }

                        v69 = &v102;
                        if (&v102 < (&v102 | 9) + v63 + v68)
                        {
                          v70 = v65;
                          if (v64 < &v102 + v68 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v68 >= 0x1F)
                        {
                          v84 = v68 + 1;
                          v83 = (v68 + 1) & 0x60;
                          v85 = v102;
                          v86 = v103;
                          v87 = *(v64 + 1);
                          v102 = *(&v102 + v65);
                          v103 = v87;
                          *(&v102 + v65) = v85;
                          *(v64 + 1) = v86;
                          if (v83 != 32)
                          {
                            v88 = v104;
                            v89 = v105;
                            v90 = *(v64 + 3);
                            v104 = *(v64 + 2);
                            v105 = v90;
                            *(v64 + 2) = v88;
                            *(v64 + 3) = v89;
                          }

                          if (v84 == v83)
                          {
                            goto LABEL_11;
                          }

                          if ((v84 & 0x18) == 0)
                          {
                            v69 = &v102 + v83;
                            v70 = v65 + v83;
LABEL_34:
                            v71 = v69 + 1;
                            do
                            {
                              v72 = *(v71 - 1);
                              *(v71 - 1) = *(&v102 + v70);
                              *(&v102 + v70) = v72;
                              if (v71 == v64)
                              {
                                break;
                              }

                              ++v71;
                            }

                            while (v70++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v83 = 0;
                        }

                        v91 = &v64[v83];
                        v92 = (&v102 + v83);
                        v93 = v68 - v83 + 1;
                        do
                        {
                          v94 = *v92;
                          *v92++ = *v91;
                          *v91 = v94;
                          v91 += 8;
                          v93 -= 8;
                        }

                        while (v93);
                      }

LABEL_11:
                      v36 = v29 + v31 + v34 + *(&v102 + 1);
                      v29 = *(&v104 + 1) + v31 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v33 + v105, 42);
                      v37 = v32 + v28;
                      v38 = v102 - 0x4B6D499041670D8DLL * v33;
                      v39 = v28 + v38;
                      v40 = v38 + *(&v102 + 1) + v103;
                      v41 = __ROR8__(v40, 44) + v38;
                      v42 = __ROR8__(v37, 33);
                      v43 = (0xB492B66FBE98F273 * __ROR8__(v36, 37)) ^ v30;
                      v33 = v41 + __ROR8__(v43 + v39 + *(&v103 + 1), 21);
                      v34 = 0xB492B66FBE98F273 * v42;
                      v44 = 0xB492B66FBE98F273 * v42 + v30 + v104;
                      v31 = v40 + *(&v103 + 1);
                      v30 = __ROR8__(v29 + v103 + v44 + *(&v105 + 1), 21) + v44 + __ROR8__(*(&v104 + 1) + v105 + v44, 44);
                      v28 = *(&v104 + 1) + v105 + v44 + *(&v105 + 1);
                      v35 += v65;
                      v32 = v43;
                      if (v48)
                      {
                        v96 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v31 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ v28)));
                        v97 = 0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v30)));
                        v98 = 0x9DDFEA08EB382D69 * (v97 ^ (v97 >> 47)) - 0x4B6D499041670D8DLL * ((v35 ^ (v35 >> 47)) + v42);
                        v99 = 0x9DDFEA08EB382D69 * (v98 ^ (v43 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * (v96 ^ (v96 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) ^ ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) >> 47));
                      }
                    }
                  }

                  v95 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v102, v95, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, _DWORD *a2)
{
  v2 = *a1;
  if (**a1 != *a2)
  {
    return 0;
  }

  if (v2[1] != a2[1])
  {
    return 0;
  }

  v3 = *(v2 + 2);
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  v5 = (a2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v5 = 8 * v4;
  v6 = 8 * v4 + 24;
  a2[10] += v6;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v21 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8 * v4 + 24, v6, 3);
    a1 = v21;
  }

  else
  {
    *a2 = v8;
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 0;
  *Slow = *v2;
  *(Slow + 4) = v2[1];
  *(Slow + 8) = v4;
  if (v4)
  {
    v10 = (Slow + 24);
    if ((v5 - 8) < 0x28)
    {
      v11 = v3;
      do
      {
LABEL_13:
        v18 = *v11++;
        *v10++ = v18;
      }

      while (v11 != (v3 + 8 * v4));
      goto LABEL_14;
    }

    v11 = v3;
    if (Slow - v3 + 24 < 0x20)
    {
      goto LABEL_13;
    }

    v12 = ((v5 - 8) >> 3) + 1;
    v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
    v10 = (v10 + v13);
    v11 = (v3 + v13);
    v14 = (v3 + 16);
    v15 = (Slow + 40);
    v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v19 = a1[1];
  if (*v19)
  {
    (*v19)(*(v19 + 8), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *a2 && v2[1] == *(a2 + 4))
  {
    v3 = *(v2 + 2);
    if (v3 == *(a2 + 16))
    {
      if (v3)
      {
        v4 = *(v2 + 1);
        v5 = *(a2 + 8);
        v6 = 8 * v3;
        while (*v4 == *v5)
        {
          ++v4;
          ++v5;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = *(v2 + 4);
        if (v7 == *(a2 + 32))
        {
          return memcmp(*(v2 + 3), *(a2 + 24), v7) == 0;
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::detail::IntegerSetStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::IntegerSetStorage::construct(uint64_t *a1, uint64_t a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = result + 40;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v21 = a2;
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    a2 = v21;
  }

  else
  {
    *a1 = v6;
  }

  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  v8 = *(a2 + 16);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v9 = *(a2 + 8);
  v10 = 8 * v8;
  a1[10] += 8 * v8;
  if (!*a1 || (v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v11 + v10 > a1[1]))
  {
    v22 = result;
    v23 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v8, 8 * v8, 3);
    a2 = v23;
    v11 = Slow;
    result = v22;
    v12 = v10 - 8;
    if ((v10 - 8) >= 0x18)
    {
      goto LABEL_10;
    }

LABEL_18:
    v13 = v11;
    v14 = v9;
    do
    {
LABEL_19:
      v25 = *v14++;
      *v13++ = v25;
    }

    while (v14 != (v9 + 8 * v8));
    goto LABEL_20;
  }

  *a1 = v11 + v10;
  v12 = v10 - 8;
  if ((v10 - 8) < 0x18)
  {
    goto LABEL_18;
  }

LABEL_10:
  v13 = v11;
  v14 = v9;
  if (v11 - v9 < 0x20)
  {
    goto LABEL_19;
  }

  v15 = (v12 >> 3) + 1;
  v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
  v13 = (v11 + v16);
  v14 = (v9 + v16);
  v17 = (v9 + 16);
  v18 = (v11 + 16);
  v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = *v17;
    *(v18 - 1) = *(v17 - 1);
    *v18 = v20;
    v17 += 2;
    v18 += 2;
    v19 -= 4;
  }

  while (v19);
  if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_19;
  }

LABEL_20:
  *(result + 8) = v11;
  *(result + 16) = v8;
  v26 = *(a2 + 32);
  if (!v26)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    return result;
  }

  v27 = *(a2 + 24);
  a1[10] += v26;
  v28 = *a1;
  if (*a1 && v26 + v28 <= a1[1])
  {
    *a1 = v26 + v28;
    if (v26 >= 8)
    {
      goto LABEL_24;
    }

LABEL_38:
    v29 = v28;
    v30 = v27;
    goto LABEL_39;
  }

  v40 = result;
  v28 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v26, v26, 0);
  result = v40;
  if (v26 < 8)
  {
    goto LABEL_38;
  }

LABEL_24:
  v29 = v28;
  v30 = v27;
  if ((v28 - v27) >= 0x20)
  {
    if (v26 < 0x20)
    {
      v31 = 0;
      goto LABEL_32;
    }

    v31 = v26 & 0xFFFFFFFFFFFFFFE0;
    v32 = (v27 + 16);
    v33 = (v28 + 16);
    v34 = v26 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v35 = *v32;
      *(v33 - 1) = *(v32 - 1);
      *v33 = v35;
      v32 += 2;
      v33 += 2;
      v34 -= 32;
    }

    while (v34);
    if (v26 == v31)
    {
      goto LABEL_35;
    }

    if ((v26 & 0x18) != 0)
    {
LABEL_32:
      v29 = (v28 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v30 = (v27 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v36 = (v27 + v31);
      v37 = (v28 + v31);
      v38 = v31 - (v26 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v39 = *v36++;
        *v37++ = v39;
        v38 += 8;
      }

      while (v38);
      if (v26 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v30 = (v27 + v31);
    v29 = (v28 + v31);
  }

  do
  {
LABEL_39:
    v41 = *v30++;
    *v29++ = v41;
  }

  while (v30 != (v27 + v26));
LABEL_35:
  *(result + 24) = v28;
  *(result + 32) = v26;
  return result;
}

uint64_t mlir::convertFromAttribute(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t **__return_ptr, uint64_t), uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (v4)
  {
    mlir::IntegerAttr::getValue(&v18, &v21);
    if (v22 > 0x40)
    {
      *a1 = *v21;
      MEMORY[0x259C63150]();
    }

    else
    {
      if (v22)
      {
        v6 = (v21 << -v22) >> -v22;
      }

      else
      {
        v6 = 0;
      }

      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(&v21, a4);
    if (v21)
    {
      LODWORD(v19) = 3;
      v20 = 36;
      if (v24 >= v25)
      {
        if (v23 > &v19 || v23 + 24 * v24 <= &v19)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v23 + 24 * v24;
      v8 = v19;
      *(v7 + 2) = v20;
      *v7 = v8;
      ++v24;
      if (v21)
      {
        mlir::InFlightDiagnostic::report(&v21);
      }
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v30;
        v11 = __p;
        if (v30 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v30 = v9;
        operator delete(v11);
      }

      v12 = v27;
      if (v27)
      {
        v13 = v28;
        v14 = v27;
        if (v28 != v27)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v27;
        }

        v28 = v12;
        operator delete(v14);
      }

      if (v23 != &v26)
      {
        free(v23);
      }
    }

    return 0;
  }
}

uint64_t mlir::convertToAttribute(mlir *this, mlir::MLIRContext *a2)
{
  v3 = mlir::IntegerType::get(this, 0x40u, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

{
  v2 = a2;
  v3 = mlir::IntegerType::get(this, 0x20u, 0);

  return mlir::IntegerAttr::get(v3, v2);
}

uint64_t mlir::convertFromAttribute(_DWORD *a1, uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (v4)
  {
    mlir::IntegerAttr::getValue(&v18, &v21);
    if (v22 > 0x40)
    {
      *a1 = *v21;
      MEMORY[0x259C63150]();
    }

    else
    {
      if (v22)
      {
        v6 = (v21 << -v22) >> -v22;
      }

      else
      {
        v6 = 0;
      }

      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(&v21, a4);
    if (v21)
    {
      LODWORD(v19) = 3;
      v20 = 36;
      if (v24 >= v25)
      {
        if (v23 > &v19 || v23 + 24 * v24 <= &v19)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v23 + 24 * v24;
      v8 = v19;
      *(v7 + 2) = v20;
      *v7 = v8;
      ++v24;
      if (v21)
      {
        mlir::InFlightDiagnostic::report(&v21);
      }
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v30;
        v11 = __p;
        if (v30 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v30 = v9;
        operator delete(v11);
      }

      v12 = v27;
      if (v27)
      {
        v13 = v28;
        v14 = v27;
        if (v28 != v27)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v27;
        }

        v28 = v12;
        operator delete(v14);
      }

      if (v23 != &v26)
      {
        free(v23);
      }
    }

    return 0;
  }
}

BOOL mlir::convertFromAttribute(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  if (v4)
  {
    Value = mlir::StringAttr::getValue(&v21);
    if (Value)
    {
      v8 = v7;
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = v7;
      if (v7)
      {
        memmove(&__dst, Value, v7);
      }

      *(&__dst + v8) = 0;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      __dst = 0uLL;
      v25 = 0;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
LABEL_35:
        *a1 = __dst;
        *(a1 + 16) = v25;
        return 1;
      }
    }

    operator delete(*a1);
    goto LABEL_35;
  }

  a3(&__dst, a4);
  if (__dst)
  {
    LODWORD(v22) = 3;
    *(&v22 + 1) = "expected string property to come from string attribute";
    v23 = 54;
    if (v27 >= v28)
    {
      if (v26 > &v22 || v26 + 24 * v27 <= &v22)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v26 + 24 * v27;
    v10 = v22;
    *(v9 + 2) = v23;
    *v9 = v10;
    ++v27;
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__dst);
  if (__dst)
  {
    mlir::InFlightDiagnostic::report(&__dst);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::convertToAttribute(mlir::StringAttr *a1, size_t a2, const llvm::Twine *a3)
{
  v5 = 260;
  v4[0] = a2;
  return mlir::StringAttr::get(a1, v4, a3);
}

BOOL mlir::convertFromAttribute(BOOL *a1, void *a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (mlir::BoolAttr::classof(a2))
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v21 = v8;
  if (v8)
  {
    *a1 = mlir::BoolAttr::getValue(&v21);
    return 1;
  }

  else
  {
    a3(v24, a4);
    if (v24[0])
    {
      LODWORD(v22) = 3;
      *(&v22 + 1) = "expected string property to come from string attribute";
      v23 = 54;
      if (v26 >= v27)
      {
        if (v25 > &v22 || v25 + 24 * v26 <= &v22)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v25 + 24 * v26;
      v11 = v22;
      *(v10 + 2) = v23;
      *v10 = v11;
      ++v26;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

      v12 = __p;
      if (__p)
      {
        v13 = v32;
        v14 = __p;
        if (v32 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v32 = v12;
        operator delete(v14);
      }

      v15 = v29;
      if (v29)
      {
        v16 = v30;
        v17 = v29;
        if (v30 != v29)
        {
          do
          {
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              MEMORY[0x259C63150](v18, 0x1000C8077774924);
            }
          }

          while (v16 != v15);
          v17 = v29;
        }

        v30 = v15;
        operator delete(v17);
      }

      if (v25 != &v28)
      {
        free(v25);
      }
    }
  }

  return v9;
}

void mlir::convertFromAttribute(void *a1, const char *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<long long>,long long>(a1, a2, a3, a4, a5, "DenseI64ArrayAttr", 0x11);
}

{
  convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1, a2, a3, a4, a5, "DenseI32ArrayAttr", 0x11);
}

void mlir::convertFromAttribute(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<long long>,long long>(a1, a2, a3, a4, "DenseI64ArrayAttr", 0x11);
}

{
  convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1, a2, a3, a4, "DenseI32ArrayAttr", 0x11);
}

char *mlir::Operation::create(mlir::Operation *this, const mlir::OperationState *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = *this;
  v4 = *(this + 1);
  mlir::TypeRange::TypeRange(v18, *(this + 8), *(this + 18));
  mlir::ValueRange::ValueRange(v17, *(this + 2), *(this + 6));
  Context = mlir::Attribute::getContext(this);
  Dictionary = mlir::NamedAttrList::getDictionary((this + 112), Context);
  mlir::NamedAttrList::NamedAttrList(v15, Dictionary);
  v7 = *(this + 32);
  mlir::BlockRange::BlockRange(v14, *(this + 25), *(this + 52));
  mlir::RegionRange::RegionRange(v13, *(this + 28), *(this + 58));
  result = mlir::Operation::create(v3, v4, v18[0], v18[1], v17[0], v17[1], v15, v7, v14[0], v14[1], v13[0], v13[1]);
  if (v15[0] != &v16)
  {
    v10 = result;
    free(v15[0]);
    result = v10;
  }

  v11 = *(this + 31);
  if (v11)
  {
    v12 = result;
    mlir::Operation::setPropertiesFromAttribute(result, v11, 0, v9);
    return v12;
  }

  return result;
}

char *mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, uint64_t a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v29[0] = a11;
  v29[1] = a12;
  v27 = a2;
  v28 = a1;
  (*(*a2 + 48))(a2, &v27, a7);
  v18 = v27;
  Context = mlir::Attribute::getContext(&v28);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  v21 = mlir::Operation::create(a1, v18, a3, a4, a5, a6, Dictionary, a8, a9, a10, a12);
  if (a12)
  {
    v22 = 0;
    do
    {
      if (mlir::RegionRange::dereference_iterator(v29, v22))
      {
        v23 = ((&v21[16 * ((*(v21 + 11) >> 23) & 1) + 71 + ((*(v21 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 10) + 24 * v22);
        v24 = mlir::RegionRange::dereference_iterator(v29, v22);
        mlir::Region::takeBody(v23, v24);
      }

      ++v22;
    }

    while (v22 != a12);
  }

  return v21;
}

uint64_t mlir::Operation::setPropertiesFromAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 44);
  v7 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if (!BYTE3(v6))
    {
      v7 = 0;
    }

    *v7 = a2;
    return 1;
  }

  else
  {
    if (BYTE3(v6))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    return (*(*v5 + 18))(v5, v5, v9, a2, a3, a4);
  }
}

char *mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, uint64_t a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v22 = a2;
  v23 = a1;
  (*(*a2 + 48))(a2, &v22, a7);
  v17 = v22;
  Context = mlir::Attribute::getContext(&v23);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  return mlir::Operation::create(a1, v17, a3, a4, a5, a6, Dictionary, a8, a9, a10, a11);
}

char *mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v17 = a11;
  NumTrailing = mlir::OpResult::getNumTrailing(this);
  NumInline = mlir::OpResult::getNumInline(this);
  v20 = (*(*a2 + 112))(a2);
  v56 = v20 - (v20 != 0) + 8 * (v20 != 0);
  v60 = a7;
  v61 = v56 & 0xFFFFFFF8;
  v54 = a6;
  v55 = a8;
  if (a6)
  {
    v21 = (v56 & 0xFFFFFFF8);
    v22 = a10;
    v23 = a6;
  }

  else
  {
    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    }

    v24 = (*(*a2 + 32))(a2, mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id);
    v23 = 0;
    v21 = v61;
    v22 = a10;
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_8;
    }
  }

  v25 = 1;
  v26 = 16;
LABEL_8:
  v27 = 32 * (v22 + v23) + 24 * a11;
  v59 = NumTrailing;
  v28 = 16 * NumInline + 24 * NumTrailing;
  v29 = (v28 - (v28 != 0) + 8 * (v28 != 0)) & 0xFFFFFFFFFFFFFFF8;
  v30 = malloc_type_malloc(v27 + v29 + ((v26 + v21 - (v26 + v21 != 0) + 8 * (v26 + v21 != 0)) & 0xFFFFFFFFFFFFFFF8) + 64, 0x100004077774924uLL);
  v31 = &v30[v29];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = a1;
  *(v31 + 32) = 0;
  *(v31 + 36) = this;
  v58 = v25;
  if (v25)
  {
    v32 = 0x800000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v56 | 7;
  if (v56 < 0)
  {
    v33 = (v56 | 7) + 7;
  }

  *(v31 + 40) = a10;
  *(v31 + 44) = a11 & 0x7FFFFF | ((v33 >> 3) << 24) | v32;
  *(v31 + 48) = a2;
  *(v31 + 56) = 0;
  if (v61)
  {
    v34 = v31 + 16 * (v32 >> 23) + 64;
    if (((v33 << 21) & 0xFF000000) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    (*(*a2 + 120))(a2, a2, v35, v55);
  }

  if (NumInline)
  {
    v36 = 0;
    v37 = 0;
    v38 = &v30[v29 - 8];
    do
    {
      v39 = v37 + 1;
      v40 = mlir::TypeRange::dereference_iterator(a3, v37);
      *(v38 - 1) = 0;
      *v38 = v40 & 0xFFFFFFFFFFFFFFF8 | (v36 >> 32);
      v36 += 0x100000000;
      v38 -= 2;
      v37 = v39;
    }

    while (NumInline != v39);
  }

  if (v59)
  {
    v41 = 0;
    v42 = &v30[v29 - 120];
    do
    {
      v43 = mlir::TypeRange::dereference_iterator(a3, NumInline + v41);
      *v42 = 0;
      *(v42 + 1) = v43 & 0xFFFFFFFFFFFFFFF8 | 6;
      *(v42 + 2) = v41;
      v42 -= 24;
      ++v41;
    }

    while (v59 != v41);
  }

  if (a11)
  {
    v44 = 0;
    do
    {
      mlir::Region::Region((((v31 + 64 + 16 * ((*(v31 + 44) >> 23) & 1) + ((*(v31 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40) + v44), v31);
      v44 += 24;
      --v17;
    }

    while (v17);
  }

  v45 = *(v31 + 44);
  if (v58)
  {
    mlir::detail::OperandStorage::OperandStorage(v31 + 64, v31, ((v31 + 64 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40) + 24 * (v45 & 0x7FFFFF), a5, v54);
    LODWORD(v45) = *(v31 + 44);
  }

  if (a10)
  {
    v46 = 0;
    v47 = ((v31 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v48 = mlir::BlockRange::dereference_iterator(a9, v46);
      *v47 = 0;
      v47[1] = 0;
      v47[2] = v31;
      v47[3] = v48;
      mlir::BlockOperand::getUseList(v48, v49);
      v51 = *v50;
      *v47 = *v50;
      v47[1] = v50;
      if (v51)
      {
        *(v51 + 8) = v47;
      }

      *v50 = v47;
      ++v46;
      v47 += 4;
    }

    while (a10 != v46);
  }

  mlir::Operation::setAttrs(v31, v60);
  return v31;
}

uint64_t mlir::Operation::Operation(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = a4;
  if (a10)
  {
    v10 = 0x800000;
  }

  else
  {
    v10 = 0;
  }

  v11 = a7 + 7;
  if (a7 < -7)
  {
    v11 = a7 + 14;
  }

  *(result + 40) = a5;
  *(result + 44) = a6 & 0x7FFFFF | ((v11 >> 3) << 24) | v10;
  *(result + 48) = a3;
  *(result + 56) = 0;
  if (a7)
  {
    v12 = result + 16 * (v10 >> 23) + 64;
    if (((v11 << 21) & 0xFF000000) == 0)
    {
      v12 = 0;
    }

    v13 = result;
    (*(*a3 + 120))(a3, a3, v12, a9);
    return v13;
  }

  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = a4;
  if (a10)
  {
    v10 = 0x800000;
  }

  else
  {
    v10 = 0;
  }

  v11 = a7 + 7;
  if (a7 < -7)
  {
    v11 = a7 + 14;
  }

  *(result + 40) = a5;
  *(result + 44) = a6 & 0x7FFFFF | ((v11 >> 3) << 24) | v10;
  *(result + 48) = a3;
  *(result + 56) = 0;
  if (a7)
  {
    v12 = result + 16 * (v10 >> 23) + 64;
    if (((v11 << 21) & 0xFF000000) == 0)
    {
      v12 = 0;
    }

    v13 = result;
    (*(*a3 + 120))(a3, a3, v12, a9);
    return v13;
  }

  return result;
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v15 = a2;
  if (*(a1 + 47))
  {
    v16 = v18;
    v17 = 0x300000000;
    v3 = mlir::DictionaryAttr::size(&v15);
    if (v3 > HIDWORD(v17))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = mlir::DictionaryAttr::begin(&v15);
    v5 = mlir::DictionaryAttr::end(&v15);
    if (v4 != v5)
    {
      v6 = v5;
      do
      {
        while (1)
        {
          v14 = *v4;
          Name = mlir::NamedAttribute::getName(&v14);
          Value = mlir::StringAttr::getValue(&Name);
          (*(**(a1 + 48) + 80))(*(a1 + 48), a1, Value, v9);
          if ((v10 & 1) == 0)
          {
            break;
          }

          v7 = mlir::NamedAttribute::getName(&v14);
          (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v7, *(&v14 + 1));
          if (++v4 == v6)
          {
            goto LABEL_12;
          }
        }

        if (v17 >= HIDWORD(v17))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v16 + v17) = v14;
        LODWORD(v17) = v17 + 1;
        ++v4;
      }

      while (v4 != v6);
    }

LABEL_12:
    v11 = v17;
    if (mlir::DictionaryAttr::size(&v15) != v11)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v15 = mlir::DictionaryAttr::get(Context, v16, v17);
    }

    if (v16 != v18)
    {
      free(v16);
    }

    a2 = v15;
  }

  *(a1 + 56) = a2;
}

void mlir::Operation::~Operation(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v2 = *(this + 11);
  }

  v3 = this + 64;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = &v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v6 = 32 * v4;
    v7 = (v5 + 8);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 - 1);
        *v8 = v9;
        if (v9)
        {
          *(v9 + 8) = v8;
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v10 = ((&v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v4);
    v11 = 24 * (v2 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v10);
      v10 = (v12 + 24);
      v11 -= 24;
    }

    while (v11);
    v2 = *(this + 11);
  }

  if (HIBYTE(v2))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v3[16 * ((v2 >> 23) & 1)]);
  }
}