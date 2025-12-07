BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::silc::SilcMeshOp>::verifyTrait(uint64_t *a1, mlir::Operation *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a1;
  if ((mlir::detail::verifySymbol(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[2];
  if (!v3)
  {
    return 1;
  }

  ParentOp = mlir::Block::getParentOp(v3);
  if (!ParentOp)
  {
    return 1;
  }

  v5 = ParentOp;
  {
    mlir::detail::SymbolOpInterfaceTrait<mlir::silc::SilcMeshOp>::verifyTrait();
  }

  if (((*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v16 = "symbol's parent must have the SymbolTable trait";
  v17 = 259;
  mlir::OpState::emitOpError(&v18, &v16, v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::hasTrait()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v4);
  v1 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      v2 = v4[0];
      if ((v5 & 2) != 0)
      {
        v2 = v4;
      }

      v3 = result;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v2);
      result = v3;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t *mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::silc::SilcSPMDCallOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcSPMDCallOp::populateInherentAttrs(Context, v6, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcSPMDCallOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::OneResult<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::VariadicOperands<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcSPMDCallOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcSPMDCallOp>,mlir::CallOpInterface::Trait<mlir::silc::SilcSPMDCallOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcSPMDCallOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcSPMDCallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::verifySymbolUses;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v7 = v6;
  *v6 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getAsmResultNames;
  v6[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getAsmBlockArgumentNames;
  v6[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getAsmBlockNames;
  v6[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getDefaultDialect;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcSPMDCallOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::silc::SilcSPMDCallOp::verifyInvariantsImpl(&v6);
}

void mlir::Dialect::addAttribute<mlir::silc::MeshAxisAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::silc::MeshAxisAttr,mlir::Attribute,mlir::silc::detail::MeshAxisAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12MeshAxisAttrES2_NSD_6detail19MeshAxisAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12MeshAxisAttrES2_NSC_6detail19MeshAxisAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v23 = "silc.mesh_axis";
  v24 = 14;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::silc::MeshAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::silc::MeshAttr,mlir::Attribute,mlir::silc::detail::MeshAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSD_6detail15MeshAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSC_6detail15MeshAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v23 = "silc.mesh";
  v24 = 9;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::silc::MeshAxisRefAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::silc::MeshAxisRefAttr,mlir::Attribute,mlir::silc::detail::MeshAxisRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc15MeshAxisRefAttrES2_NSD_6detail22MeshAxisRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc15MeshAxisRefAttrES2_NSC_6detail22MeshAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
  v23 = "silc.mesh_axis_ref";
  v24 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::silc::TensorAxisRefAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::silc::TensorAxisRefAttr,mlir::Attribute,mlir::silc::detail::TensorAxisRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSD_6detail24TensorAxisRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSC_6detail24TensorAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v23 = "silc.tensor_axis_ref";
  v24 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::silc::ShardingAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::silc::ShardingAttr,mlir::Attribute,mlir::silc::detail::ShardingAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSD_6detail19ShardingAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSC_6detail19ShardingAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v23 = "silc.sharding";
  v24 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::silc::ReductionKindAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::silc::ReductionKindAttr,mlir::Attribute,mlir::silc::detail::ReductionKindAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17ReductionKindAttrES2_NSD_6detail24ReductionKindAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17ReductionKindAttrES2_NSC_6detail24ReductionKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
  v23 = "silc.reduction_kind";
  v24 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12MeshAxisAttrES2_NSC_6detail19MeshAxisAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  Context = mlir::Attribute::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19MeshAxisAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12MeshAxisAttrEJNS_9StringRefEtEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v16[1] = v12;
  v14[0] = v2;
  v14[1] = v3;
  v15 = v4;
  v7 = llvm::hash_value(v2, v3);
  *&v17 = v7;
  WORD4(v17) = v4;
  v8 = __ROR8__(*(&v17 + 2) + 10, 10);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v8)));
  v13 = v14;
  *&v17 = v14;
  *(&v17 + 1) = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ (v7 >> 16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSD_6detail15MeshAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSC_6detail15MeshAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::MeshAttr>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::MeshAttr>(uint64_t a1, uint64_t *a2)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *a2;
  if (a2[1] >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = a2[1];
  }

  v23 = a1;
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v2, v3, &v35);
  *&v32 = v4;
  *(&v32 + 1) = v5;
  *&__src = v34;
  *(&__src + 1) = 0x600000000;
  v6 = DWORD2(v35);
  v7 = v35;
  if (DWORD2(v35))
  {
    if (v35 != v36)
    {
      __src = v35;
      *&v35 = v36;
      HIDWORD(v35) = 0;
      v7 = v36;
LABEL_13:
      DWORD2(v35) = 0;
      goto LABEL_14;
    }

    if (DWORD2(v35) < 7)
    {
      v9 = v34;
      v8 = DWORD2(v35);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v34, DWORD2(v35), 8);
      v8 = DWORD2(v35);
      v7 = v35;
      if (!DWORD2(v35))
      {
LABEL_12:
        DWORD2(__src) = v6;
        goto LABEL_13;
      }

      v9 = __src;
    }

    memcpy(v9, v7, 8 * v8);
    v7 = v35;
    goto LABEL_12;
  }

LABEL_14:
  if (v7 != v36)
  {
    free(v7);
  }

  Context = mlir::Attribute::getContext(&v23);
  v28 = v32;
  v29 = v31;
  v30 = 0x600000000;
  v11 = DWORD2(__src);
  if (!DWORD2(__src))
  {
    v11 = 0;
    v14 = v31;
    goto LABEL_24;
  }

  if (DWORD2(__src) < 7)
  {
    v13 = v31;
    v12 = DWORD2(__src);
    goto LABEL_22;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, DWORD2(__src), 8);
  v12 = DWORD2(__src);
  if (DWORD2(__src))
  {
    v13 = v29;
LABEL_22:
    memcpy(v13, __src, 8 * v12);
  }

  LODWORD(v30) = v11;
  v14 = v29;
LABEL_24:
  v15 = v28;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v24[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v24[1] = Context;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail15MeshAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_8MeshAttrEJNS_8ArrayRefINS2_12MeshAxisAttrEEENSD_IxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v27[1] = v24;
  v35 = v15;
  v36[0] = v14;
  v36[1] = v11;
  v17 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v15, (v15 + 8 * *(&v15 + 1)));
  v18 = llvm::hashing::detail::hash_combine_range_impl<char const>(v14, v14 + 8 * v11);
  v19 = __ROR8__(v18 + 16, 16);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v17 ^ 0xFF51AFD7ED558CCDLL ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ 0xFF51AFD7ED558CCDLL ^ v19)));
  v25[0] = &v35;
  v25[1] = v27;
  v26 = &v35;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, (-348639895 * ((v20 >> 47) ^ v20)) ^ v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
  if (v29 != v31)
  {
    free(v29);
  }

  if (__src != v34)
  {
    free(__src);
  }

  return ParametricStorageTypeImpl;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc15MeshAxisRefAttrES2_NSC_6detail22MeshAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail22MeshAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15MeshAxisRefAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v11;
  v14[0] = v2;
  v14[1] = v3;
  v6 = llvm::hash_value(v2, v3);
  v7 = HIDWORD(v6) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v6 + 8) ^ v7);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSD_6detail24TensorAxisRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSC_6detail24TensorAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v12 = a2;
  if (a4 >= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a4;
  }

  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSD_6detail19ShardingAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v6);
  if (v8)
  {
    v10 = 8 * v8;
    do
    {
      v11 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSC_6detail19ShardingAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::ShardingAttr>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::ShardingAttr>(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    --v2;
    v5 = *v3;
    v3 += 2;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= *(a1 + 24))
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = v2;
  }

  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v14[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJNS1_9AttributeENS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v18[1] = v14;
  v17[0] = v4;
  v17[1] = v3;
  v17[2] = v6;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v3, &v3[2 * v6]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v4 >> 4) ^ (v4 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (v4 >> 4) ^ (v4 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17ReductionKindAttrES2_NSC_6detail24ReductionKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24ReductionKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionKindAttrEJNS2_13ReductionKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 8), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 24) == *(v2 + 16);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::silc::detail::MeshAxisAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

unint64_t mlir::silc::detail::MeshAxisAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 8);
  if (!v2)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v4 = *a2;
  a1[10] += v2 + 1;
  Slow = *a1;
  v6 = v2 + 1 + *a1;
  if (*a1)
  {
    v7 = v6 > a1[1];
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *a1 = v6;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v8 = Slow;
    v9 = v4;
    goto LABEL_22;
  }

  v19 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v2 + 1, v2 + 1, 0);
  a1 = v19;
  if (v2 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v8 = Slow;
  v9 = v4;
  if ((Slow - v4) >= 0x20)
  {
    if (v2 < 0x20)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFFE0;
    v11 = (v4 + 16);
    v12 = (Slow + 16);
    v13 = v2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
    if (v2 == v10)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x18) != 0)
    {
LABEL_15:
      v8 = (Slow + (v2 & 0xFFFFFFFFFFFFFFF8));
      v9 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v15 = (v4 + v10);
      v16 = (Slow + v10);
      v17 = v10 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 += 8;
      }

      while (v17);
      if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = (v4 + v10);
    v8 = (Slow + v10);
  }

  do
  {
LABEL_22:
    v20 = *v9++;
    *v8++ = v20;
  }

  while (v9 != (v4 + v2));
LABEL_23:
  *(Slow + v2) = 0;
LABEL_24:
  a1[10] += 32;
  v21 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + 32;
  if (*a1)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  *(v21 + 8) = Slow;
  *(v21 + 16) = v2;
  *(v21 + 24) = v3;
  return v21;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 8), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 24) == *(v2 + 16);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::silc::detail::MeshAxisAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::AsmParser::parseInteger<unsigned short>(uint64_t a1, _WORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned short,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned short>(unsigned short &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned short,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned short>(unsigned short &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v29, &v27, 0x10u);
  v8 = v30;
  if (v30 < 0x41)
  {
    v9 = v29;
    *a2 = v29;
    v10 = v28;
    v11 = v9;
    v30 = v28;
    if (v28 > 0x40)
    {
LABEL_15:
      llvm::APInt::initSlowCase(&v29, v11, 0);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v29);
  v14 = v29;
  if (v13 <= 0x40)
  {
    *a2 = *v29;
LABEL_14:
    MEMORY[0x1AC55A040]();
    v10 = v28;
    v11 = *a2;
    v30 = v28;
    if (v28 > 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  *a2 = -1;
  if (v14)
  {
    goto LABEL_14;
  }

  v10 = v28;
  v11 = 0xFFFFLL;
  v30 = v28;
  if (v28 > 0x40)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v15 = 0;
  }

  v29 = (v15 & v11);
  if (v29 == v27)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v25 = "integer value too large";
    v26 = 259;
    (*(*a1 + 24))(&v29, a1, v6, &v25);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x1AC55A040](v27, 0x1000C8000313F17);
      LOBYTE(v7) = 0;
    }
  }

  return v7 | (v12 << 8);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8))
  {
    if (v3)
    {
      v4 = *(a2 + 8);
      v5 = *v2;
      v6 = 8 * v3;
      while (*v4 == *v5)
      {
        ++v4;
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = *(a2 + 32);
      if (v7 == *(v2 + 24))
      {
        return memcmp(*(a2 + 24), *(v2 + 16), 8 * v7) == 0;
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::MeshAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::silc::detail::MeshAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  if (!v2)
  {
    Slow = 0;
    goto LABEL_16;
  }

  v5 = *a2;
  v6 = 8 * v2;
  a1[10] += 8 * v2;
  Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + 8 * v2;
  if (*a1)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = Slow;
    v12 = v5;
    do
    {
LABEL_15:
      v20 = *v12++;
      *v11++ = v20;
    }

    while (v12 != (v5 + 8 * v2));
    goto LABEL_16;
  }

  *a1 = v8;
  v10 = v6 - 8;
  if ((v6 - 8) < 0x18)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = Slow;
  v12 = v5;
  if (Slow - v5 < 0x20)
  {
    goto LABEL_15;
  }

  v13 = (v10 >> 3) + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = (Slow + v14);
  v12 = (v5 + v14);
  v15 = (v5 + 16);
  v16 = (Slow + 16);
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *v15;
    *(v16 - 1) = *(v15 - 1);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_16:
  v21 = *a1;
  if (!v4)
  {
    v23 = 0;
    goto LABEL_32;
  }

  v22 = 8 * v4;
  a1[10] += 8 * v4;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8 * v4;
  if (v21)
  {
    v25 = v24 > a1[1];
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v35 = a1;
    v23 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v4, 8 * v4, 3);
    a1 = v35;
    v26 = v22 - 8;
    if ((v22 - 8) >= 0x18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *a1 = v24;
    v26 = v22 - 8;
    if ((v22 - 8) >= 0x18)
    {
LABEL_22:
      v27 = v23;
      v28 = v3;
      if (v23 - v3 >= 0x20)
      {
        v29 = (v26 >> 3) + 1;
        v30 = 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
        v27 = (v23 + v30);
        v28 = (v3 + v30);
        v31 = (v3 + 16);
        v32 = (v23 + 16);
        v33 = v29 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v34 = *v31;
          *(v32 - 1) = *(v31 - 1);
          *v32 = v34;
          v31 += 2;
          v32 += 2;
          v33 -= 4;
        }

        while (v33);
        if (v29 == (v29 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  v27 = v23;
  v28 = v3;
  do
  {
LABEL_30:
    v36 = *v28++;
    *v27++ = v36;
  }

  while (v28 != (v3 + 8 * v4));
LABEL_31:
  v21 = *a1;
LABEL_32:
  a1[10] += 40;
  v37 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v38 = (v37 + 5);
  if (v21)
  {
    v39 = v38 > a1[1];
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v37 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v38;
  }

  *v37 = 0;
  v37[1] = Slow;
  v37[2] = v2;
  v37[3] = v23;
  v37[4] = v4;
  return v37;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4);
  v8 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisAttr>(v2, &v8, 0))
  {
    return 0;
  }

  v4 = v8;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6 + 1, 8);
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12MeshAxisAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12MeshAxisAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::MeshAxisAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  if ((mlir::AsmParser::parseInteger<long long>(v2, &v7) & 1) == 0)
  {
    return 0;
  }

  v3 = v7;
  v4 = a1[1];
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return 1;
}

uint64_t llvm::interleave<mlir::silc::MeshAxisAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::MeshAxisAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::raw_ostream,mlir::silc::MeshAxisAttr const>(mlir::silc::MeshAxisAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(uint64_t result, void *a2, mlir::AsmPrinter *a3, llvm::raw_ostream *a4, uint64_t a5)
{
  if (result != a2)
  {
    v21[9] = v5;
    v21[10] = v6;
    v11 = result;
    v21[0] = *result;
    result = (*(*a3 + 56))(a3);
    if ((result & 1) == 0)
    {
      v12 = (*(*a3 + 16))(a3);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::silc::MeshAxisAttr::print(v21, a3);
      result = (*(*v12 + 80))(v12);
      if (v13 == result + v12[4] - v12[2])
      {
        result = (*(*a3 + 40))(a3, v21[0]);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v15 = *a5;
      v16 = *(a5 + 8);
      v17 = *(a4 + 4);
      if (v16 <= *(a4 + 3) - v17)
      {
        if (v16)
        {
          v18 = *(a5 + 8);
          memcpy(v17, v15, v16);
          *(a4 + 4) += v18;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v15, v16);
      }

      v21[0] = *i;
      result = (*(*a3 + 56))(a3);
      if ((result & 1) == 0)
      {
        v19 = (*(*a3 + 16))(a3);
        v20 = (*(*v19 + 80))(v19) + v19[4] - v19[2];
        mlir::silc::MeshAxisAttr::print(v21, a3);
        result = (*(*v19 + 80))(v19);
        if (v20 == result + v19[4] - v19[2])
        {
          result = (*(*a3 + 40))(a3, v21[0]);
        }
      }
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*(a2 + 8), **a1, v2) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = (*a1)[1];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v3 = **a1;
  a2[10] += v2 + 1;
  v4 = *a2;
  v5 = v2 + 1 + *a2;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a2 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v7 = v4;
    v8 = v3;
    goto LABEL_22;
  }

  v18 = a1;
  v19 = a2;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, v2 + 1, v2 + 1, 0);
  a2 = v19;
  v4 = Slow;
  a1 = v18;
  if (v2 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if (v4 - v3 >= 0x20)
  {
    if (v2 < 0x20)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFFE0;
    v10 = (v3 + 16);
    v11 = (v4 + 16);
    v12 = v2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 32;
    }

    while (v12);
    if (v2 == v9)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x18) != 0)
    {
LABEL_15:
      v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v14 = (v3 + v9);
      v15 = (v4 + v9);
      v16 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        v16 += 8;
      }

      while (v16);
      if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v8 = (v3 + v9);
    v7 = (v4 + v9);
  }

  do
  {
LABEL_22:
    v21 = *v8++;
    *v7++ = v21;
  }

  while (v8 != (v3 + v2));
LABEL_23:
  *(v4 + v2) = 0;
LABEL_24:
  a2[10] += 24;
  v22 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v22 + 3);
  if (*a2)
  {
    v24 = v23 > a2[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = a1;
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v22 = 0;
    v22[1] = v4;
    v22[2] = v2;
    v25 = v28[1];
    v26 = *v25;
    if (!*v25)
    {
      return v22;
    }

    goto LABEL_29;
  }

  *a2 = v23;
  *v22 = 0;
  v22[1] = v4;
  v22[2] = v2;
  v25 = a1[1];
  v26 = *v25;
  if (*v25)
  {
LABEL_29:
    v26(v25[1], v22);
  }

  return v22;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::TensorAxisRefAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::silc::detail::TensorAxisRefAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    v4 = 8 * v2;
    a1[10] += 8 * v2;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = Slow + 8 * v2;
    if (*a1)
    {
      v7 = v6 > a1[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v17;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v6;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
LABEL_7:
        v9 = Slow;
        v10 = v3;
        if (Slow - v3 >= 0x20)
        {
          v11 = (v8 >> 3) + 1;
          v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
          v9 = (Slow + v12);
          v10 = (v3 + v12);
          v13 = (v3 + 16);
          v14 = (Slow + 16);
          v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 4;
          }

          while (v15);
          if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v9 = Slow;
    v10 = v3;
    do
    {
LABEL_15:
      v18 = *v10++;
      *v9++ = v18;
    }

    while (v10 != (v3 + 8 * v2));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 24;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = (v19 + 3);
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = Slow;
  v19[2] = v2;
  return v19;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4);
  v8 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisRefAttr>(v2, &v8, 0))
  {
    return 0;
  }

  v4 = v8;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6 + 1, 8);
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc15MeshAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc15MeshAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::MeshAxisRefAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    mlir::Attribute::getContext(&v6);
    (*(*a1 + 80))(a1, *(v6 + 8), *(v6 + 16));
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v6);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::SymbolRefAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::SymbolRefAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4);
  v8 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::TensorAxisRefAttr>(v2, &v8, 0))
  {
    return 0;
  }

  v4 = v8;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6 + 1, 8);
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::TensorAxisRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17TensorAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17TensorAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::TensorAxisRefAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::interleave<mlir::silc::TensorAxisRefAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::raw_ostream,mlir::silc::TensorAxisRefAttr const>(mlir::silc::TensorAxisRefAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(uint64_t result, void *a2, mlir::AsmPrinter *a3, llvm::raw_ostream *a4, uint64_t a5)
{
  if (result != a2)
  {
    v21[9] = v5;
    v21[10] = v6;
    v11 = result;
    v21[0] = *result;
    result = (*(*a3 + 56))(a3);
    if ((result & 1) == 0)
    {
      v12 = (*(*a3 + 16))(a3);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::silc::TensorAxisRefAttr::print(v21, a3);
      result = (*(*v12 + 80))(v12);
      if (v13 == result + v12[4] - v12[2])
      {
        result = (*(*a3 + 40))(a3, v21[0]);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v15 = *a5;
      v16 = *(a5 + 8);
      v17 = *(a4 + 4);
      if (v16 <= *(a4 + 3) - v17)
      {
        if (v16)
        {
          v18 = *(a5 + 8);
          memcpy(v17, v15, v16);
          *(a4 + 4) += v18;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v15, v16);
      }

      v21[0] = *i;
      result = (*(*a3 + 56))(a3);
      if ((result & 1) == 0)
      {
        v19 = (*(*a3 + 16))(a3);
        v20 = (*(*v19 + 80))(v19) + v19[4] - v19[2];
        mlir::silc::TensorAxisRefAttr::print(v21, a3);
        result = (*(*v19 + 80))(v19);
        if (v20 == result + v19[4] - v19[2])
        {
          result = (*(*a3 + 40))(a3, v21[0]);
        }
      }
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
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

uint64_t mlir::silc::SilcMeshOp::verify(mlir::SymbolTable **this)
{
  v37 = *MEMORY[0x1E69E9840];
  if (mlir::SymbolTable::lookupNearestSymbolFrom(*this, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9)))
  {
    return 1;
  }

  v20 = 257;
  mlir::OpState::emitError(this, v19, &v25);
  if (v25)
  {
    LODWORD(v21) = 3;
    v22 = "Mesh not in symbol table: @";
    v23 = 27;
    v3 = &v21;
    v4 = v27;
    if (v28 >= v29)
    {
      if (v27 <= &v21 && v27 + 24 * v28 > &v21)
      {
        v18 = &v21 - v27;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 24);
        v4 = v27;
        v3 = (v27 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 24);
        v3 = &v21;
        v4 = v27;
      }
    }

    v5 = &v4[24 * v28];
    v6 = *v3;
    *(v5 + 2) = v3[2];
    *v5 = v6;
    ++v28;
  }

  v21 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  AttrData = mlir::OpaqueAttr::getAttrData(&v21);
  if (v25)
  {
    v24 = 261;
    v21 = AttrData;
    v22 = v8;
    mlir::Diagnostic::operator<<(&v26, &v21);
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v34;
      v11 = __p;
      if (v34 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v34 = v9;
      operator delete(v11);
    }

    v12 = v31;
    if (v31)
    {
      v13 = v32;
      v14 = v31;
      if (v32 != v31)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v31;
      }

      v32 = v12;
      operator delete(v14);
    }

    if (v27 != v30)
    {
      free(v27);
    }
  }

  return v2;
}

uint64_t mlir::silc::SilcSPMDCallOp::getCallableForCallee(mlir::silc::SilcSPMDCallOp *this)
{
  v1 = *this;
  if (!*(*this + 47) || (result = mlir::Operation::getInherentAttr(*this, "callee", 6), (v3 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(v1 + 56, "callee", 6uLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return result & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::silc::SilcSPMDCallOp::setCalleeFromCallable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = 261;
  v6[0] = "callee";
  v6[1] = 6;
  v5 = mlir::StringAttr::get(Context, v6);
  mlir::Operation::setAttr(v3, v5, a2 & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::silc::SilcAllSliceOp::isConverted(mlir::silc::SilcAllSliceOp *this)
{
  if (*(*this + 36))
  {
    v1 = *this - 16;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v1, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v5);
  return v3 > 3;
}

uint64_t mlir::silc::SilcAllGatherOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "sharding", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 53;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::silc::SilcAllGatherOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "sharding", 8uLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::silc::SilcAllGatherOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x676E696472616873)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::silc::SilcAllGatherOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x676E696472616873)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::silc::SilcAllGatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "sharding", 8uLL, *a2);
  }
}

BOOL mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: Describes the sharding of a tensor";
        v29 = 66;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::silc::SilcAllGatherOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::silc::ShardingAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::silc::ShardingAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::ShardingAttr]";
  v38 = 74;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

void mlir::silc::SilcAllGatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a4;
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::silc::SilcAllGatherOp::verifyInvariantsImpl(uint64_t **this)
{
  v103 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v93 = v2;
    if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v3, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v93) || !mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      return 0;
    }

    v4 = *(*this + 9) ? *this - 2 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    if (!mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      return 0;
    }

    v6 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v6)
    {
      goto LABEL_42;
    }

    v7 = *v6;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v83 = v7;
      mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v83 + 8);
      v10 = *(v83 + 16);
      if (!v10)
      {
        goto LABEL_42;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v26 = v11[1];
LABEL_43:
      v93 = v6;
      v94 = v26;
      mlir::ShapedType::getShape(&v93);
      v28 = v27;
      if (*(*this + 9))
      {
        v29 = *this - 2;
      }

      else
      {
        v29 = 0;
      }

      v30 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        v31 = *v30;
        {
          v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v33 = *(v31 + 8);
          v34 = *(v31 + 16);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v82 = v31;
          v84 = v30;
          mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
          v30 = v84;
          v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v33 = *(v82 + 8);
          v34 = *(v82 + 16);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        v35 = v33;
        v36 = v34;
        do
        {
          v37 = v36 >> 1;
          v38 = &v35[2 * (v36 >> 1)];
          v40 = *v38;
          v39 = v38 + 2;
          v36 += ~(v36 >> 1);
          if (v40 < v32)
          {
            v35 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        while (v36);
        if (v35 != &v33[2 * v34] && *v35 == v32)
        {
          v54 = v35[1];
          v90 = v30;
          v91 = v54;
          mlir::ShapedType::getShape(&v90);
          if (v28 != v55)
          {
            goto LABEL_106;
          }

          goto LABEL_61;
        }
      }

LABEL_60:
      v90 = v30;
      v91 = 0;
      mlir::ShapedType::getShape(&v90);
      if (v28 != v41)
      {
        goto LABEL_106;
      }

LABEL_61:
      if (*(*this + 9))
      {
        v42 = *this - 2;
      }

      else
      {
        v42 = 0;
      }

      v43 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v43)
      {
        goto LABEL_79;
      }

      v44 = *v43;
      {
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        if (v47)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v85 = v44;
        mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v85 + 8);
        v47 = *(v85 + 16);
        if (v47)
        {
LABEL_67:
          v48 = v46;
          v49 = v47;
          do
          {
            v50 = v49 >> 1;
            v51 = &v48[2 * (v49 >> 1)];
            v53 = *v51;
            v52 = v51 + 2;
            v49 += ~(v49 >> 1);
            if (v53 < v45)
            {
              v48 = v52;
            }

            else
            {
              v49 = v50;
            }
          }

          while (v49);
LABEL_77:
          if (v48 != &v46[2 * v47] && *v48 == v45)
          {
            v56 = v48[1];
LABEL_80:
            v89[0] = v43;
            v89[1] = v56;
            mlir::ShapedType::getShape(v89);
            v58 = v57;
            v59 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v59)
            {
              goto LABEL_94;
            }

            v60 = *v59;
            {
              v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v62 = *(v60 + 8);
              v63 = *(v60 + 16);
              if (v63)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v86 = v59;
              v70 = v60;
              mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
              v59 = v86;
              v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v62 = *(v70 + 8);
              v63 = *(v70 + 16);
              if (v63)
              {
LABEL_83:
                v64 = v62;
                v65 = v63;
                do
                {
                  v66 = v65 >> 1;
                  v67 = &v64[2 * (v65 >> 1)];
                  v69 = *v67;
                  v68 = v67 + 2;
                  v65 += ~(v65 >> 1);
                  if (v69 < v61)
                  {
                    v64 = v68;
                  }

                  else
                  {
                    v65 = v66;
                  }
                }

                while (v65);
LABEL_92:
                if (v64 != &v62[2 * v63] && *v64 == v61)
                {
                  v79 = v64[1];
                  v87 = v59;
                  v88 = v79;
                  mlir::ShapedType::getShape(&v87);
                  if (v58 == v80)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_106;
                }

LABEL_94:
                v87 = v59;
                v88 = 0;
                mlir::ShapedType::getShape(&v87);
                if (v58 == v71)
                {
LABEL_95:
                  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*((*this)[9] + 24));
                  if (*(*this + 9))
                  {
                    v73 = *this - 2;
                  }

                  else
                  {
                    v73 = 0;
                  }

                  v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, 0);
                  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v74))
                  {
                    v75 = *(*this + 9) ? *this - 2 : 0;
                    v76 = mlir::detail::OpResultImpl::getNextResultAtOffset(v75, 0);
                    v77 = mlir::getElementTypeOrSelf(v76);
                    if (v77 == mlir::getElementTypeOrSelf(*((*this)[9] + 24)))
                    {
                      return 1;
                    }
                  }

                  v78 = "failed to verify that all of {input, result} have same element type";
                  goto LABEL_107;
                }

LABEL_106:
                v78 = "failed to verify that all of {input, result} have same rank";
LABEL_107:
                v90 = v78;
                v92 = 259;
                mlir::OpState::emitOpError(this, &v90, &v93);
                v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
                if (v93)
                {
                  mlir::InFlightDiagnostic::report(&v93);
                }

                if (v102 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v94);
                }

                return v17;
              }
            }

            v63 = 0;
            v64 = v62;
            goto LABEL_92;
          }

LABEL_79:
          v56 = 0;
          goto LABEL_80;
        }
      }

      v47 = 0;
      v48 = v46;
      goto LABEL_77;
    }

LABEL_42:
    v26 = 0;
    goto LABEL_43;
  }

  v90 = "requires attribute 'sharding'";
  v92 = 259;
  mlir::OpState::emitOpError(this, &v90, &v93);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
  if (v93)
  {
    mlir::InFlightDiagnostic::report(&v93);
  }

  if (v102 == 1)
  {
    if (v101 != &v102)
    {
      free(v101);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v100;
      v20 = __p;
      if (v100 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v100 = v18;
      operator delete(v20);
    }

    v21 = v97;
    if (v97)
    {
      v22 = v98;
      v23 = v97;
      if (v98 != v97)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v97;
      }

      v98 = v21;
      operator delete(v23);
    }

    if (v95 != &v96)
    {
      free(v95);
    }
  }

  return v17;
}

BOOL mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(uint64_t *ShapedType, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v10 + 8);
      v15 = *(v10 + 16);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = v10;
      mlir::silc::__mlir_ods_local_type_constraint_SilcOps1();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v22 + 8);
      v15 = *(v22 + 16);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    v16 = v14;
    v17 = v15;
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[2 * (v17 >> 1)];
      v21 = *v19;
      v20 = v19 + 2;
      v17 += ~(v17 >> 1);
      if (v21 < v13)
      {
        v16 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    while (v17);
    if (v16 != &v14[2 * v15] && *v16 == v13)
    {
      v24 = v16[1];
      v131 = a2;
      v132 = v24;
      v25 = mlir::ElementsAttr::getShapedType(&v131);
      v10 = *a2;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_21:
      {
        v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v27 = *(v10 + 8);
        v28 = *(v10 + 16);
        if (!v28)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v117 = v10;
        mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
        v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v27 = *(v117 + 8);
        v28 = *(v117 + 16);
        if (!v28)
        {
          goto LABEL_33;
        }
      }

      v29 = v27;
      v30 = v28;
      do
      {
        v31 = v30 >> 1;
        v32 = &v29[2 * (v30 >> 1)];
        v34 = *v32;
        v33 = v32 + 2;
        v30 += ~(v30 >> 1);
        if (v34 < v26)
        {
          v29 = v33;
        }

        else
        {
          v30 = v31;
        }
      }

      while (v30);
      if (v29 != &v27[2 * v28] && *v29 == v26)
      {
        v45 = v29[1];
        v119 = a2;
        v120 = v45;
        mlir::ShapedType::getShape(&v119);
        v10 = *a2;
        if (v46 < 1)
        {
          goto LABEL_44;
        }

LABEL_34:
        {
          v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v37 = *(v10 + 8);
          v38 = *(v10 + 16);
          if (!v38)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v110 = v10;
          mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
          v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v37 = *(v110 + 8);
          v38 = *(v110 + 16);
          if (!v38)
          {
            goto LABEL_133;
          }
        }

        v39 = v37;
        v40 = v38;
        do
        {
          v41 = v40 >> 1;
          v42 = &v39[2 * (v40 >> 1)];
          v44 = *v42;
          v43 = v42 + 2;
          v40 += ~(v40 >> 1);
          if (v44 < v36)
          {
            v39 = v43;
          }

          else
          {
            v40 = v41;
          }
        }

        while (v40);
        if (v39 != &v37[2 * v38] && *v39 == v36)
        {
          v111 = v39[1];
          goto LABEL_135;
        }

LABEL_133:
        v111 = 0;
LABEL_135:
        v128 = a2;
        v129 = v111;
        mlir::ElementsAttr::isSplat(&v128);
        return 1;
      }

LABEL_33:
      v119 = a2;
      v120 = 0;
      mlir::ShapedType::getShape(&v119);
      v10 = *a2;
      if (v35 < 1)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

LABEL_18:
    v131 = a2;
    v132 = 0;
    v23 = mlir::ElementsAttr::getShapedType(&v131);
    v10 = *a2;
    if (!v23)
    {
      goto LABEL_44;
    }

    goto LABEL_21;
  }

LABEL_44:
  if (*(v10 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v75 = *(v10 + 8);
      v76 = *(v10 + 16);
      if (!v76)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v83 = v10;
      mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
      v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v75 = *(v83 + 8);
      v76 = *(v83 + 16);
      if (!v76)
      {
        goto LABEL_98;
      }
    }

    v77 = v75;
    v78 = v76;
    do
    {
      v79 = v78 >> 1;
      v80 = &v77[2 * (v78 >> 1)];
      v82 = *v80;
      v81 = v80 + 2;
      v78 += ~(v78 >> 1);
      if (v82 < v74)
      {
        v77 = v81;
      }

      else
      {
        v78 = v79;
      }
    }

    while (v78);
    if (v77 != &v75[2 * v76] && *v77 == v74)
    {
      v94 = v77[1];
      v126 = a2;
      v127 = v94;
      mlir::ElementsAttr::isSplat(&v126);
      v84 = *a2;
      {
LABEL_99:
        v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v86 = *(v84 + 8);
        v87 = *(v84 + 16);
        if (!v87)
        {
          goto LABEL_111;
        }

LABEL_100:
        v88 = v86;
        v89 = v87;
        do
        {
          v90 = v89 >> 1;
          v91 = &v88[2 * (v89 >> 1)];
          v93 = *v91;
          v92 = v91 + 2;
          v89 += ~(v89 >> 1);
          if (v93 < v85)
          {
            v88 = v92;
          }

          else
          {
            v89 = v90;
          }
        }

        while (v89);
        if (v88 != &v86[2 * v87] && *v88 == v85)
        {
          v95 = v88[1];
          v124 = a2;
          v125 = v95;
          if (!mlir::ElementsAttr::getShapedType(&v124))
          {
            goto LABEL_45;
          }

          goto LABEL_114;
        }

LABEL_111:
        v124 = a2;
        v125 = 0;
        if (!mlir::ElementsAttr::getShapedType(&v124))
        {
          goto LABEL_45;
        }

LABEL_114:
        v96 = *a2;
        {
          v97 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v98 = *(v96 + 8);
          v99 = *(v96 + 16);
          if (!v99)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v106 = v96;
          mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
          v97 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v98 = *(v106 + 8);
          v99 = *(v106 + 16);
          if (!v99)
          {
            goto LABEL_126;
          }
        }

        v100 = v98;
        v101 = v99;
        do
        {
          v102 = v101 >> 1;
          v103 = &v100[2 * (v101 >> 1)];
          v105 = *v103;
          v104 = v103 + 2;
          v101 += ~(v101 >> 1);
          if (v105 < v97)
          {
            v100 = v104;
          }

          else
          {
            v101 = v102;
          }
        }

        while (v101);
        if (v100 != &v98[2 * v99] && *v100 == v97)
        {
          v108 = v100[1];
          v122 = a2;
          v123 = v108;
          mlir::ShapedType::getShape(&v122);
          if (v109 < 1)
          {
            goto LABEL_45;
          }

          return 1;
        }

LABEL_126:
        v122 = a2;
        v123 = 0;
        mlir::ShapedType::getShape(&v122);
        if (v107 < 1)
        {
          goto LABEL_45;
        }

        return 1;
      }

LABEL_108:
      v118 = v84;
      mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
      v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v86 = *(v118 + 8);
      v87 = *(v118 + 16);
      if (!v87)
      {
        goto LABEL_111;
      }

      goto LABEL_100;
    }

LABEL_98:
    v126 = a2;
    v127 = 0;
    mlir::ElementsAttr::isSplat(&v126);
    v84 = *a2;
    {
      goto LABEL_99;
    }

    goto LABEL_108;
  }

LABEL_45:
  v121 = 261;
  v119 = a3;
  v120 = a4;
  mlir::Operation::emitOpError(ShapedType, &v119, &v131);
  if (v131)
  {
    LODWORD(v128) = 3;
    v129 = " #";
    v130 = 2;
    v47 = &v128;
    v48 = v133;
    if (v134 >= v135)
    {
      if (v133 <= &v128 && v133 + 24 * v134 > &v128)
      {
        v113 = &v128 - v133;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
        v48 = v133;
        v47 = (v133 + v113);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
        v47 = &v128;
        v48 = v133;
      }
    }

    v49 = &v48[24 * v134];
    v50 = *v47;
    *(v49 + 2) = v47[2];
    *v49 = v50;
    v51 = ++v134;
    if (v131)
    {
      LODWORD(v128) = 5;
      v129 = a5;
      v52 = &v128;
      v53 = v133;
      if (v51 >= v135)
      {
        if (v133 <= &v128 && v133 + 24 * v51 > &v128)
        {
          v114 = &v128 - v133;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v51 + 1, 24);
          v53 = v133;
          v52 = (v133 + v114);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v51 + 1, 24);
          v52 = &v128;
          v53 = v133;
        }
      }

      v54 = &v53[24 * v134];
      v55 = *v52;
      *(v54 + 2) = v52[2];
      *v54 = v55;
      v56 = ++v134;
      if (v131)
      {
        LODWORD(v128) = 3;
        v129 = " must be non-0-ranked.tensor of any type values or non-0-ranked.memref of any type values, but got ";
        v130 = 99;
        v57 = &v128;
        v58 = v133;
        if (v56 >= v135)
        {
          if (v133 <= &v128 && v133 + 24 * v56 > &v128)
          {
            v115 = &v128 - v133;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v56 + 1, 24);
            v58 = v133;
            v57 = (v133 + v115);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v56 + 1, 24);
            v57 = &v128;
            v58 = v133;
          }
        }

        v59 = &v58[24 * v134];
        v60 = *v57;
        *(v59 + 2) = v57[2];
        *v59 = v60;
        ++v134;
        if (v131)
        {
          v61 = &v128;
          mlir::DiagnosticArgument::DiagnosticArgument(&v128, a2);
          v62 = v133;
          if (v134 >= v135)
          {
            if (v133 <= &v128 && v133 + 24 * v134 > &v128)
            {
              v116 = &v128 - v133;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
              v62 = v133;
              v61 = (v133 + v116);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
              v61 = &v128;
              v62 = v133;
            }
          }

          v63 = &v62[24 * v134];
          v64 = *v61;
          *(v63 + 2) = v61[2];
          *v63 = v64;
          ++v134;
        }
      }
    }
  }

  v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v131);
  if (v131)
  {
    mlir::InFlightDiagnostic::report(&v131);
  }

  if (v142 == 1)
  {
    if (v141 != &v142)
    {
      free(v141);
    }

    v66 = __p;
    if (__p)
    {
      v67 = v140;
      v68 = __p;
      if (v140 != __p)
      {
        do
        {
          v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
        }

        while (v67 != v66);
        v68 = __p;
      }

      v140 = v66;
      operator delete(v68);
    }

    v69 = v137;
    if (v137)
    {
      v70 = v138;
      v71 = v137;
      if (v138 != v137)
      {
        do
        {
          v73 = *--v70;
          v72 = v73;
          *v70 = 0;
          if (v73)
          {
            MEMORY[0x1AC55A040](v72, 0x1000C8077774924);
          }
        }

        while (v70 != v69);
        v71 = v137;
      }

      v138 = v69;
      operator delete(v71);
    }

    if (v133 != v136)
    {
      free(v133);
    }
  }

  return v65;
}

BOOL mlir::silc::SilcAllGatherOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14 = 0;
  v15 = 0;
  Inputs = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v20 = 257;
  if (((*(*a1 + 400))(a1, "on", 2, v19) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ShardingAttr>(a1, &v15, 0))
  {
    return 0;
  }

  if (v15)
  {
    v4 = *(a2 + 256);
    if (!v4)
    {
      operator new();
    }

    *v4 = v15;
  }

  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v19[0] = a1;
  v19[1] = &v12;
  v19[2] = a2;
  v6 = mlir::NamedAttrList::get(a2 + 112, **(v5 + 96));
  if (v6)
  {
    if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v6, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllGatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19))
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, v19))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(v19);
  v14 = v7;
  Results = mlir::FunctionType::getResults(v19);
  mlir::OperationState::addTypes(a2, Results, v9);
  v10 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, &Inputs, v10, a2 + 16);
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ShardingAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12ShardingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::silc::SilcAllReduceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v53 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      v54 = 3;
      v55 = "expected DictionaryAttr to set properties";
      v56 = 41;
      v27 = &v54;
      v28 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v54 && v59 + 24 * v60 > &v54)
        {
          v48 = &v54 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v28 = v59;
          v27 = (v59 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v27 = &v54;
          v28 = v59;
        }
      }

      v29 = &v28[24 * v60];
      v30 = *v27;
      *(v29 + 2) = *(v27 + 2);
      *v29 = v30;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v66;
      v33 = __p;
      if (v66 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v66 = v31;
      operator delete(v33);
    }

    v22 = v63;
    if (!v63)
    {
      goto LABEL_61;
    }

    v34 = v64;
    v24 = v63;
    if (v64 == v63)
    {
LABEL_60:
      v64 = v22;
      operator delete(v24);
LABEL_61:
      if (v59 != v62)
      {
        free(v59);
      }

      return 0;
    }

    do
    {
      v36 = *--v34;
      v35 = v36;
      *v34 = 0;
      if (v36)
      {
        MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
      }
    }

    while (v34 != v22);
LABEL_59:
    v24 = v63;
    goto LABEL_60;
  }

  v8 = mlir::DictionaryAttr::get(&v53, "mesh", 4uLL);
  if (v8)
  {
    *a1 = v8;
  }

  v9 = mlir::DictionaryAttr::get(&v53, "mesh_axes", 9uLL);
  if (v9)
  {
    if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
    {
      v10 = v9;
      a3(&v57, a4);
      if (v57)
      {
        v54 = 3;
        v56 = 54;
        v11 = &v54;
        v12 = v59;
        if (v60 >= v61)
        {
          if (v59 <= &v54 && v59 + 24 * v60 > &v54)
          {
            v49 = &v54 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v12 = v59;
            v11 = (v59 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v11 = &v54;
            v12 = v59;
          }
        }

        v13 = &v12[24 * v60];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v60;
        if (v57)
        {
          v15 = &v54;
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v10);
          v16 = v59;
          if (v60 >= v61)
          {
            if (v59 <= &v54 && v59 + 24 * v60 > &v54)
            {
              v50 = &v54 - v59;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
              v16 = v59;
              v15 = (v59 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
              v15 = &v54;
              v16 = v59;
            }
          }

          v17 = &v16[24 * v60];
          v18 = *v15;
          *(v17 + 2) = *(v15 + 2);
          *v17 = v18;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v66;
        v21 = __p;
        if (v66 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v66 = v19;
        operator delete(v21);
      }

      v22 = v63;
      if (!v63)
      {
        goto LABEL_61;
      }

      v23 = v64;
      v24 = v63;
      if (v64 == v63)
      {
        goto LABEL_60;
      }

      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
        }
      }

      while (v23 != v22);
      goto LABEL_59;
    }

    a1[1] = v9;
  }

  v37 = mlir::DictionaryAttr::get(&v53, "reduce_op", 9uLL);
  if (!v37)
  {
    return 1;
  }

  if (*(*v37 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    a1[2] = v37;
    return 1;
  }

  v38 = v37;
  a3(&v57, a4);
  if (v57)
  {
    v54 = 3;
    v56 = 54;
    v39 = &v54;
    v40 = v59;
    if (v60 >= v61)
    {
      if (v59 <= &v54 && v59 + 24 * v60 > &v54)
      {
        v51 = &v54 - v59;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
        v40 = v59;
        v39 = (v59 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
        v39 = &v54;
        v40 = v59;
      }
    }

    v41 = &v40[24 * v60];
    v42 = *v39;
    *(v41 + 2) = *(v39 + 2);
    *v41 = v42;
    ++v60;
    if (v57)
    {
      v43 = &v54;
      mlir::DiagnosticArgument::DiagnosticArgument(&v54, v38);
      v44 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v54 && v59 + 24 * v60 > &v54)
        {
          v52 = &v54 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v44 = v59;
          v43 = (v59 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v43 = &v54;
          v44 = v59;
        }
      }

      v45 = &v44[24 * v60];
      v46 = *v43;
      *(v45 + 2) = *(v43 + 2);
      *v45 = v46;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v58);
  }

  return 0;
}

uint64_t mlir::silc::SilcAllReduceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "mesh", 4uLL, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "mesh_axes", 9uLL, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "reduce_op", 9uLL, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

unint64_t mlir::silc::SilcAllReduceOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 9)
  {
    if (a4 == 4 && *a3 == 1752393069)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 == 0x6578615F6873656DLL && *(a3 + 8) == 115)
  {
    return a2[1];
  }

  if (*a3 != 0x6F5F656375646572 || *(a3 + 8) != 112)
  {
    return 0;
  }

  return a2[2];
}

void *mlir::silc::SilcAllReduceOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9)
  {
    if (*a2 == 0x6578615F6873656DLL && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        result[1] = v7;
      }

      else
      {
        result[1] = 0;
      }
    }

    else if (*a2 == 0x6F5F656375646572 && *(a2 + 8) == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[2] = v6;
      }

      else
      {
        result[2] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752393069)
  {
    *result = a4;
  }

  return result;
}

void mlir::silc::SilcAllReduceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "mesh", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "mesh_axes", 9uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "reduce_op", 9uLL, v6);
  }
}

BOOL mlir::silc::SilcAllReduceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v8, "mesh", 4, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(v9, "mesh_axes", 9, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(v10, "reduce_op", 9, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v5 = *(*a1 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  v10 = v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a1 : 0;
  v36 = v10;
  if (v10)
  {
    mlir::OpaqueAttr::getAttrData(&v36);
    if (!v11)
    {
      return 1;
    }
  }

  a4(&v36, a5);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "attribute '";
    v34 = 11;
    v12 = &v32;
    v13 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v30 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v13 = v38;
        v12 = (v38 + v30);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v12 = &v32;
        v13 = v38;
      }
    }

    v14 = &v13[24 * v39];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    ++v39;
    if (v36)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = "' failed to satisfy constraint: mesh attr or flat mesh symbol reference attr";
        v34 = 76;
        v16 = &v32;
        v17 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v31 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v17 = v38;
            v16 = (v38 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v16 = &v32;
            v17 = v38;
          }
        }

        v18 = &v17[24 * v39];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v39;
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v45;
      v23 = __p;
      if (v45 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v45 = v21;
      operator delete(v23);
    }

    v24 = v42;
    if (v42)
    {
      v25 = v43;
      v26 = v42;
      if (v43 != v42)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v42;
      }

      v43 = v24;
      operator delete(v26);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v20;
}

BOOL mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: Reference to the sharding in a tensor axis";
        v29 = 74;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: Reduction operation along one or more mesh axis";
        v29 = 79;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::silc::SilcAllReduceOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return ((*(*a1 + 48))(a1, v3) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::silc::TensorAxisRefAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readAttribute<mlir::silc::ReductionKindAttr>(a1, (v3 + 16));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::silc::TensorAxisRefAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::TensorAxisRefAttr]";
  v38 = 79;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::silc::ReductionKindAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::ReductionKindAttr]";
  v38 = 79;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

uint64_t mlir::silc::SilcAllReduceOp::verifyInvariantsImpl(uint64_t **this)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v3 + 16);
      if (v6)
      {
        v59[0] = *this;
        if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v2, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
        {
          return 0;
        }

        v59[0] = *this;
        if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(v5, "mesh_axes", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
        {
          return 0;
        }

        v59[0] = *this;
        if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(v6, "reduce_op", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) || !mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
        {
          return 0;
        }

        v8 = *(*this + 9) ? (*this - 2) : 0;
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
        if (!mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
        {
          return 0;
        }

        v56 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v59[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v56);
        v59[1] = v10;
        mlir::ShapedType::getShape(v59);
        v12 = v11;
        if (*(*this + 9))
        {
          v13 = (*this - 2);
        }

        else
        {
          v13 = 0;
        }

        v55 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        v57[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v55);
        v57[1] = v14;
        mlir::ShapedType::getShape(v57);
        if (v12 == v15 && (*(*this + 9) ? (v16 = (*this - 2)) : (v16 = 0), v53 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8), v54[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v53), v54[1] = v17, mlir::ShapedType::getShape(v54), v19 = v18, v51 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v52[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v51), v52[1] = v20, mlir::ShapedType::getShape(v52), v19 == v21))
        {
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(*((*this)[9] + 24));
          if (*(*this + 9))
          {
            v23 = (*this - 2);
          }

          else
          {
            v23 = 0;
          }

          v24 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
          if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v24))
          {
            v25 = *(*this + 9) ? (*this - 2) : 0;
            v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
            v27 = mlir::getElementTypeOrSelf(v26);
            if (v27 == mlir::getElementTypeOrSelf(*((*this)[9] + 24)))
            {
              return 1;
            }
          }

          v50 = "failed to verify that all of {input, result} have same element type";
        }

        else
        {
          v50 = "failed to verify that all of {input, result} have same rank";
        }

        v57[0] = v50;
        v58 = 259;
        mlir::OpState::emitOpError(this, v57, v59);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
        return v28;
      }

      v57[0] = "requires attribute 'reduce_op'";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v65;
          v45 = __p;
          if (v65 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v65 = v43;
          operator delete(v45);
        }

        v32 = v62;
        if (!v62)
        {
          goto LABEL_80;
        }

        v46 = v63;
        v34 = v62;
        if (v63 == v62)
        {
LABEL_79:
          v63 = v32;
          operator delete(v34);
LABEL_80:
          if (v60 != &v61)
          {
            free(v60);
          }

          return v28;
        }

        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v32);
LABEL_78:
        v34 = v62;
        goto LABEL_79;
      }
    }

    else
    {
      v57[0] = "requires attribute 'mesh_axes'";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v65;
          v39 = __p;
          if (v65 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v65 = v37;
          operator delete(v39);
        }

        v32 = v62;
        if (!v62)
        {
          goto LABEL_80;
        }

        v40 = v63;
        v34 = v62;
        if (v63 == v62)
        {
          goto LABEL_79;
        }

        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v32);
        goto LABEL_78;
      }
    }
  }

  else
  {
    v57[0] = "requires attribute 'mesh'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v59);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v65;
        v31 = __p;
        if (v65 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v65 = v29;
        operator delete(v31);
      }

      v32 = v62;
      if (!v62)
      {
        goto LABEL_80;
      }

      v33 = v63;
      v34 = v62;
      if (v63 == v62)
      {
        goto LABEL_79;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
      goto LABEL_78;
    }
  }

  return v28;
}

BOOL mlir::silc::SilcAllReduceOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  Inputs = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "on", 2, v22) & 1) == 0 || ((*(*a1 + 152))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v18, 0) & 1) == 0)
  {
    return 0;
  }

  if (v18)
  {
    v4 = *(a2 + 32);
    if (!v4)
    {
      operator new();
    }

    *v4 = v18;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "along", 5, v22) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::TensorAxisRefAttr>(a1, &v17, 0))
  {
    return 0;
  }

  if (v17)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(a2);
    *(v5 + 8) = v17;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "op", 2, v22) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ReductionKindAttr>(a1, &v16, 0))
  {
    return 0;
  }

  if (v16)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(a2);
    *(v6 + 16) = v16;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 1);
  v22[0] = a1;
  v22[1] = &v13;
  v22[2] = a2;
  if (!mlir::silc::SilcAllReduceOp::verifyInherentAttrs(v7, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllReduceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v22))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, v22))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(v22);
  v15 = v8;
  Results = mlir::FunctionType::getResults(v22);
  mlir::OperationState::addTypes(a2, Results, v10);
  v11 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, &Inputs, v11, (a2 + 4));
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ReductionKindAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17ReductionKindAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL mlir::silc::SilcAllSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::silc::ShardingAttr>(a1, v2);
}

void mlir::silc::SilcAllSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a4;
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

BOOL mlir::silc::SilcAllSliceOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14 = 0;
  v15 = 0;
  Inputs = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v20 = 257;
  if (((*(*a1 + 400))(a1, "on", 2, v19) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ShardingAttr>(a1, &v15, 0))
  {
    return 0;
  }

  if (v15)
  {
    v4 = *(a2 + 256);
    if (!v4)
    {
      operator new();
    }

    *v4 = v15;
  }

  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v19[0] = a1;
  v19[1] = &v12;
  v19[2] = a2;
  v6 = mlir::NamedAttrList::get(a2 + 112, **(v5 + 96));
  if (v6)
  {
    if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v6, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19))
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, v19))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(v19);
  v14 = v7;
  Results = mlir::FunctionType::getResults(v19);
  mlir::OperationState::addTypes(a2, Results, v9);
  v10 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, &Inputs, v10, a2 + 16);
}

uint64_t mlir::silc::SilcMeshOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "mesh", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 49;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v58, "sym_name", 8uLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 53;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::silc::SilcMeshOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "mesh", 4uLL, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_name", 8uLL, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

unint64_t mlir::silc::SilcMeshOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 4 && *a3 == 1752393069)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::silc::SilcMeshOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v4 = a4;
        }

        else
        {
          v4 = 0;
        }

        result[1] = v4;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752393069)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::silc::SilcMeshOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "mesh", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v5);
  }
}

BOOL mlir::silc::SilcMeshOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(v8, "mesh", 4, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: Mesh of axes and a list of devices";
        v29 = 66;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::silc::SilcMeshOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::silc::MeshAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::silc::MeshAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::MeshAttr]";
  v38 = 70;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

BOOL mlir::silc::SilcMeshOp::verifyInvariantsImpl(uint64_t **this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v2 = v1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v25[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25))
      {
        return 0;
      }

      v25[0] = *this;
      return mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(v3, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25);
    }

    v23[0] = "requires attribute 'sym_name'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_40;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_39:
        v29 = v11;
        operator delete(v13);
LABEL_40:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v7;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v11);
LABEL_38:
      v13 = v28;
      goto LABEL_39;
    }
  }

  else
  {
    v23[0] = "requires attribute 'mesh'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_40;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_39;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
        }
      }

      while (v12 != v11);
      goto LABEL_38;
    }
  }

  return v7;
}

uint64_t mlir::silc::SilcMeshOp::parse(mlir::AsmParser *a1, void *a2)
{
  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseSymbolName(a1, &v13))
  {
    return 0;
  }

  if (v13)
  {
    v4 = a2[32];
    if (!v4)
    {
      operator new();
    }

    *(v4 + 8) = v13;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAttr>(a1, &v12, 0))
  {
    return 0;
  }

  if (v12)
  {
    v5 = a2[32];
    if (!v5)
    {
      operator new();
    }

    *v5 = v12;
  }

  if (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && ((v6 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, (v7 = mlir::NamedAttrList::get((a2 + 14), **(v6 + 96))) == 0) || mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(v7, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcMeshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((v8 = mlir::NamedAttrList::get((a2 + 14), *(*(v6 + 96) + 8))) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v8, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcMeshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::silc::SilcMeshOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
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

  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  AttrData = mlir::OpaqueAttr::getAttrData(&v19);
  (*(*a2 + 88))(a2, AttrData, v7);
  v8 = (*(*a2 + 16))(a2);
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

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
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

  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = (*(*v14 + 80))(v14) + v14[4] - v14[2];
    mlir::silc::MeshAttr::print(&v19, a2);
    if (v15 == (*(*v14 + 80))(v14) + v14[4] - v14[2])
    {
      (*(*a2 + 40))(a2, v19);
    }
  }

  v19 = v21;
  v21[0] = "sym_name";
  v21[1] = 8;
  v21[2] = "mesh";
  v21[3] = 4;
  v20 = 0x200000002;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v17, v19, v20);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::silc::SilcSPMDCallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v47, a4);
    if (v47[0])
    {
      v44 = 3;
      v45 = "expected DictionaryAttr to set properties";
      v46 = 41;
      v28 = &v44;
      v29 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v40 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v29 = v48;
          v28 = (v48 + v40);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v28 = &v44;
          v29 = v48;
        }
      }

      v30 = &v29[24 * v49];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v49;
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }
    }

    if (v57 != 1)
    {
      return 0;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v55;
      v34 = __p;
      if (v55 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v55 = v32;
      operator delete(v34);
    }

    v23 = v52;
    if (!v52)
    {
      goto LABEL_51;
    }

    v35 = v53;
    v25 = v52;
    if (v53 == v52)
    {
      goto LABEL_50;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
      }
    }

    while (v35 != v23);
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "callee", 6uLL);
  if (v8)
  {
    v9 = v8;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v47[0] = v10;
    if (!v10 || (mlir::OpaqueAttr::getAttrData(v47), v11))
    {
      a3(v47, a4);
      if (v47[0])
      {
        v44 = 3;
        v46 = 51;
        v12 = &v44;
        v13 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v41 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v13 = v48;
            v12 = (v48 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v12 = &v44;
            v13 = v48;
          }
        }

        v14 = &v13[24 * v49];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v49;
        if (v47[0])
        {
          v16 = &v44;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
          v17 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v49 > &v44)
            {
              v42 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v17 = v48;
              v16 = (v48 + v42);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v16 = &v44;
              v17 = v48;
            }
          }

          v18 = &v17[24 * v49];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v49;
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }
        }
      }

      if ((v57 & 1) == 0)
      {
        return 0;
      }

      if (v56 != &v57)
      {
        free(v56);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v55;
        v22 = __p;
        if (v55 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v55 = v20;
        operator delete(v22);
      }

      v23 = v52;
      if (!v52)
      {
LABEL_51:
        if (v48 != v51)
        {
          free(v48);
        }

        return 0;
      }

      v24 = v53;
      v25 = v52;
      if (v53 == v52)
      {
LABEL_50:
        v53 = v23;
        operator delete(v25);
        goto LABEL_51;
      }

      do
      {
        v27 = *--v24;
        v26 = v27;
        *v24 = 0;
        if (v27)
        {
          MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
        }
      }

      while (v24 != v23);
LABEL_49:
      v25 = v52;
      goto LABEL_50;
    }

    *a1 = v9;
  }

  v39 = mlir::DictionaryAttr::get(&v43, "mesh", 4uLL);
  if (v39)
  {
    a1[1] = v39;
  }

  return 1;
}

uint64_t mlir::silc::SilcSPMDCallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "callee", 6uLL, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "mesh", 4uLL, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

unint64_t mlir::silc::SilcSPMDCallOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 4)
  {
    if (a4 == 6 && *a3 == 1819042147 && *(a3 + 4) == 25957)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1752393069)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::silc::SilcSPMDCallOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4)
  {
    if (*a2 == 1752393069)
    {
      result[1] = a4;
    }
  }

  else if (a3 == 6 && *a2 == 1819042147 && *(a2 + 4) == 25957)
  {
    v11[3] = v4;
    v11[4] = v5;
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      v11[0] = v7;
      if (v7)
      {
        v8 = result;
        mlir::OpaqueAttr::getAttrData(v11);
        result = v8;
        if (v10)
        {
          v7 = 0;
        }

        else
        {
          v7 = a4;
        }
      }

      *result = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::silc::SilcSPMDCallOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "callee", 6uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "mesh", 4uLL, v5);
  }
}

BOOL mlir::silc::SilcSPMDCallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v8, "callee", 6, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v9, "mesh", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::silc::SilcSPMDCallOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, a2[32]))
  {
    return (*(*a1 + 48))(a1, v3 + 8) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::silc::SilcSPMDCallOp::verifyInvariantsImpl(uint64_t **this)
{
  v84 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (v4)
  {
    v5 = v3[1];
    if (v5)
    {
      v73[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v2, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v73))
      {
        return 0;
      }

      v73[0] = *this;
      if (!mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v5, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v73))
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v7 = *this - 2;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v9 = *v8;
      if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v10 = *this;
        v69 = 261;
        v68[0] = "result";
        v68[1] = 6;
        mlir::Operation::emitOpError(v10, v68, v73);
        if (v73[0])
        {
          v70 = 3;
          v71 = " #";
          v72 = 2;
          v11 = &v70;
          v12 = v74;
          if (v75 >= v76)
          {
            if (v74 <= &v70 && v74 + 24 * v75 > &v70)
            {
              v64 = &v70 - v74;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v12 = v74;
              v11 = (v74 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v11 = &v70;
              v12 = v74;
            }
          }

          v13 = &v12[24 * v75];
          v14 = *v11;
          *(v13 + 2) = *(v11 + 2);
          *v13 = v14;
          v15 = ++v75;
          if (v73[0])
          {
            v70 = 5;
            v71 = 0;
            v16 = &v70;
            v17 = v74;
            if (v15 >= v76)
            {
              if (v74 <= &v70 && v74 + 24 * v15 > &v70)
              {
                v65 = &v70 - v74;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v15 + 1, 24);
                v17 = v74;
                v16 = (v74 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v15 + 1, 24);
                v16 = &v70;
                v17 = v74;
              }
            }

            v18 = &v17[24 * v75];
            v19 = *v16;
            *(v18 + 2) = *(v16 + 2);
            *v18 = v19;
            v20 = ++v75;
            if (v73[0])
            {
              v70 = 3;
              v71 = " must be ranked tensor of any type values, but got ";
              v72 = 51;
              v21 = &v70;
              v22 = v74;
              if (v20 >= v76)
              {
                if (v74 <= &v70 && v74 + 24 * v20 > &v70)
                {
                  v66 = &v70 - v74;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v20 + 1, 24);
                  v22 = v74;
                  v21 = (v74 + v66);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v20 + 1, 24);
                  v21 = &v70;
                  v22 = v74;
                }
              }

              v23 = &v22[24 * v75];
              v24 = *v21;
              *(v23 + 2) = *(v21 + 2);
              *v23 = v24;
              ++v75;
              if (v73[0])
              {
                v25 = &v70;
                mlir::DiagnosticArgument::DiagnosticArgument(&v70, v8);
                v26 = v74;
                if (v75 >= v76)
                {
                  if (v74 <= &v70 && v74 + 24 * v75 > &v70)
                  {
                    v67 = &v70 - v74;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                    v26 = v74;
                    v25 = (v74 + v67);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                    v25 = &v70;
                    v26 = v74;
                  }
                }

                v27 = &v26[24 * v75];
                v28 = *v25;
                *(v27 + 2) = *(v25 + 2);
                *v27 = v28;
                ++v75;
              }
            }
          }
        }

        v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
        if (v73[0])
        {
          mlir::InFlightDiagnostic::report(v73);
        }

        if (v83 == 1)
        {
          if (v82 != &v83)
          {
            free(v82);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v81;
            v32 = __p;
            if (v81 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v81 = v30;
            operator delete(v32);
          }

          v33 = v78;
          if (v78)
          {
            v34 = v79;
            v35 = v78;
            if (v79 != v78)
            {
              do
              {
                v37 = *--v34;
                v36 = v37;
                *v34 = 0;
                if (v37)
                {
                  MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
                }
              }

              while (v34 != v33);
              v35 = v78;
            }

            v79 = v33;
            operator delete(v35);
          }

          if (v74 != v77)
          {
            free(v74);
          }
        }

        return v29;
      }

      {
        v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v54 = *(v9 + 8);
        v55 = *(v9 + 16);
        if (v55)
        {
          goto LABEL_72;
        }
      }

      else
      {
        mlir::silc::SilcAllGatherOp::verifyInvariantsImpl();
        v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v54 = *(v9 + 8);
        v55 = *(v9 + 16);
        if (v55)
        {
LABEL_72:
          v56 = v54;
          v57 = v55;
          do
          {
            v58 = v57 >> 1;
            v59 = &v56[2 * (v57 >> 1)];
            v61 = *v59;
            v60 = v59 + 2;
            v57 += ~(v57 >> 1);
            if (v61 < v53)
            {
              v56 = v60;
            }

            else
            {
              v57 = v58;
            }
          }

          while (v57);
          goto LABEL_99;
        }
      }

      v55 = 0;
      v56 = v54;
LABEL_99:
      if (v56 != &v54[2 * v55] && *v56 == v53)
      {
        v63 = v56[1];
      }

      else
      {
        v63 = 0;
      }

      v73[0] = v8;
      v73[1] = v63;
      mlir::ElementsAttr::isSplat(v73);
      return 1;
    }

    v68[0] = "requires attribute 'mesh'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v73);
    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
    if (v73[0])
    {
      mlir::InFlightDiagnostic::report(v73);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v81;
        v49 = __p;
        if (v81 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v81 = v47;
        operator delete(v49);
      }

      v42 = v78;
      if (!v78)
      {
        goto LABEL_68;
      }

      v50 = v79;
      v44 = v78;
      if (v79 == v78)
      {
LABEL_67:
        v79 = v42;
        operator delete(v44);
LABEL_68:
        if (v74 != v77)
        {
          free(v74);
        }

        return v38;
      }

      do
      {
        v52 = *--v50;
        v51 = v52;
        *v50 = 0;
        if (v52)
        {
          MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
        }
      }

      while (v50 != v42);
LABEL_66:
      v44 = v78;
      goto LABEL_67;
    }
  }

  else
  {
    v68[0] = "requires attribute 'callee'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v73);
    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
    if (v73[0])
    {
      mlir::InFlightDiagnostic::report(v73);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v81;
        v41 = __p;
        if (v81 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v81 = v39;
        operator delete(v41);
      }

      v42 = v78;
      if (!v78)
      {
        goto LABEL_68;
      }

      v43 = v79;
      v44 = v78;
      if (v79 == v78)
      {
        goto LABEL_67;
      }

      do
      {
        v46 = *--v43;
        v45 = v46;
        *v43 = 0;
        if (v46)
        {
          MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
        }
      }

      while (v43 != v42);
      goto LABEL_66;
    }
  }

  return v38;
}

BOOL mlir::silc::SilcSPMDCallOp::parse(uint64_t a1, uint64_t a2)
{
  v24[16] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v23[0] = v24;
  v23[1] = 0x400000000;
  Inputs = 0;
  v18 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v20, v6))
  {
    goto LABEL_21;
  }

  if (v20)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v20;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "mesh", 4, v21) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v19, 0) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v19)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 8) = v19;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v23, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v16 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v10 = *(a2 + 8), v21[0] = a1, v21[1] = &v16, v21[2] = a2, mlir::silc::SilcSPMDCallOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcSPMDCallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v21[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v21)))
  {
    Inputs = mlir::FunctionType::getInputs(v21);
    v18 = v11;
    Results = mlir::FunctionType::getResults(v21);
    mlir::OperationState::addTypes(a2, Results, v13);
    v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v23, &Inputs, v9, a2 + 16);
  }

  else
  {
LABEL_21:
    v14 = 0;
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  return v14;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12ShardingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::ShardingAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllGatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}