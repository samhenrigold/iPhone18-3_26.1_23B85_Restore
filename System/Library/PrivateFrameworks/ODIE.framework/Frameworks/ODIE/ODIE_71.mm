uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 == 10)
  {
    if (*a3 != 0x697469726F697270 || *(a3 + 8) != 29541)
    {
      goto LABEL_13;
    }

    v6 = *(v4 + 72);
LABEL_15:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

  if (a4 == 5 && *a3 == 1919906915 && *(a3 + 4) == 115)
  {
    v6 = *(v4 + 64);
    goto LABEL_15;
  }

LABEL_13:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 10)
  {
    v10 = *v5;
    v11 = *(v5 + 4);
    if (v10 == 0x697469726F697270 && v11 == 29541)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      *(v4 + 72) = v13;
    }
  }

  else if (v6 == 5)
  {
    v7 = *v5;
    v8 = *(v5 + 4);
    if (v7 == 1919906915 && v8 == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

      *(v4 + 64) = v14;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "ctors";
    v14 = 5;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "priorities";
    v14 = 10;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v22, a6, a2, a3);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "ctors", 5uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v13;
        goto LABEL_18;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "priorities", 0xAuLL);
  if (v15)
  {
    v16 = *(v14 + 8);
    if (v16)
    {
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v16;
LABEL_18:
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
        v18 = v24 + 24 * v25;
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++v25;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
        return 0;
      }

      a3[1] = v16;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v19 = v21;
  v20 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v18 = 261;
    v16 = "ctors";
    v17 = 5;
    v9 = mlir::StringAttr::get(v8, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v18 = 261;
    v16 = "priorities";
    v17 = 10;
    v12 = mlir::StringAttr::get(v11, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v12, v10);
  }

  v13 = v19;
  if (v20)
  {
    v14 = mlir::DictionaryAttr::get(v3, v19, v20);
    v13 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v21)
  {
    free(v13);
  }

  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalCtorsOp>::hashProperties(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v9 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalCtorsOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 1);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalCtorsOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalCtorsOp>::verifySymbolUses(int a1, mlir::SymbolTable *this, mlir::SymbolTableCollection *a3)
{
  v3 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v7 = *(v3 + 8);
  v8 = 8 * v4;
  while ((verifySymbolAttrUse(*v7, this, a3) & 1) != 0)
  {
    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v8, 0);
}

uint64_t mlir::Op<mlir::LLVM::GlobalCtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1) + 64);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 1);
    if (v8)
    {
      v16[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(v7, "ctors", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
      {
        goto LABEL_9;
      }

      v16[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    v11 = "requires attribute 'priorities'";
  }

  else
  {
    v11 = "requires attribute 'ctors'";
  }

  v14[0] = v11;
  v15 = 259;
  mlir::Operation::emitOpError(v16, a1, v14);
  v12 = v17;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  if (v12)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

LABEL_14:
  v13 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1) + 64);
  if (*(*v13 + 16) == *(*(v13 + 1) + 16))
  {
    v9 = 1;
  }

  else
  {
    v14[0] = "mismatch between the number of ctors and the number of priorities";
    v15 = 259;
    mlir::Operation::emitError(v16, a1, v14);
    v9 = v17 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 == 10)
  {
    if (*a3 != 0x697469726F697270 || *(a3 + 8) != 29541)
    {
      goto LABEL_13;
    }

    v6 = *(v4 + 72);
LABEL_15:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

  if (a4 == 5 && *a3 == 1919906916 && *(a3 + 4) == 115)
  {
    v6 = *(v4 + 64);
    goto LABEL_15;
  }

LABEL_13:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 10)
  {
    v10 = *v5;
    v11 = *(v5 + 4);
    if (v10 == 0x697469726F697270 && v11 == 29541)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      *(v4 + 72) = v13;
    }
  }

  else if (v6 == 5)
  {
    v7 = *v5;
    v8 = *(v5 + 4);
    if (v7 == 1919906916 && v8 == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

      *(v4 + 64) = v14;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "dtors";
    v14 = 5;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "priorities";
    v14 = 10;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v22, a6, a2, a3);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "dtors", 5uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v13;
        goto LABEL_18;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "priorities", 0xAuLL);
  if (v15)
  {
    v16 = *(v14 + 8);
    if (v16)
    {
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v16;
LABEL_18:
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
        v18 = v24 + 24 * v25;
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++v25;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
        return 0;
      }

      a3[1] = v16;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v19 = v21;
  v20 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v18 = 261;
    v16 = "dtors";
    v17 = 5;
    v9 = mlir::StringAttr::get(v8, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v18 = 261;
    v16 = "priorities";
    v17 = 10;
    v12 = mlir::StringAttr::get(v11, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v12, v10);
  }

  v13 = v19;
  if (v20)
  {
    v14 = mlir::DictionaryAttr::get(v3, v19, v20);
    v13 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v21)
  {
    free(v13);
  }

  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalDtorsOp>::hashProperties(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v9 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalDtorsOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 1);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalDtorsOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalDtorsOp>::verifySymbolUses(int a1, mlir::SymbolTable *this, mlir::SymbolTableCollection *a3)
{
  v3 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v7 = *(v3 + 8);
  v8 = 8 * v4;
  while ((verifySymbolAttrUse(*v7, this, a3) & 1) != 0)
  {
    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v8, 0);
}

uint64_t mlir::Op<mlir::LLVM::GlobalDtorsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1) + 64);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 1);
    if (v8)
    {
      v16[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(v7, "dtors", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
      {
        goto LABEL_9;
      }

      v16[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    v11 = "requires attribute 'priorities'";
  }

  else
  {
    v11 = "requires attribute 'dtors'";
  }

  v14[0] = v11;
  v15 = 259;
  mlir::Operation::emitOpError(v16, a1, v14);
  v12 = v17;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  if (v12)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

LABEL_14:
  v13 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1) + 64);
  if (*(*v13 + 16) == *(*(v13 + 1) + 16))
  {
    v9 = 1;
  }

  else
  {
    v14[0] = "mismatch between the number of dtors and the number of priorities";
    v15 = 259;
    mlir::Operation::emitError(v16, a1, v14);
    v9 = v17 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 9)
  {
    if (a4 <= 11)
    {
      if (a4 == 10)
      {
        if (*a3 != 0x6170735F72646461 || *(a3 + 8) != 25955)
        {
          goto LABEL_86;
        }
      }

      else if (*a3 == 0x745F6C61626F6C67 && *(a3 + 3) == 0x657079745F6C6162)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
      }

      else
      {
        if (*a3 != 0x696C696269736976 || *(a3 + 3) != 0x5F7974696C696269)
        {
          goto LABEL_86;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176);
      }

      goto LABEL_93;
    }

    if (a4 == 12)
    {
      if (*a3 != 0x5F64656D616E6E75 || *(a3 + 8) != 1919181921)
      {
        goto LABEL_86;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160);
      goto LABEL_93;
    }

    if (a4 == 13)
    {
      if (*a3 != 0x6C5F646165726874 || *(a3 + 5) != 0x5F6C61636F6C5F64)
      {
        goto LABEL_86;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152);
      goto LABEL_93;
    }

    v9 = 0;
    if (a4 == 22)
    {
      if (*a3 != 0x6C616E7265747865 || *(a3 + 8) != 0x6974696E695F796CLL || *(a3 + 14) != 0x64657A696C616974)
      {
        goto LABEL_86;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
      goto LABEL_93;
    }
  }

  else
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        if (*a3 == 1802398060 && *(a3 + 3) == 1701273963)
        {
          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
        }

        else
        {
          if (*a3 != 1952671091 || *(a3 + 3) != 1852795252)
          {
            goto LABEL_86;
          }

          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
        }
      }

      else if (a4 == 8)
      {
        if (*a3 == 0x746E6174736E6F63)
        {
          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
        }

        else
        {
          if (*a3 != 0x656D616E5F6D7973)
          {
LABEL_86:
            v4 = 0;
            v9 = 0;
            return v9 | v4;
          }

          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144);
        }
      }

      else if (*a3 == 0x6E656D6E67696C61 && *(a3 + 8) == 116)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      }

      else if (*a3 == 0x727078655F676264 && *(a3 + 8) == 115)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      else
      {
        if (*a3 != 0x61636F6C5F6F7364 || *(a3 + 8) != 108)
        {
          goto LABEL_86;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

LABEL_93:
      v21 = *v5;
      v9 = v21 & 0xFFFFFFFFFFFFFF00;
      v4 = v21;
      return v9 | v4;
    }

    if (a4 == 5)
    {
      if (*a3 != 1970037110 || *(a3 + 4) != 101)
      {
        goto LABEL_86;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168);
      goto LABEL_93;
    }

    v9 = 0;
    if (a4 == 6)
    {
      if (*a3 != 1684893539 || *(a3 + 4) != 29793)
      {
        goto LABEL_86;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      goto LABEL_93;
    }
  }

  return v9 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 > 9)
  {
    if (v7 <= 11)
    {
      if (v7 == 10)
      {
        v32 = *v6;
        v33 = *(v6 + 4);
        if (v32 == 0x6170735F72646461 && v33 == 25955)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v35 = a4;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
          }

          v5[8] = v35;
        }
      }

      else if (*v6 == 0x745F6C61626F6C67 && *(v6 + 3) == 0x657079745F6C6162)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v50 = a4;
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          v50 = 0;
        }

        v5[15] = v50;
      }

      else
      {
        v25 = *v6;
        v26 = *(v6 + 3);
        if (v25 == 0x696C696269736976 && v26 == 0x5F7974696C696269)
        {
          if (a4)
          {
            if (mlir::LLVM::VisibilityAttr::classof(a4))
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

          v5[22] = v28;
        }
      }
    }

    else
    {
      switch(v7)
      {
        case 12:
          v41 = *v6;
          v42 = *(v6 + 2);
          if (v41 == 0x5F64656D616E6E75 && v42 == 1919181921)
          {
            if (a4)
            {
              if (mlir::LLVM::UnnamedAddrAttr::classof(a4))
              {
                v44 = a4;
              }

              else
              {
                v44 = 0;
              }
            }

            else
            {
              v44 = 0;
            }

            v5[20] = v44;
          }

          break;
        case 13:
          v46 = *v6;
          v47 = *(v6 + 5);
          if (v46 == 0x6C5F646165726874 && v47 == 0x5F6C61636F6C5F64)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v49 = a4;
              }

              else
              {
                v49 = 0;
              }
            }

            else
            {
              v49 = 0;
            }

            v5[19] = v49;
          }

          break;
        case 22:
          v14 = *v6;
          v15 = v6[1];
          v16 = *(v6 + 14);
          v17 = v14 == 0x6C616E7265747865 && v15 == 0x6974696E695F796CLL;
          if (v17 && v16 == 0x64657A696C616974)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

            v5[14] = v19;
          }

          break;
      }
    }
  }

  else if (v7 <= 6)
  {
    if (v7 == 5)
    {
      v29 = *v6;
      v30 = *(v6 + 4);
      if (v29 == 1970037110 && v30 == 101)
      {
        v5[21] = a4;
      }
    }

    else if (v7 == 6)
    {
      v20 = *v6;
      v21 = *(v6 + 2);
      if (v20 == 1684893539 && v21 == 29793)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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

        v5[10] = v23;
      }
    }
  }

  else if (v7 == 7)
  {
    if (*v6 == 1802398060 && *(v6 + 3) == 1701273963)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
        {
          v51 = a4;
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
      }

      v5[16] = v51;
    }

    else
    {
      v37 = *v6;
      v38 = *(v6 + 3);
      if (v37 == 1952671091 && v38 == 1852795252)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v40 = a4;
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          v40 = 0;
        }

        v5[17] = v40;
      }
    }
  }

  else if (v7 == 8)
  {
    if (*v6 == 0x746E6174736E6F63)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v53 = a4;
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v53 = 0;
      }

      v5[11] = v53;
    }

    else if (*v6 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v45 = a4;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      v5[18] = v45;
    }
  }

  else if (*v6 == 0x6E656D6E67696C61 && *(v6 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v52 = a4;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    v5[9] = v52;
  }

  else if (*v6 == 0x727078655F676264 && *(v6 + 8) == 115)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v54 = a4;
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
    }

    v5[12] = v54;
  }

  else
  {
    v10 = *v6;
    v11 = *(v6 + 8);
    if (v10 == 0x61636F6C5F6F7364 && v11 == 108)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v5[13] = v13;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v54 = 261;
    v52 = "addr_space";
    v53 = 10;
    v9 = mlir::StringAttr::get(v8, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v54 = 261;
    v52 = "alignment";
    v53 = 9;
    v12 = mlir::StringAttr::get(v11, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v54 = 261;
    v52 = "comdat";
    v53 = 6;
    v15 = mlir::StringAttr::get(v14, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v54 = 261;
    v52 = "constant";
    v53 = 8;
    v18 = mlir::StringAttr::get(v17, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v54 = 261;
    v52 = "dbg_exprs";
    v53 = 9;
    v21 = mlir::StringAttr::get(v20, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v54 = 261;
    v52 = "dso_local";
    v53 = 9;
    v24 = mlir::StringAttr::get(v23, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v54 = 261;
    v52 = "externally_initialized";
    v53 = 22;
    v27 = mlir::StringAttr::get(v26, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v54 = 261;
    v52 = "global_type";
    v53 = 11;
    v30 = mlir::StringAttr::get(v29, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v54 = 261;
    v52 = "linkage";
    v53 = 7;
    v33 = mlir::StringAttr::get(v32, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v54 = 261;
    v52 = "section";
    v53 = 7;
    v36 = mlir::StringAttr::get(v35, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v54 = 261;
    v52 = "sym_name";
    v53 = 8;
    v39 = mlir::StringAttr::get(v38, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v54 = 261;
    v52 = "thread_local_";
    v53 = 13;
    v42 = mlir::StringAttr::get(v41, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v54 = 261;
    v52 = "unnamed_addr";
    v53 = 12;
    v45 = mlir::StringAttr::get(v44, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v54 = 261;
    v52 = "value";
    v53 = 5;
    v48 = mlir::StringAttr::get(v47, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v54 = 261;
    v52 = "visibility_";
    v53 = 11;
    v51 = mlir::StringAttr::get(v50, &v52, a3);
    mlir::NamedAttrList::push_back(a3, v51, v49);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(v11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v14, "alignment", 9, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v20, "constant", 8, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(v23, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v26, "dso_local", 9, a4, a5))
            {
              v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
              if ((v28 & 1) == 0 || (v29 = v27[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v29, "externally_initialized", 0x16, a4, a5))
              {
                v30 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 56));
                if ((v31 & 1) == 0 || (v32 = v30[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v32, "global_type", 0xB, a4, a5))
                {
                  v33 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 64));
                  if ((v34 & 1) == 0 || (v35 = v33[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v35, a4, a5))
                  {
                    v36 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 72));
                    if ((v37 & 1) == 0 || (v38 = v36[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v38, "section", 7, a4, a5))
                    {
                      v39 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 80));
                      if ((v40 & 1) == 0 || (v41 = v39[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v41, "sym_name", 8, a4, a5))
                      {
                        v42 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 88));
                        if ((v43 & 1) == 0 || (v44 = v42[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v44, "thread_local_", 0xD, a4, a5))
                        {
                          v45 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 96));
                          if ((v46 & 1) == 0 || (v47 = v45[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v47, a4, a5))
                          {
                            mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 104));
                            v48 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 112));
                            if ((v49 & 1) == 0)
                            {
                              return 1;
                            }

                            v50 = v48[1];
                            if (!v50 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v50, a4, a5))
                            {
                              return 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    v6 = a4[3];
    *(a3 + 32) = a4[2];
    *(a3 + 48) = v6;
    *a3 = v4;
    *(a3 + 16) = v5;
    v7 = a4[4];
    v8 = a4[5];
    v9 = a4[6];
    *(a3 + 112) = *(a4 + 14);
    *(a3 + 80) = v8;
    *(a3 + 96) = v9;
    *(a3 + 64) = v7;
  }

  else
  {
    *(a3 + 112) = 0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return mlir::LLVM::GlobalOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v60, a6, a2, a3);
    if (v60)
    {
      mlir::Diagnostic::operator<<<42ul>(v61, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "addr_space", 0xAuLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
    if (v15)
    {
      v13 = *(v14 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

LABEL_29:
          if (v60)
          {
            LODWORD(v59[0]) = 0;
            v59[1] = v13;
            v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v62, v59, 1);
            v21 = v62 + 24 * v63;
            v22 = *v20;
            *(v21 + 16) = *(v20 + 16);
            *v21 = v22;
            ++v63;
          }

          goto LABEL_4;
        }

        a3[1] = v13;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "comdat", 6uLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[2] = v13;
      }
    }

    v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constant", 8uLL);
    if (v19)
    {
      v13 = *(v18 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[3] = v13;
      }
    }

    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "dbg_exprs", 9uLL);
    if (v24)
    {
      v25 = *(v23 + 8);
      v59[0] = v25;
      if (v25)
      {
        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_43;
        }

        a3[4] = v25;
      }
    }

    v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "dso_local", 9uLL);
    if (v28)
    {
      v29 = *(v27 + 8);
      v59[0] = v29;
      if (v29)
      {
        if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

LABEL_43:
          mlir::Diagnostic::operator<<<55ul>(v61, v26);
          goto LABEL_97;
        }

        a3[5] = v29;
      }
    }

    v30 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "externally_initialized", 0x16uLL);
    if (v31)
    {
      v32 = *(v30 + 8);
      v59[0] = v32;
      if (v32)
      {
        if (*(*v32 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

LABEL_97:
          if (v60)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v61, v59);
          }

          goto LABEL_4;
        }

        a3[6] = v32;
      }
    }

    v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "global_type", 0xBuLL);
    if (v34)
    {
      v35 = *(v33 + 8);
      v59[0] = v35;
      if (v35)
      {
        if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a3[7] = v35;
      }
    }

    v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "linkage", 7uLL);
    if (v38)
    {
      v39 = *(v37 + 8);
      v59[0] = v39;
      if (v39)
      {
        if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_69;
        }

        a3[8] = v39;
      }
    }

    v41 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "section", 7uLL);
    if (v42)
    {
      v43 = *(v41 + 8);
      v59[0] = v43;
      if (v43)
      {
        if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

LABEL_69:
          mlir::Diagnostic::operator<<<53ul>(v61, v40);
          goto LABEL_97;
        }

        a3[9] = v43;
      }
    }

    v44 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v45)
    {
      v46 = *(v44 + 8);
      v59[0] = v46;
      if (v46)
      {
        if (*(*v46 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_97;
        }

        a3[10] = v46;
      }
    }

    v47 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "thread_local_", 0xDuLL);
    if (v48)
    {
      v49 = *(v47 + 8);
      v59[0] = v49;
      if (v49)
      {
        if (*(*v49 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_97;
        }

        a3[11] = v49;
      }
    }

    v50 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "unnamed_addr", 0xCuLL);
    if (v51)
    {
      v52 = *(v50 + 8);
      v59[0] = v52;
      if (v52)
      {
        if (!mlir::LLVM::UnnamedAddrAttr::classof(v52))
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

          goto LABEL_97;
        }

        a3[12] = v52;
      }
    }

    v53 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
    if (v54)
    {
      v55 = *(v53 + 8);
      if (v55)
      {
        a3[13] = v55;
      }
    }

    v56 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "visibility_", 0xBuLL);
    if (v57)
    {
      v58 = *(v56 + 8);
      v59[0] = v58;
      if (v58)
      {
        if (!mlir::LLVM::VisibilityAttr::classof(v58))
        {
          (a5)(&v60, a6);
          if (!v60)
          {
            goto LABEL_4;
          }

LABEL_56:
          mlir::Diagnostic::operator<<<57ul>(v61, v36);
          goto LABEL_97;
        }

        a3[14] = v58;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  (a5)(&v60, a6);
  if (v60)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v58 = v60;
  v59 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v57 = 261;
    v55 = "addr_space";
    v56 = 10;
    v9 = mlir::StringAttr::get(v8, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v57 = 261;
    v55 = "alignment";
    v56 = 9;
    v12 = mlir::StringAttr::get(v11, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v57 = 261;
    v55 = "comdat";
    v56 = 6;
    v15 = mlir::StringAttr::get(v14, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v57 = 261;
    v55 = "constant";
    v56 = 8;
    v18 = mlir::StringAttr::get(v17, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v57 = 261;
    v55 = "dbg_exprs";
    v56 = 9;
    v21 = mlir::StringAttr::get(v20, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v57 = 261;
    v55 = "dso_local";
    v56 = 9;
    v24 = mlir::StringAttr::get(v23, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v57 = 261;
    v55 = "externally_initialized";
    v56 = 22;
    v27 = mlir::StringAttr::get(v26, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v57 = 261;
    v55 = "global_type";
    v56 = 11;
    v30 = mlir::StringAttr::get(v29, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v57 = 261;
    v55 = "linkage";
    v56 = 7;
    v33 = mlir::StringAttr::get(v32, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v57 = 261;
    v55 = "section";
    v56 = 7;
    v36 = mlir::StringAttr::get(v35, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v57 = 261;
    v55 = "sym_name";
    v56 = 8;
    v39 = mlir::StringAttr::get(v38, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v57 = 261;
    v55 = "thread_local_";
    v56 = 13;
    v42 = mlir::StringAttr::get(v41, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v57 = 261;
    v55 = "unnamed_addr";
    v56 = 12;
    v45 = mlir::StringAttr::get(v44, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v57 = 261;
    v55 = "value";
    v56 = 5;
    v48 = mlir::StringAttr::get(v47, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v57 = 261;
    v55 = "visibility_";
    v56 = 11;
    v51 = mlir::StringAttr::get(v50, &v55, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v58, v51, v49);
  }

  v52 = v58;
  if (v59)
  {
    v53 = mlir::DictionaryAttr::get(v3, v58, v59);
    v52 = v58;
  }

  else
  {
    v53 = 0;
  }

  if (v52 != v60)
  {
    free(v52);
  }

  return v53;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::copyProperties(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  result = a3[4];
  v7 = a3[5];
  v8 = a3[6];
  *(a2 + 112) = *(a3 + 14);
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  *(a2 + 64) = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::GlobalOp>::hashProperties(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5);
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v60 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v59 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[4];
  v14 = a2[5];
  v15 = (8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13);
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
  v58 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  v17 = HIDWORD(v14);
  v18 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v57 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v19 = a2[6];
  v20 = a2[7];
  v21 = (8 * v19 - 0xAE502812AA7333) ^ HIDWORD(v19);
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v56 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  v23 = HIDWORD(v20);
  v24 = 0x9DDFEA08EB382D69 * ((8 * v20 - 0xAE502812AA7333) ^ HIDWORD(v20));
  v55 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
  v25 = a2[8];
  v26 = a2[9];
  v27 = (8 * v25 - 0xAE502812AA7333) ^ HIDWORD(v25);
  v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ ((0x9DDFEA08EB382D69 * v27) >> 47) ^ (0x9DDFEA08EB382D69 * v27));
  v54 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
  v29 = HIDWORD(v26);
  v30 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
  v53 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) ^ ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 47));
  v31 = a2[10];
  v32 = a2[11];
  v33 = (8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31);
  v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ ((0x9DDFEA08EB382D69 * v33) >> 47) ^ (0x9DDFEA08EB382D69 * v33));
  v52 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
  v35 = HIDWORD(v32);
  v36 = 0x9DDFEA08EB382D69 * ((8 * v32 - 0xAE502812AA7333) ^ HIDWORD(v32));
  v51 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) ^ ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) >> 47));
  v37 = a2[12];
  v38 = a2[13];
  v39 = (8 * v37 - 0xAE502812AA7333) ^ HIDWORD(v37);
  v40 = 0x9DDFEA08EB382D69 * (HIDWORD(v37) ^ ((0x9DDFEA08EB382D69 * v39) >> 47) ^ (0x9DDFEA08EB382D69 * v39));
  v50 = 0x9DDFEA08EB382D69 * (v40 ^ (v40 >> 47));
  v41 = HIDWORD(v38);
  v42 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
  v43 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) ^ ((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) >> 47));
  v44 = a2[14];
  v45 = 0x9DDFEA08EB382D69 * ((8 * v44 - 0xAE502812AA7333) ^ HIDWORD(v44));
  v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v44) ^ (v45 >> 47) ^ v45);
  v48 = 0x9DDFEA08EB382D69 * (v46 ^ (v46 >> 47));
  v49 = v43;
  memset(v62, 0, sizeof(v62));
  v63 = 0xFF51AFD7ED558CCDLL;
  v61 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v61, 0, v62, &v62[3] + 8, 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47)), &v60, &v59, &v58, &v57, &v56, &v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::SymbolRefAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::LinkageAttr>(a1, v3 + 8) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 9) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 10) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 11) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::UnnamedAddrAttr>(a1, v3 + 12) && ((*(*a1 + 56))(a1, v3 + 13) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VisibilityAttr>(a1, v3 + 14);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 24))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  (*(*a3 + 24))(a3, v4[13]);
  (*(*a3 + 24))(a3, v4[14]);
  (*(*a3 + 16))(a3, v4[15]);
  (*(*a3 + 16))(a3, v4[16]);
  (*(*a3 + 24))(a3, v4[17]);
  (*(*a3 + 16))(a3, v4[18]);
  (*(*a3 + 24))(a3, v4[19]);
  (*(*a3 + 24))(a3, v4[20]);
  (*(*a3 + 24))(a3, v4[21]);
  v5 = v4[22];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::LLVM::GlobalOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x277D85DE8];
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
  v10 = mlir::LLVM::linkage::stringifyLinkage(*(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8));
  v12 = v11;
  v13 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v13, v10, v12);
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

  v56[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
  Int = mlir::IntegerAttr::getInt(v56);
  if (Int == 1)
  {
    v17 = "hidden";
    v18 = 6;
  }

  else
  {
    if (Int != 2)
    {
      goto LABEL_14;
    }

    v17 = "protected";
    v18 = 9;
  }

  v19 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v19, v17, v18);
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

LABEL_14:
  if (*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 88))
  {
    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 0xCuLL)
    {
      qmemcpy(v23, "thread_local ", 13);
      *(v22 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v22, "thread_local ", 0xDuLL);
    }
  }

  v56[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
  if (v56[0])
  {
    v24 = mlir::IntegerAttr::getInt(v56);
    if (v24 == 1)
    {
      v25 = "local_unnamed_addr";
      v26 = 18;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_26;
      }

      v25 = "unnamed_addr";
      v26 = 12;
    }

    v27 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v27, v25, v26);
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
  }

LABEL_26:
  v30 = (*(a2 + 44) >> 23) & 1;
  if (*(v9 + 16 * v30 + 24))
  {
    v31 = (*(*a3 + 16))(a3);
    v32 = *(v31 + 4);
    if ((*(v31 + 3) - v32) > 8)
    {
      *(v32 + 8) = 32;
      *v32 = *"constant ";
      *(v31 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v31, "constant ", 9uLL);
    }

    v30 = (*(a2 + 44) >> 23) & 1;
  }

  (*(*a3 + 88))(a3, *(*(v9 + 16 * v30 + 80) + 16), *(*(v9 + 16 * v30 + 80) + 24));
  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 40);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 40;
  }

  if (*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 104))
  {
    (*(*a3 + 40))(a3);
  }

  v35 = (*(*a3 + 16))(a3);
  v36 = *(v35 + 4);
  if (v36 >= *(v35 + 3))
  {
    llvm::raw_ostream::write(v35, 41);
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 41;
  }

  v37 = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  if (v37)
  {
    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 7uLL)
    {
      *v39 = 0x287461646D6F6320;
      *(v38 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v38, " comdat(", 8uLL);
    }

    (*(*a3 + 40))(a3, v37);
    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (v41 >= *(v40 + 3))
    {
      llvm::raw_ostream::write(v40, 41);
    }

    else
    {
      *(v40 + 4) = v41 + 1;
      *v41 = 41;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v43 = *(AttrDictionary + 8);
  v44 = *(AttrDictionary + 16);
  v56[0] = "sym_name";
  v56[1] = 8;
  v45 = *(*(a2 + 48) + 96);
  v46 = v45[8];
  v57 = *(v45[7] + 16);
  v58 = *(v45[3] + 16);
  v47 = v45[12];
  v59 = *(v45[13] + 16);
  v60 = *(v46 + 16);
  v48 = *(v47 + 24);
  v61 = *(v47 + 16);
  v62 = v48;
  v63 = *(v45[11] + 16);
  v64 = *(v45[14] + 16);
  v65 = *(v45[2] + 16);
  v66 = v61;
  v67 = v48;
  result = (*(*a3 + 192))(a3, v43, v44, v56, 10);
  v50 = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
  if (!v50 || *(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v51 = (*(*a3 + 16))(a3);
    v52 = *(v51 + 4);
    if ((*(v51 + 3) - v52) > 2)
    {
      *(v52 + 2) = 32;
      *v52 = 14880;
      *(v51 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v51, " : ", 3uLL);
    }

    result = (*(*a3 + 32))(a3, *(*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 56) + 8));
    v53 = (((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (*v53 != v53)
    {
      v54 = (*(*a3 + 16))(a3);
      v55 = *(v54 + 4);
      if (v55 >= *(v54 + 3))
      {
        llvm::raw_ostream::write(v54, 32);
      }

      else
      {
        *(v54 + 4) = v55 + 1;
        *v55 = 32;
      }

      return (*(*a3 + 224))(a3, v53, 0, 1, 0);
    }
  }

  return result;
}

uint64_t mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_81;
  }

  v6 = *(a1 + 44);
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v8 = (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v8 == *v8)
    {
      goto LABEL_11;
    }

    v9 = v8[1];
    if (v8 == v9 || v8 != *(v9 + 8))
    {
      break;
    }

    if (*(v9 + 24) == v9 + 24)
    {
      v71 = 257;
      mlir::Operation::emitOpError(&v72, a1, v70);
      if (v72)
      {
        mlir::Diagnostic::operator<<<26ul>(v73, "expects a non-empty block");
      }

      v12 = v76;
      goto LABEL_19;
    }

LABEL_11:
    ++v7;
    v8 += 3;
    if ((v6 & 0x7FFFFF) == v7)
    {
      goto LABEL_21;
    }
  }

  LODWORD(v68[0]) = v7;
  v70[0] = "expects region #";
  v71 = 259;
  mlir::Operation::emitOpError(&v72, a1, v70);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v72, v68);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
LABEL_19:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v72);
  if (v12)
  {
LABEL_81:
    v36 = 0;
    return v36 & 1;
  }

  LODWORD(v6) = *(a1 + 44);
LABEL_21:
  v13 = a1 + 64;
  v14 = (a1 + 64 + 16 * ((v6 >> 23) & 1));
  v15 = v14[7];
  if (!v15)
  {
    v25 = "requires attribute 'global_type'";
    goto LABEL_42;
  }

  v16 = v14[8];
  if (!v16)
  {
    v25 = "requires attribute 'linkage'";
    goto LABEL_42;
  }

  v17 = v14[10];
  if (!v17)
  {
    v25 = "requires attribute 'sym_name'";
LABEL_42:
    v70[0] = v25;
    v71 = 259;
    mlir::Operation::emitOpError(&v72, a1, v70);
    v26 = v76;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v72);
    if (v26)
    {
      goto LABEL_81;
    }

    goto LABEL_43;
  }

  v18 = *v14;
  v19 = v14[1];
  v20 = v14[3];
  v21 = v14[5];
  v63 = v14[4];
  v64 = v14[2];
  v22 = v14[6];
  v23 = v14[11];
  v65 = v14[9];
  v66 = v14[12];
  v62 = v14[14];
  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v15, "global_type", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v20, "constant", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v17, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v21, "dso_local", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v23, "thread_local_", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v22, "externally_initialized", 0x16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v19, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(v18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v66, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v65, "section", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(v64, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(v63, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

  v72 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v62, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v72))
  {
    goto LABEL_81;
  }

LABEL_43:
  if (!mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::GlobalOp>::verifyTrait(a1, v24))
  {
    goto LABEL_81;
  }

  v67 = a1;
  isCompatibleOuterType = mlir::LLVM::isCompatibleOuterType(*(*(v13 + 16 * ((*(a1 + 44) >> 23) & 1) + 56) + 8));
  v28 = *(*(v13 + 16 * ((*(a1 + 44) >> 23) & 1) + 56) + 8);
  v29 = *v28;
  if (isCompatibleOuterType)
  {
    v30 = *(v29 + 136);
    if (v30 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID() || (v31 = *(*v28 + 136), v31 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID()) || (v32 = *(*v28 + 136), v32 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID()) || (v33 = *(*v28 + 136), v33 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID()))
    {
LABEL_49:
      v35 = "expects type to be a valid element type for an LLVM global";
      goto LABEL_50;
    }
  }

  else
  {
    v37 = mlir::detail::TypeIDResolver<mlir::LLVM::PointerElementTypeInterface,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v29 + 8, v37))
    {
      goto LABEL_49;
    }
  }

  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = *(v38 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v39)
    {
      v40 = *(v39 + 16);
      if (v40)
      {
        if ((mlir::LLVM::satisfiesLLVMModule(v40, v34) & 1) == 0)
        {
          v35 = "must appear at the module level";
LABEL_50:
          v70[0] = v35;
          v71 = 259;
          mlir::Operation::emitOpError(&v72, a1, v70);
          goto LABEL_51;
        }
      }
    }
  }

  v41 = (*(a1 + 44) >> 23) & 1;
  v42 = (v13 + 16 * v41);
  v43 = v42[13];
  if (v43)
  {
    if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v57 = *(v42[7] + 8);
      if (*(*v57 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id || (v58 = v57[1], *(*v58 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || (v58[2] & 0x3FFFFFFF) != 8 || v57[2] != v43[3])
      {
        v35 = "requires an i8 array type of the length equal to that of the string attribute";
        goto LABEL_50;
      }
    }
  }

  v44 = *(v42[7] + 8);
  if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
  {
    if (*(v44 + 16) >= 6uLL && ((v48 = bswap64(**(v44 + 8) | (*(*(v44 + 8) + 4) << 32)), v49 = bswap64(*"spirv." | (*"v." << 32)), v50 = v48 >= v49, v51 = v48 > v49, v50) ? (v52 = 0) : (v52 = 1), v51 == v52))
    {
      if (!v43)
      {
        goto LABEL_64;
      }

      v71 = 257;
      mlir::Operation::emitOpError(&v72, a1, v70);
      if (v72)
      {
        LODWORD(v68[0]) = 3;
        v68[1] = "global with target extension type can only be initialized with zero-initializer";
        v68[2] = 79;
        v59 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v74, v68, 1);
        v60 = v74 + 24 * v75;
        v61 = *v59;
        *(v60 + 16) = *(v59 + 16);
        *v60 = v61;
        ++v75;
      }
    }

    else
    {
      v71 = 257;
      mlir::Operation::emitOpError(&v72, a1, v70);
      if (v72)
      {
        mlir::Diagnostic::operator<<<54ul>(v73, "this target extension type cannot be used in a global");
      }
    }

    goto LABEL_51;
  }

  if (v43 && *(v42[8] + 8) == 10)
  {
    if (isZeroAttribute(v43))
    {
      v41 = (*(a1 + 44) >> 23) & 1;
      goto LABEL_64;
    }

    v69 = 257;
    mlir::Operation::emitOpError(&v72, a1, v68);
    if (v72)
    {
      mlir::Diagnostic::operator<<<26ul>(v73, "expected zero value for '");
      if (v72)
      {
        v71 = 261;
        v46 = "common";
        v47 = 6;
        goto LABEL_92;
      }
    }

    goto LABEL_51;
  }

LABEL_64:
  v45 = v13 + 16 * v41;
  if (*(*(v45 + 64) + 8) != 6 || *(**(*(v45 + 56) + 8) + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
  {
    if (!verifyComdat(a1, *(v45 + 16), *(v45 + 16) != 0))
    {
      goto LABEL_81;
    }

    Alignment = mlir::LLVM::GlobalOp::getAlignment(&v67);
    v36 = 1;
    if (v54)
    {
      v55 = vcnt_s8(Alignment);
      v55.i16[0] = vaddlv_u8(v55);
      if (v55.u32[0] != 1)
      {
        v71 = 257;
        mlir::Operation::emitError(&v72, a1, v70);
        if (v72)
        {
          mlir::Diagnostic::operator<<<40ul>(v73, "alignment attribute is not a power of 2");
        }

        goto LABEL_51;
      }
    }
  }

  else
  {
    v69 = 257;
    mlir::Operation::emitOpError(&v72, a1, v68);
    if (v72)
    {
      mlir::Diagnostic::operator<<<26ul>(v73, "expected array type for '");
      if (v72)
      {
        v71 = 261;
        v46 = "appending";
        v47 = 9;
LABEL_92:
        v70[0] = v46;
        v70[1] = v47;
        mlir::Diagnostic::operator<<(v73, v70);
        if (v72)
        {
          mlir::Diagnostic::operator<<<10ul>(v73, "' linkage");
        }
      }
    }

LABEL_51:
    v36 = v76 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v72);
  }

  return v36 & 1;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::GlobalOp>::verifyTrait(mlir::detail *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((mlir::detail::verifySymbol(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 1;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v5 + 48) + 32))(*(v5 + 48), v6))
  {
    return 1;
  }

  v9 = *(*(v5 + 48) + 16);
  v7 = 1;
  if (v9 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v10 = "symbol's parent must have the SymbolTable trait";
    v11 = 259;
    mlir::Operation::emitOpError(v12, a1, &v10);
    v7 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v7;
}

uint64_t mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v49 = *MEMORY[0x277D85DE8];
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
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::ReturnOp,void>::id)
        {
          v32 = 1283;
          v31[0] = "expects regions to end with '";
          v31[2] = "llvm.return";
          v31[3] = 11;
          v33[0] = v31;
          v33[2] = "', found '";
          v34 = 770;
          v20 = *(v8 + 8);
          v35 = v33;
          v36 = *(v20 + 16);
          v37 = 1282;
          v38 = &v35;
          v40 = "'";
          v41 = 770;
          mlir::Operation::emitOpError(&v44, this, &v38);
          mlir::Diagnostic::attachNote(v45, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(this, a2))
  {
    v9 = this + 64;
    v10 = *(this + 11);
    v11 = (v10 >> 23) & 1;
    v12 = this + 16 * v11 + 64;
    v13 = ((&v12[((v10 >> 21) & 0x7F8) + 7] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    if (*v13 != v13)
    {
      v14 = v13[1];
      if (v14)
      {
        v15 = v14 + 24;
        v16 = *(v14 + 24);
        if ((*(v16 + 46) & 0x80) == 0 || !*(v16 + 68))
        {
          v19 = "initializer region cannot return void";
          goto LABEL_26;
        }

        if ((*(*(*(v16 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != *(*(v12 + 7) + 8))
        {
          v42[0] = "initializer region type ";
          v43 = 259;
          mlir::Operation::emitOpError(&v44, this, v42);
          if (v44)
          {
            v23 = *(*(*(v16 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v38) = 4;
            v39 = v23;
            v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v46, &v38, 1);
            v25 = v46 + 24 * v47;
            v26 = *v24;
            *(v25 + 16) = *(v24 + 16);
            *v25 = v26;
            ++v47;
            if (v44)
            {
              mlir::Diagnostic::operator<<<29ul>(v45, " does not match global type ");
              if (v44)
              {
                v27 = *(*&v9[16 * ((*(this + 11) >> 23) & 1) + 56] + 8);
                LODWORD(v38) = 4;
                v39 = v27;
                v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v46, &v38, 1);
                v29 = v46 + 24 * v47;
                v30 = *v28;
                *(v29 + 16) = *(v28 + 16);
                *v29 = v30;
                ++v47;
              }
            }
          }

          goto LABEL_27;
        }

        v17 = *(v14 + 32);
        if (v17 != v15)
        {
          while (1)
          {
            v38 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(v17);
            v39 = v18;
            if (!v38 || !mlir::MemoryEffectOpInterface::hasNoEffect(&v38))
            {
              break;
            }

            v17 = *(v17 + 8);
            if (v17 == v15)
            {
              v11 = (*(this + 11) >> 23) & 1;
              goto LABEL_20;
            }
          }

          v43 = 257;
          mlir::Operation::emitError(&v44, v17, v42);
          if (v44)
          {
            mlir::Diagnostic::operator<<<57ul>(v45, "ops with side effects not allowed in global initializers");
          }

          goto LABEL_27;
        }

LABEL_20:
        if (*&v9[16 * v11 + 104])
        {
          v19 = "cannot have both initializer value and region";
LABEL_26:
          v42[0] = v19;
          v43 = 259;
          mlir::Operation::emitOpError(&v44, this, v42);
LABEL_27:
          v21 = v48 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
          return v21 & 1;
        }
      }
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x7461636964657270 ? (v4 = *(a3 + 8) == 101) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == 0x7461636964657270 && v6 == 101)
    {
      v9 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
      if (a4)
      {
        if (mlir::LLVM::ICmpPredicateAttr::classof(a4))
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

      *(v9 + 64) = v10;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "predicate";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(v9, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "predicate", 9uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (!mlir::LLVM::ICmpPredicateAttr::classof(*(v10 + 8)))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "predicate";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ICmpOp>::readProperties(uint64_t a1, void *a2)
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
  if (mlir::LLVM::ICmpPredicateAttr::classof(v13))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v3 = v5;
  if (v5)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC21068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21068))
  {
    qword_27FC21058 = llvm::detail::getTypeNameImpl<mlir::LLVM::ICmpPredicateAttr>();
    unk_27FC21060 = v11;
    __cxa_guard_release(&qword_27FC21068);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC21058;
    v15 = unk_27FC21060;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v8 = v19 + 24 * v20;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v20;
      }
    }
  }

  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v6;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ICmpOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::ICmpOp::inferReturnTypes(a4, a5, &v17))
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
      v21 = "llvm.icmp";
      v22 = 9;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ICmpOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 + 64;
  v36 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (mlir::IntegerAttr::getInt(&v36))
  {
    v36 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1));
    if (mlir::IntegerAttr::getInt(&v36) != 1)
    {
      return 0;
    }
  }

  v8 = *(a2 + 72);
  v9 = v8[3];
  v10 = v8[7];
  if (v9 == v10)
  {
    v15 = *(a2 - 8);
    v16 = *(***(a2 + 24) + 32);
    v36 = *(a2 + 80);
    v17 = mlir::IntegerAttr::getInt(&v36) == 0;
    goto LABEL_12;
  }

  if ((~*(v9 + 2) & 7) != 0)
  {
    v11 = v8[3];
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = *(v11 + 16);
    v14 = v11 + 24 * v13 + 120;
    if (v11 + 24 * v13 == -120)
    {
LABEL_24:
      v21 = v11 + 24 * v13 + 120;
      if (!v21)
      {
        return 0;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v14 = v11 + 16 * v12 + 16;
  }

  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
  {
    v22 = (~*(v10 + 2) & 7) != 0 ? v8[7] : 0;
    if (v22)
    {
      v23 = *(v22 + 8) & 7;
      if (v23 == 6)
      {
        v24 = v22 + 24 * *(v22 + 16) + 120;
        if (!v24)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v22 + 16 * v23 + 16;
      }

      if (*(*(v24 + 48) + 16) != &unk_27FC20028)
      {
        goto LABEL_22;
      }

      v15 = *(a2 - 8);
      v16 = *(***(a2 + 24) + 32);
      v36 = *(a2 + 80);
      v17 = mlir::IntegerAttr::getInt(&v36) == 1;
LABEL_12:
      v18 = v17;
      v19 = getBoolAttribute((v15 & 0xFFFFFFFFFFFFFFF8), *v16, v18) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_16;
    }
  }

LABEL_22:
  if (v12 == 6)
  {
    v13 = *(v11 + 16);
    goto LABEL_24;
  }

  v21 = v11 + 16 * v12 + 16;
LABEL_27:
  if (*(*(v21 + 48) + 16) != &unk_27FC20028)
  {
    return 0;
  }

  v25 = (~*(v10 + 2) & 7) != 0 ? v8[7] : 0;
  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 8) & 7;
  if (v26 == 6)
  {
    v27 = v25 + 24 * *(v25 + 16) + 120;
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    v27 = v25 + 16 * v26 + 16;
  }

  if (*(*(v27 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
  {
    return 0;
  }

  v28 = v8[1];
  if (v28)
  {
    v29 = *v8;
    *v28 = *v8;
    if (v29)
    {
      *(v29 + 8) = v8[1];
    }
  }

  v8[3] = v10;
  v8[1] = v10;
  v30 = *v10;
  *v8 = *v10;
  if (v30)
  {
    v30[1] = v8;
  }

  *v10 = v8;
  v31 = *(a2 + 72);
  v32 = v31 + 4;
  v33 = v31[5];
  if (v33)
  {
    v34 = *v32;
    *v33 = *v32;
    if (v34)
    {
      *(v34 + 8) = v31[5];
    }
  }

  v31[7] = v9;
  v31[5] = v9;
  v35 = *v9;
  v31[4] = *v9;
  if (v35)
  {
    v35[1] = v32;
  }

  *v9 = v32;
  v19 = (a2 - 16) | 4;
LABEL_16:
  if (v19 < 8)
  {
    return 0;
  }

  if (a2 - 16 != (v19 & ((v19 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v19);
  }

  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameTypeOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameTypeOperands>(void)::Empty>,void>::resolveTypeID();
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8736;
    *(v7 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v7, " ", 2uLL);
  }

  v24[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Int = mlir::IntegerAttr::getInt(v24);
  v10 = mlir::LLVM::stringifyICmpPredicate(Int);
  v12 = v11;
  v13 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v13, v10, v12);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8226;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, " ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v19 = *(AttrDictionary + 8);
  v20 = *(AttrDictionary + 16);
  v24[0] = "predicate";
  v24[1] = 9;
  (*(*a3 + 192))(a3, v19, v20, v24, 1);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    *(v21 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  return (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v16[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u))
    {
      goto LABEL_20;
    }

    v6 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps15(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6))
    {
      goto LABEL_20;
    }

    I1SameShape = getI1SameShape((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    if (*(a1 + 36))
    {
      v9 = a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    if (I1SameShape == (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_22:
      v12 = mlir::OpTrait::impl::verifySameTypeOperands(a1, v8);
      return v12 & 1;
    }

    v10 = "failed to verify that result type has i1 element type and same shape as operands";
  }

  else
  {
    v10 = "requires attribute 'predicate'";
  }

  v14 = v10;
  v15 = 259;
  mlir::Operation::emitOpError(v16, a1, &v14);
  v11 = v17;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  if ((v11 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v12 = 0;
  return v12 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 <= 12)
  {
    if (a4 == 10)
    {
      if (*a3 != 0x697274735F6D7361 || *(a3 + 8) != 26478)
      {
        goto LABEL_39;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      goto LABEL_41;
    }

    v6 = 0;
    if (a4 == 11)
    {
      if (*a3 != 0x6C6169645F6D7361 || *(a3 + 3) != 0x7463656C6169645FLL)
      {
        if (*a3 != 0x69617274736E6F63 || *(a3 + 3) != 0x73746E6961727473)
        {
          goto LABEL_39;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (a4 == 13)
    {
      if (*a3 != 0x5F646E617265706FLL || *(a3 + 5) != 0x73727474615F646ELL)
      {
        goto LABEL_39;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      goto LABEL_41;
    }

    if (a4 == 14)
    {
      if (*a3 != 0x6E67696C615F7369 || *(a3 + 6) != 0x6B636174735F6E67)
      {
        goto LABEL_39;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      goto LABEL_41;
    }

    v6 = 0;
    if (a4 == 16)
    {
      if (*a3 != 0x656469735F736168 || *(a3 + 8) != 0x737463656666655FLL)
      {
LABEL_39:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
LABEL_41:
      v13 = *v5;
      v6 = v13 & 0xFFFFFFFFFFFFFF00;
      v4 = v13;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 <= 12)
  {
    if (v7 == 10)
    {
      v25 = *v6;
      v26 = *(v6 + 4);
      if (v25 == 0x697274735F6D7361 && v26 == 26478)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

        v5[9] = v28;
      }
    }

    else if (v7 == 11)
    {
      if (*v6 == 0x6C6169645F6D7361 && *(v6 + 3) == 0x7463656C6169645FLL)
      {
        if (a4)
        {
          if (mlir::LLVM::AsmDialectAttr::classof(a4))
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
        v13 = *v6;
        v14 = *(v6 + 3);
        if (v13 == 0x69617274736E6F63 && v14 == 0x73746E6961727473)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v16 = a4;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v5[10] = v16;
        }
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 13:
        v17 = *v6;
        v18 = *(v6 + 5);
        if (v17 == 0x5F646E617265706FLL && v18 == 0x73727474615F646ELL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v20 = a4;
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

          v5[13] = v20;
        }

        break;
      case 14:
        v21 = *v6;
        v22 = *(v6 + 6);
        if (v21 == 0x6E67696C615F7369 && v22 == 0x6B636174735F6E67)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

          v5[12] = v24;
        }

        break;
      case 16:
        v9 = *v6;
        v8 = v6[1];
        if (v9 == 0x656469735F736168 && v8 == 0x737463656666655FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

          v5[11] = v11;
        }

        break;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "asm_dialect";
    v26 = 11;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "asm_string";
    v26 = 10;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "constraints";
    v26 = 11;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "has_side_effects";
    v26 = 16;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v27 = 261;
    v25 = "is_align_stack";
    v26 = 14;
    v21 = mlir::StringAttr::get(v20, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v27 = 261;
    v25 = "operand_attrs";
    v26 = 13;
    v24 = mlir::StringAttr::get(v23, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }
}

double mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v31, a6, a2, a3);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "asm_dialect", 0xBuLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (!mlir::LLVM::AsmDialectAttr::classof(*(v11 + 8)))
      {
        (a5)(&v31, a6);
        if (!v31)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "asm_string", 0xAuLL);
  if ((v15 & 1) == 0 || (v13 = *(v14 + 8)) == 0)
  {
LABEL_18:
    v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constraints", 0xBuLL);
    if (v18)
    {
      v13 = *(v17 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

LABEL_23:
          mlir::Diagnostic::operator<<<57ul>(v32, v16);
          goto LABEL_30;
        }

        a3[2] = v13;
      }
    }

    v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "has_side_effects", 0x10uLL);
    if (v20)
    {
      v13 = *(v19 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

LABEL_30:
          if (v31)
          {
            LODWORD(v30[0]) = 0;
            v30[1] = v13;
            v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, v30, 1);
            v22 = v33 + 24 * v34;
            v23 = *v21;
            *(v22 + 16) = *(v21 + 16);
            *v22 = v23;
            ++v34;
          }

          goto LABEL_4;
        }

        a3[3] = v13;
      }
    }

    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "is_align_stack", 0xEuLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      v30[0] = v26;
      if (v26)
      {
        if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

LABEL_44:
          if (v31)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v32, v30);
          }

          goto LABEL_4;
        }

        a3[4] = v26;
      }
    }

    v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_attrs", 0xDuLL);
    if (v28)
    {
      v29 = *(v27 + 8);
      v30[0] = v29;
      if (v29)
      {
        if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

          goto LABEL_44;
        }

        a3[5] = v29;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a3[1] = v13;
    goto LABEL_18;
  }

  (a5)(&v31, a6);
  if (v31)
  {
    goto LABEL_30;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v28 = "asm_dialect";
    v29 = 11;
    v9 = mlir::StringAttr::get(v8, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v30 = 261;
    v28 = "asm_string";
    v29 = 10;
    v12 = mlir::StringAttr::get(v11, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v30 = 261;
    v28 = "constraints";
    v29 = 11;
    v15 = mlir::StringAttr::get(v14, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v30 = 261;
    v28 = "has_side_effects";
    v29 = 16;
    v18 = mlir::StringAttr::get(v17, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v30 = 261;
    v28 = "is_align_stack";
    v29 = 14;
    v21 = mlir::StringAttr::get(v20, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v30 = 261;
    v28 = "operand_attrs";
    v29 = 13;
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

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::hashProperties(uint64_t a1, void *a2)
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

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InlineAsmOp>::readProperties(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
  v14 = 0;
  if (((*(*a1 + 56))(a1, &v14) & 1) == 0)
  {
    return 0;
  }

  v4 = v14;
  if (v14)
  {
    v5 = mlir::LLVM::AsmDialectAttr::classof(v14);
    v6 = v5 ? v4 : 0;
    *v3 = v6;
    if (!v5)
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC210A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC210A8))
      {
        qword_27FC21098 = llvm::detail::getTypeNameImpl<mlir::LLVM::AsmDialectAttr>();
        unk_27FC210A0 = v12;
        __cxa_guard_release(&qword_27FC210A8);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC21098;
        v16 = unk_27FC210A0;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v10 = v22;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
      if (v10)
      {
        return 0;
      }
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InlineAsmOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  v5 = v4[13];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::LLVM::InlineAsmOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88))
  {
    v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(a3, &v5);
    v4 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *>(a3, v4);
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  v8 = (*(a2 + 44) >> 23) & 1;
  if (*(a2 + 64 + 16 * v8 + 24))
  {
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
    if (*(v11 + 3) - v12 > 0xFuLL)
    {
      *v12 = *"has_side_effects";
      *(v11 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v11, "has_side_effects", 0x10uLL);
    }

    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8 + 32))
  {
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

    v15 = (*(*a3 + 16))(a3);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 0xDuLL)
    {
      qmemcpy(v16, "is_align_stack", 14);
      *(v15 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v15, "is_align_stack", 0xEuLL);
    }

    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8))
  {
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
    if ((*(v19 + 3) - v20) > 0xA)
    {
      *(v20 + 7) = 1952671084;
      *v20 = *"asm_dialect";
      *(v19 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v19, "asm_dialect", 0xBuLL);
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (v22 >= *(v21 + 3))
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      *(v21 + 4) = v22 + 1;
      *v22 = 32;
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, "=", 1uLL);
    }

    else
    {
      *v24 = 61;
      ++*(v23 + 4);
    }

    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }

    v69 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1));
    if (v69)
    {
      Int = mlir::IntegerAttr::getInt(&v69);
      v28 = &str_2_25;
      v29 = 5;
      if (Int == 1)
      {
        v28 = "intel";
      }

      else
      {
        v29 = 0;
      }

      if (Int)
      {
        v30 = v29;
      }

      else
      {
        v30 = 3;
      }

      if (Int)
      {
        v31 = v28;
      }

      else
      {
        v31 = "att";
      }
    }

    else
    {
      v31 = "att";
      v30 = 3;
    }

    v32 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v32, v31, v30);
    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8 + 40))
  {
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

    v35 = (*(*a3 + 16))(a3);
    v36 = *(v35 + 4);
    if (*(v35 + 3) - v36 > 0xCuLL)
    {
      qmemcpy(v36, "operand_attrs", 13);
      *(v35 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v35, "operand_attrs", 0xDuLL);
    }

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
      llvm::raw_ostream::write(v39, "=", 1uLL);
    }

    else
    {
      *v40 = 61;
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

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 40));
  }

  v69 = v71;
  v70 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v69, "has_side_effects", 16);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v69, "is_align_stack", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v69, "asm_dialect", 11);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v69, "operand_attrs", 13);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v69, "asm_string", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v69, "constraints", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v69, v70);
  v44 = (*(*a3 + 16))(a3);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 8));
  v46 = (*(*a3 + 16))(a3);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a3 + 16))(a3);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 16));
  v50 = (*(*a3 + 16))(a3);
  v51 = *(v50 + 4);
  if (v51 >= *(v50 + 3))
  {
    llvm::raw_ostream::write(v50, 32);
  }

  else
  {
    *(v50 + 4) = v51 + 1;
    *v51 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v52 = *(a2 + 72);
    v53 = *(a2 + 68);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v65 = v52;
  v66 = v53;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v65);
  v54 = (*(*a3 + 16))(a3);
  v55 = *(v54 + 4);
  if (v55 >= *(v54 + 3))
  {
    llvm::raw_ostream::write(v54, 32);
  }

  else
  {
    *(v54 + 4) = v55 + 1;
    *v55 = 32;
  }

  v56 = (*(*a3 + 16))(a3);
  v57 = *(v56 + 4);
  if (*(v56 + 3) == v57)
  {
    llvm::raw_ostream::write(v56, ":", 1uLL);
  }

  else
  {
    *v57 = 58;
    ++*(v56 + 4);
  }

  v58 = (*(*a3 + 16))(a3);
  v59 = *(v58 + 4);
  if (v59 >= *(v58 + 3))
  {
    llvm::raw_ostream::write(v58, 32);
  }

  else
  {
    *(v58 + 4) = v59 + 1;
    *v59 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v60 = *(a2 + 72);
    v61 = *(a2 + 68);
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v65 = v60;
  v66 = 0;
  v67 = v60;
  v68 = v61;
  v62 = *(a2 + 36);
  v63 = a2 - 16;
  if (!v62)
  {
    v63 = 0;
  }

  v64[0] = v63;
  v64[1] = 0;
  v64[2] = v63;
  v64[3] = v62;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a3, &v65, v64);
  if (v69 != v71)
  {
    free(v69);
  }
}

uint64_t mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_27;
  }

  v4 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v5 = *(v4 + 72);
  v6 = (v4 + 64);
  if (v5)
  {
    v8 = v6[2];
    if (v8)
    {
      v10 = v6[3];
      v9 = v6[4];
      v11 = v6[5];
      v26[0] = a1;
      if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v5, "asm_string", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26))
      {
        v26[0] = a1;
        if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v8, "constraints", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26))
        {
          v26[0] = a1;
          if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v10, "has_side_effects", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26))
          {
            v26[0] = a1;
            if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v9, "is_align_stack", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26))
            {
              v26[0] = a1;
              if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26))
              {
                v26[0] = a1;
                if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v11, "operand_attrs", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26))
                {
                  if ((*(a1 + 46) & 0x80) != 0)
                  {
                    v12 = *(a1 + 68);
                    if (v12)
                    {
                      v13 = 0;
                      v14 = *(a1 + 72) + 24;
                      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, v13))
                      {
                        ++v13;
                        v14 += 32;
                        if (v12 == v13)
                        {
                          goto LABEL_16;
                        }
                      }

                      goto LABEL_27;
                    }
                  }

LABEL_16:
                  v23 = 0;
                  v15 = *(a1 + 36);
                  if (v15 > 1)
                  {
                    v24[0] = "result group starting at #";
                    v25 = 259;
                    mlir::Operation::emitOpError(v26, a1, v24);
                    v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v26, &v23);
                    v17 = v16;
                    if (*v16)
                    {
                      mlir::Diagnostic::operator<<<37ul>((v16 + 1), " requires 0 or 1 element, but found ");
                    }

                    v22 = v15;
                    v18 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v17, &v22) + 200);
                    goto LABEL_23;
                  }

                  if (!v15 || mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
                  {
                    v20 = 1;
                    return v20 & 1;
                  }
                }
              }
            }
          }
        }
      }

LABEL_27:
      v20 = 0;
      return v20 & 1;
    }

    v19 = "requires attribute 'constraints'";
  }

  else
  {
    v19 = "requires attribute 'asm_string'";
  }

  v24[0] = v19;
  v25 = 259;
  mlir::Operation::emitOpError(v26, a1, v24);
  v18 = v27;
LABEL_23:
  v20 = v18 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
  return v20 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertElementOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::InsertElementOp::inferReturnTypes(a4, a5, &v17))
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
      v21 = "llvm.insertelement";
      v22 = 18;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertElementOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 56));
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

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, "[", 1uLL);
  }

  else
  {
    *v14 = 91;
    ++*(v13 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 88));
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

  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (*(v17 + 3) == v18)
  {
    llvm::raw_ostream::write(v17, ":", 1uLL);
  }

  else
  {
    *v18 = 58;
    ++*(v17 + 4);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, "]", 1uLL);
  }

  else
  {
    *v22 = 93;
    ++*(v21 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v30, 0);
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

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
    ++*(v26 + 4);
  }

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

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) == 0 || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps18(a1, *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps4(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) || (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(a1, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v12 = 0;
    return v12 & 1;
  }

  v6 = *(a1 + 72);
  v7 = *(*(v6 + 24) + 8);
  v8 = *(*(v7 & 0xFFFFFFFFFFFFFFF8) + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v10 = 24;
  if (v9)
  {
    v10 = 8;
  }

  if ((*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) != *((v7 & 0xFFFFFFFFFFFFFFF8) + v10))
  {
    v14 = "failed to verify that argument type matches vector element type";
LABEL_27:
    v15 = v14;
    v16 = 259;
    mlir::Operation::emitOpError(v17, a1, &v15);
    v12 = v18 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    return v12 & 1;
  }

  if (*(a1 + 36))
  {
    v11 = a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  if ((*(v11 + 8) ^ v7) >= 8)
  {
    v14 = "failed to verify that all of {res, vector} have same type";
    goto LABEL_27;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6E6F697469736F70)
  {
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 8 && **(a3 + 16) == 0x6E6F697469736F70)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = a4[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v4[2] == 64)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v5;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "position";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "position", 8uLL);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "position";
  v10[1] = 8;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertValueOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::InsertValueOp::inferReturnTypes(a4, a5, &v17))
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
      v21 = "llvm.insertvalue";
      v22 = 16;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertValueOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v22 = v24;
  v23 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "position", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v22, v23);
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

  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  if (v22 != v24)
  {
    free(v22);
  }
}

uint64_t mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v27 = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v27) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps18(a1, *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_23;
    }

    v6 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(a1, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6))
    {
      goto LABEL_23;
    }

    if (*(a1 + 36))
    {
      v7 = a1 - 16;
    }

    else
    {
      v7 = 0;
    }

    if ((*(v7 + 8) ^ *(*(*(a1 + 72) + 24) + 8)) <= 7)
    {
      goto LABEL_20;
    }

    v8 = "failed to verify that all of {container, res} have same type";
  }

  else
  {
    v8 = "requires attribute 'position'";
  }

  v22[0] = v8;
  v23 = 259;
  mlir::Operation::emitOpError(&v27, a1, v22);
  v9 = v31;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  if (v9)
  {
LABEL_23:
    v11 = 0;
    return v11 & 1;
  }

LABEL_20:
  v21 = a1;
  v24 = &v21;
  ValueElementType = getInsertExtractValueElementType(llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<mlir::LLVM::InsertValueOp::verify(void)::$_0>, &v24, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(a1 + 80) + 24), *(*(a1 + 80) + 32) >> 3);
  if (!ValueElementType)
  {
    goto LABEL_23;
  }

  if ((*(*(*(v21 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) == ValueElementType)
  {
    v11 = 1;
  }

  else
  {
    v23 = 257;
    mlir::Operation::emitOpError(&v27, v21, v22);
    if (v27)
    {
      mlir::Diagnostic::operator<<<30ul>(v28, "Type mismatch: cannot insert ");
      if (v27)
      {
        v13 = *(*(*(v21 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        v25 = 4;
        v26 = v13;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
        v15 = v29 + 24 * v30;
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++v30;
        if (v27)
        {
          mlir::Diagnostic::operator<<<7ul>(v28, " into ");
          if (v27)
          {
            v17 = *(*(*(v21 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
            v25 = 4;
            v26 = v17;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
            v19 = v29 + 24 * v30;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v30;
          }
        }
      }
    }

    v11 = v31 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  }

  return v11 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, 0);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 28532;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "to", 2uLL);
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

  if (*(a2 + 36))
  {
    v22 = a2 - 16;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 32))(a3, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 13)
  {
    if (a4 == 5)
    {
      if (*a3 != 1852785475 || *(a3 + 4) != 118)
      {
        goto LABEL_68;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
      goto LABEL_73;
    }

    if (a4 == 6)
    {
      if (*a3 != 1819042147 || *(a3 + 4) != 25957)
      {
        goto LABEL_68;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_73;
    }

    v5 = 0;
    if (a4 == 9)
    {
      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_68;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (a4 > 18)
    {
      if (a4 == 19)
      {
        if (*a3 != 0x53646E617265706FLL || *(a3 + 8) != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v5 = 0;
        if (a4 != 21)
        {
          return v5 | v4;
        }

        if (*a3 != 0x5F646E617265706FLL || *(a3 + 8) != 0x5F746E656D676573 || *(a3 + 13) != 0x73657A69735F746ELL)
        {
          goto LABEL_68;
        }
      }

      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128, 4);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    if (a4 == 14)
    {
      if (*a3 == 0x775F68636E617262 && *(a3 + 6) == 0x737468676965775FLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      else
      {
        if (*a3 != 0x6C646E75625F706FLL || *(a3 + 6) != 0x736761745F656C64)
        {
          goto LABEL_68;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      goto LABEL_73;
    }

    v5 = 0;
    if (a4 == 15)
    {
      if (*a3 == 0x6C646E75625F706FLL && *(a3 + 7) == 0x73657A69735F656CLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      else
      {
        if (*a3 != 0x6C6C61635F726176 || *(a3 + 7) != 0x657079745F65656CLL)
        {
LABEL_68:
          LOBYTE(v4) = 0;
          v5 = 0;
          return v5 | v4;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
      }

LABEL_73:
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 <= 13)
  {
    switch(v5)
    {
      case 5:
        v20 = *v4;
        v21 = *(v4 + 4);
        if (v20 == 1852785475 && v21 == 118)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
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

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v23;
        }

        break;
      case 6:
        v33 = *v4;
        v34 = *(v4 + 2);
        if (v33 == 1819042147 && v34 == 25957)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            if (*(a4 + 24))
            {
              v41 = 0;
            }

            else
            {
              v41 = a4;
            }
          }

          else
          {
            v41 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v41;
        }

        break;
      case 9:
        if (*v4 == 0x727474615F677261 && *(v4 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v40 = a4;
            }

            else
            {
              v40 = 0;
            }
          }

          else
          {
            v40 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v40;
        }

        else
        {
          v12 = *v4;
          v13 = *(v4 + 8);
          if (v12 == 0x727474615F736572 && v13 == 115)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

            *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112) = v15;
          }
        }

        break;
    }
  }

  else if (v5 > 18)
  {
    if (v5 == 19)
    {
      v16 = *v4 ^ 0x53646E617265706FLL;
      v17 = *(v4 + 1) ^ 0x6953746E656D6765;
      v18 = *(v4 + 11);
      v19 = 0x73657A6953746E65;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v16 = *v4 ^ 0x5F646E617265706FLL;
      v17 = *(v4 + 1) ^ 0x5F746E656D676573;
      v18 = *(v4 + 13);
      v19 = 0x73657A69735F746ELL;
    }

    if (v16 | v17 | v18 ^ v19)
    {
      v29 = 1;
    }

    else
    {
      v29 = a4 == 0;
    }

    if (!v29 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v30 = *(a4 + 8);
      if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v30[2] == 32 && *(a4 + 16) == 4)
      {
        v31 = *(a4 + 32);
        if (v31 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128), *(a4 + 24), v31 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (v5 == 14)
  {
    if (*v4 == 0x775F68636E617262 && *(v4 + 6) == 0x737468676965775FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v36 = *(a4 + 8), *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v36[2] == 32)
        {
          v37 = a4;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v37;
    }

    else
    {
      v25 = *v4;
      v26 = *(v4 + 6);
      if (v25 == 0x6C646E75625F706FLL && v26 == 0x736761745F656C64)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104) = v28;
      }
    }
  }

  else if (v5 == 15)
  {
    if (*v4 == 0x6C646E75625F706FLL && *(v4 + 7) == 0x73657A69735F656CLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v38 = *(a4 + 8), *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v38[2] == 32)
        {
          v39 = a4;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96) = v39;
    }

    else
    {
      v7 = *v4;
      v8 = *(v4 + 7);
      if (v7 == 0x6C6C61635F726176 && v8 == 0x657079745F65656CLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120) = v10;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v38 = 261;
    v36 = "CConv";
    v37 = 5;
    v10 = mlir::StringAttr::get(v9, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v38 = 261;
    v36 = "arg_attrs";
    v37 = 9;
    v13 = mlir::StringAttr::get(v12, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v38 = 261;
    v36 = "branch_weights";
    v37 = 14;
    v16 = mlir::StringAttr::get(v15, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v38 = 261;
    v36 = "callee";
    v37 = 6;
    v19 = mlir::StringAttr::get(v18, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = v7[4];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v38 = 261;
    v36 = "op_bundle_sizes";
    v37 = 15;
    v22 = mlir::StringAttr::get(v21, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = v7[5];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v38 = 261;
    v36 = "op_bundle_tags";
    v37 = 14;
    v25 = mlir::StringAttr::get(v24, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = v7[6];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v38 = 261;
    v36 = "res_attrs";
    v37 = 9;
    v28 = mlir::StringAttr::get(v27, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }

  v29 = v7[7];
  if (v29)
  {
    v30 = *(**v29 + 32);
    v38 = 261;
    v36 = "var_callee_type";
    v37 = 15;
    v31 = mlir::StringAttr::get(v30, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v31, v29);
  }

  v32 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 8), 4);
  v33 = *(**v32 + 32);
  v38 = 261;
  v36 = "operandSegmentSizes";
  v37 = 19;
  v35 = mlir::StringAttr::get(v33, &v36, v34);
  mlir::NamedAttrList::push_back(a3, v35, v32);
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v14, "arg_attrs", 9, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v17, "branch_weights", 0xE, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v20, "callee", 6, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v23, "op_bundle_sizes", 0xF, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v26, "op_bundle_tags", 0xE, a4, a5))
            {
              v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
              if ((v28 & 1) == 0 || (v29 = v27[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v29, "res_attrs", 9, a4, a5))
              {
                v30 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 56));
                if ((v31 & 1) == 0)
                {
                  return 1;
                }

                v32 = v30[1];
                if (!v32 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v32, "var_callee_type", 0xF, a4, a5))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
    v4 = a4[1];
    v5 = a4[2];
    v6 = a4[4];
    a3[3] = a4[3];
    a3[4] = v6;
    a3[1] = v4;
    a3[2] = v5;
    if (*a3)
    {
      return;
    }
  }

  else
  {
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  *a3 = mlir::LLVM::CConvAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::LLVM::CConvAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v45, a6, a2, a3);
    if (v45)
    {
      mlir::Diagnostic::operator<<<42ul>(v46, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "CConv", 5uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
      {
        a5(&v45, a6);
        if (v45)
        {
          goto LABEL_33;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
        return 0;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v15)
  {
    v13 = *(v14 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

LABEL_33:
        if (v45)
        {
          LODWORD(v44[0]) = 0;
          v44[1] = v13;
          v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v47, v44, 1);
          v23 = v47 + 24 * v48;
          v24 = *v22;
          *(v23 + 16) = *(v22 + 16);
          *v23 = v24;
          ++v48;
        }

        goto LABEL_4;
      }

      a3[1] = v13;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "branch_weights", 0xEuLL);
  if (v17)
  {
    v13 = *(v16 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v18 = v13[1], *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v18[2] != 32)
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

        goto LABEL_33;
      }

      a3[2] = v13;
    }
  }

  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "callee", 6uLL);
  if (v20)
  {
    v21 = *(v19 + 8);
    v44[0] = v21;
    if (v21)
    {
      if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v21[3])
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

LABEL_62:
        if (v45)
        {
          mlir::Diagnostic::operator<<<mlir::Attribute &>(v46, v44);
        }

        goto LABEL_4;
      }

      a3[3] = v21;
    }
  }

  v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_sizes", 0xFuLL);
  if (v26)
  {
    v27 = *(v25 + 8);
    v44[0] = v27;
    if (v27)
    {
      if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v28 = v27[1], *(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v28[2] != 32)
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

        goto LABEL_61;
      }

      a3[4] = v27;
    }
  }

  v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_tags", 0xEuLL);
  if (v30)
  {
    v31 = *(v29 + 8);
    v44[0] = v31;
    if (v31)
    {
      if (*(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      a3[5] = v31;
    }
  }

  v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
  if (v34)
  {
    v35 = *(v33 + 8);
    v44[0] = v35;
    if (v35)
    {
      if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      a3[6] = v35;
    }
  }

  v36 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "var_callee_type", 0xFuLL);
  if (v37)
  {
    v38 = *(v36 + 8);
    v44[0] = v38;
    if (v38)
    {
      if (*(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a5(&v45, a6);
        if (!v45)
        {
          goto LABEL_4;
        }

LABEL_61:
        mlir::Diagnostic::operator<<<61ul>(v46, v32);
        goto LABEL_62;
      }

      a3[7] = v38;
    }
  }

  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v40 & 1) == 0 || (v41 = *(v39 + 8)) == 0)
  {
    v42 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v43 & 1) == 0)
    {
      return 1;
    }

    v41 = *(v42 + 8);
    if (!v41)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 8, 4, v41, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v40 = v42;
  v41 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v39 = 261;
    v37 = "CConv";
    v38 = 5;
    v9 = mlir::StringAttr::get(v8, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v39 = 261;
    v37 = "arg_attrs";
    v38 = 9;
    v12 = mlir::StringAttr::get(v11, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v39 = 261;
    v37 = "branch_weights";
    v38 = 14;
    v15 = mlir::StringAttr::get(v14, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v39 = 261;
    v37 = "callee";
    v38 = 6;
    v18 = mlir::StringAttr::get(v17, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v39 = 261;
    v37 = "op_bundle_sizes";
    v38 = 15;
    v21 = mlir::StringAttr::get(v20, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v39 = 261;
    v37 = "op_bundle_tags";
    v38 = 14;
    v24 = mlir::StringAttr::get(v23, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v39 = 261;
    v37 = "res_attrs";
    v38 = 9;
    v27 = mlir::StringAttr::get(v26, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v39 = 261;
    v37 = "var_callee_type";
    v38 = 15;
    v30 = mlir::StringAttr::get(v29, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v30, v28);
  }

  v31 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 8), 4);
  v32 = *(**v31 + 32);
  v39 = 261;
  v37 = "operandSegmentSizes";
  v38 = 19;
  v34 = mlir::StringAttr::get(v32, &v37, v33);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v34, v31);
  if (v41)
  {
    v35 = mlir::DictionaryAttr::get(v3, v40, v41);
  }

  else
  {
    v35 = 0;
  }

  if (v40 != v42)
  {
    free(v40);
  }

  return v35;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2] || a3[3] != a2[3] || a3[4] != a2[4] || a3[5] != a2[5] || a3[6] != a2[6] || a3[7] != a2[7])
  {
    return 0;
  }

  return a3[8] == a2[8] && a3[9] == a2[9];
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::hashProperties(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = HIDWORD(a2[1]);
  v4 = HIDWORD(*a2) ^ (v2 >> 47) ^ v2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v3);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v37 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v38 = v6;
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v14 = a2[4];
  v15 = a2[5];
  v16 = (8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14);
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v35 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v36 = v13;
  v18 = HIDWORD(v15);
  v19 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = a2[6];
  v22 = a2[7];
  v23 = (8 * v21 - 0xAE502812AA7333) ^ HIDWORD(v21);
  v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ ((0x9DDFEA08EB382D69 * v23) >> 47) ^ (0x9DDFEA08EB382D69 * v23));
  v33 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v34 = v20;
  v25 = HIDWORD(v22);
  v26 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ HIDWORD(v22));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 47));
  v27 = a2[9];
  v28 = __ROR8__(v27 + 16, 16);
  v29 = 0x9DDFEA08EB382D69 * (a2[8] ^ v28 ^ 0xFF51AFD7ED558CCDLL);
  v31 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 47))) ^ v27;
  memset(v40, 0, sizeof(v40));
  v41 = 0xFF51AFD7ED558CCDLL;
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v39, 0, v40, &v40[3] + 8, &v38, &v37, &v36, &v35, &v34, &v33, &v32, &v31);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 4) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 5))
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

    if (*(v8 + 16) >= 5)
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
      memmove(v3 + 8, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 7))
  {
    v9[0] = a1;
    v9[1] = (v3 + 8);
    return mlir::LLVM::InvokeOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v9) & 1;
  }

  return 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  (*(*a3 + 24))(a3, *(v6 + 16));
  (*(*a3 + 24))(a3, *(v6 + 24));
  (*(*a3 + 16))(a3, *(v6 + 32));
  (*(*a3 + 24))(a3, *(v6 + 40));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 64, 4);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 24))(a3, *(v6 + 48));
  (*(*a3 + 24))(a3, *(v6 + 56));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 64), 4);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getSuccessorBlockArgument(int a1, uint64_t a2, unsigned int a3)
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
    mlir::LLVM::InvokeOp::getSuccessorOperands(v14, a2, v6);
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

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
  if (v2)
  {
    return v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if (*(v3 + 88))
  {
    *(v3 + 88) = v4;
  }

  else
  {
    v5 = *(a2 + 72);
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      *v6 = *v5;
      if (v7)
      {
        *(v7 + 8) = v5[1];
      }
    }

    v5[3] = v4;
    v8 = *v4;
    *v5 = *v4;
    v5[1] = v4;
    if (v8)
    {
      *(v8 + 8) = v5;
    }

    *v4 = v5;
  }
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getArgOperands(uint64_t a1, uint64_t a2)
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

  return v4 + 32 * (*(v3 + 88) == 0);
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v3 = *(v2 + 88) == 0;
  LODWORD(v2) = *(v2 + 128);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

uint64_t mlir::LLVM::detail::BranchWeightOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::setBranchWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 44);
  result = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), *(a3 + 24), *(a3 + 32) >> 2);
  *(a2 + 16 * ((v4 >> 23) & 1) + 80) = result;
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

llvm::raw_ostream *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, uint64_t a4, uint64_t a5)
{
  v93 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2 + 64;
  v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = *(v10 + 16);
    v5 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
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

  v14 = *(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8);
  if (v14)
  {
    v15 = mlir::LLVM::cconv::stringifyCConv(v14);
    v17 = v16;
    v18 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v18, v15, v17);
    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
      if (v9)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  if (v9)
  {
LABEL_11:
    (*(*a3 + 88))(a3, v11, v5);
    goto LABEL_14;
  }

LABEL_13:
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
LABEL_14:
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 40);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 40;
  }

  v23 = *(a2 + 44);
  v24 = *(v8 + 16 * ((v23 >> 23) & 1) + 64);
  if ((v23 & 0x800000) != 0)
  {
    v25 = *(a2 + 72);
  }

  else
  {
    v25 = 0;
  }

  v26 = v9 == 0;
  *&v80 = v25 + 32 * v26;
  *(&v80 + 1) = (__PAIR128__(v24, v9) - 1) >> 64;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v80);
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 41);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 41;
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 3uLL)
  {
    *v30 = 544175136;
    *(v29 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v29, " to ", 4uLL);
  }

  v31 = *(a2 + 44);
  v32 = v8 + 16 * ((v31 >> 23) & 1);
  v33 = *(((v32 + ((v31 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v34 = *(v32 + 64);
  v35 = *(v32 + 68);
  if ((v31 & 0x800000) != 0)
  {
    v36 = *(a2 + 72);
  }

  else
  {
    v36 = 0;
  }

  (*(*a3 + 184))(a3, v33, (v36 + 32 * v34) & 0xFFFFFFFFFFFFFFF9 | 2, (v35 + v34) - v34);
  v37 = (*(*a3 + 16))(a3);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 7uLL)
  {
    *v38 = 0x20646E69776E7520;
    *(v37 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v37, " unwind ", 8uLL);
  }

  v39 = *(a2 + 44);
  v40 = (v8 + 16 * ((v39 >> 23) & 1));
  v41 = *(((v40 + ((v39 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
  v42 = (v40[17] + v40[16]);
  v43 = v40[18];
  if ((v39 & 0x800000) != 0)
  {
    v44 = *(a2 + 72);
  }

  else
  {
    v44 = 0;
  }

  (*(*a3 + 184))(a3, v41, (v44 + 32 * v42) & 0xFFFFFFFFFFFFFFF9 | 2, (v43 + v42) - v42);
  v45 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 56);
  if (v45)
  {
    v46 = *(v45 + 8);
    v47 = (*(*a3 + 16))(a3);
    v48 = *(v47 + 4);
    if (*(v47 + 3) - v48 > 7uLL)
    {
      *v48 = 0x2867726172617620;
      *(v47 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v47, " vararg(", 8uLL);
    }

    (*(*a3 + 32))(a3, v46);
    v49 = (*(*a3 + 16))(a3);
    v50 = *(v49 + 4);
    if (*(v49 + 3) == v50)
    {
      llvm::raw_ostream::write(v49, ")", 1uLL);
    }

    else
    {
      *v50 = 41;
      ++*(v49 + 4);
    }
  }

  if (*(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 32) + 16))
  {
    v51 = (*(*a3 + 16))(a3);
    v52 = *(v51 + 4);
    if (*(v51 + 3) == v52)
    {
      llvm::raw_ostream::write(v51, " ", 1uLL);
    }

    else
    {
      *v52 = 32;
      ++*(v51 + 4);
    }

    v53 = *(a2 + 44);
    v54 = v8 + 16 * ((v53 >> 23) & 1);
    if ((v53 & 0x800000) != 0)
    {
      v55 = *(a2 + 72);
    }

    else
    {
      v55 = 0;
    }

    v56 = (*(v54 + 68) + *(v54 + 64) + *(v54 + 72));
    v57 = *(v54 + 32);
    v58 = *(v57 + 16);
    *&v80 = v55 + 32 * v56;
    *(&v80 + 1) = v57;
    v81 = 0;
    v82 = v58;
    if ((v53 & 0x800000) != 0)
    {
      v59 = *(a2 + 72);
    }

    else
    {
      v59 = 0;
    }

    *&v89 = v59 + 32 * v56;
    *(&v89 + 1) = v57;
    v90 = 0;
    v91 = v58;
    mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v92, 0, v58, &v89);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v61 = *(AttrDictionary + 8);
  v62 = *(AttrDictionary + 16);
  v63 = *(*(a2 + 48) + 96);
  v80 = *(v63[3] + 16);
  v81 = "operandSegmentSizes";
  v82 = 19;
  v83 = *(*v63 + 16);
  v84 = *(v63[7] + 16);
  v85 = *(v63[4] + 16);
  v86 = *(v63[5] + 16);
  v87 = *(v63[1] + 16);
  v88 = *(v63[6] + 16);
  (*(*a3 + 192))(a3, v61, v62, &v80, 8);
  v64 = (*(*a3 + 16))(a3);
  v65 = *(v64 + 4);
  if ((*(v64 + 3) - v65) > 2)
  {
    *(v65 + 2) = 32;
    *v65 = 14880;
    *(v64 + 4) += 3;
    if (!v9)
    {
      goto LABEL_52;
    }
  }

  else
  {
    llvm::raw_ostream::write(v64, " : ", 3uLL);
    if (!v9)
    {
LABEL_52:
      (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v66 = (*(*a3 + 16))(a3);
      v67 = *(v66 + 4);
      if (*(v66 + 3) - v67 > 1uLL)
      {
        *v67 = 8236;
        *(v66 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v66, ", ", 2uLL);
      }
    }
  }

  v68 = *(a2 + 44);
  v69 = v8 + 16 * ((v68 >> 23) & 1);
  v70 = *(v69 + 64);
  if ((v68 & 0x800000) != 0)
  {
    v71 = *(a2 + 72);
  }

  else
  {
    v71 = 0;
  }

  v72 = (__PAIR128__(v70, v9) - 1) >> 64;
  v73 = (v71 + 32 * v26) & 0xFFFFFFFFFFFFFFF8;
  if (v73)
  {
    v74 = v70 == v26;
  }

  else
  {
    v74 = 1;
  }

  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73 | 4;
  }

  v76 = *(v69 + 8);
  v77 = *(a2 + 36);
  v78 = (a2 - 16);
  if (!v77)
  {
    v78 = 0;
  }

  v80 = v78;
  v81 = v78;
  v82 = v77;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v89, &v80);
  return mlir::call_interface_impl::printFunctionSignature(a3, v75, v72, v76, 0, v89, *(&v89 + 1), *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 48), 0, 1u);
}

uint64_t mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyNSuccessors(a1, 2) & 1) == 0)
  {
    goto LABEL_57;
  }

  v3 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v3))
  {
    goto LABEL_57;
  }

  v4 = a1 + 64;
  v5 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v6 = v5[4];
  if (!v6)
  {
    v80[0] = "requires attribute 'op_bundle_sizes'";
    v81 = 259;
    mlir::Operation::emitOpError(&v83, a1, v80);
    v35 = v88;
    goto LABEL_38;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[5];
  v12 = v5[6];
  v13 = v5[7];
  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v13, "var_callee_type", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v10, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v8, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v12, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v9, "branch_weights", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v6, "op_bundle_sizes", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v83 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v11, "op_bundle_tags", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v83))
  {
    goto LABEL_57;
  }

  v14 = *(a1 + 44);
  v15 = *(v4 + 16 * ((v14 >> 23) & 1) + 64);
  if ((v14 & 0x800000) != 0)
  {
    v16 = *(a1 + 72);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    if (v15)
    {
LABEL_17:
      v17 = 0;
      v18 = v16 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v18 + 8) & 0xFFFFFFFFFFFFFFF8, v17))
      {
        ++v17;
        v18 += 32;
        if (v15 == v17)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_57;
    }
  }

LABEL_20:
  ODSOperands = mlir::LLVM::InvokeOp::getODSOperands(a1, 1u);
  if (v20)
  {
    v21 = v20;
    v22 = ODSOperands + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
    {
      LODWORD(v15) = v15 + 1;
      v22 += 32;
      if (!--v21)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_57;
  }

LABEL_24:
  v23 = mlir::LLVM::InvokeOp::getODSOperands(a1, 2u);
  if (v24)
  {
    v25 = v24;
    v26 = v23 + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v26 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
    {
      LODWORD(v15) = v15 + 1;
      v26 += 32;
      if (!--v25)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_57;
  }

LABEL_28:
  v27 = mlir::LLVM::InvokeOp::getODSOperands(a1, 3u);
  v29 = v28;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "op_bundle_sizes", 0xFuLL, "op_bundle_operands", 18, v28))
  {
    goto LABEL_57;
  }

  if (v29)
  {
    v31 = v27 + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v31 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
    {
      LODWORD(v15) = v15 + 1;
      v31 += 32;
      if (!--v29)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_57;
  }

LABEL_33:
  LODWORD(v79) = 0;
  v32 = *(a1 + 36);
  if (v32 > 1)
  {
    v80[0] = "result group starting at #";
    v81 = 259;
    mlir::Operation::emitOpError(&v83, a1, v80);
    v33 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v83, &v79);
    v34 = v33;
    if (*v33)
    {
      mlir::Diagnostic::operator<<<37ul>((v33 + 1), " requires 0 or 1 element, but found ");
    }

    v82[0] = v32;
    v35 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v34, v82) + 200);
LABEL_38:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
    if (v35)
    {
      goto LABEL_57;
    }

    goto LABEL_39;
  }

  if (v32 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    goto LABEL_57;
  }

LABEL_39:
  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = 0;
    do
    {
      mlir::LLVM::InvokeOp::getSuccessorOperands(&v83, a1, v37);
      v38 = mlir::detail::verifyBranchSuccessorOperands(a1, v37, &v83);
      if (v85 != &v87)
      {
        free(v85);
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    while (v36 != ++v37);
  }

  if (mlir::OpTrait::impl::verifyIsTerminator(a1, v30))
  {
    v39 = *(a1 + 44);
    v40 = v4 + 16 * ((v39 >> 23) & 1);
    v41 = *(v40 + 56);
    if (!v41)
    {
      goto LABEL_80;
    }

    v42 = *(v41 + 8);
    if (*(v42 + 32) == 1)
    {
      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      v45 = *(v40 + 64);
      v46 = *(v40 + 24) == 0;
      if ((v39 & 0x800000) != 0)
      {
        if (v45 - v46 < v43)
        {
LABEL_50:
          v80[0] = "expected var_callee_type to have at most ";
          v81 = 259;
          mlir::Operation::emitOpError(&v83, a1, v80);
          v47 = v4 + 16 * ((*(a1 + 44) >> 23) & 1);
          v82[0] = (__PAIR128__(*(v47 + 64), *(v47 + 24)) - 1) >> 64;
          v48 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v83, v82);
          v49 = v48;
          if (*v48)
          {
            mlir::Diagnostic::operator<<<12ul>((v48 + 1), " parameters");
          }

          v50 = *(v49 + 200);
LABEL_56:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
          if (v50)
          {
            goto LABEL_57;
          }

LABEL_80:
          v67 = *(a1 + 44);
          v68 = v4 + 16 * ((v67 >> 23) & 1);
          v69 = *(((v68 + ((v67 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
          if (*(v69 + 32) == v69 + 32)
          {
            v70 = "must have at least one operation in unwind destination";
          }

          else
          {
            if (*(*(*(v69 + 40) + 48) + 16) == &unk_27FC1FF90)
            {
              v72 = *(v68 + 40);
              v73 = *(*(v68 + 32) + 16);
              if (v72)
              {
                v74 = *(v72 + 16);
                if (v74)
                {
                  v75 = *(v72 + 8);
                  v76 = 8 * v74;
                  while (*(**v75 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
                  {
                    v75 += 8;
                    v76 -= 8;
                    if (!v76)
                    {
                      goto LABEL_93;
                    }
                  }

                  v70 = "operand bundle tag must be a StringAttr";
                  goto LABEL_84;
                }
              }

              else
              {
                v74 = 0;
              }

LABEL_93:
              v82[0] = v73;
              v79 = v74;
              if (v73 == v74)
              {
                v52 = 1;
                return v52 & 1;
              }

              v80[0] = "expected ";
              v81 = 259;
              mlir::Operation::emitError(&v83, a1, v80);
              v77 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v83, v82);
              v78 = v77;
              if (*v77)
              {
                mlir::Diagnostic::operator<<<40ul>((v77 + 1), " operand bundle tags, but actually got ");
              }

              v71 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v78, &v79) + 200);
              goto LABEL_85;
            }

            v70 = "first operation in unwind destination should be a llvm.landingpad operation";
          }

LABEL_84:
          v80[0] = v70;
          v81 = 259;
          mlir::Operation::emitError(&v83, a1, v80);
          v71 = v88;
LABEL_85:
          v52 = v71 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
          return v52 & 1;
        }

        v54 = *(a1 + 72);
      }

      else
      {
        if (v45 - v46 < v43)
        {
          goto LABEL_50;
        }

        v54 = 0;
      }

      if (v43)
      {
        v55 = v45 == v46;
      }

      else
      {
        v55 = 1;
      }

      if (!v55)
      {
        v60 = ~v46 + v45;
        v61 = v54 + 32 * v46 + 24;
        v62 = 8 * v43 - 8;
        while (1)
        {
          v63 = *v61;
          if (*v44 != (*(*v61 + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          v65 = v60-- != 0;
          if (v62)
          {
            ++v44;
            v61 += 32;
            v62 -= 8;
            if (v65)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        v81 = 257;
        mlir::Operation::emitOpError(&v83, a1, v80);
        if (!v83)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<42ul>(v84, "var_callee_type parameter type mismatch: ");
        if (!v83)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<mlir::Type const&>(v84, v44);
        if (!v83)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<5ul>(v84, " != ");
        v82[0] = *(v63 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v83)
        {
          goto LABEL_55;
        }

        goto LABEL_102;
      }

LABEL_65:
      if (*(a1 + 36))
      {
        if ((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) == *(v42 + 8))
        {
          goto LABEL_80;
        }

        v80[0] = "var_callee_type return type mismatch: ";
        v81 = 259;
        mlir::Operation::emitOpError(&v83, a1, v80);
        if (!v83)
        {
          goto LABEL_55;
        }

        v56 = *(v42 + 8);
        LODWORD(v82[0]) = 4;
        v82[1] = v56;
        v57 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, v82, 1);
        v58 = v85 + 24 * v86;
        v59 = *v57;
        *(v58 + 2) = *(v57 + 16);
        *v58 = v59;
        ++v86;
        if (!v83)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<5ul>(v84, " != ");
        v82[0] = *(a1 - 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v83)
        {
          goto LABEL_55;
        }

LABEL_102:
        mlir::Diagnostic::operator<<<mlir::Type>(v84, v82);
        goto LABEL_55;
      }

      v66 = *(**(v42 + 8) + 136);
      if (v66 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
      {
        goto LABEL_80;
      }

      v51 = "expected var_callee_type to return void";
    }

    else
    {
      v51 = "expected var_callee_type to be a variadic function type";
    }

    v80[0] = v51;
    v81 = 259;
    mlir::Operation::emitOpError(&v83, a1, v80);
LABEL_55:
    v50 = v88;
    goto LABEL_56;
  }

LABEL_57:
  v52 = 0;
  return v52 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v6 = 0;
  switch(a4)
  {
    case 5:
      if (*a3 == 1852785475 && *(a3 + 4) == 118)
      {
        goto LABEL_289;
      }

      goto LABEL_255;
    case 6:
      if (*a3 != 1684893539 || *(a3 + 4) != 29793)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168);
      goto LABEL_289;
    case 7:
      if (*a3 == 1802398060 && *(a3 + 3) == 1701273963)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 256);
        goto LABEL_289;
      }

      if (*a3 == 1952671091 && *(a3 + 3) == 1852795252)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 352);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 8:
      if (*a3 == 0x656D616E5F6D7973)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 360);
      }

      else
      {
        if (*a3 != 0x7570635F656E7574)
        {
          goto LABEL_255;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 392);
      }

      goto LABEL_289;
    case 9:
      if (*a3 == 0x6E656D6E67696C61 && *(a3 + 8) == 116)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
        goto LABEL_289;
      }

      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
        goto LABEL_289;
      }

      if (*a3 == 0x7A5F6E695F6D7261 && *(a3 + 8) == 97)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
        goto LABEL_289;
      }

      if (*a3 == 0x61636F6C5F6F7364 && *(a3 + 8) == 108)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 200);
        goto LABEL_289;
      }

      if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 280);
        goto LABEL_289;
      }

      if (*a3 == 0x6E69776E755F6F6ELL && *(a3 + 8) == 100)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 304);
        goto LABEL_289;
      }

      if (*a3 == 0x727474615F736572 && *(a3 + 8) == 115)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 344);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 10:
      if (*a3 == 0x5F77656E5F6D7261 && *(a3 + 8) == 24954)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
        goto LABEL_289;
      }

      if (*a3 == 0x5F74756F5F6D7261 && *(a3 + 8) == 24954)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
        goto LABEL_289;
      }

      if (*a3 == 0x65677265766E6F63 && *(a3 + 8) == 29806)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176);
        goto LABEL_289;
      }

      if (*a3 == 0x635F746567726174 && *(a3 + 8) == 30064)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 376);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 11:
      if (*a3 == 0x72746E6F635F7066 && *(a3 + 3) == 0x74636172746E6F63)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 208);
        goto LABEL_289;
      }

      if (*a3 == 0x6F72687473736170 && *(a3 + 3) == 0x6867756F72687473)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 320);
        goto LABEL_289;
      }

      if (*a3 == 0x6C616E6F73726570 && *(a3 + 3) == 0x7974696C616E6F73)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 328);
        goto LABEL_289;
      }

      if (*a3 == 0x696C696269736976 && *(a3 + 3) == 0x5F7974696C696269)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 424);
        goto LABEL_289;
      }

      if (*a3 == 0x7465725F6C6C6977 && *(a3 + 3) == 0x6E72757465725F6CLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 440);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 12:
      if (*a3 == 0x756F6E695F6D7261 && *(a3 + 8) == 1635409780)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
        goto LABEL_289;
      }

      if (*a3 == 0x5F64656D616E6E75 && *(a3 + 8) == 1919181921)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 400);
        goto LABEL_289;
      }

      if (*a3 == 0x725F656C61637376 && *(a3 + 8) == 1701277281)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 432);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 13:
      if (*a3 == 0x695F737961776C61 && *(a3 + 5) == 0x656E696C6E695F73)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
        goto LABEL_289;
      }

      if (*a3 == 0x657274735F6D7261 && *(a3 + 5) == 0x676E696D61657274)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152);
        goto LABEL_289;
      }

      if (*a3 == 0x6F705F656D617266 && *(a3 + 5) == 0x7265746E696F705FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 216);
        goto LABEL_289;
      }

      if (*a3 == 0x6E6F6974636E7566 && *(a3 + 5) == 0x657079745F6E6F69)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 232);
        goto LABEL_289;
      }

      if (*a3 == 0x657A696D6974706FLL && *(a3 + 5) == 0x656E6F6E5F657A69)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 312);
        goto LABEL_289;
      }

      if (*a3 == 0x657079745F636576 && *(a3 + 5) == 0x746E69685F657079)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 416);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 14:
      if (*a3 == 0x655F79726F6D656DLL && *(a3 + 6) == 0x737463656666655FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 264);
        goto LABEL_289;
      }

      if (*a3 == 0x697369765F6D7973 && *(a3 + 6) == 0x7974696C69626973)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 368);
        goto LABEL_289;
      }

      if (*a3 == 0x665F656661736E75 && *(a3 + 6) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 408);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 15:
      if (*a3 == 0x5F73666E695F6F6ELL && *(a3 + 7) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 272);
        goto LABEL_289;
      }

      if (*a3 == 0x5F736E616E5F6F6ELL && *(a3 + 7) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 288);
        goto LABEL_289;
      }

      if (*a3 == 0x665F746567726174 && *(a3 + 7) == 0x7365727574616566)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 384);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 16:
      if (*a3 == 0x736572705F6D7261 && *(a3 + 8) == 0x617A5F7365767265)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144);
        goto LABEL_289;
      }

      if (*a3 == 0x6C616D726F6E6564 && *(a3 + 8) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 184);
        goto LABEL_289;
      }

      if (*a3 == 0x4365676162726167 && *(a3 + 8) == 0x726F7463656C6C6FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 240);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 17:
    case 18:
    case 22:
      return v6 | v4;
    case 19:
      if (*a3 != 0x665F786F72707061 || *(a3 + 8) != 0x6D5F70665F636E75 || *(a3 + 11) != 0x6874616D5F70665FLL)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_289;
    case 20:
      if (*a3 == 0x6C616D726F6E6564 && *(a3 + 8) == 0x6874616D5F70665FLL && *(a3 + 16) == 842229343)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 192);
      }

      else if (*a3 == 0x6E6F6974636E7566 && *(a3 + 8) == 0x635F7972746E655FLL && *(a3 + 16) == 1953396079)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 224);
      }

      else if (*a3 == 0x726F775F64716572 && *(a3 + 8) == 0x5F70756F72675F6BLL && *(a3 + 16) == 1702521203)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 336);
      }

      else
      {
        if (*a3 != 0x6F72675F6B726F77 || *(a3 + 8) != 0x5F657A69735F7075 || *(a3 + 16) != 1953393000)
        {
LABEL_255:
          v4 = 0;
          v6 = 0;
          return v6 | v4;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 448);
      }

LABEL_289:
      v64 = *v5;
      v6 = v64 & 0xFFFFFFFFFFFFFF00;
      v4 = v64;
      return v6 | v4;
    case 21:
      if (*a3 != 0x61636F6C5F6D7261 || *(a3 + 8) != 0x657274735F796C6CLL || *(a3 + 13) != 0x676E696D61657274)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
      goto LABEL_289;
    case 23:
      if (*a3 != 0x656E6769735F6F6ELL || *(a3 + 8) != 0x5F736F72657A5F64 || *(a3 + 15) != 0x6874616D5F70665FLL)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 296);
      goto LABEL_289;
    case 24:
      if (*a3 != 0x657274735F6D7261 || *(a3 + 8) != 0x6F635F676E696D61 || *(a3 + 16) != 0x656C62697461706DLL)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160);
      goto LABEL_289;
    case 25:
      if (*a3 != 0x65725F6C65746E69 || *(a3 + 8) != 0x675F6275735F6471 || *(a3 + 16) != 0x7A69735F70756F72 || *(a3 + 24) != 101)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 248);
      goto LABEL_289;
    default:
      v6 = 0;
      return v6 | v4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  switch(*(a3 + 24))
  {
    case 5:
      v7 = *v6;
      v8 = *(v6 + 4);
      if (v7 == 1852785475 && v8 == 118)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
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

        v5[8] = v10;
      }

      break;
    case 6:
      v47 = *v6;
      v48 = *(v6 + 2);
      if (v47 == 1684893539 && v48 == 29793)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            v50 = a4;
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          v50 = 0;
        }

        v5[21] = v50;
      }

      break;
    case 7:
      if (*v6 == 1802398060 && *(v6 + 3) == 1701273963)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
          {
            v134 = a4;
          }

          else
          {
            v134 = 0;
          }
        }

        else
        {
          v134 = 0;
        }

        v5[32] = v134;
      }

      else
      {
        v66 = *v6;
        v67 = *(v6 + 3);
        if (v66 == 1952671091 && v67 == 1852795252)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v69 = a4;
            }

            else
            {
              v69 = 0;
            }
          }

          else
          {
            v69 = 0;
          }

          v5[44] = v69;
        }
      }

      break;
    case 8:
      if (*v6 == 0x656D616E5F6D7973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v133 = a4;
          }

          else
          {
            v133 = 0;
          }
        }

        else
        {
          v133 = 0;
        }

        v5[45] = v133;
      }

      else if (*v6 == 0x7570635F656E7574)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v64 = a4;
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = 0;
        }

        v5[49] = v64;
      }

      break;
    case 9:
      if (*v6 == 0x6E656D6E67696C61 && *(v6 + 8) == 116)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v130 = a4;
          }

          else
          {
            v130 = 0;
          }
        }

        else
        {
          v130 = 0;
        }

        v5[9] = v130;
      }

      else if (*v6 == 0x727474615F677261 && *(v6 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v142 = a4;
          }

          else
          {
            v142 = 0;
          }
        }

        else
        {
          v142 = 0;
        }

        v5[12] = v142;
      }

      else if (*v6 == 0x7A5F6E695F6D7261 && *(v6 + 8) == 97)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v151 = a4;
          }

          else
          {
            v151 = 0;
          }
        }

        else
        {
          v151 = 0;
        }

        v5[13] = v151;
      }

      else if (*v6 == 0x61636F6C5F6F7364 && *(v6 + 8) == 108)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v155 = a4;
          }

          else
          {
            v155 = 0;
          }
        }

        else
        {
          v155 = 0;
        }

        v5[25] = v155;
      }

      else if (*v6 == 0x6E696C6E695F6F6ELL && *(v6 + 8) == 101)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v158 = a4;
          }

          else
          {
            v158 = 0;
          }
        }

        else
        {
          v158 = 0;
        }

        v5[35] = v158;
      }

      else if (*v6 == 0x6E69776E755F6F6ELL && *(v6 + 8) == 100)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v160 = a4;
          }

          else
          {
            v160 = 0;
          }
        }

        else
        {
          v160 = 0;
        }

        v5[38] = v160;
      }

      else
      {
        v36 = *v6;
        v37 = *(v6 + 8);
        if (v36 == 0x727474615F736572 && v37 == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v39 = a4;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
          }

          v5[43] = v39;
        }
      }

      break;
    case 0xALL:
      if (*v6 == 0x5F77656E5F6D7261 && *(v6 + 4) == 24954)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v131 = a4;
          }

          else
          {
            v131 = 0;
          }
        }

        else
        {
          v131 = 0;
        }

        v5[16] = v131;
      }

      else if (*v6 == 0x5F74756F5F6D7261 && *(v6 + 4) == 24954)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v143 = a4;
          }

          else
          {
            v143 = 0;
          }
        }

        else
        {
          v143 = 0;
        }

        v5[17] = v143;
      }

      else if (*v6 == 0x65677265766E6F63 && *(v6 + 4) == 29806)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v152 = a4;
          }

          else
          {
            v152 = 0;
          }
        }

        else
        {
          v152 = 0;
        }

        v5[22] = v152;
      }

      else
      {
        v54 = *v6;
        v55 = *(v6 + 4);
        if (v54 == 0x635F746567726174 && v55 == 30064)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v57 = a4;
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
          }

          v5[47] = v57;
        }
      }

      break;
    case 0xBLL:
      if (*v6 == 0x72746E6F635F7066 && *(v6 + 3) == 0x74636172746E6F63)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v135 = a4;
          }

          else
          {
            v135 = 0;
          }
        }

        else
        {
          v135 = 0;
        }

        v5[26] = v135;
      }

      else if (*v6 == 0x6F72687473736170 && *(v6 + 3) == 0x6867756F72687473)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v145 = a4;
          }

          else
          {
            v145 = 0;
          }
        }

        else
        {
          v145 = 0;
        }

        v5[40] = v145;
      }

      else if (*v6 == 0x6C616E6F73726570 && *(v6 + 3) == 0x7974696C616E6F73)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (a4[3])
          {
            v153 = 0;
          }

          else
          {
            v153 = a4;
          }
        }

        else
        {
          v153 = 0;
        }

        v5[41] = v153;
      }

      else if (*v6 == 0x696C696269736976 && *(v6 + 3) == 0x5F7974696C696269)
      {
        if (a4)
        {
          if (mlir::LLVM::VisibilityAttr::classof(a4))
          {
            v156 = a4;
          }

          else
          {
            v156 = 0;
          }
        }

        else
        {
          v156 = 0;
        }

        v5[53] = v156;
      }

      else
      {
        v74 = *v6;
        v75 = *(v6 + 3);
        if (v74 == 0x7465725F6C6C6977 && v75 == 0x6E72757465725F6CLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v77 = a4;
            }

            else
            {
              v77 = 0;
            }
          }

          else
          {
            v77 = 0;
          }

          v5[55] = v77;
        }
      }

      break;
    case 0xCLL:
      if (*v6 == 0x756F6E695F6D7261 && v6[2] == 1635409780)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v136 = a4;
          }

          else
          {
            v136 = 0;
          }
        }

        else
        {
          v136 = 0;
        }

        v5[14] = v136;
      }

      else if (*v6 == 0x5F64656D616E6E75 && v6[2] == 1919181921)
      {
        if (a4)
        {
          if (mlir::LLVM::UnnamedAddrAttr::classof(a4))
          {
            v146 = a4;
          }

          else
          {
            v146 = 0;
          }
        }

        else
        {
          v146 = 0;
        }

        v5[50] = v146;
      }

      else
      {
        v80 = *v6;
        v81 = v6[2];
        if (v80 == 0x725F656C61637376 && v81 == 1701277281)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
            {
              v83 = a4;
            }

            else
            {
              v83 = 0;
            }
          }

          else
          {
            v83 = 0;
          }

          v5[54] = v83;
        }
      }

      break;
    case 0xDLL:
      if (*v6 == 0x695F737961776C61 && *(v6 + 5) == 0x656E696C6E695F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v138 = a4;
          }

          else
          {
            v138 = 0;
          }
        }

        else
        {
          v138 = 0;
        }

        v5[10] = v138;
      }

      else if (*v6 == 0x657274735F6D7261 && *(v6 + 5) == 0x676E696D61657274)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v148 = a4;
          }

          else
          {
            v148 = 0;
          }
        }

        else
        {
          v148 = 0;
        }

        v5[19] = v148;
      }

      else if (*v6 == 0x6F705F656D617266 && *(v6 + 5) == 0x7265746E696F705FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
          {
            v154 = a4;
          }

          else
          {
            v154 = 0;
          }
        }

        else
        {
          v154 = 0;
        }

        v5[27] = v154;
      }

      else if (*v6 == 0x6E6F6974636E7566 && *(v6 + 5) == 0x657079745F6E6F69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v157 = a4;
          }

          else
          {
            v157 = 0;
          }
        }

        else
        {
          v157 = 0;
        }

        v5[29] = v157;
      }

      else if (*v6 == 0x657A696D6974706FLL && *(v6 + 5) == 0x656E6F6E5F657A69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v159 = a4;
          }

          else
          {
            v159 = 0;
          }
        }

        else
        {
          v159 = 0;
        }

        v5[39] = v159;
      }

      else
      {
        v109 = *v6;
        v110 = *(v6 + 5);
        if (v109 == 0x657079745F636576 && v110 == 0x746E69685F657079)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
            {
              v112 = a4;
            }

            else
            {
              v112 = 0;
            }
          }

          else
          {
            v112 = 0;
          }

          v5[52] = v112;
        }
      }

      break;
    case 0xELL:
      if (*v6 == 0x655F79726F6D656DLL && *(v6 + 6) == 0x737463656666655FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
          {
            v137 = a4;
          }

          else
          {
            v137 = 0;
          }
        }

        else
        {
          v137 = 0;
        }

        v5[33] = v137;
      }

      else if (*v6 == 0x697369765F6D7973 && *(v6 + 6) == 0x7974696C69626973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v147 = a4;
          }

          else
          {
            v147 = 0;
          }
        }

        else
        {
          v147 = 0;
        }

        v5[46] = v147;
      }

      else
      {
        v99 = *v6;
        v100 = *(v6 + 6);
        if (v99 == 0x665F656661736E75 && v100 == 0x6874616D5F70665FLL)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v102 = a4[1], *(*v102 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v102[2] == 1)
            {
              v103 = a4;
            }

            else
            {
              v103 = 0;
            }
          }

          else
          {
            v103 = 0;
          }

          v5[51] = v103;
        }
      }

      break;
    case 0xFLL:
      if (*v6 == 0x5F73666E695F6F6ELL && *(v6 + 7) == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v128 = a4[1], *(*v128 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v128[2] == 1)
          {
            v129 = a4;
          }

          else
          {
            v129 = 0;
          }
        }

        else
        {
          v129 = 0;
        }

        v5[34] = v129;
      }

      else if (*v6 == 0x5F736E616E5F6F6ELL && *(v6 + 7) == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v140 = a4[1], *(*v140 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v140[2] == 1)
          {
            v141 = a4;
          }

          else
          {
            v141 = 0;
          }
        }

        else
        {
          v141 = 0;
        }

        v5[36] = v141;
      }

      else
      {
        v26 = *v6;
        v27 = *(v6 + 7);
        if (v26 == 0x665F746567726174 && v27 == 0x7365727574616566)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
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

          v5[48] = v29;
        }
      }

      break;
    case 0x10:
      if (*v6 == 0x736572705F6D7261 && *(v6 + 1) == 0x617A5F7365767265)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v132 = a4;
          }

          else
          {
            v132 = 0;
          }
        }

        else
        {
          v132 = 0;
        }

        v5[18] = v132;
      }

      else if (*v6 == 0x6C616D726F6E6564 && *(v6 + 1) == 0x6874616D5F70665FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v144 = a4;
          }

          else
          {
            v144 = 0;
          }
        }

        else
        {
          v144 = 0;
        }

        v5[23] = v144;
      }

      else
      {
        v61 = *v6;
        v60 = *(v6 + 1);
        if (v61 == 0x4365676162726167 && v60 == 0x726F7463656C6C6FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v63 = a4;
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 0;
          }

          v5[30] = v63;
        }
      }

      break;
    case 0x13:
      v40 = *v6;
      v41 = *(v6 + 1);
      v42 = *(v6 + 11);
      if (v40 == 0x665F786F72707061 && v41 == 0x6D5F70665F636E75 && v42 == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v45 = a4[1], *(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v45[2] == 1)
          {
            v46 = a4;
          }

          else
          {
            v46 = 0;
          }
        }

        else
        {
          v46 = 0;
        }

        v5[11] = v46;
      }

      break;
    case 0x14:
      if (*v6 == 0x6C616D726F6E6564 && *(v6 + 1) == 0x6874616D5F70665FLL && v6[4] == 842229343)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v127 = a4;
          }

          else
          {
            v127 = 0;
          }
        }

        else
        {
          v127 = 0;
        }

        v5[24] = v127;
      }

      else if (*v6 == 0x6E6F6974636E7566 && *(v6 + 1) == 0x635F7972746E655FLL && v6[4] == 1953396079)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v139 = a4;
          }

          else
          {
            v139 = 0;
          }
        }

        else
        {
          v139 = 0;
        }

        v5[28] = v139;
      }

      else if (*v6 == 0x726F775F64716572 && *(v6 + 1) == 0x5F70756F72675F6BLL && v6[4] == 1702521203)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v149 = a4[1], *(*v149 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v149[2] == 32)
          {
            v150 = a4;
          }

          else
          {
            v150 = 0;
          }
        }

        else
        {
          v150 = 0;
        }

        v5[42] = v150;
      }

      else
      {
        v17 = *v6;
        v18 = *(v6 + 1);
        v19 = v6[4];
        if (v17 == 0x6F72675F6B726F77 && v18 == 0x5F657A69735F7075 && v19 == 1953393000)
        {
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

          v5[56] = v23;
        }
      }

      break;
    case 0x15:
      v84 = *v6;
      v85 = *(v6 + 1);
      v86 = *(v6 + 13);
      if (v84 == 0x61636F6C5F6D7261 && v85 == 0x657274735F796C6CLL && v86 == 0x676E696D61657274)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v89 = a4;
          }

          else
          {
            v89 = 0;
          }
        }

        else
        {
          v89 = 0;
        }

        v5[15] = v89;
      }

      break;
    case 0x17:
      v90 = *v6;
      v91 = *(v6 + 1);
      v92 = *(v6 + 15);
      if (v90 == 0x656E6769735F6F6ELL && v91 == 0x5F736F72657A5F64 && v92 == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v95 = a4[1], *(*v95 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v95[2] == 1)
          {
            v96 = a4;
          }

          else
          {
            v96 = 0;
          }
        }

        else
        {
          v96 = 0;
        }

        v5[37] = v96;
      }

      break;
    case 0x18:
      v121 = *v6;
      v122 = *(v6 + 1);
      v123 = *(v6 + 2);
      if (v121 == 0x657274735F6D7261 && v122 == 0x6F635F676E696D61 && v123 == 0x656C62697461706DLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v126 = a4;
          }

          else
          {
            v126 = 0;
          }
        }

        else
        {
          v126 = 0;
        }

        v5[20] = v126;
      }

      break;
    case 0x19:
      v113 = *v6;
      v114 = *(v6 + 1);
      v115 = *(v6 + 2);
      v116 = *(v6 + 24);
      if (v113 == 0x65725F6C65746E69 && v114 == 0x675F6275735F6471 && v115 == 0x7A69735F70756F72 && v116 == 101)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v120 = a4;
          }

          else
          {
            v120 = 0;
          }
        }

        else
        {
          v120 = 0;
        }

        v5[31] = v120;
      }

      break;
    default:
      return;
  }
}