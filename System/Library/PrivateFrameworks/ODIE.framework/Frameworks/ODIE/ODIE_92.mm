uint64_t mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants(mlir::Operation *a1, mlir::Operation *a2)
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

  return mlir::detail::verifyLoopLikeOpInterface(a1, a2) & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::Model(void *a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::readProperties;
  v4[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::writeProperties;
  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v9, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::getAffineMapAttrForMemRef;
  v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v9, v7, v6);
  mlir::OperationName::Impl::Impl(a1, "affine.prefetch", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
  *a1 = &unk_286E9DCB8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 10)
  {
    if (a4 == 12)
    {
      if (*a3 != 0x7974696C61636F6CLL || *(a3 + 8) != 1953392968)
      {
        goto LABEL_28;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      goto LABEL_30;
    }

    v6 = 0;
    if (a4 == 11)
    {
      if (*a3 != 0x6143617461447369 || *(a3 + 3) != 0x6568636143617461)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (a4 == 3)
    {
      if (*a3 != 24941 || *(a3 + 2) != 112)
      {
        goto LABEL_28;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_30;
    }

    v6 = 0;
    if (a4 == 7)
    {
      if (*a3 != 1918333801 || *(a3 + 3) != 1702127986)
      {
LABEL_28:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
LABEL_30:
      v11 = *v5;
      v6 = v11 & 0xFFFFFFFFFFFFFF00;
      v4 = v11;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 > 10)
  {
    if (v6 == 12)
    {
      v19 = *v5;
      v20 = *(v5 + 2);
      if (v19 == 0x7974696C61636F6CLL && v20 == 1953392968)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v4[10] = v22;
      }
    }

    else if (v6 == 11)
    {
      v10 = *v5;
      v11 = *(v5 + 3);
      if (v10 == 0x6143617461447369 && v11 == 0x6568636143617461)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v13 = a4[1], *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v13[2] == 1)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v4[8] = v14;
      }
    }
  }

  else if (v6 == 3)
  {
    v15 = *v5;
    v16 = *(v5 + 2);
    if (v15 == 24941 && v16 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v4[11] = v18;
    }
  }

  else if (v6 == 7)
  {
    v7 = *v5;
    v8 = *(v5 + 3);
    if (v7 == 1918333801 && v8 == 1702127986)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v23 = a4[1], *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v23[2] == 1)
        {
          v24 = a4;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v4[9] = v24;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v21 = 261;
    v19 = "isDataCache";
    v20 = 11;
    v9 = mlir::StringAttr::get(v8, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v21 = 261;
    v19 = "isWrite";
    v20 = 7;
    v12 = mlir::StringAttr::get(v11, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v21 = 261;
    v19 = "localityHint";
    v20 = 12;
    v15 = mlir::StringAttr::get(v14, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v21 = 261;
    v19 = "map";
    v20 = 3;
    v18 = mlir::StringAttr::get(v17, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v11, "isDataCache", 0xB, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v14, "isWrite", 7, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0)
        {
          return 1;
        }

        v20 = v18[1];
        if (!v20 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v20, "map", 3, a4, a5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v28, a6, a2, a3);
    if (v28)
    {
      mlir::Diagnostic::operator<<<42ul>(v29, "expected DictionaryAttr to set properties");
    }

    goto LABEL_28;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isDataCache", 0xBuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 1)
      {
        a5(&v28, a6);
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      *a3 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isWrite", 7uLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v16 = v12[1], *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v16[2] != 1)
      {
        a5(&v28, a6);
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      a3[1] = v12;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "localityHint", 0xCuLL);
  if ((v18 & 1) == 0 || (v12 = *(v17 + 8)) == 0)
  {
LABEL_31:
    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v24)
    {
      v25 = *(v23 + 8);
      if (v25)
      {
        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v28, a6);
          if (!v28)
          {
            goto LABEL_28;
          }

          if (!v28)
          {
            goto LABEL_28;
          }

          v26 = 0;
          v27 = v25;
          goto LABEL_27;
        }

        a3[3] = v25;
      }
    }

    return 1;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a3[2] = v12;
    goto LABEL_31;
  }

  a5(&v28, a6);
  if (!v28)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v28)
  {
    v26 = 0;
    v27 = v12;
LABEL_27:
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
    v20 = v30 + 24 * v31;
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++v31;
  }

LABEL_28:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v25 = v27;
  v26 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v24 = 261;
    v22 = "isDataCache";
    v23 = 11;
    v9 = mlir::StringAttr::get(v8, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v24 = 261;
    v22 = "isWrite";
    v23 = 7;
    v12 = mlir::StringAttr::get(v11, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v24 = 261;
    v22 = "localityHint";
    v23 = 12;
    v15 = mlir::StringAttr::get(v14, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v24 = 261;
    v22 = "map";
    v23 = 3;
    v18 = mlir::StringAttr::get(v17, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v18, v16);
  }

  v19 = v25;
  if (v26)
  {
    v20 = mlir::DictionaryAttr::get(v3, v25, v26);
    v19 = v25;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != v27)
  {
    free(v19);
  }

  return v20;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::hashProperties(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v16 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[3];
  v8 = 8 * a2[2] - 0xAE502812AA7333;
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ ((0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))));
  v14 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 16))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  v5 = v4[11];
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a2 + 24) + 32);
  v6 = 261;
  v5[0] = "map";
  v5[1] = 3;
  return mlir::StringAttr::get(v3, v5, a3);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49[8] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::affine::AffinePrefetchOp::getODSOperands(a2, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 91);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v13 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v14 = *(a2 + 72);
        v15 = *(a2 + 68) - 1;
      }

      else
      {
        v14 = 0;
        v15 = -1;
      }

      (*(*a3 + 240))(a3, Attr, (v14 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v15);
    }
  }

  v16 = (*(*a3 + 16))(a3, v13);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 93);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 93;
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 8236;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

  v20 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v21 = *(v20 + 24);
  if (v21 > 0x40)
  {
    v22 = llvm::APInt::countLeadingZerosSlowCase((v20 + 16)) == v21;
  }

  else
  {
    v22 = *(v20 + 16) == 0;
  }

  v23 = v22;
  v24 = (*(*a3 + 16))(a3);
  if (v23)
  {
    v25 = 4;
  }

  else
  {
    v25 = 5;
  }

  if (v23)
  {
    v26 = "read";
  }

  else
  {
    v26 = "write";
  }

  llvm::raw_ostream::operator<<(v24, v26, v25);
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 1uLL)
  {
    *v28 = 8236;
    *(v27 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v27, ", ", 2uLL);
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if ((*(v29 + 3) - v30) > 8)
  {
    *(v30 + 8) = 60;
    *v30 = *"locality<";
    *(v29 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v29, "locality<", 9uLL);
  }

  LocalityHint = mlir::affine::AffinePrefetchOp::getLocalityHint(a2);
  v32 = (*(*a3 + 16))(a3);
  write_unsigned<unsigned long long>(v32, LocalityHint, 0, 0, 0);
  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if ((*(v33 + 3) - v34) > 2)
  {
    *(v34 + 2) = 32;
    *v34 = 11326;
    *(v33 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v33, ">, ", 3uLL);
  }

  v35 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v36 = *(v35 + 24);
  if (v36 > 0x40)
  {
    v37 = llvm::APInt::countLeadingZerosSlowCase((v35 + 16)) == v36;
  }

  else
  {
    v37 = *(v35 + 16) == 0;
  }

  v38 = v37;
  v39 = (*(*a3 + 16))(a3);
  if (v38)
  {
    v40 = 5;
  }

  else
  {
    v40 = 4;
  }

  if (v38)
  {
    v41 = "instr";
  }

  else
  {
    v41 = "data";
  }

  llvm::raw_ostream::operator<<(v39, v41, v40);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v43 = *(AttrDictionary + 8);
  v44 = *(AttrDictionary + 16);
  v49[0] = "map";
  v49[1] = 3;
  v49[2] = "localityHint";
  v49[3] = 12;
  v49[4] = "isDataCache";
  v49[5] = 11;
  v49[6] = "isWrite";
  v49[7] = 7;
  (*(*a3 + 192))(a3, v43, v44, v49, 4);
  v45 = (*(*a3 + 16))(a3);
  v46 = *(v45 + 4);
  if ((*(v45 + 3) - v46) > 2)
  {
    *(v46 + 2) = 32;
    *v46 = 14880;
    *(v45 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v45, " : ", 3uLL);
  }

  v47 = mlir::affine::AffinePrefetchOp::getODSOperands(a2, 0);
  return (*(*a3 + 32))(a3, *(*(v47 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    goto LABEL_27;
  }

  v5 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v6 = (v5 + 64);
  v7 = v8;
  if (!v8)
  {
    v21 = "requires attribute 'isDataCache'";
    goto LABEL_26;
  }

  v9 = v6[1];
  if (!v9)
  {
    v21 = "requires attribute 'isWrite'";
    goto LABEL_26;
  }

  v10 = v6[2];
  if (!v10)
  {
    v21 = "requires attribute 'localityHint'";
    goto LABEL_26;
  }

  v11 = v6[3];
  if (!v11)
  {
    v21 = "requires attribute 'map'";
LABEL_26:
    v37[0] = v21;
    v38 = 259;
    mlir::Operation::emitOpError(v39, a1, v37);
    v22 = v40;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v39[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v9, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
  {
    v39[0] = a1;
    if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(v10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
    {
      v39[0] = a1;
      if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v7, "isDataCache", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
      {
        v39[0] = a1;
        if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v11, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
        {
          ODSOperands = mlir::affine::AffinePrefetchOp::getODSOperands(a1, 0);
          v14 = v13;
          if (v13)
          {
            v15 = 0;
            v16 = ODSOperands + 24;
            while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8), v15))
            {
              ++v15;
              v16 += 32;
              if (v14 == v15)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_27;
          }

LABEL_17:
          v17 = mlir::affine::AffinePrefetchOp::getODSOperands(a1, 1u);
          if (v18)
          {
            v19 = v18;
            v20 = v17 + 24;
            while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v14))
            {
              LODWORD(v14) = v14 + 1;
              v20 += 32;
              if (!--v19)
              {
                goto LABEL_29;
              }
            }

            goto LABEL_27;
          }

LABEL_29:
          Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
          if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v33 = Attr[1];
            v34 = v33[2];
            if (*((*(*(mlir::affine::AffinePrefetchOp::getODSOperands(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16) != v34)
            {
              v36 = "affine.prefetch affine map num results must equal memref rank";
              goto LABEL_49;
            }

            if ((*(a1 + 46) & 0x80) != 0)
            {
              v35 = *(a1 + 68);
            }

            else
            {
              v35 = 0;
            }

            if (*v33 + v33[1] + 1 == v35)
            {
              goto LABEL_33;
            }
          }

          else if ((*(a1 + 46) & 0x80) != 0 && *(a1 + 68) == 1)
          {
LABEL_33:
            AffineScope = mlir::affine::getAffineScope(a1, v26);
            if ((*(a1 + 46) & 0x80) != 0)
            {
              v28 = *(a1 + 68);
              v29 = v28 - 1;
              if (v28 == 1)
              {
                v23 = 1;
                return v23 & 1;
              }

              v30 = *(a1 + 72) + 32;
            }

            else
            {
              v29 = -1;
              v30 = 32;
            }

            for (i = (v30 + 24); ; i += 4)
            {
              v32 = *i;
              if ((mlir::affine::isValidDim(*i, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v32, AffineScope) & 1) == 0)
              {
                break;
              }

              v23 = 1;
              if (!--v29)
              {
                return v23 & 1;
              }
            }

            v36 = "index must be a valid dimension or symbol identifier";
LABEL_49:
            v37[0] = v36;
            v38 = 259;
            mlir::Operation::emitOpError(v39, a1, v37);
            v23 = v40 ^ 1;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
            return v23 & 1;
          }

          v36 = "too few operands";
          goto LABEL_49;
        }
      }
    }
  }

LABEL_27:
  v23 = 0;
  return v23 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineStoreOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.store", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DD80;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineStoreOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getValueToStore;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2 + 64;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CB0))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineWriteOpInterface>();
    qword_27FC23CA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23CB0);
  }

  return qword_27FC23CA8;
}

uint64_t llvm::getTypeName<mlir::affine::AffineWriteOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CC8))
  {
    qword_27FC23CB8 = llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface>();
    unk_27FC23CC0 = v1;
    __cxa_guard_release(&qword_27FC23CC8);
  }

  return qword_27FC23CB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineWriteOpInterface]";
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

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a2 + 24) + 32);
  v6 = 261;
  v5[0] = "map";
  v5[1] = 3;
  return mlir::StringAttr::get(v3, v5, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  result = mlir::affine::AffineStoreOp::getODSOperandIndexAndLength(&v9, 1u);
  v6 = HIDWORD(result);
  if (HIDWORD(result) + result > result)
  {
    v7 = 32 * result;
    do
    {
      v8 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
      v13 = *(a2 + 72) + v7;
      v14 = v8;
      v12 = 0;
      v11 = 0;
      v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
      result = llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v14, &v13, &v12, &v11, &v10);
      v7 += 32;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CD8))
  {
    v7 = llvm::getTypeName<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>();
    qword_27FC23CD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v7, v8);
    __cxa_guard_release(&qword_27FC23CD8);
  }

  v9[6] = qword_27FC23CD0;
  v9[7] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v9[9] = v2;
  do
  {
    v4 = v9[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  return v4 == a1;
}

uint64_t llvm::getTypeName<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CF0))
  {
    qword_27FC23CE0 = llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>();
    *algn_27FC23CE8 = v1;
    __cxa_guard_release(&qword_27FC23CF0);
  }

  return qword_27FC23CE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineWriteOpInterface::Trait<Empty>]";
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  if (*(v9 + 3) - v10 > 1uLL)
  {
    *v10 = 8236;
    *(v9 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v9, ", ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 91);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v14 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v15 = *(a2 + 72);
        v16 = *(a2 + 68) - 2;
      }

      else
      {
        v15 = 0;
        v16 = -2;
      }

      (*(*a3 + 240))(a3, Attr, (v15 + 64) & 0xFFFFFFFFFFFFFFF9 | 2, v16);
    }
  }

  v17 = (*(*a3 + 16))(a3, v14);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v20 = *(AttrDictionary + 8);
  v21 = *(AttrDictionary + 16);
  v25[0] = "map";
  v25[1] = 3;
  (*(*a3 + 192))(a3, v20, v21, v25, 1);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 2)
  {
    *(v23 + 2) = 32;
    *v23 = 14880;
    *(v22 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v22, " : ", 3uLL);
  }

  return (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = a1;
  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v5)
  {
    v28[0] = "requires attribute 'map'";
    v29 = 259;
    mlir::Operation::emitOpError(v30, a1, v28);
    v16 = v31;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  v30[0] = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    goto LABEL_17;
  }

  mlir::affine::AffineStoreOp::getODSOperands(&v27, 0);
  v7 = v6;
  ODSOperands = mlir::affine::AffineStoreOp::getODSOperands(&v27, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = ODSOperands + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8), v7))
    {
      ++v7;
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  v12 = mlir::affine::AffineStoreOp::getODSOperands(&v27, 2u);
  if (v13)
  {
    v14 = v13;
    v15 = v12 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v15 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
    {
      ++v7;
      v15 += 32;
      if (!--v14)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v19 = *(a1 + 72);
  v20 = *(*(v19 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*(*(v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == *(v20 + 24))
  {
    Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v22 = Attr;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    if ((*(a1 + 46) & 0x80) != 0)
    {
      v23 = *(a1 + 68);
      v24 = v23 - 2;
      v25 = *(a1 + 72) + 64;
      v26 = v23 - 2;
    }

    else
    {
      v24 = -2;
      v26 = -2;
      v25 = 64;
    }

    v17 = verifyMemoryOpIndexing(a1, v22, v25, v24, v20, v26);
  }

  else
  {
    v28[0] = "value to store must have the same type as memref element type";
    v29 = 259;
    mlir::Operation::emitOpError(v30, a1, v28);
    v17 = v31 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
  }

  return v17 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorLoadOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.vector_load", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DE48;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorLoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getValue;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMapOperands(uint64_t a1, uint64_t a2)
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

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a2 + 24) + 32);
  v6 = 261;
  v5[0] = "map";
  v5[1] = 3;
  return mlir::StringAttr::get(v3, v5, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v10 = *(a2 + 72);
  v11 = v5;
  v9 = 0;
  v8 = 0;
  v7 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v11, &v10, &v9, &v8, &v7);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[11] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23D00))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>();
    qword_27FC23CF8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC23D00);
  }

  v10[2] = qword_27FC23CF8;
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[10] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23D18))
  {
    qword_27FC23D08 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>();
    unk_27FC23D10 = v1;
    __cxa_guard_release(&qword_27FC23D18);
  }

  return qword_27FC23D08;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<Empty>]";
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  v25[0] = "map";
  v25[1] = 3;
  (*(*a3 + 192))(a3, v18, v19, v25, 1);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

  return (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v29[0] = a1;
    if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
    {
      return 0;
    }

    ODSOperands = mlir::affine::AffineVectorLoadOp::getODSOperands(a1, 0);
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

      return 0;
    }

LABEL_11:
    v11 = mlir::affine::AffineVectorLoadOp::getODSOperands(a1, 1u);
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
          goto LABEL_15;
        }
      }

      return 0;
    }

LABEL_15:
    v15 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(a1, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      return 0;
    }
  }

  else
  {
    v27 = "requires attribute 'map'";
    v28 = 259;
    mlir::Operation::emitOpError(v29, a1, &v27);
    v16 = v30;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
    if (v16)
    {
      return 0;
    }
  }

  v17 = *(*(*(a1 + 72) + 24) + 8);
  Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v19 = Attr;
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

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v20 = *(a1 + 68);
    v21 = v20 - 1;
    v22 = *(a1 + 72) + 32;
    v23 = v20 - 1;
  }

  else
  {
    v21 = -1;
    v23 = -1;
    v22 = 32;
  }

  if ((verifyMemoryOpIndexing(a1, v19, v22, v21, v17 & 0xFFFFFFFFFFFFFFF8, v23) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v24 = a1 - 16;
  }

  else
  {
    v24 = 0;
  }

  return verifyVectorMemoryOp(a1, v17 & 0xFFFFFFFFFFFFFFF8, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorStoreOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.vector_store", 0x13, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DF10;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorStoreOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getValueToStore;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2 + 64;
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a2 + 24) + 32);
  v6 = 261;
  v5[0] = "map";
  v5[1] = 3;
  return mlir::StringAttr::get(v3, v5, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  result = mlir::affine::AffineVectorStoreOp::getODSOperandIndexAndLength(&v9, 1u);
  v6 = HIDWORD(result);
  if (HIDWORD(result) + result > result)
  {
    v7 = 32 * result;
    do
    {
      v8 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
      v13 = *(a2 + 72) + v7;
      v14 = v8;
      v12 = 0;
      v11 = 0;
      v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
      result = llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v14, &v13, &v12, &v11, &v10);
      v7 += 32;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[2] = *MEMORY[0x277D85DE8];
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
  if (*(v9 + 3) - v10 > 1uLL)
  {
    *v10 = 8236;
    *(v9 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v9, ", ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 91);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v14 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v15 = *(a2 + 72);
        v16 = *(a2 + 68) - 2;
      }

      else
      {
        v15 = 0;
        v16 = -2;
      }

      (*(*a3 + 240))(a3, Attr, (v15 + 64) & 0xFFFFFFFFFFFFFFF9 | 2, v16);
    }
  }

  v17 = (*(*a3 + 16))(a3, v14);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v20 = *(AttrDictionary + 8);
  v21 = *(AttrDictionary + 16);
  v27[0] = "map";
  v27[1] = 3;
  (*(*a3 + 192))(a3, v20, v21, v27, 1);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 2)
  {
    *(v23 + 2) = 32;
    *v23 = 14880;
    *(v22 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v22, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 1uLL)
  {
    *v25 = 8236;
    *(v24 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
  }

  return (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v30 = a1;
  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v5)
  {
    v31 = "requires attribute 'map'";
    v32 = 259;
    mlir::Operation::emitOpError(v33, a1, &v31);
    v19 = v34;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
    if ((v19 & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  v33[0] = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33))
  {
    return 0;
  }

  ODSOperands = mlir::affine::AffineVectorStoreOp::getODSOperands(&v30, 0);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = ODSOperands + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v9))
    {
      ++v9;
      v10 += 32;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  v11 = mlir::affine::AffineVectorStoreOp::getODSOperands(&v30, 1u);
  if (v12)
  {
    v13 = v12;
    v14 = v11 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), v8))
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_15:
  v15 = mlir::affine::AffineVectorStoreOp::getODSOperands(&v30, 2u);
  if (v16)
  {
    v17 = v16;
    v18 = v15 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v18 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
    {
      LODWORD(v8) = v8 + 1;
      v18 += 32;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    return 0;
  }

LABEL_21:
  v33[0] = a1;
  v20 = *(*(*(a1 + 72) + 56) + 8);
  Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v22 = Attr;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v23 = *(a1 + 68);
    v24 = v23 - 2;
    v25 = *(a1 + 72) + 64;
    v26 = v23 - 2;
  }

  else
  {
    v24 = -2;
    v26 = -2;
    v25 = 64;
  }

  if ((verifyMemoryOpIndexing(a1, v22, v25, v24, v20 & 0xFFFFFFFFFFFFFFF8, v26) & 1) == 0)
  {
    return 0;
  }

  v27 = mlir::affine::AffineVectorStoreOp::getODSOperands(v33, 0);
  return verifyVectorMemoryOp(a1, v20 & 0xFFFFFFFFFFFFFFF8, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineYieldOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineYieldOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::IsTerminator<mlir::affine::AffineYieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::ReturnLike<mlir::affine::AffineYieldOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineYieldOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "affine.yield", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E9DFD8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineYieldOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineYieldOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::IsTerminator<mlir::affine::AffineYieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::ReturnLike<mlir::affine::AffineYieldOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineYieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSuccessorRegions;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v31, 0);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v10 = *(a2 + 68);
      v11 = *(a2 + 72);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = (*(*a3 + 16))(a3);
    if (v10)
    {
      v13 = v12;
      (*(*a3 + 160))(a3, *(v11 + 24));
      v14 = v10 - 1;
      if (v14)
      {
        v15 = (v11 + 56);
        do
        {
          v16 = *(v13 + 4);
          if (*(v13 + 3) - v16 > 1uLL)
          {
            *v16 = 8236;
            *(v13 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v13, ", ", 2uLL);
          }

          v17 = *v15;
          v15 += 4;
          (*(*a3 + 160))(a3, v17);
          --v14;
        }

        while (v14);
      }
    }

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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v24 = *(a2 + 68);
      if (v24)
      {
        v25 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v25 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v24 != 1)
        {
          v26 = v24 - 1;
          v27 = (v25 + 56);
          do
          {
            v28 = (*(*a3 + 16))(a3);
            v29 = *(v28 + 4);
            if (*(v28 + 3) - v29 > 1uLL)
            {
              *v29 = 8236;
              *(v28 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v28, ", ", 2uLL);
            }

            v30 = *v27;
            v27 += 4;
            (*(*a3 + 32))(a3, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v26;
          }

          while (v26);
        }
      }
    }
  }
}

uint64_t mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    v14 = 0;
    return v14 & 1;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v6 = *(v6 + 16);
    }
  }

  v7 = *(v6 + 36);
  if (v7)
  {
    v8 = v6 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 44);
  if ((v9 & 0x800000) != 0)
  {
    v10 = *(a1 + 68);
    v11 = *(a1 + 72);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(*(v6 + 48) + 16);
  if (v12 != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    v29 = 257;
    mlir::Operation::emitOpError(&v30, a1, v28);
    if (v30)
    {
      v13 = "only terminates affine.if/for/parallel regions";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if ((v9 & 0x800000) != 0)
  {
    v16 = *(a1 + 68);
  }

  else
  {
    v16 = 0;
  }

  if (v7 != v16)
  {
    v29 = 257;
    mlir::Operation::emitOpError(&v30, a1, v28);
    if (v30)
    {
      mlir::Diagnostic::operator<<<71ul>(v31, "parent of yield must have same number of results as the yield operands");
    }

    goto LABEL_41;
  }

  v14 = 1;
  if (v7 && v10)
  {
    v17 = 0;
    v18 = v10 - 1;
    v19 = v7 - 1;
    v20 = v11 + 24;
    v21 = v6 - 16;
    while (1)
    {
      v22 = v8;
      if (!v17)
      {
        goto LABEL_31;
      }

      v23 = *(v6 - 8) & 7;
      v24 = v6 - 16;
      v25 = v17;
      if (v23 != 6)
      {
        v26 = (5 - v23);
        v22 = v21;
        v25 = v17 - v26;
        if (v17 <= v26)
        {
          goto LABEL_31;
        }

        v24 = v6 - 16 - 16 * v26;
      }

      v22 = v24 - 24 * v25;
LABEL_31:
      if ((*(*v20 + 8) ^ *(v22 + 8)) >= 8)
      {
        v29 = 257;
        mlir::Operation::emitOpError(&v30, a1, v28);
        if (v30)
        {
          v13 = "types mismatch between yield op and its parent";
LABEL_40:
          mlir::Diagnostic::operator<<<47ul>(v31, v13);
        }

LABEL_41:
        v14 = v31[192] ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        return v14 & 1;
      }

      if (v19 != v17)
      {
        v20 += 32;
        v21 -= 16;
        if (v18 != v17++)
        {
          continue;
        }
      }

      return v14 & 1;
    }
  }

  return v14 & 1;
}

uint64_t anonymous namespace::AffineInlinerInterface::isLegalToInline(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a2 + 16) + 48) + 16);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id)
  {
    return 0;
  }

  v9 = *(a3 + 8);
  if (v9 == a3 || *(v9 + 8) != a3)
  {
    return 0;
  }

  v11 = v9 + 24;
  v12 = *(v9 + 32);
  if (v12 != v9 + 24)
  {
    v36 = v9 + 24;
    do
    {
      v37[0] = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(v12);
      v37[1] = v15;
      if (!v37[0] || !mlir::MemoryEffectOpInterface::hasNoEffect(v37))
      {
        if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
        {
          isValidDim = mlir::affine::isValidDim(v12 - 16, a3);
          v19 = *(v12 + 44);
          if (isValidDim)
          {
            if ((v19 & 0x800000) != 0)
            {
              v20 = *(v12 + 68);
              v21 = *(v12 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
            }

            else
            {
              v20 = 0;
              v21 = 2;
            }

            v37[0] = mlir::affine::isValidDim;
            if ((remainsLegalAfterInline(v21, v20, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37) & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if ((v19 & 0x800000) != 0)
            {
              v22 = *(v12 + 68);
              v23 = *(v12 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
            }

            else
            {
              v22 = 0;
              v23 = 2;
            }

            v37[0] = mlir::affine::isValidSymbol;
            result = remainsLegalAfterInline(v23, v22, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37);
            if (!result)
            {
              return result;
            }
          }
        }

        else
        {
          if (!mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(v12) || (InterfaceFor = mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(v12), (v17 = v12) == 0))
          {
            if (mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(v12))
            {
              InterfaceFor = mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
              v17 = v12;
            }

            else
            {
              v17 = 0;
              InterfaceFor = 0;
            }

            if (!v17)
            {
              return 0;
            }
          }

          v24 = (*(InterfaceFor + 24))(InterfaceFor, v17);
          v25 = (*(InterfaceFor + 16))(InterfaceFor, v17);
          if (v26 >= *v24)
          {
            v27 = *v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = v25 & 0xFFFFFFFFFFFFFFF9;
          v29 = (*(InterfaceFor + 16))(InterfaceFor, v17);
          v31 = v30;
          v32 = v24[1];
          v37[0] = mlir::affine::isValidDim;
          result = remainsLegalAfterInline(v28 | 2, v27, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37);
          if (!result)
          {
            return result;
          }

          v33 = 32 * (v31 - v32);
          if (v31 <= v32)
          {
            v33 = 0;
          }

          v34 = (v33 + v29) & 0xFFFFFFFFFFFFFFF9;
          v35 = v31 >= v32 ? v32 : v31;
          v37[0] = mlir::affine::isValidSymbol;
          v11 = v36;
          if ((remainsLegalAfterInline(v34 | 2, v35, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37) & 1) == 0)
          {
            return 0;
          }
        }
      }

      v12 = *(v12 + 8);
    }

    while (v12 != v11);
  }

  return 1;
}

BOOL anonymous namespace::AffineInlinerInterface::isLegalToInline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v3 + 48) + 32))(*(v3 + 48), v4))
  {
    return 1;
  }

  v5 = *(*(v3 + 48) + 16);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    return 1;
  }

  return v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id;
}

uint64_t remainsLegalAfterInline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = 0;
  if (!a2)
  {
    return 1;
  }

  v13 = 0;
  while (1)
  {
    v14 = mlir::ValueRange::dereference_iterator(&v26, v13);
    if (!mlir::affine::isTopLevelValue(v14, a3))
    {
      goto LABEL_25;
    }

    v15 = *(v14 + 8) & 7;
    if (v15 == 7)
    {
      break;
    }

    v25 = 0;
    if (v14)
    {
      if (v15 == 6)
      {
        v18 = v14 + 24 * *(v14 + 16) + 120;
      }

      else
      {
        v18 = v14 + 16 * v15 + 16;
      }
    }

    else
    {
      v18 = 0;
    }

    InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v18);
    if ((~*(v14 + 8) & 7) != 0)
    {
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = *(v20 + 8) & 7;
      if (v21 == 6)
      {
        v22 = v20 + 24 * *(v20 + 16) + 120;
      }

      else
      {
        v22 = v20 + 16 * v21 + 16;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = &v25;
    if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v24, v22) && !InterfaceFor)
    {
      return 0;
    }

LABEL_25:
    v27 = ++v13;
    if (a2 == v13)
    {
      return 1;
    }
  }

  v25 = v14;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a5, &v25);
  v17 = 0;
  if (v16)
  {
    if (v16 != *a5 + 16 * *(a5 + 16))
    {
      v17 = *(v16 + 8);
    }
  }

  if (a6(a7, v17, a4))
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

BOOL mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v15 = 0;
  if (((*(*a1 + 440))(a1, &v15, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v8 = v15;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v16[0] = "map";
    v16[1] = 3;
    v10 = mlir::StringAttr::get(v9, v16, v7);
    mlir::NamedAttrList::push_back(a3, v10, v8);
    return 1;
  }

  else
  {
    v13 = "invalid kind of attribute specified";
    v14 = 259;
    (*(*a1 + 24))(v16, a1, v6, &v13);
    v11 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v11;
}

BOOL llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 8;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.min";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.max";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 8;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = 0;
      return v2 + 16 * v4;
    }
  }

  v6 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  LODWORD(v6) = -348639895 * ((v7 >> 47) ^ v7);
  v8 = v3 - 1;
  v9 = (v3 - 1) & v6;
  v10 = *(v2 + 16 * v9);
  if (v10 == a2)
  {
    return v2 + 16 * v9;
  }

  v11 = 1;
  while (v10 != -4096)
  {
    v12 = v9 + v11++;
    v9 = v12 & v8;
    v10 = *(v2 + 16 * v9);
    if (v10 == a2)
    {
      return v2 + 16 * v9;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 8);
    v4 = *(a1 + 16);
    return v2 + 16 * v4;
  }

  return a1 + 136;
}

unint64_t *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2 && v2 == 6)
  {
    return llvm::SmallBitVector::set(*result, *(a2 + 16));
  }

  if (a2 && v2 == 7)
  {
    return llvm::SmallBitVector::set(*++result, *(a2 + 16));
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(uint64_t a1, int *a2, unint64_t *a3, unint64_t *a4)
{
  v19 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(a2, *a3, &v19);
  v9 = v19;
  if (result)
  {
    v10 = a2 + 2;
    if (*a2)
    {
      v11 = 8;
    }

    else
    {
      v10 = *(a2 + 1);
      v11 = a2[4];
    }

    v15 = 0;
    v16 = &v10[4 * v11];
    goto LABEL_17;
  }

  v20 = v19;
  v12 = *a2;
  v13 = *a2 >> 1;
  if (*a2)
  {
    v14 = 8;
  }

  else
  {
    v14 = a2[4];
  }

  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_19;
  }

  if (v14 + ~v13 - a2[1] <= v14 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(a2, v14);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(a2, *a3, &v20);
    v12 = *a2;
    v9 = v20;
  }

  *a2 = v12 + 2;
  if (*v9 != -4096)
  {
    --a2[1];
  }

  *v9 = *a3;
  v9[1] = *a4;
  v17 = a2 + 2;
  if (*a2)
  {
    v18 = 8;
  }

  else
  {
    v17 = *(a2 + 1);
    v18 = a2[4];
  }

  v16 = &v17[4 * v18];
  v15 = 1;
LABEL_17:
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 16 * v8);
  v10 = *v9;
  if (*v9 == a2)
  {
    result = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    result = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v9;
      }

      v15 = v8 + v13++;
      v8 = v15 & v7;
      v9 = (v3 + 16 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(uint64_t a1, unsigned int a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 8)
    {
      v13 = a2;
      *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      v9[1] = *(a1 + v8 + 16);
      v9 += 2;
    }

    v8 += 16;
  }

  while (v8 != 128);
  if (a2 > 8)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 34;
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
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      v16[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

unint64_t *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2 && v2 == 6)
  {
    return llvm::SmallBitVector::set(*result, *(a2 + 16));
  }

  if (a2 && v2 == 7)
  {
    return llvm::SmallBitVector::set(*++result, *(a2 + 16));
  }

  return result;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v21 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v22 = v24;
  v23 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v8, 0, v8, v7);
  composeAffineMapAndOperands(&v21, &v22);
  mlir::affine::canonicalizeMapAndOperands(&v21, &v22);
  simplifyMapWithOperands(&v21, v22, v23);
  v10 = v21;
  v9 = v22;
  if (v21 != v6)
  {
LABEL_4:
    v11 = v23;
    v12 = *(a2 + 24);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>((a3 + 1), *(**v12 + 32));
    v25[0] = v12;
    v25[1] = v13;
    v25[2] = v26;
    v25[3] = 0x400000000;
    v26[4] = v27;
    v26[5] = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
    v28[8] = 4;
    v28[9] = v29;
    v28[10] = 0x100000000;
    v29[1] = v30;
    v29[2] = 0x100000000;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v30[4] = 0;
    v30[6] = 0;
    mlir::affine::AffineApplyOp::build(a3 + 1, v25, v10, v9 & 0xFFFFFFFFFFFFFFF9, v11);
    v14 = mlir::Operation::create(v25);
    mlir::OpBuilder::insert((a3 + 1), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(v25);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, a2, v16);
    v17 = 1;
    v9 = v22;
    goto LABEL_13;
  }

  if (v7)
  {
    v18 = 0;
    v19 = (v8 + 24);
    while (*v19 == *(v22 + v18))
    {
      v18 += 8;
      v19 += 4;
      if (8 * v7 == v18)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_4;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  if (v9 != v24)
  {
    free(v9);
  }

  return v17;
}

void simplifyMapWithOperands(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x600000000;
  v6 = *a1;
  v7 = *(*a1 + 8);
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, v7, 8);
    v6 = *a1;
    LODWORD(v7) = *(*a1 + 8);
  }

  if (v7)
  {
    v8 = (v6 + 6);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v11 = v10;
      simplifyExprAndOperands(&v11, **a1, *(*a1 + 4), a2, a3);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v12, v11);
      v9 -= 8;
    }

    while (v9);
    v6 = *a1;
  }

  *a1 = mlir::AffineMap::getImpl(*v6, v6[1], v12, v13, *(v6 + 2));
  if (v12 != v14)
  {
    free(v12);
  }
}

void simplifyExprAndOperands(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v69[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (*a1)
  {
    v6 = *(*a1 + 8) <= 4;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return;
  }

  v12 = *(v5 + 16);
  v62 = *(v5 + 24);
  v63 = v12;
  simplifyExprAndOperands(&v63, a2, a3, a4, a5);
  simplifyExprAndOperands(&v62, a2, a3, a4, a5);
  AffineBinaryOpExpr = mlir::getAffineBinaryOpExpr(*(v5 + 8), v63, v62);
  *a1 = AffineBinaryOpExpr;
  v15 = *(AffineBinaryOpExpr + 2);
  v16 = v15 >= 5 ? 0 : AffineBinaryOpExpr;
  if ((v15 - 2) > 2 || v16 == 0)
  {
    return;
  }

  v18 = v16[3];
  v19 = v18 && *(v18 + 2) == 5;
  if (!v19 || v18[2] < 1)
  {
    return;
  }

  v59 = v18[2];
  v60 = v16;
  v20 = v16[2];
  v55 = v16[3];
  v56 = *AffineBinaryOpExpr;
  v67 = v69;
  v68 = 0x300000000;
  v64 = v66;
  v65 = 0x300000000;
  v21 = 8 * a5;
  if (a5 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, a5, 16);
    if (a5 > HIDWORD(v65))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, a5, 16);
    }

    goto LABEL_23;
  }

  if (a5)
  {
LABEL_23:
    v22 = 8 * a5;
    v23 = a4;
    do
    {
      v24 = *v23++;
      LowerBound = getLowerBound(v24);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v67, LowerBound, v26);
      UpperBound = getUpperBound(v24);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v64, UpperBound, v28);
      v22 -= 8;
    }

    while (v22);
  }

  if (*(v20 + 8) != 5 || v20 == 0)
  {
    BoundForAffineExpr = mlir::getBoundForAffineExpr(v20, a2, a3, v67, v68, v64, v65, 0);
    v57 = v30 ^ 1;
  }

  else
  {
    v57 = 0;
    BoundForAffineExpr = *(v20 + 16);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  v61 = v20;
  if (v67 != v69)
  {
    free(v67);
  }

  v67 = v69;
  v68 = 0x300000000;
  v64 = v66;
  v65 = 0x300000000;
  if (a5 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, a5, 16);
    if (a5 > HIDWORD(v65))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, a5, 16);
    }

    goto LABEL_39;
  }

  if (a5)
  {
LABEL_39:
    v31 = a4;
    do
    {
      v32 = *v31++;
      v33 = getLowerBound(v32);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v67, v33, v34);
      v35 = getUpperBound(v32);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v64, v35, v36);
      v21 -= 8;
    }

    while (v21);
  }

  if (*(v61 + 8) != 5 || v61 == 0)
  {
    v40 = mlir::getBoundForAffineExpr(v61, a2, a3, v67, v68, v64, v65, 1);
    v39 = v38 ^ 1;
  }

  else
  {
    v39 = 0;
    v40 = *(v61 + 16);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  if (v67 != v69)
  {
    free(v67);
  }

  if ((v57 | v39))
  {
    goto LABEL_52;
  }

  v44 = *(v60 + 2);
  if (v44 == 4)
  {
    if (BoundForAffineExpr)
    {
      if ((BoundForAffineExpr ^ v59) < 0)
      {
        v51 = BoundForAffineExpr / v59;
      }

      else
      {
        v51 = (BoundForAffineExpr - 1) / v59 + 1;
      }
    }

    else
    {
      v51 = 0;
    }

    if (v40)
    {
      if ((v40 ^ v59) < 0)
      {
        v54 = v40 / v59;
      }

      else
      {
        v54 = (v40 - 1) / v59 + 1;
      }
    }

    else
    {
      v54 = 0;
    }

    if (v51 != v54)
    {
      goto LABEL_52;
    }

    if (BoundForAffineExpr)
    {
      v42 = v56;
      if (((BoundForAffineExpr ^ v59) & 0x8000000000000000) == 0)
      {
        v43 = (BoundForAffineExpr - 1) / v59 + 1;
        goto LABEL_108;
      }

      goto LABEL_107;
    }

LABEL_106:
    v43 = 0;
    v42 = v56;
    goto LABEL_108;
  }

  if (v44 == 3)
  {
    if (BoundForAffineExpr)
    {
      if ((BoundForAffineExpr ^ v59) < 0)
      {
        v45 = (BoundForAffineExpr + 1) / v59 - 1;
      }

      else
      {
        v45 = BoundForAffineExpr / v59;
      }
    }

    else
    {
      v45 = 0;
    }

    if (v40)
    {
      if ((v40 ^ v59) < 0)
      {
        v53 = (v40 + 1) / v59 - 1;
      }

      else
      {
        v53 = v40 / v59;
      }
    }

    else
    {
      v53 = 0;
    }

    if (v45 != v53)
    {
      goto LABEL_52;
    }

    if (BoundForAffineExpr)
    {
      v42 = v56;
      if ((BoundForAffineExpr ^ v59) < 0)
      {
        v43 = (BoundForAffineExpr + 1) / v59 - 1;
        goto LABEL_108;
      }

LABEL_107:
      v43 = BoundForAffineExpr / v59;
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  if (v44 == 2 && BoundForAffineExpr < v59 && v40 < v59)
  {
    *a1 = v61;
    return;
  }

LABEL_52:
  if (*(v61 + 8) >= 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = v61;
  }

  if (v41 && !*(v41 + 8))
  {
    v47 = *(v41 + 16);
    v46 = *(v41 + 24);
    LargestKnownDivisor = getLargestKnownDivisor(v47, a4);
    if (isNonNegativeBoundedBy(v46, a4, a5, LargestKnownDivisor))
    {
      v50 = v47;
    }

    else
    {
      LargestKnownDivisor = getLargestKnownDivisor(v46, a4);
      if (!isNonNegativeBoundedBy(v47, a4, a5, LargestKnownDivisor))
      {
        goto LABEL_57;
      }

      v50 = v46;
      v46 = v47;
    }

    v67 = v50;
    v64 = v46;
    if (v59 % LargestKnownDivisor || *(v60 + 2) != 3)
    {
      if (LargestKnownDivisor % v59 || *(v60 + 2) != 2)
      {
        return;
      }

      AffineConstantExpr = mlir::AffineExpr::operator%(&v64, v55, v49);
    }

    else
    {
      AffineConstantExpr = mlir::AffineExpr::floorDiv(&v67, v55, v49);
    }

LABEL_109:
    *a1 = AffineConstantExpr;
    return;
  }

LABEL_57:
  if (isNonNegativeBoundedBy(v61, a4, a5, v59) && *(v60 + 2) == 3 || !(getLargestKnownDivisor(v61, a4) % v59) && *(v60 + 2) == 2)
  {
    v42 = **a1;
    v43 = 0;
LABEL_108:
    AffineConstantExpr = mlir::getAffineConstantExpr(v43, v42, v14);
    goto LABEL_109;
  }
}

BOOL isNonNegativeBoundedBy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (a1 && v6 == 5)
  {
    v7 = *(a1 + 16);
    return v7 >= 0 && v7 < a4;
  }

  else
  {
    result = 0;
    if (a1 && v6 == 6)
    {
      v10 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * *(a1 + 16)));
      result = 0;
      if (v10)
      {
        v11 = v10 + 16 * ((*(v10 + 44) >> 23) & 1);
        v13 = *(v11 + 64);
        v12 = v11 + 64;
        v14 = *(v13 + 8);
        if (*(v14 + 8) == 1)
        {
          v15 = *(v14 + 24);
          if (*(v15 + 8) == 5 && (*(v15 + 16) & 0x8000000000000000) == 0)
          {
            v16 = *(*(v12 + 16) + 8);
            if (*(v16 + 8) == 1)
            {
              v17 = *(v16 + 24);
              if (*(v17 + 8) == 5 && *(v17 + 16) <= a4)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getLargestKnownDivisor(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  result = mlir::AffineExpr::getLargestKnownDivisor(&v14);
  if (*(a1 + 8) == 6 && a1 != 0)
  {
    v6 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * *(a1 + 16)));
    if (v6)
    {
      v7 = v6;
      v8 = *(*&v6[4 * ((v6[11] >> 23) & 1) + 16] + 8);
      if (*(v8 + 8) == 1 && (v9 = *(v8 + 24), *(v9 + 8) == 5) && !*(v9 + 16))
      {

        return mlir::affine::AffineForOp::getStepAsInt(v6);
      }

      else
      {
        v13 = *(*&v6[4 * ((v6[11] >> 23) & 1) + 16] + 8);
        LargestKnownDivisorOfMapExprs = mlir::AffineMap::getLargestKnownDivisorOfMapExprs(&v13);
        StepAsInt = mlir::affine::AffineForOp::getStepAsInt(v7);
        if (StepAsInt >= 0)
        {
          v12 = StepAsInt;
        }

        else
        {
          v12 = -StepAsInt;
        }

        return std::__gcd<unsigned long long>(LargestKnownDivisorOfMapExprs, v12);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineApplyOp>]";
  v6 = 130;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "affine.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v5, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void anonymous namespace::AffineForEmptyLoopFolder::~AffineForEmptyLoopFolder(_anonymous_namespace_::AffineForEmptyLoopFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AffineForEmptyLoopFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t, uint64_t))
{
  v41[4] = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v5 = v4 - 8;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = v5 + 32;
  if (v6 == v7 || *(v6 + 8) != v7)
  {
    return 0;
  }

  if (!*(a2 + 36))
  {
    return 1;
  }

  if ((v13 & 1) != 0 && !TrivialConstantTripCount)
  {
    v14 = *(a2 + 44);
    v15 = (v3 + 16 * ((v14 >> 23) & 1));
    v16 = (v15[7] + v15[6]);
    v17 = v15[8];
    if ((v14 & 0x800000) != 0)
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = 0;
    }

    (**a3)(a3, a2, (v18 + 32 * v16) & 0xFFFFFFFFFFFFFFF9 | 2, (v17 + v16) - v16);
    return 1;
  }

  v20 = *(a2 + 40);
  v19 = *(a2 + 44);
  v39 = v41;
  v40 = 0x400000000;
  v21 = *(((v3 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v20 + 8);
  if (v21)
  {
    v22 = (v21 - 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22[4];
  if ((*(v23 + 46) & 0x80) != 0 && (v24 = *(v23 + 68), v24))
  {
    v37 = TrivialConstantTripCount;
    v38 = v13;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v22[6];
    v29 = v22[7];
    v30 = &v29[-v28];
    v31 = (v28 + 8);
    do
    {
      v32 = *(*(v23 + 72) + 32 * v25 + 24);
      v33 = v31;
      if (v30 != 8)
      {
        v33 = v31;
        while (*v33 != v32)
        {
          v33 += 8;
          if (v33 == v29)
          {
            v33 = v29;
            break;
          }
        }
      }

      if (v33 == v29)
      {
        v26 = 1;
      }

      else
      {
        v34 = ((v33 - v31) >> 3);
        v27 |= v25 != v34;
        v32 = *(*(a2 + 72) + 32 * (*(a2 + 108) + *(a2 + 104)) + 32 * v34 + 24);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v32);
      ++v25;
    }

    while (v25 != v24);
    if (v38 & 1) == 0 && ((v26 | v27))
    {
      v8 = 0;
      goto LABEL_37;
    }

    if ((v38 & v27 & (v37 > 1)) != 0)
    {
      v8 = 0;
      goto LABEL_37;
    }

    v36 = v39;
    v35 = v40;
  }

  else
  {
    v35 = 0;
    v36 = v41;
  }

  (**a3)(a3, a2, v36 & 0xFFFFFFFFFFFFFFF9, v35);
  v8 = 1;
LABEL_37:
  if (v39 != v41)
  {
    free(v39);
  }

  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AffineForEmptyLoopFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AffineForEmptyLoopFolder]";
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

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::affine::AffineForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_1>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = **a1;
  while (1)
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v5)
    {
      break;
    }

    v2 = *(v5 + 16);
    result = v2 != 0;
    if (v2 == v3 || v2 == 0)
    {
      return result;
    }
  }

  return 0;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "affine.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v5, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void anonymous namespace::SimplifyDeadElse::~SimplifyDeadElse(_anonymous_namespace_::SimplifyDeadElse *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyDeadElse::matchAndRewrite(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2 + 16;
  v4 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  if (*(v4 + 24) == v4 + 24)
  {
    return 0;
  }

  v5 = *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  v6 = v5 - 8;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v6 + 40);
  v8 = v6 + 32;
  if (v7 == v8 || *(v7 + 8) != v8 || a2[9])
  {
    return 0;
  }

  (*(*a3 + 40))(a3, a2);
  v12 = *(((&v3[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  if (v12)
  {
    v13 = v12 - 8;
  }

  else
  {
    v13 = 0;
  }

  (*(*a3 + 24))(a3, v13);
  (*(*a3 + 48))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyDeadElse>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyDeadElse]";
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

void anonymous namespace::AlwaysTrueOrFalseIf::~AlwaysTrueOrFalseIf(_anonymous_namespace_::AlwaysTrueOrFalseIf *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AlwaysTrueOrFalseIf::matchAndRewrite(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Attr = mlir::Operation::getAttr(a2, "condition", 9uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v7 = Attr;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 8);
  if (v8 != mlir::IntegerSet::getEmptySet(*v8, v8[1], ***(v8 + 1), v6))
  {
    if (!v8[4])
    {
      return 0;
    }

    v10 = 0;
    v11 = *(v8 + 3);
    v12 = v11;
    v13 = v8[4];
    do
    {
      v14 = *v12++;
      v10 += v14;
      --v13;
    }

    while (v13);
    if (v10 != 1)
    {
      return 0;
    }

    v15 = 0;
    v16 = v8[4];
    do
    {
      v17 = *v11++;
      v15 += v17;
      --v16;
    }

    while (v16);
    if (v15 != v8[4])
    {
      return 0;
    }

    v18 = *(v8 + 1);
    v19 = *v18;
    if (v19 != mlir::getAffineConstantExpr(0, **v18, v9))
    {
      return 0;
    }

    v26 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    v27 = 8;
    goto LABEL_18;
  }

  v21 = a2[11];
  if (a2[9])
  {
    v22 = a2[10];
    v23 = (v21 >> 23) & 1;
    v24 = (v21 >> 21) & 0x7F8;
LABEL_17:
    v26 = ((&a2[4 * v23 + 17] + v24 + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v22;
    v27 = 32;
LABEL_18:
    v28 = *(v26 + v27);
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(v29 + 32);
    (*(*a3 + 32))(a3);
    if ((*(v30 + 46) & 0x80) != 0)
    {
      v31 = v30[17];
      v32 = *(v30 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v31 = 0;
      v32 = 2;
    }

    (**a3)(a3, a2, v32, v31);
    goto LABEL_24;
  }

  v23 = (v21 >> 23) & 1;
  v24 = (v21 >> 21) & 0x7F8;
  v22 = a2[10];
  v25 = ((&a2[4 * v23 + 17] + v24 + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v22;
  if (*(v25 + 24) != v25 + 24)
  {
    goto LABEL_17;
  }

  v30 = a2;
LABEL_24:
  (*(*a3 + 16))(a3, v30);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AlwaysTrueOrFalseIf>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AlwaysTrueOrFalseIf]";
  v6 = 104;
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v25 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v30 = v32;
  v31 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, v7 + 32, 0, v7 + 32, v8);
  composeAffineMapAndOperands(&v25, &v30);
  mlir::affine::canonicalizeMapAndOperands(&v25, &v30);
  simplifyMapWithOperands(&v25, v30, v31);
  v9 = v25;
  v10 = v30;
  if (v25 == v6)
  {
    if (!v8)
    {
LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    v22 = 0;
    v23 = (v7 + 56);
    while (*v23 == *(v30 + v22))
    {
      ++v22;
      v23 += 4;
      if (v8 == v22)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = v31;
  v12 = *(*(a2 + 72) + 24);
  v13 = *(a2 + 24);
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, *(**v13 + 32));
  if ((v15 & 1) == 0)
  {
    v29 = 1283;
    v28[2] = "affine.load";
    v28[3] = 11;
    v27 = 259;
    llvm::operator+(v28, &v26, v33);
    llvm::report_fatal_error(v33, 1);
  }

  v33[0] = v13;
  v33[1] = v14;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = v37;
  v36[1] = 0x400000000;
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
  v28[0] = v12;
  v16 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v34, v28, 0, v28, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v34, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v17 = *(v28[0] + 8) & 0xFFFFFFFFFFFFFFF8;
  v18 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(v33, "map", 3, v18);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v36, *(v17 + 24));
  v19 = mlir::Operation::create(v33);
  mlir::OpBuilder::insert((a3 + 8), v19);
  v20 = *(*(v19 + 6) + 16);
  mlir::OperationState::~OperationState(v33);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  (*(*a3 + 8))(a3, a2, v21);
  v10 = v30;
LABEL_14:
  if (v10 != v32)
  {
    free(v10);
  }

  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineLoadOp>]";
  v6 = 129;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23DB8))
  {
    qword_27FC23DA8 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>();
    unk_27FC23DB0 = v1;
    __cxa_guard_release(&qword_27FC23DB8);
  }

  return qword_27FC23DA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties]";
  v6 = 127;
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v26 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 2;
  }

  else
  {
    v7 = 0;
    v8 = -2;
  }

  v31 = v33;
  v32 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, v7 + 64, 0, v7 + 64, v8);
  composeAffineMapAndOperands(&v26, &v31);
  mlir::affine::canonicalizeMapAndOperands(&v26, &v31);
  simplifyMapWithOperands(&v26, v31, v32);
  v9 = v26;
  v10 = v31;
  if (v26 == v6)
  {
    if (!v8)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    v23 = 0;
    v24 = (v7 + 88);
    while (*v24 == *(v31 + v23))
    {
      ++v23;
      v24 += 4;
      if (v8 == v23)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = v32;
  v12 = *(a2 + 72);
  v13 = *(v12 + 24);
  v14 = *(v12 + 56);
  v15 = *(a2 + 24);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, *(**v15 + 32));
  if ((v17 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "affine.store";
    v29[3] = 12;
    v28 = 259;
    llvm::operator+(v29, v27, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v15;
  v34[1] = v16;
  v35[0] = v36;
  v35[1] = 0x400000000;
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
  v29[0] = v13;
  v27[0] = v14;
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v29, 0, v29, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v27, 0, v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v19 = mlir::AffineMapAttr::get(v9);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(v34) = v19;
  v20 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(v34);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 8))(a3, a2, v22);
  v10 = v31;
LABEL_14:
  if (v10 != v33)
  {
    free(v10);
  }

  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineStoreOp>]";
  v6 = 130;
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if (*(v6 + 8) != 1)
  {
    return 0;
  }

  v14[3] = v3;
  v14[4] = v4;
  v14[0] = v6;
  if ((v5 & 0x800000) != 0)
  {
    v9 = *(a2 + 68);
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), v14, v13);
  (*(*a3 + 8))(a3, a2, v11);
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(uint64_t *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::affine::AffineApplyOp::build(a1, v12, *a3, *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1]);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>]";
  v6 = 127;
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v20 = v22;
  v21 = 0x400000000;
  v4 = v3[2];
  if (!v4)
  {
    return 0;
  }

  v7 = (v3 + 6);
  v8 = &v3[2 * v4 + 6];
  do
  {
    v9 = *v7;
    if (v21)
    {
      v10 = 8 * v21;
      v11 = v20;
      while (*v11 != v9)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v11 = v20;
    }

    if (v11 == (v20 + 8 * v21))
    {
LABEL_10:
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v20, v9);
    }

    ++v7;
  }

  while (v7 != v8);
  v12 = v20;
  if (v21 == v3[2])
  {
    v13 = 0;
  }

  else
  {
    Impl = mlir::AffineMap::getImpl(*v3, v3[1], v20, v21, a3[1]);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v14 = *(a2 + 68);
      v15 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v14 = 0;
      v15 = 2;
    }

    v19[0] = v15;
    v19[1] = v14;
    v16 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Impl, v19);
    (*(*a3 + 8))(a3, a2, v16);
    v13 = 1;
    v12 = v20;
  }

  if (v12 != v22)
  {
    free(v12);
  }

  return v13;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(*(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::affine::AffineMinOp::build(a1, v12, *a3, *a4, a4[1]);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>]";
  v6 = 123;
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

void MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v81[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    if (v7 >= *v6)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v7;
    }

    *&v72 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v72 + 1) = v9;
    v10 = *(a2 + 68);
    v11 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    v73 = v11;
    v74 = v10;
    v12 = v6[1];
    if (v10 <= v12)
    {
      v12 = v10;
    }

    else
    {
      v11 = mlir::ValueRange::offset_base(&v73, v10 - v12);
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v72 = xmmword_25D0A0640;
    v8 = 2;
    v11 = 2;
  }

  v71[0] = v11;
  v71[1] = v12;
  v68 = v70;
  v69 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v68, v8, 0, v8, v9);
  v65 = v67;
  v66 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v65, v11, 0, v11, v12);
  v62 = v64;
  v63 = 0x400000000;
  v59 = v61;
  v60 = 0x400000000;
  v13 = v6[2];
  if (!v13)
  {
    v51 = 0;
    goto LABEL_59;
  }

  v53 = a3;
  v54 = a2;
  v14 = 8 * v13;
  v15 = 6;
  do
  {
    v16 = *&v6[v15];
    v17 = *(v16 + 8);
    if (v16)
    {
      v18 = v17 == 7;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v20 = *(v16 + 16);
      v21 = v71;
    }

    else
    {
      if (v16)
      {
        v19 = v17 == 6;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = *(v16 + 16);
      v21 = &v72;
    }

    v22 = mlir::ValueRange::dereference_iterator(v21, v20);
    if ((~*(v22 + 8) & 7) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16);
      v26 = v25 + 120;
      if (v25 == -120)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = v23 + 16 * v24 + 16;
    }

    if (*(*(v26 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
    {
LABEL_30:
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v62, v16);
      goto LABEL_31;
    }

    llvm::SmallVectorTemplateBase<mlir::affine::AffineMinOp,true>::push_back(&v59, v26);
LABEL_31:
    v15 += 2;
    v14 -= 8;
  }

  while (v14);
  v27 = v59;
  if (v60)
  {
    LODWORD(v28) = *v6;
    v29 = v6[1];
    v55 = v59 + 8 * v60;
    do
    {
      v30 = *v27;
      v31 = *(*v27 + 44);
      v32 = *(*(*v27 + 16 * ((v31 >> 23) & 1) + 64) + 8);
      v34 = *v32;
      v33 = v32[1];
      if ((v31 & 0x800000) != 0)
      {
        v35 = *(v30 + 68);
        v36 = *(v30 + 72) & 0xFFFFFFFFFFFFFFF9;
        v37 = v36 | 2;
        if (v35 >= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = v35;
        }

        v73 = (v36 | 2);
        v74 = v35;
        if (v35 <= v33)
        {
          v39 = v36 | 2;
        }

        else
        {
          v39 = mlir::ValueRange::offset_base(&v73, v35 - v33);
          v35 = v33;
        }
      }

      else
      {
        v38 = 0;
        v35 = 0;
        v37 = 2;
        v39 = 2;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v68, v37, 0, v37, v38);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v65, v39, 0, v39, v35);
      v40 = v32[2];
      if (v40)
      {
        v41 = (v32 + 6);
        v42 = 8 * v40;
        do
        {
          v43 = *v41++;
          v73 = v43;
          v56 = mlir::AffineExpr::shiftDims(&v73, v34, v28, 0);
          v44 = mlir::AffineExpr::shiftSymbols(&v56, v33, v29, 0);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v62, v44);
          v42 -= 8;
        }

        while (v42);
      }

      v28 = v34 + v28;
      v29 += v33;
      v27 += 8;
    }

    while (v27 != v55);
    Impl = mlir::AffineMap::getImpl(v28, v29, v62, v63, v53[1]);
    llvm::to_vector<8u,llvm::detail::concat_range<mlir::Value,llvm::SmallVector<mlir::Value,8u> &,llvm::SmallVector<mlir::Value,8u> &>>(&v56, v68, v69, v65, v66);
    v46 = *(v54 + 24);
    v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(*(**v46 + 32));
    v73 = v46;
    v74 = v47;
    v75 = v77;
    v76 = 0x400000000;
    v77[4] = v78;
    v77[5] = 0x400000000;
    v78[4] = v79;
    v78[5] = 0x400000000;
    v79[8] = 4;
    v79[9] = v80;
    v79[10] = 0x100000000;
    v80[1] = v81;
    v80[2] = 0x100000000;
    v81[2] = 0;
    v81[1] = 0;
    v81[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v81[4] = 0;
    v81[6] = 0;
    mlir::affine::AffineMinOp::build(v53 + 1, &v73, Impl, v56 & 0xFFFFFFFFFFFFFFF9, v57);
    v48 = mlir::Operation::create(&v73);
    mlir::OpBuilder::insert((v53 + 1), v48);
    v49 = *(*(v48 + 6) + 16);
    mlir::OperationState::~OperationState(&v73);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    (*(*v53 + 8))(v53, v54, v50);
    if (v56 != &v58)
    {
      free(v56);
    }

    v51 = 1;
    v27 = v59;
  }

  else
  {
    v51 = 0;
  }

  if (v27 != v61)
  {
    free(v27);
  }

LABEL_59:
  if (v62 != v64)
  {
    free(v62);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return v51;
}

void llvm::SmallVectorTemplateBase<mlir::affine::AffineMinOp,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void llvm::to_vector<8u,llvm::detail::concat_range<mlir::Value,llvm::SmallVector<mlir::Value,8u> &,llvm::SmallVector<mlir::Value,8u> &>>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v6 = a2;
  v8 = 0;
  v9 = a2 + 8 * a3;
  v31 = (a1 + 16);
  v32 = a2;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  v10 = a4 + 8 * a5;
  v33 = a4;
  v34 = v9;
  v35 = v10;
  v11 = a4;
  v12 = a2;
  while (v12 != v9 || v11 != v10 || v34 != v9 || v35 != v10)
  {
    v14 = &unk_286E9E110;
    v15 = 16;
    do
    {
      v16 = v15;
      v17 = *(v14 - 1);
      v18 = (&v32 + (*v14 >> 1));
      if (*v14)
      {
        v17 = *(*v18 + v17);
      }

      if (v17(v18))
      {
        break;
      }

      v14 += 2;
      v15 = v16 - 16;
    }

    while (v16);
    ++v8;
    v12 = v32;
    v11 = v33;
  }

  v19 = *(a1 + 8);
  if (v8 + v19 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v31, v8 + v19, 8);
    v19 = *(a1 + 8);
  }

  v32 = v6;
  v33 = v5;
  v34 = v9;
  v35 = v10;
  for (i = (*a1 + 8 * v19); v6 != v9 || v5 != v10 || v34 != v9 || v35 != v10; ++i)
  {
    v22 = &unk_286E9E130;
    do
    {
      v23 = *(v22 - 1);
      v24 = (&v32 + (*v22 >> 1));
      if (*v22)
      {
        v23 = *(*v24 + v23);
      }

      v22 += 2;
      v25 = v23(v24);
    }

    while (!v25);
    *i = *v25;
    v26 = &unk_286E9E110;
    v27 = 16;
    do
    {
      v28 = v27;
      v29 = *(v26 - 1);
      v30 = (&v32 + (*v26 >> 1));
      if (*v26)
      {
        v29 = *(*v30 + v29);
      }

      if (v29(v30))
      {
        break;
      }

      v26 += 2;
      v27 = v28 - 16;
    }

    while (v28);
    v6 = v32;
    v5 = v33;
  }

  *(a1 + 8) += v8;
}

const char *llvm::detail::getTypeNameImpl<MergeAffineMinMaxOp<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MergeAffineMinMaxOp<mlir::affine::AffineMinOp>]";
  v6 = 108;
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v21 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  v22 = v24;
  v23 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v8, 0, v8, v7);
  composeAffineMapAndOperands(&v21, &v22);
  mlir::affine::canonicalizeMapAndOperands(&v21, &v22);
  simplifyMapWithOperands(&v21, v22, v23);
  v9 = v21;
  if (v21 != v6)
  {
LABEL_4:
    v10 = v22;
    v11 = v23;
    v12 = *(a2 + 24);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(*(**v12 + 32));
    v25 = v12;
    v26 = v13;
    v27 = v29;
    v28 = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[8] = 4;
    v31[9] = v32;
    v31[10] = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    mlir::affine::AffineMinOp::build(a3 + 1, &v25, v9, v10 & 0xFFFFFFFFFFFFFFF9, v11);
    v14 = mlir::Operation::create(&v25);
    mlir::OpBuilder::insert((a3 + 1), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v25);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, a2, v16);
    v17 = 1;
    goto LABEL_13;
  }

  v18 = v22;
  v25 = v8;
  v26 = 0;
  if (v7)
  {
    v19 = 0;
    while (v18[v19] == mlir::ValueRange::dereference_iterator(&v25, v19))
    {
      v26 = ++v19;
      if (v7 == v19)
      {
        goto LABEL_12;
      }
    }

    v9 = v21;
    goto LABEL_4;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineMinOp>]";
  v6 = 128;
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  if (!canonicalizeMapExprAndTermOrder(&v9))
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v5 = 0;
    v6 = 2;
  }

  v10[0] = v6;
  v10[1] = v5;
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v9, v10);
  (*(*a3 + 8))(a3, a2, v7);
  return 1;
}

uint64_t canonicalizeMapExprAndTermOrder(uint64_t **a1)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v43 = v45;
  v44 = 0x100000000;
  v1 = *(*a1 + 2);
  if (v1)
  {
    v3 = *a1 + 3;
    v4 = 8 * v1;
    while (mlir::AffineExpr::isPureAffine(v3))
    {
      v5 = *a1;
      v36 = &unk_286E771A8;
      v6 = *v5;
      v38[0] = 0;
      v38[1] = 0;
      v37 = 0;
      v38[2] = v6;
      v39 = 0;
      v40 = &v42;
      v41 = 0x400000000;
      std::vector<llvm::SmallVector<long long,8u>>::reserve(&v37, 8uLL);
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v36, *v3) & 1) == 0 || (v7 = *(v38[0] - 72), v7 != **a1 + *(*a1 + 1) + 1))
      {
        mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(&v36);
        break;
      }

      v8 = *(v38[0] - 80);
      v32 = &v8[8 * v7];
      v33 = v8;
      if (v44 >= HIDWORD(v44))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long *,long long *>(&v43, &v33, &v32);
      }

      else
      {
        v9 = &v43[8 * v44];
        *v9 = (v9 + 2);
        v9[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long *,void>(v9, v8, &v8[8 * v7]);
        LODWORD(v44) = v44 + 1;
      }

      mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(&v36);
      ++v3;
      v4 -= 8;
      if (!v4)
      {
        v12 = v43;
        v13 = &v43[8 * v44];
        if (v44)
        {
          if (v44 == 1)
          {
            break;
          }

          v15 = v43 + 8;
          v14 = *v43;
          while (1)
          {
            v16 = v12[8];
            v17 = *(v12 + 18);
            v18 = *(v12 + 2);
            v12 = v15;
            if (v18 >= v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = v18;
            }

            v20 = v14;
            v21 = v16;
            if (v19)
            {
              v22 = 8 * v19;
              v20 = v14;
              v21 = v16;
              v23 = &v16[8 * v19];
              while (*v21 == *v20)
              {
                v21 += 8;
                v20 += 8;
                v22 -= 8;
                if (!v22)
                {
                  v21 = v23;
                  break;
                }
              }
            }

            if (v20 != &v14[8 * v18] && (v21 == &v16[8 * v17] || *v21 < *v20))
            {
              break;
            }

            v10 = 0;
            v15 = v12 + 8;
            v14 = v16;
            if (v12 + 8 == v13)
            {
              goto LABEL_13;
            }
          }
        }

        if (v12 != v13)
        {
          v24 = *(*a1 + 2);
          v36 = v38;
          v37 = 0xC00000000;
          llvm::SmallVectorImpl<unsigned int>::append<llvm::detail::SafeIntIterator<unsigned int,false>,void>(&v36, 0, v24);
          v33 = &v43;
          v25 = 126 - 2 * __clz(v37);
          if (v37)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v36, v36 + v37, &v33, v26, 1);
          v33 = v35;
          v34 = 0x600000000;
          if (v37)
          {
            v27 = v36;
            v28 = 4 * v37;
            do
            {
              v29 = *v27++;
              llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v33, (*a1)[v29 + 3]);
              v28 -= 4;
            }

            while (v28);
            v30 = v33;
            v31 = v34;
          }

          else
          {
            v31 = 0;
            v30 = v35;
          }

          *a1 = mlir::AffineMap::getImpl(**a1, *(*a1 + 1), v30, v31, (*a1)[2]);
          if (v33 != v35)
          {
            free(v33);
          }

          if (v36 != v38)
          {
            free(v36);
          }

          v10 = 1;
          goto LABEL_13;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_13:
  llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::~SmallVector(&v43);
  return v10;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long *,long long *>(uint64_t a1, _BYTE **a2, _BYTE **a3)
{
  v12 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v12);
  v8 = &v7[8 * *(a1 + 8)];
  v9 = *a2;
  v10 = *a3;
  *v8 = v8 + 2;
  v8[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long *,void>(v8, v9, v10);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::moveElementsForGrow(a1, v7);
  v11 = v12;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v11;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            if (v11 != 3)
            {
              if (v11 == 4)
              {
                v404 = **a3;

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, a2 - 1, v404);
              }

              if (v11 == 5)
              {

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
              }

              goto LABEL_10;
            }

            v373 = *v10;
            v374 = v10[1];
            v375 = **a3;
            v376 = v375 + (v374 << 6);
            v377 = v375 + (v373 << 6);
            v378 = *v376;
            v379 = *(v376 + 8);
            v380 = *v377;
            v381 = *(v377 + 8);
            v382 = *v377 + 8 * v381;
            if (v381 >= v379)
            {
              v383 = v379;
            }

            else
            {
              v383 = *(v377 + 8);
            }

            v384 = *v377;
            v385 = v378;
            if (v383)
            {
              v386 = 8 * v383;
              v384 = *v377;
              v385 = v378;
              v387 = &v378[v383];
              while (*v385 == *v384)
              {
                ++v385;
                ++v384;
                v386 -= 8;
                if (!v386)
                {
                  v385 = v387;
                  break;
                }
              }
            }

            v388 = &v378[v379];
            v389 = v384 != v382 && (v385 == v388 || *v385 < *v384);
            v564 = *(a2 - 1);
            v565 = v375 + (v564 << 6);
            result = *v565;
            v566 = *(v565 + 8);
            if (v379 >= v566)
            {
              v567 = v566;
            }

            else
            {
              v567 = v379;
            }

            if (v567)
            {
              v568 = 8 * v567;
              v569 = result;
              v570 = (result + 8 * v567);
              while (*v569 == *v378)
              {
                ++v569;
                ++v378;
                v568 -= 8;
                if (!v568)
                {
                  v569 = v570;
                  break;
                }
              }
            }

            else
            {
              v569 = result;
            }

            if (v378 != v388)
            {
              if (v569 == (result + 8 * v566))
              {
                if (v389)
                {
LABEL_725:
                  *v10 = v564;
                  goto LABEL_740;
                }
              }

              else
              {
                v571 = *v569;
                v572 = *v378;
                if (v389)
                {
                  if (v571 < v572)
                  {
                    goto LABEL_725;
                  }

LABEL_716:
                  *v10 = v374;
                  v10[1] = v373;
                  v573 = *(a2 - 1);
                  v574 = v375 + (v573 << 6);
                  v575 = *v574;
                  v576 = *(v574 + 8);
                  v577 = *(v377 + 8);
                  v578 = &v380[v577];
                  if (v577 >= v576)
                  {
                    v579 = v576;
                  }

                  else
                  {
                    v579 = v577;
                  }

                  if (v579)
                  {
                    v580 = 8 * v579;
                    v581 = v575;
                    v582 = &v575[v579];
                    while (1)
                    {
                      result = *v380;
                      if (*v581 != *v380)
                      {
                        break;
                      }

                      ++v581;
                      ++v380;
                      v580 -= 8;
                      if (!v580)
                      {
                        v581 = v582;
                        break;
                      }
                    }
                  }

                  else
                  {
                    v581 = v575;
                  }

                  if (v380 == v578 || v581 != &v575[v576] && *v581 >= *v380)
                  {
                    return result;
                  }

                  v10[1] = v573;
LABEL_740:
                  *(a2 - 1) = v373;
                  return result;
                }

                if (v571 >= v572)
                {
                  return result;
                }
              }

              v10[1] = v564;
              *(a2 - 1) = v374;
              v584 = *v10;
              v583 = v10[1];
              v585 = v375 + (v583 << 6);
              v586 = v375 + (v584 << 6);
              v587 = *v585;
              v588 = *(v585 + 8);
              v589 = *v586;
              v590 = *(v586 + 8);
              v591 = *v586 + 8 * v590;
              if (v590 >= v588)
              {
                v592 = v588;
              }

              else
              {
                v592 = v590;
              }

              if (v592)
              {
                v593 = 8 * v592;
                v594 = v587;
                v595 = &v587[v592];
                while (1)
                {
                  result = *v589;
                  if (*v594 != *v589)
                  {
                    break;
                  }

                  ++v594;
                  ++v589;
                  v593 -= 8;
                  if (!v593)
                  {
                    v594 = v595;
                    break;
                  }
                }
              }

              else
              {
                v594 = v587;
              }

              if (v589 != v591 && (v594 == &v587[v588] || *v594 < *v589))
              {
                *v10 = v583;
                v10[1] = v584;
              }

              return result;
            }

            if (!v389)
            {
              return result;
            }

            goto LABEL_716;
          }

          if (v11 < 2)
          {
            return result;
          }

          if (v11 == 2)
          {
            v390 = *(a2 - 1);
            v391 = *v10;
            v392 = **a3;
            v393 = v392 + (v390 << 6);
            v394 = v392 + (v391 << 6);
            v395 = *v393;
            v396 = *(v393 + 8);
            v397 = *v394;
            v398 = *(v394 + 8);
            v399 = *v394 + 8 * v398;
            if (v398 >= v396)
            {
              v400 = v396;
            }

            else
            {
              v400 = v398;
            }

            if (v400)
            {
              v401 = 8 * v400;
              v402 = v395;
              v403 = &v395[v400];
              while (1)
              {
                result = *v397;
                if (*v402 != *v397)
                {
                  break;
                }

                ++v402;
                ++v397;
                v401 -= 8;
                if (!v401)
                {
                  v402 = v403;
                  break;
                }
              }
            }

            else
            {
              v402 = v395;
            }

            if (v397 != v399 && (v402 == &v395[v396] || *v402 < *v397))
            {
              *v10 = v390;
              *(a2 - 1) = v391;
            }

            return result;
          }

LABEL_10:
          if (v11 <= 23)
          {
            v405 = v10 + 1;
            v407 = v10 == a2 || v405 == a2;
            if (a5)
            {
              if (!v407)
              {
                v408 = **a3;
                v409 = v10;
                do
                {
                  v410 = v409;
                  v409 = v405;
                  v412 = *v410;
                  v411 = v410[1];
                  v413 = v408 + (v411 << 6);
                  v414 = v408 + (v412 << 6);
                  v415 = *v413;
                  v416 = *(v413 + 8);
                  v417 = *v414;
                  v418 = *(v414 + 8);
                  if (v418 >= v416)
                  {
                    v419 = *(v413 + 8);
                  }

                  else
                  {
                    v419 = v418;
                  }

                  if (v419)
                  {
                    v420 = 8 * v419;
                    result = v417;
                    v421 = *v413;
                    v422 = &v415[v419];
                    while (*v421 == *result)
                    {
                      ++v421;
                      result += 8;
                      v420 -= 8;
                      if (!v420)
                      {
                        v421 = v422;
                        break;
                      }
                    }
                  }

                  else
                  {
                    result = v417;
                    v421 = *v413;
                  }

                  if (result != v417 + 8 * v418 && (v421 == &v415[v416] || *v421 < *result))
                  {
                    v410[1] = v412;
                    v423 = v10;
                    if (v410 != v10)
                    {
                      v424 = v410;
                      while (1)
                      {
                        v426 = *--v424;
                        v425 = v426;
                        v427 = v408 + (v426 << 6);
                        v428 = *(v413 + 8);
                        v429 = *v427;
                        result = *(v427 + 8);
                        v430 = result >= v428 ? *(v413 + 8) : result;
                        if (v430)
                        {
                          v431 = 8 * v430;
                          v432 = v429;
                          v433 = v415;
                          v434 = &v415[v430];
                          while (*v433 == *v432)
                          {
                            ++v433;
                            ++v432;
                            v431 -= 8;
                            if (!v431)
                            {
                              v433 = v434;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v432 = v429;
                          v433 = v415;
                        }

                        if (v432 == &v429[result] || v433 != &v415[v428] && *v433 >= *v432)
                        {
                          break;
                        }

                        *v410 = v425;
                        v410 = v424;
                        if (v424 == v10)
                        {
                          v423 = v10;
                          goto LABEL_549;
                        }
                      }

                      v423 = v410;
                    }

LABEL_549:
                    *v423 = v411;
                  }

                  v405 = v409 + 1;
                }

                while (v409 + 1 != a2);
              }
            }

            else if (!v407)
            {
              v540 = **a3;
              do
              {
                v541 = v9;
                v9 = v405;
                v543 = *v541;
                v542 = v541[1];
                v544 = v540 + (v542 << 6);
                v545 = v540 + (v543 << 6);
                v546 = *v544;
                v547 = *(v544 + 8);
                v548 = *v545;
                v549 = *(v545 + 8);
                if (v549 >= v547)
                {
                  v550 = *(v544 + 8);
                }

                else
                {
                  v550 = v549;
                }

                if (v550)
                {
                  v551 = 8 * v550;
                  v552 = v548;
                  result = *v544;
                  v553 = v546 + 8 * v550;
                  while (*result == *v552)
                  {
                    result += 8;
                    ++v552;
                    v551 -= 8;
                    if (!v551)
                    {
                      result = v553;
                      break;
                    }
                  }
                }

                else
                {
                  v552 = v548;
                  result = *v544;
                }

                if (v552 != &v548[v549] && (result == v546 + 8 * v547 || *result < *v552))
                {
                  v554 = v9;
                  do
                  {
                    *v554 = v543;
                    v554 = v541;
                    v555 = *--v541;
                    LODWORD(v543) = v555;
                    v556 = v540 + (v555 << 6);
                    v557 = *(v544 + 8);
                    v558 = *v556;
                    result = *(v556 + 8);
                    if (result >= v557)
                    {
                      v559 = *(v544 + 8);
                    }

                    else
                    {
                      v559 = *(v556 + 8);
                    }

                    if (v559)
                    {
                      v560 = 8 * v559;
                      v561 = *v556;
                      v562 = v546;
                      v563 = (v546 + 8 * v559);
                      while (*v562 == *v561)
                      {
                        ++v562;
                        ++v561;
                        v560 -= 8;
                        if (!v560)
                        {
                          v562 = v563;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v561 = *v556;
                      v562 = v546;
                    }
                  }

                  while (v561 != &v558[result] && (v562 == (v546 + 8 * v557) || *v562 < *v561));
                  *v554 = v542;
                }

                v405 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v435 = (v11 - 2) >> 1;
              v436 = *a3;
              v437 = v435;
              do
              {
                v438 = v437;
                if (v435 >= v437)
                {
                  v439 = (2 * v437) | 1;
                  v440 = &v9[v439];
                  v441 = *v436;
                  if (2 * v438 + 2 < v11)
                  {
                    v442 = v441 + (*v440 << 6);
                    v443 = v441 + (v440[1] << 6);
                    v444 = *v442;
                    v445 = *(v442 + 8);
                    v446 = *v443;
                    v447 = *(v443 + 8);
                    if (v447 >= v445)
                    {
                      v448 = v445;
                    }

                    else
                    {
                      v448 = v447;
                    }

                    if (v448)
                    {
                      v449 = 8 * v448;
                      v450 = v446;
                      v451 = v444;
                      v452 = &v444[v448];
                      while (*v451 == *v450)
                      {
                        ++v451;
                        ++v450;
                        v449 -= 8;
                        if (!v449)
                        {
                          v451 = v452;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v450 = v446;
                      v451 = v444;
                    }

                    if (v450 != &v446[v447] && (v451 == &v444[v445] || *v451 < *v450))
                    {
                      ++v440;
                      v439 = 2 * v438 + 2;
                    }
                  }

                  v453 = *v440;
                  v454 = v9[v438];
                  v455 = v441 + (v453 << 6);
                  v456 = v441 + (v454 << 6);
                  v457 = *v455;
                  v458 = *(v455 + 8);
                  v459 = *v456;
                  v460 = *(v456 + 8);
                  if (v460 >= v458)
                  {
                    v461 = v458;
                  }

                  else
                  {
                    v461 = *(v456 + 8);
                  }

                  if (v461)
                  {
                    v462 = 8 * v461;
                    v463 = *v456;
                    v464 = v457;
                    v465 = &v457[v461];
                    while (*v464 == *v463)
                    {
                      ++v464;
                      ++v463;
                      v462 -= 8;
                      if (!v462)
                      {
                        v464 = v465;
                        break;
                      }
                    }
                  }

                  else
                  {
                    v463 = *v456;
                    v464 = v457;
                  }

                  if (v463 == &v459[v460] || v464 != &v457[v458] && *v464 >= *v463)
                  {
                    v9[v438] = v453;
                    if (v435 >= v439)
                    {
                      while (1)
                      {
                        v467 = 2 * v439;
                        v439 = (2 * v439) | 1;
                        v466 = &v9[v439];
                        v468 = v467 + 2;
                        if (v468 < v11)
                        {
                          v469 = v441 + (*v466 << 6);
                          v470 = v441 + (v466[1] << 6);
                          v471 = *v469;
                          v472 = *(v469 + 8);
                          v473 = *v470;
                          v474 = *(v470 + 8);
                          if (v474 >= v472)
                          {
                            v475 = v472;
                          }

                          else
                          {
                            v475 = v474;
                          }

                          if (v475)
                          {
                            v476 = 8 * v475;
                            v477 = v473;
                            v478 = v471;
                            v479 = &v471[v475];
                            while (*v478 == *v477)
                            {
                              ++v478;
                              ++v477;
                              v476 -= 8;
                              if (!v476)
                              {
                                v478 = v479;
                                break;
                              }
                            }
                          }

                          else
                          {
                            v477 = v473;
                            v478 = v471;
                          }

                          if (v477 != &v473[v474] && (v478 == &v471[v472] || *v478 < *v477))
                          {
                            ++v466;
                            v439 = v468;
                          }
                        }

                        v480 = *v466;
                        v481 = v441 + (v480 << 6);
                        v482 = *v481;
                        v483 = *(v481 + 8);
                        v484 = *(v456 + 8);
                        v485 = v484 >= v483 ? v483 : *(v456 + 8);
                        if (v485)
                        {
                          v486 = 8 * v485;
                          v487 = v459;
                          v488 = v482;
                          v489 = &v482[v485];
                          while (*v488 == *v487)
                          {
                            ++v488;
                            ++v487;
                            v486 -= 8;
                            if (!v486)
                            {
                              v488 = v489;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v487 = v459;
                          v488 = v482;
                        }

                        if (v487 != &v459[v484] && (v488 == &v482[v483] || *v488 < *v487))
                        {
                          break;
                        }

                        *v440 = v480;
                        v440 = v466;
                        if (v435 < v439)
                        {
                          goto LABEL_610;
                        }
                      }
                    }

                    v466 = v440;
LABEL_610:
                    *v466 = v454;
                  }
                }

                v437 = v438 - 1;
              }

              while (v438);
              v490 = *a3;
              do
              {
                v491 = 0;
                v492 = *v9;
                v493 = *a3;
                v494 = v9;
                do
                {
                  v495 = v494;
                  v496 = &v494[v491];
                  v494 = v496 + 1;
                  v497 = 2 * v491;
                  result = (2 * v491) | 1;
                  v491 = result;
                  v498 = v497 + 2;
                  if (v498 < v11)
                  {
                    v500 = v496[2];
                    v499 = v496 + 2;
                    v501 = *v493 + (*(v499 - 1) << 6);
                    v502 = *v493 + (v500 << 6);
                    result = *v501;
                    v503 = *(v501 + 8);
                    v504 = *v502;
                    v505 = *(v502 + 8);
                    if (v505 >= v503)
                    {
                      v506 = v503;
                    }

                    else
                    {
                      v506 = v505;
                    }

                    if (v506)
                    {
                      v507 = 8 * v506;
                      v508 = v504;
                      v509 = result;
                      v510 = (result + 8 * v506);
                      while (*v509 == *v508)
                      {
                        ++v509;
                        ++v508;
                        v507 -= 8;
                        if (!v507)
                        {
                          v509 = v510;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v508 = v504;
                      v509 = result;
                    }

                    if (v508 != &v504[v505])
                    {
                      result += 8 * v503;
                      if (v509 == result || (result = *v509, *v509 < *v508))
                      {
                        v494 = v499;
                        v491 = v498;
                      }
                    }
                  }

                  *v495 = *v494;
                }

                while (v491 <= ((v11 - 2) >> 1));
                if (v494 == --a2)
                {
                  *v494 = v492;
                }

                else
                {
                  *v494 = *a2;
                  *a2 = v492;
                  v511 = (v494 - v9 + 4) >> 2;
                  v512 = v511 - 2;
                  if (v511 >= 2)
                  {
                    v513 = v512 >> 1;
                    v514 = &v9[v512 >> 1];
                    result = *v514;
                    v515 = *v494;
                    v516 = *v490;
                    v517 = *v490 + (result << 6);
                    v518 = *v490 + (v515 << 6);
                    v519 = *v517;
                    v520 = *(v517 + 8);
                    v521 = *v518;
                    v522 = *(v518 + 8);
                    if (v522 >= v520)
                    {
                      v523 = v520;
                    }

                    else
                    {
                      v523 = *(v518 + 8);
                    }

                    if (v523)
                    {
                      v524 = 8 * v523;
                      v525 = *v518;
                      v526 = v519;
                      v527 = &v519[v523];
                      while (*v526 == *v525)
                      {
                        ++v526;
                        ++v525;
                        v524 -= 8;
                        if (!v524)
                        {
                          v526 = v527;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v525 = *v518;
                      v526 = v519;
                    }

                    if (v525 != &v521[v522] && (v526 == &v519[v520] || *v526 < *v525))
                    {
                      *v494 = result;
                      if (v512 >= 2)
                      {
                        while (1)
                        {
                          v530 = v513 - 1;
                          v513 = (v513 - 1) >> 1;
                          v528 = &v9[v513];
                          result = *v528;
                          v531 = v516 + (result << 6);
                          v532 = *v531;
                          v533 = *(v531 + 8);
                          v534 = *(v518 + 8);
                          v535 = v534 >= v533 ? v533 : *(v518 + 8);
                          if (v535)
                          {
                            v536 = 8 * v535;
                            v537 = v521;
                            v538 = v532;
                            v539 = &v532[v535];
                            while (*v538 == *v537)
                            {
                              ++v538;
                              ++v537;
                              v536 -= 8;
                              if (!v536)
                              {
                                v538 = v539;
                                break;
                              }
                            }
                          }

                          else
                          {
                            v537 = v521;
                            v538 = v532;
                          }

                          if (v537 == &v521[v534] || v538 != &v532[v533] && *v538 >= *v537)
                          {
                            break;
                          }

                          *v514 = result;
                          v514 = &v9[v513];
                          if (v530 <= 1)
                          {
                            goto LABEL_646;
                          }
                        }
                      }

                      v528 = v514;
LABEL_646:
                      *v528 = v515;
                    }
                  }
                }
              }

              while (v11-- > 2);
            }

            return result;
          }

          v12 = &v10[v11 >> 1];
          v13 = v12;
          v14 = **a3;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            v17 = v14 + (v15 << 6);
            v18 = v14 + (v16 << 6);
            v19 = *v17;
            v20 = *(v17 + 8);
            v21 = *v18;
            v22 = *(v18 + 8);
            if (v22 >= v20)
            {
              v23 = v20;
            }

            else
            {
              v23 = *(v18 + 8);
            }

            v24 = *v18;
            v25 = v19;
            if (v23)
            {
              v26 = 8 * v23;
              v24 = *v18;
              v25 = v19;
              v27 = &v19[v23];
              while (*v25 == *v24)
              {
                ++v25;
                ++v24;
                v26 -= 8;
                if (!v26)
                {
                  v25 = v27;
                  break;
                }
              }
            }

            v28 = &v19[v20];
            v29 = v24 != &v21[v22] && (v25 == v28 || *v25 < *v24);
            v45 = *(a2 - 1);
            v46 = v14 + (v45 << 6);
            v47 = *v46;
            v48 = *(v46 + 8);
            if (v20 >= v48)
            {
              v49 = v48;
            }

            else
            {
              v49 = v20;
            }

            if (v49)
            {
              v50 = 8 * v49;
              v51 = v47;
              v52 = &v47[v49];
              while (*v51 == *v19)
              {
                ++v51;
                ++v19;
                v50 -= 8;
                if (!v50)
                {
                  v51 = v52;
                  break;
                }
              }
            }

            else
            {
              v51 = v47;
            }

            if (v19 == v28)
            {
              if (v29)
              {
                goto LABEL_53;
              }

              goto LABEL_124;
            }

            if (v51 == &v47[v48])
            {
              if (v29)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v53 = *v51;
              v54 = *v19;
              if (v29)
              {
                if (v53 < v54)
                {
LABEL_86:
                  *v10 = v45;
                  goto LABEL_112;
                }

LABEL_53:
                *v10 = v15;
                *v12 = v16;
                v55 = *(a2 - 1);
                v56 = v14 + (v55 << 6);
                v57 = *v56;
                v58 = *(v56 + 8);
                v59 = *(v18 + 8);
                if (v59 >= v58)
                {
                  v60 = v58;
                }

                else
                {
                  v60 = v59;
                }

                if (v60)
                {
                  v61 = 8 * v60;
                  v62 = v21;
                  v63 = v57;
                  v64 = &v57[v60];
                  while (*v63 == *v62)
                  {
                    ++v63;
                    ++v62;
                    v61 -= 8;
                    if (!v61)
                    {
                      v63 = v64;
                      break;
                    }
                  }
                }

                else
                {
                  v62 = v21;
                  v63 = v57;
                }

                if (v62 != &v21[v59] && (v63 == &v57[v58] || *v63 < *v62))
                {
                  *v12 = v55;
LABEL_112:
                  *(a2 - 1) = v16;
                }

LABEL_124:
                v111 = v12 - 1;
                v112 = *(v12 - 1);
                v113 = v10[1];
                v114 = v14 + (v112 << 6);
                v115 = v14 + (v113 << 6);
                v116 = *v114;
                v117 = *(v114 + 8);
                v118 = *v115;
                v119 = *(v115 + 8);
                if (v119 >= v117)
                {
                  v120 = v117;
                }

                else
                {
                  v120 = *(v115 + 8);
                }

                v121 = *v115;
                v122 = v116;
                if (v120)
                {
                  v123 = 8 * v120;
                  v121 = *v115;
                  v122 = v116;
                  v124 = &v116[v120];
                  while (*v122 == *v121)
                  {
                    ++v122;
                    ++v121;
                    v123 -= 8;
                    if (!v123)
                    {
                      v122 = v124;
                      break;
                    }
                  }
                }

                v125 = &v116[v117];
                v126 = v121 != &v118[v119] && (v122 == v125 || *v122 < *v121);
                v127 = *(a2 - 2);
                v128 = v14 + (v127 << 6);
                v129 = *v128;
                v130 = *(v128 + 8);
                if (v117 >= v130)
                {
                  v131 = v130;
                }

                else
                {
                  v131 = v117;
                }

                if (v131)
                {
                  v132 = 8 * v131;
                  v133 = v129;
                  v134 = &v129[v131];
                  while (*v133 == *v116)
                  {
                    ++v133;
                    ++v116;
                    v132 -= 8;
                    if (!v132)
                    {
                      v133 = v134;
                      break;
                    }
                  }
                }

                else
                {
                  v133 = v129;
                }

                if (v116 == v125)
                {
                  if (v126)
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_187;
                }

                if (v133 == &v129[v130])
                {
                  if (v126)
                  {
                    goto LABEL_161;
                  }
                }

                else
                {
                  v135 = *v133;
                  v136 = *v116;
                  if (v126)
                  {
                    if (v135 < v136)
                    {
LABEL_161:
                      v10[1] = v127;
                      goto LABEL_176;
                    }

LABEL_152:
                    v10[1] = v112;
                    *v111 = v113;
                    v137 = *(a2 - 2);
                    v138 = v14 + (v137 << 6);
                    v139 = *v138;
                    v140 = *(v138 + 8);
                    v141 = *(v115 + 8);
                    if (v141 >= v140)
                    {
                      v142 = v140;
                    }

                    else
                    {
                      v142 = v141;
                    }

                    if (v142)
                    {
                      v143 = 8 * v142;
                      v144 = v118;
                      v145 = v139;
                      v146 = &v139[v142];
                      while (*v145 == *v144)
                      {
                        ++v145;
                        ++v144;
                        v143 -= 8;
                        if (!v143)
                        {
                          v145 = v146;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v144 = v118;
                      v145 = v139;
                    }

                    if (v144 != &v118[v141] && (v145 == &v139[v140] || *v145 < *v144))
                    {
                      *v111 = v137;
LABEL_176:
                      *(a2 - 2) = v113;
                    }

LABEL_187:
                    v162 = v12[1];
                    v160 = v12 + 1;
                    v161 = v162;
                    v163 = v10[2];
                    v164 = v14 + (v162 << 6);
                    v165 = v14 + (v163 << 6);
                    v166 = *v164;
                    v167 = *(v164 + 8);
                    v168 = *v165;
                    v169 = *(v165 + 8);
                    if (v169 >= v167)
                    {
                      v170 = v167;
                    }

                    else
                    {
                      v170 = *(v165 + 8);
                    }

                    v171 = *v165;
                    v172 = v166;
                    if (v170)
                    {
                      v173 = 8 * v170;
                      v171 = *v165;
                      v172 = v166;
                      v174 = &v166[v170];
                      while (*v172 == *v171)
                      {
                        ++v172;
                        ++v171;
                        v173 -= 8;
                        if (!v173)
                        {
                          v172 = v174;
                          break;
                        }
                      }
                    }

                    v175 = &v166[v167];
                    v176 = v171 != &v168[v169] && (v172 == v175 || *v172 < *v171);
                    v177 = *(a2 - 3);
                    v178 = v14 + (v177 << 6);
                    v179 = *v178;
                    v180 = *(v178 + 8);
                    if (v167 >= v180)
                    {
                      v181 = v180;
                    }

                    else
                    {
                      v181 = v167;
                    }

                    if (v181)
                    {
                      v182 = 8 * v181;
                      v183 = v179;
                      v184 = &v179[v181];
                      while (*v183 == *v166)
                      {
                        ++v183;
                        ++v166;
                        v182 -= 8;
                        if (!v182)
                        {
                          v183 = v184;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v183 = v179;
                    }

                    if (v166 == v175)
                    {
                      if (v176)
                      {
                        goto LABEL_215;
                      }

                      goto LABEL_245;
                    }

                    if (v183 == &v179[v180])
                    {
                      if (v176)
                      {
                        goto LABEL_224;
                      }
                    }

                    else
                    {
                      v185 = *v183;
                      v186 = *v166;
                      if (v176)
                      {
                        if (v185 < v186)
                        {
LABEL_224:
                          v10[2] = v177;
                          goto LABEL_239;
                        }

LABEL_215:
                        v10[2] = v161;
                        *v160 = v163;
                        v187 = *(a2 - 3);
                        v188 = v14 + (v187 << 6);
                        v189 = *v188;
                        v190 = *(v188 + 8);
                        v191 = *(v165 + 8);
                        if (v191 >= v190)
                        {
                          v192 = v190;
                        }

                        else
                        {
                          v192 = v191;
                        }

                        if (v192)
                        {
                          v193 = 8 * v192;
                          v194 = v168;
                          v195 = v189;
                          v196 = &v189[v192];
                          while (*v195 == *v194)
                          {
                            ++v195;
                            ++v194;
                            v193 -= 8;
                            if (!v193)
                            {
                              v195 = v196;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v194 = v168;
                          v195 = v189;
                        }

                        if (v194 != &v168[v191] && (v195 == &v189[v190] || *v195 < *v194))
                        {
                          *v160 = v187;
LABEL_239:
                          *(a2 - 3) = v163;
                        }

LABEL_245:
                        v210 = *v13;
                        v211 = *v111;
                        v212 = v14 + (v210 << 6);
                        v213 = v14 + (v211 << 6);
                        v214 = *v212;
                        v215 = *(v212 + 8);
                        v216 = *v213;
                        v217 = *(v213 + 8);
                        if (v217 >= v215)
                        {
                          v218 = v215;
                        }

                        else
                        {
                          v218 = *(v213 + 8);
                        }

                        v219 = *v213;
                        v220 = v214;
                        if (v218)
                        {
                          v221 = 8 * v218;
                          v219 = *v213;
                          v220 = v214;
                          v222 = &v214[v218];
                          while (*v220 == *v219)
                          {
                            ++v220;
                            ++v219;
                            v221 -= 8;
                            if (!v221)
                            {
                              v220 = v222;
                              break;
                            }
                          }
                        }

                        v223 = &v214[v215];
                        v224 = v219 != &v216[v217] && (v220 == v223 || *v220 < *v219);
                        v225 = *v160;
                        v226 = v14 + (v225 << 6);
                        v227 = *v226;
                        v228 = *(v226 + 8);
                        if (v215 >= v228)
                        {
                          v229 = *(v226 + 8);
                        }

                        else
                        {
                          v229 = v215;
                        }

                        if (v229)
                        {
                          v230 = 8 * v229;
                          v231 = *v226;
                          v232 = &v227[v229];
                          while (*v231 == *v214)
                          {
                            ++v231;
                            ++v214;
                            v230 -= 8;
                            if (!v230)
                            {
                              v231 = v232;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v231 = *v226;
                        }

                        if (v214 != v223)
                        {
                          if (v231 == &v227[v228])
                          {
                            if (v224)
                            {
LABEL_304:
                              *v111 = v225;
                              *v160 = v211;
                              goto LABEL_305;
                            }
                          }

                          else
                          {
                            v233 = *v231;
                            v234 = *v214;
                            if (v224)
                            {
                              if (v233 < v234)
                              {
                                goto LABEL_304;
                              }

LABEL_273:
                              *v111 = v210;
                              *v13 = v211;
                              v235 = *(v226 + 8);
                              v236 = *(v213 + 8);
                              if (v236 >= v235)
                              {
                                v237 = *(v226 + 8);
                              }

                              else
                              {
                                v237 = *(v213 + 8);
                              }

                              if (v237)
                              {
                                v238 = 8 * v237;
                                v239 = v216;
                                v240 = v227;
                                v241 = &v227[v237];
                                while (*v240 == *v239)
                                {
                                  ++v240;
                                  ++v239;
                                  v238 -= 8;
                                  if (!v238)
                                  {
                                    v240 = v241;
                                    break;
                                  }
                                }
                              }

                              else
                              {
                                v239 = v216;
                                v240 = v227;
                              }

                              if (v239 != &v216[v236])
                              {
                                if (v240 == &v227[v235])
                                {
                                  v111 = v13;
                                  LODWORD(v210) = v225;
                                  goto LABEL_304;
                                }

                                v111 = v13;
                                LODWORD(v210) = v225;
                                if (*v240 < *v239)
                                {
                                  goto LABEL_304;
                                }
                              }

                              LODWORD(v210) = v211;
LABEL_305:
                              v249 = *v10;
                              *v10 = v210;
                              *v13 = v249;
                              goto LABEL_306;
                            }

                            if (v233 >= v234)
                            {
                              goto LABEL_305;
                            }
                          }

                          *v13 = v225;
                          *v160 = v210;
                          v242 = *(v226 + 8);
                          v243 = *(v213 + 8);
                          if (v243 >= v242)
                          {
                            v244 = *(v226 + 8);
                          }

                          else
                          {
                            v244 = *(v213 + 8);
                          }

                          if (v244)
                          {
                            v245 = 8 * v244;
                            v246 = v216;
                            v247 = v227;
                            v248 = &v227[v244];
                            while (*v247 == *v246)
                            {
                              ++v247;
                              ++v246;
                              v245 -= 8;
                              if (!v245)
                              {
                                v247 = v248;
                                break;
                              }
                            }
                          }

                          else
                          {
                            v246 = v216;
                            v247 = v227;
                          }

                          if (v246 != &v216[v243])
                          {
                            if (v247 == &v227[v242])
                            {
                              v160 = v13;
                              LODWORD(v210) = v211;
                              goto LABEL_304;
                            }

                            v160 = v13;
                            LODWORD(v210) = v211;
                            if (*v247 < *v246)
                            {
                              goto LABEL_304;
                            }
                          }

                          LODWORD(v210) = v225;
                          goto LABEL_305;
                        }

                        if (v224)
                        {
                          goto LABEL_273;
                        }

                        goto LABEL_305;
                      }

                      if (v185 >= v186)
                      {
                        goto LABEL_245;
                      }
                    }

                    *v160 = v177;
                    *(a2 - 3) = v161;
                    v197 = *v160;
                    v198 = v10[2];
                    v199 = v14 + (v197 << 6);
                    v200 = v14 + (v198 << 6);
                    v201 = *v199;
                    v202 = *(v199 + 8);
                    v203 = *v200;
                    v204 = *(v200 + 8);
                    if (v204 >= v202)
                    {
                      v205 = v202;
                    }

                    else
                    {
                      v205 = v204;
                    }

                    if (v205)
                    {
                      v206 = 8 * v205;
                      v207 = v203;
                      v208 = v201;
                      v209 = &v201[v205];
                      while (*v208 == *v207)
                      {
                        ++v208;
                        ++v207;
                        v206 -= 8;
                        if (!v206)
                        {
                          v208 = v209;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v207 = v203;
                      v208 = v201;
                    }

                    if (v207 != &v203[v204] && (v208 == &v201[v202] || *v208 < *v207))
                    {
                      v10[2] = v197;
                      *v160 = v198;
                    }

                    goto LABEL_245;
                  }

                  if (v135 >= v136)
                  {
                    goto LABEL_187;
                  }
                }

                *v111 = v127;
                *(a2 - 2) = v112;
                v147 = *v111;
                v148 = v10[1];
                v149 = v14 + (v147 << 6);
                v150 = v14 + (v148 << 6);
                v151 = *v149;
                v152 = *(v149 + 8);
                v153 = *v150;
                v154 = *(v150 + 8);
                if (v154 >= v152)
                {
                  v155 = v152;
                }

                else
                {
                  v155 = v154;
                }

                if (v155)
                {
                  v156 = 8 * v155;
                  v157 = v153;
                  v158 = v151;
                  v159 = &v151[v155];
                  while (*v158 == *v157)
                  {
                    ++v158;
                    ++v157;
                    v156 -= 8;
                    if (!v156)
                    {
                      v158 = v159;
                      break;
                    }
                  }
                }

                else
                {
                  v157 = v153;
                  v158 = v151;
                }

                if (v157 != &v153[v154] && (v158 == &v151[v152] || *v158 < *v157))
                {
                  v10[1] = v147;
                  *v111 = v148;
                }

                goto LABEL_187;
              }

              if (v53 >= v54)
              {
                goto LABEL_124;
              }
            }

            *v12 = v45;
            *(a2 - 1) = v15;
            v85 = *v12;
            v86 = *v10;
            v87 = v14 + (v85 << 6);
            v88 = v14 + (v86 << 6);
            v89 = *v87;
            v90 = *(v87 + 8);
            v91 = *v88;
            v92 = *(v88 + 8);
            if (v92 >= v90)
            {
              v93 = v90;
            }

            else
            {
              v93 = v92;
            }

            if (v93)
            {
              v94 = 8 * v93;
              v95 = v91;
              v96 = v89;
              v97 = &v89[v93];
              while (*v96 == *v95)
              {
                ++v96;
                ++v95;
                v94 -= 8;
                if (!v94)
                {
                  v96 = v97;
                  break;
                }
              }
            }

            else
            {
              v95 = v91;
              v96 = v89;
            }

            if (v95 != &v91[v92] && (v96 == &v89[v90] || *v96 < *v95))
            {
              *v10 = v85;
              *v12 = v86;
            }

            goto LABEL_124;
          }

          v30 = *v10;
          v31 = *v12;
          v32 = v14 + (v30 << 6);
          v33 = v14 + (v31 << 6);
          v34 = *v32;
          v35 = *(v32 + 8);
          v36 = *v33;
          v37 = *(v33 + 8);
          if (v37 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = *(v33 + 8);
          }

          v39 = *v33;
          v40 = v34;
          if (v38)
          {
            v41 = 8 * v38;
            v39 = *v33;
            v40 = v34;
            v42 = &v34[v38];
            while (*v40 == *v39)
            {
              ++v40;
              ++v39;
              v41 -= 8;
              if (!v41)
              {
                v40 = v42;
                break;
              }
            }
          }

          v43 = &v34[v35];
          v44 = v39 != &v36[v37] && (v40 == v43 || *v40 < *v39);
          v65 = *(a2 - 1);
          v66 = v14 + (v65 << 6);
          v67 = *v66;
          v68 = *(v66 + 8);
          if (v35 >= v68)
          {
            v69 = v68;
          }

          else
          {
            v69 = v35;
          }

          if (v69)
          {
            v70 = 8 * v69;
            v71 = v67;
            v72 = &v67[v69];
            while (*v71 == *v34)
            {
              ++v71;
              ++v34;
              v70 -= 8;
              if (!v70)
              {
                v71 = v72;
                break;
              }
            }
          }

          else
          {
            v71 = v67;
          }

          if (v34 == v43)
          {
            if (!v44)
            {
              goto LABEL_306;
            }

            goto LABEL_77;
          }

          if (v71 == &v67[v68])
          {
            if (v44)
            {
LABEL_88:
              *v13 = v65;
LABEL_118:
              *(a2 - 1) = v31;
              goto LABEL_306;
            }

            goto LABEL_99;
          }

          v73 = *v71;
          v74 = *v34;
          if (!v44)
          {
            if (v73 >= v74)
            {
              goto LABEL_306;
            }

LABEL_99:
            *v10 = v65;
            *(a2 - 1) = v30;
            v98 = *v10;
            v99 = *v13;
            v100 = v14 + (v98 << 6);
            v101 = v14 + (v99 << 6);
            v102 = *v100;
            v103 = *(v100 + 8);
            v104 = *v101;
            v105 = *(v101 + 8);
            if (v105 >= v103)
            {
              v106 = v103;
            }

            else
            {
              v106 = v105;
            }

            if (v106)
            {
              v107 = 8 * v106;
              v108 = v104;
              v109 = v102;
              v110 = &v102[v106];
              while (*v109 == *v108)
              {
                ++v109;
                ++v108;
                v107 -= 8;
                if (!v107)
                {
                  v109 = v110;
                  break;
                }
              }
            }

            else
            {
              v108 = v104;
              v109 = v102;
            }

            if (v108 != &v104[v105] && (v109 == &v102[v103] || *v109 < *v108))
            {
              *v13 = v98;
              *v10 = v99;
            }

            goto LABEL_306;
          }

          if (v73 < v74)
          {
            goto LABEL_88;
          }

LABEL_77:
          *v13 = v30;
          *v10 = v31;
          v75 = *(a2 - 1);
          v76 = v14 + (v75 << 6);
          v77 = *v76;
          v78 = *(v76 + 8);
          v79 = *(v33 + 8);
          if (v79 >= v78)
          {
            v80 = v78;
          }

          else
          {
            v80 = v79;
          }

          if (v80)
          {
            v81 = 8 * v80;
            v82 = v36;
            v83 = v77;
            v84 = &v77[v80];
            while (*v83 == *v82)
            {
              ++v83;
              ++v82;
              v81 -= 8;
              if (!v81)
              {
                v83 = v84;
                break;
              }
            }
          }

          else
          {
            v82 = v36;
            v83 = v77;
          }

          if (v82 != &v36[v79] && (v83 == &v77[v78] || *v83 < *v82))
          {
            *v10 = v75;
            goto LABEL_118;
          }

LABEL_306:
          --a4;
          v250 = *v10;
          v251 = v14 + (v250 << 6);
          if (a5)
          {
            v252 = *v251;
            v253 = *(v251 + 8);
            break;
          }

          v254 = v14 + (*(v10 - 1) << 6);
          v255 = *v254;
          v256 = *(v254 + 8);
          v252 = *v251;
          v253 = *(v251 + 8);
          v257 = v253 >= v256 ? v256 : *(v251 + 8);
          if (v257)
          {
            v258 = 8 * v257;
            v259 = *v251;
            v260 = v255;
            v261 = &v255[v257];
            while (*v260 == *v259)
            {
              ++v260;
              ++v259;
              v258 -= 8;
              if (!v258)
              {
                v260 = v261;
                break;
              }
            }
          }

          else
          {
            v259 = *v251;
            v260 = v255;
          }

          v262 = &v252[v253];
          if (v259 != v262 && (v260 == &v255[v256] || *v260 < *v259))
          {
            break;
          }

          v321 = v14 + (*(a2 - 1) << 6);
          v322 = *v321;
          v323 = *(v321 + 8);
          if (v323 >= v253)
          {
            v324 = *(v251 + 8);
          }

          else
          {
            v324 = v323;
          }

          v325 = v322;
          v326 = *v251;
          if (v324)
          {
            v327 = 8 * v324;
            v325 = v322;
            v326 = *v251;
            v328 = &v252[v324];
            while (*v326 == *v325)
            {
              ++v326;
              ++v325;
              v327 -= 8;
              if (!v327)
              {
                v326 = v328;
                break;
              }
            }
          }

          result = v322 + 8 * v323;
          if (v325 == result || v326 != v262 && *v326 >= *v325)
          {
            for (++v10; v10 < a2; ++v10)
            {
              v366 = v14 + (*v10 << 6);
              v367 = *v366;
              v368 = *(v366 + 8);
              v369 = v368 >= v253 ? *(v251 + 8) : v368;
              if (v369)
              {
                v370 = 8 * v369;
                result = v367;
                v371 = *v251;
                v372 = &v252[v369];
                while (*v371 == *result)
                {
                  ++v371;
                  result += 8;
                  v370 -= 8;
                  if (!v370)
                  {
                    v371 = v372;
                    break;
                  }
                }
              }

              else
              {
                result = v367;
                v371 = *v251;
              }

              if (result != v367 + 8 * v368 && (v371 == v262 || *v371 < *result))
              {
                break;
              }
            }
          }

          else
          {
            do
            {
              v329 = v10[1];
              ++v10;
              v330 = v14 + (v329 << 6);
              v331 = *v330;
              v332 = *(v330 + 8);
              if (v332 >= v253)
              {
                v333 = *(v251 + 8);
              }

              else
              {
                v333 = v332;
              }

              if (v333)
              {
                v334 = 8 * v333;
                result = v331;
                v335 = *v251;
                v336 = &v252[v333];
                while (*v335 == *result)
                {
                  ++v335;
                  result += 8;
                  v334 -= 8;
                  if (!v334)
                  {
                    v335 = v336;
                    break;
                  }
                }
              }

              else
              {
                result = v331;
                v335 = *v251;
              }
            }

            while (result == v331 + 8 * v332 || v335 != v262 && *v335 >= *result);
          }

          v337 = a2;
          if (v10 < a2)
          {
            for (i = a2; ; --i)
            {
              if (v323 >= v253)
              {
                v339 = *(v251 + 8);
              }

              else
              {
                v339 = v323;
              }

              result = v322;
              v340 = *v251;
              if (v339)
              {
                v341 = 8 * v339;
                result = v322;
                v340 = *v251;
                v342 = &v252[v339];
                while (*v340 == *result)
                {
                  ++v340;
                  result += 8;
                  v341 -= 8;
                  if (!v341)
                  {
                    v340 = v342;
                    break;
                  }
                }
              }

              v337 = i - 1;
              if (result == v322 + 8 * v323 || v340 != v262 && *v340 >= *result)
              {
                break;
              }

              v343 = v14 + (*(i - 2) << 6);
              v322 = *v343;
              v323 = *(v343 + 8);
            }
          }

          if (v10 < v337)
          {
            v344 = *v10;
            v345 = *v337;
            do
            {
              *v10 = v345;
              *v337 = v344;
              v346 = *(v251 + 8);
              v347 = &v252[v346];
              do
              {
                v348 = v10[1];
                ++v10;
                v344 = v348;
                v349 = v14 + (v348 << 6);
                v350 = *v349;
                v351 = *(v349 + 8);
                if (v351 >= v346)
                {
                  v352 = *(v251 + 8);
                }

                else
                {
                  v352 = v351;
                }

                if (v352)
                {
                  v353 = 8 * v352;
                  v354 = v350;
                  v355 = v252;
                  v356 = &v252[v352];
                  while (*v355 == *v354)
                  {
                    ++v355;
                    ++v354;
                    v353 -= 8;
                    if (!v353)
                    {
                      v355 = v356;
                      break;
                    }
                  }
                }

                else
                {
                  v354 = v350;
                  v355 = v252;
                }
              }

              while (v354 == &v350[v351] || v355 != v347 && *v355 >= *v354);
              while (1)
              {
                v357 = *--v337;
                v345 = v357;
                v358 = v14 + (v357 << 6);
                v359 = *v358;
                result = *(v358 + 8);
                if (result >= v346)
                {
                  v360 = *(v251 + 8);
                }

                else
                {
                  v360 = result;
                }

                if (v360)
                {
                  v361 = 8 * v360;
                  v362 = v359;
                  v363 = v252;
                  v364 = &v252[v360];
                  while (*v363 == *v362)
                  {
                    ++v363;
                    ++v362;
                    v361 -= 8;
                    if (!v361)
                    {
                      v363 = v364;
                      break;
                    }
                  }
                }

                else
                {
                  v362 = v359;
                  v363 = v252;
                }

                if (v362 == &v359[result])
                {
                  break;
                }

                if (v363 != v347)
                {
                  result = *v362;
                  if (*v363 >= *v362)
                  {
                    break;
                  }
                }
              }
            }

            while (v10 < v337);
          }

          v365 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v365;
          }

          a5 = 0;
          *v365 = v250;
        }

        v263 = &v252[v253];
        v264 = v10;
        do
        {
          v265 = v264;
          v267 = *(v264 + 4);
          v264 += 4;
          v266 = v267;
          v268 = v14 + (v267 << 6);
          v269 = *v268;
          v270 = *(v268 + 8);
          if (v253 >= v270)
          {
            v271 = v270;
          }

          else
          {
            v271 = v253;
          }

          if (v271)
          {
            v272 = 8 * v271;
            v273 = v252;
            v274 = v269;
            v275 = &v269[v271];
            while (*v274 == *v273)
            {
              ++v274;
              ++v273;
              v272 -= 8;
              if (!v272)
              {
                v274 = v275;
                break;
              }
            }
          }

          else
          {
            v273 = v252;
            v274 = v269;
          }
        }

        while (v273 != v263 && (v274 == &v269[v270] || *v274 < *v273));
        v276 = a2;
        if (v265 == v10)
        {
          v276 = a2;
          if (v264 < a2)
          {
            v276 = a2;
            do
            {
              while (1)
              {
                v286 = *--v276;
                v287 = v14 + (v286 << 6);
                v288 = *v287;
                v289 = *(v287 + 8);
                v290 = v253 >= v289 ? v289 : v253;
                if (v290)
                {
                  v291 = 8 * v290;
                  v292 = v252;
                  v293 = v288;
                  v294 = &v288[v290];
                  while (*v293 == *v292)
                  {
                    ++v293;
                    ++v292;
                    v291 -= 8;
                    if (!v291)
                    {
                      v293 = v294;
                      break;
                    }
                  }
                }

                else
                {
                  v292 = v252;
                  v293 = v288;
                }

                if (v292 != v263)
                {
                  break;
                }

                if (v264 >= v276)
                {
                  goto LABEL_367;
                }
              }

              if (v293 == &v288[v289])
              {
                break;
              }
            }

            while (*v293 >= *v292 && v264 < v276);
          }
        }

        else
        {
          do
          {
            v277 = *--v276;
            v278 = v14 + (v277 << 6);
            v279 = *v278;
            v280 = *(v278 + 8);
            if (v253 >= v280)
            {
              v281 = v280;
            }

            else
            {
              v281 = v253;
            }

            if (v281)
            {
              v282 = 8 * v281;
              v283 = v252;
              v284 = v279;
              v285 = &v279[v281];
              while (*v284 == *v283)
              {
                ++v284;
                ++v283;
                v282 -= 8;
                if (!v282)
                {
                  v284 = v285;
                  break;
                }
              }
            }

            else
            {
              v283 = v252;
              v284 = v279;
            }
          }

          while (v283 == v263 || v284 != &v279[v280] && *v284 >= *v283);
        }

LABEL_367:
        if (v264 < v276)
        {
          v296 = *v276;
          v297 = v266;
          v298 = v264;
          v299 = v276;
          do
          {
            *v298 = v296;
            *v299 = v297;
            v300 = *(v251 + 8);
            v301 = &v252[v300];
            do
            {
              v265 = v298;
              v302 = v298[1];
              ++v298;
              v297 = v302;
              v303 = v14 + (v302 << 6);
              v304 = *v303;
              v305 = *(v303 + 8);
              if (v300 >= v305)
              {
                v306 = v305;
              }

              else
              {
                v306 = *(v251 + 8);
              }

              if (v306)
              {
                v307 = 8 * v306;
                v308 = v252;
                v309 = v304;
                v310 = &v304[v306];
                while (*v309 == *v308)
                {
                  ++v309;
                  ++v308;
                  v307 -= 8;
                  if (!v307)
                  {
                    v309 = v310;
                    break;
                  }
                }
              }

              else
              {
                v308 = v252;
                v309 = v304;
              }
            }

            while (v308 != v301 && (v309 == &v304[v305] || *v309 < *v308));
            do
            {
              v311 = *--v299;
              v296 = v311;
              v312 = v14 + (v311 << 6);
              v313 = *v312;
              v314 = *(v312 + 8);
              if (v300 >= v314)
              {
                v315 = v314;
              }

              else
              {
                v315 = *(v251 + 8);
              }

              if (v315)
              {
                v316 = 8 * v315;
                v317 = v252;
                v318 = v313;
                v319 = &v313[v315];
                while (*v318 == *v317)
                {
                  ++v318;
                  ++v317;
                  v316 -= 8;
                  if (!v316)
                  {
                    v318 = v319;
                    break;
                  }
                }
              }

              else
              {
                v317 = v252;
                v318 = v313;
              }
            }

            while (v317 == v301 || v318 != &v313[v314] && *v318 >= *v317);
          }

          while (v298 < v299);
        }

        if (v265 != v10)
        {
          *v10 = *v265;
        }

        *v265 = v250;
        if (v264 >= v276)
        {
          break;
        }

LABEL_400:
        result = std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v9, v265, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v265 + 1;
      }

      v320 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v10, v265, a3);
      v10 = v265 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v265 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v320)
      {
        goto LABEL_400;
      }
    }

    a2 = v265;
    if (!v320)
    {
      continue;
    }

    return result;
  }
}