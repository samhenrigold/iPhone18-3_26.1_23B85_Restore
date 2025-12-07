void *mlir::RegisteredOperationName::Model<mlir::anec::Quant>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.quant", 0xAuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Quant,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32360;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Quant>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Quant>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Quant>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Quant>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.quant";
      v17 = 10;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::DeQuant::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.reduce_avg", 0xFuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32428;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceAvgEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceAvgEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceAvg,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceAvg,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceAvg>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceAvg>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.reduce_avg";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v121 = v1;
    v136 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v121;
    a1 = v136;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v122 = v1;
    v137 = a1;
    v108 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v108;
    v1 = v122;
    a1 = v137;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v123 = v1;
    v138 = a1;
    v96 = v3;
    v109 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v96;
    v2 = v109;
    v1 = v123;
    a1 = v138;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v124 = v1;
    v139 = a1;
    v97 = v3;
    v110 = v2;
    v85 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v125 = v1;
    v140 = a1;
    v98 = v3;
    v111 = v2;
    v75 = v5;
    v86 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v75;
    v4 = v86;
    v3 = v98;
    v2 = v111;
    v1 = v125;
    a1 = v140;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v126 = v1;
    v141 = a1;
    v99 = v3;
    v112 = v2;
    v76 = v5;
    v87 = v4;
    v66 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v66;
    v5 = v76;
    v4 = v87;
    v3 = v99;
    v2 = v112;
    v1 = v126;
    a1 = v141;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v127 = v1;
    v142 = a1;
    v100 = v3;
    v113 = v2;
    v77 = v5;
    v88 = v4;
    v67 = v6;
    v58 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v128 = v1;
    v143 = a1;
    v101 = v3;
    v114 = v2;
    v78 = v5;
    v89 = v4;
    v68 = v6;
    v51 = v8;
    v59 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v51;
    v7 = v59;
    v6 = v68;
    v5 = v78;
    v4 = v89;
    v3 = v101;
    v2 = v114;
    v1 = v128;
    a1 = v143;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v129 = v1;
    v144 = a1;
    v102 = v3;
    v115 = v2;
    v79 = v5;
    v90 = v4;
    v69 = v6;
    v52 = v8;
    v60 = v7;
    v45 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v45;
    v8 = v52;
    v7 = v60;
    v6 = v69;
    v5 = v79;
    v4 = v90;
    v3 = v102;
    v2 = v115;
    v1 = v129;
    a1 = v144;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v130 = v1;
    v145 = a1;
    v103 = v3;
    v116 = v2;
    v80 = v5;
    v91 = v4;
    v70 = v6;
    v53 = v8;
    v61 = v7;
    v40 = v10;
    v46 = v9;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v10 = v40;
    v9 = v46;
    v8 = v53;
    v7 = v61;
    v6 = v70;
    v5 = v80;
    v4 = v91;
    v3 = v103;
    v2 = v116;
    v1 = v130;
    a1 = v145;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v131 = v1;
    v146 = a1;
    v104 = v3;
    v117 = v2;
    v81 = v5;
    v92 = v4;
    v71 = v6;
    v54 = v8;
    v62 = v7;
    v41 = v10;
    v47 = v9;
    v36 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v36;
    v10 = v41;
    v9 = v47;
    v8 = v54;
    v7 = v62;
    v6 = v71;
    v5 = v81;
    v4 = v92;
    v3 = v104;
    v2 = v117;
    v1 = v131;
    a1 = v146;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v132 = v1;
    v147 = a1;
    v105 = v3;
    v118 = v2;
    v82 = v5;
    v93 = v4;
    v72 = v6;
    v55 = v8;
    v63 = v7;
    v42 = v10;
    v48 = v9;
    v33 = v12;
    v37 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v33;
    v11 = v37;
    v10 = v42;
    v9 = v48;
    v8 = v55;
    v7 = v63;
    v6 = v72;
    v5 = v82;
    v4 = v93;
    v3 = v105;
    v2 = v118;
    v1 = v132;
    a1 = v147;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v134 = v1;
    v149 = a1;
    v107 = v3;
    v120 = v2;
    v84 = v5;
    v95 = v4;
    v74 = v6;
    v57 = v8;
    v65 = v7;
    v44 = v10;
    v50 = v9;
    v35 = v12;
    v39 = v11;
    v30 = v14;
    v32 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v30;
    v13 = v32;
    v12 = v35;
    v11 = v39;
    v10 = v44;
    v9 = v50;
    v8 = v57;
    v7 = v65;
    v6 = v74;
    v5 = v84;
    v4 = v95;
    v3 = v107;
    v2 = v120;
    v1 = v134;
    a1 = v149;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.reduce_max", 0xFuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A324F0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMaxEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMaxEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceMax>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMax>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.reduce_max";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.reduce_min", 0xFuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A325B8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMinEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMinEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceMin,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceMin,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceMin>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMin>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.reduce_min";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.reduce_sum", 0xFuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32680;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceSumEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceSumEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceSum,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ReduceSum,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceSum>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceSum>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.reduce_sum";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.region_return", 0x12uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32748;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1, uint64_t a2)
{
  {
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v2;
    v56 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v2 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v2;
    v57 = a1;
    v40 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v40;
    v2 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v2;
    v58 = a1;
    v34 = v4;
    v41 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v4 = v34;
    v3 = v41;
    v2 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v2;
    v59 = a1;
    v35 = v4;
    v42 = v3;
    v29 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v29;
    v4 = v35;
    v3 = v42;
    v2 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v2;
    v60 = a1;
    v36 = v4;
    v43 = v3;
    v25 = v6;
    v30 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v6 = v25;
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v2;
    v61 = a1;
    v37 = v4;
    v44 = v3;
    v26 = v6;
    v31 = v5;
    v22 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v22;
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v2;
    v62 = a1;
    v38 = v4;
    v45 = v3;
    v27 = v6;
    v32 = v5;
    v20 = v8;
    v23 = v7;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v8 = v20;
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    a1 = v62;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v54 = v2;
    v63 = a1;
    v39 = v4;
    v46 = v3;
    v28 = v6;
    v33 = v5;
    v21 = v8;
    v24 = v7;
    v19 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v9 = v19;
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    a1 = v63;
  }

  return v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(a1, &v6);
  return v6;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Relu>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Relu>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Relu>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Relu>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.relu";
      v17 = 9;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::Resample>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.resample", 0xDuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Resample,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A328D8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Resample>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec8ResampleEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj2EE4ImplENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSI_11TypeChangerENSI_4anec13MinimumFamilyILNSG_6FamilyE3EE4ImplENS12_ILS13_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec8ResampleEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj2EE4ImplENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSI_11TypeChangerENSI_4anec13MinimumFamilyILNSG_6FamilyE3EE4ImplENS12_ILS13_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj2EE4ImplENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS9_11TypeChangerENS9_4anec13MinimumFamilyILNS7_6FamilyE3EE4ImplENST_ILSU_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj2EE4ImplENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS9_11TypeChangerENS9_4anec13MinimumFamilyILNS7_6FamilyE3EE4ImplENST_ILSU_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj2EE4ImplENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSD_11TypeChangerENSD_4anec13MinimumFamilyILNSB_6FamilyE3EE4ImplENSX_ILSY_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj2EE4ImplENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSD_11TypeChangerENSD_4anec13MinimumFamilyILNSB_6FamilyE3EE4ImplENSX_ILSY_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Resample,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Resample,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Resample>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resample>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resample>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resample>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Resample>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resample>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.resample";
      v17 = 13;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resample>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v145 = v1;
    v161 = a1;
    v116 = v3;
    v130 = v2;
    v91 = v5;
    v103 = v4;
    v80 = v6;
    v61 = v8;
    v70 = v7;
    v53 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v53;
    v8 = v61;
    v7 = v70;
    v6 = v80;
    v5 = v91;
    v4 = v103;
    v3 = v116;
    v2 = v130;
    v1 = v145;
    a1 = v161;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v146 = v1;
    v162 = a1;
    v117 = v3;
    v131 = v2;
    v92 = v5;
    v104 = v4;
    v81 = v6;
    v62 = v8;
    v71 = v7;
    v47 = v10;
    v54 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v47;
    v9 = v54;
    v8 = v62;
    v7 = v71;
    v6 = v81;
    v5 = v92;
    v4 = v104;
    v3 = v117;
    v2 = v131;
    v1 = v146;
    a1 = v162;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v147 = v1;
    v163 = a1;
    v118 = v3;
    v132 = v2;
    v93 = v5;
    v105 = v4;
    v82 = v6;
    v63 = v8;
    v72 = v7;
    v48 = v10;
    v55 = v9;
    v42 = v11;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v11 = v42;
    v10 = v48;
    v9 = v55;
    v8 = v63;
    v7 = v72;
    v6 = v82;
    v5 = v93;
    v4 = v105;
    v3 = v118;
    v2 = v132;
    v1 = v147;
    a1 = v163;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v148 = v1;
    v164 = a1;
    v119 = v3;
    v133 = v2;
    v94 = v5;
    v106 = v4;
    v83 = v6;
    v64 = v8;
    v73 = v7;
    v49 = v10;
    v56 = v9;
    v38 = v12;
    v43 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v38;
    v11 = v43;
    v10 = v49;
    v9 = v56;
    v8 = v64;
    v7 = v73;
    v6 = v83;
    v5 = v94;
    v4 = v106;
    v3 = v119;
    v2 = v133;
    v1 = v148;
    a1 = v164;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v149 = v1;
    v165 = a1;
    v120 = v3;
    v134 = v2;
    v95 = v5;
    v107 = v4;
    v84 = v6;
    v65 = v8;
    v74 = v7;
    v50 = v10;
    v57 = v9;
    v39 = v12;
    v44 = v11;
    v35 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v35;
    v12 = v39;
    v11 = v44;
    v10 = v50;
    v9 = v57;
    v8 = v65;
    v7 = v74;
    v6 = v84;
    v5 = v95;
    v4 = v107;
    v3 = v120;
    v2 = v134;
    v1 = v149;
    a1 = v165;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v151 = v1;
    v167 = a1;
    v122 = v3;
    v136 = v2;
    v97 = v5;
    v109 = v4;
    v86 = v6;
    v67 = v8;
    v76 = v7;
    v52 = v10;
    v59 = v9;
    v41 = v12;
    v46 = v11;
    v34 = v14;
    v37 = v13;
    v32 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v15 = v32;
    v14 = v34;
    v13 = v37;
    v12 = v41;
    v11 = v46;
    v10 = v52;
    v9 = v59;
    v8 = v67;
    v7 = v76;
    v6 = v86;
    v5 = v97;
    v4 = v109;
    v3 = v122;
    v2 = v136;
    v1 = v151;
    a1 = v167;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.reshape", 0xCuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A329A0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Reshape>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Reshape>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Reshape>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Reshape>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Reshape>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Reshape>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::Op<mlir::anec::Reshape,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::foldSingleResultHook<mlir::anec::Reshape>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17 = a1;
  v18[0] = v8;
  v18[1] = v9;
  v19 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v20, v12, v11);
  v20[2] = a2;
  v20[3] = a3;
  v13 = mlir::anec::Reshape::fold(&v17, v18);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v104;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v92 = v1;
    v105 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v92;
    a1 = v105;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v93 = v1;
    v106 = a1;
    v81 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v81;
    v1 = v93;
    a1 = v106;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v94 = v1;
    v107 = a1;
    v71 = v3;
    v82 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v71;
    v2 = v82;
    v1 = v94;
    a1 = v107;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v95 = v1;
    v108 = a1;
    v72 = v3;
    v83 = v2;
    v62 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v62;
    v3 = v72;
    v2 = v83;
    v1 = v95;
    a1 = v108;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v96 = v1;
    v109 = a1;
    v73 = v3;
    v84 = v2;
    v54 = v5;
    v63 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v54;
    v4 = v63;
    v3 = v73;
    v2 = v84;
    v1 = v96;
    a1 = v109;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v97 = v1;
    v110 = a1;
    v74 = v3;
    v85 = v2;
    v55 = v5;
    v64 = v4;
    v47 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v47;
    v5 = v55;
    v4 = v64;
    v3 = v74;
    v2 = v85;
    v1 = v97;
    a1 = v110;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v98 = v1;
    v111 = a1;
    v75 = v3;
    v86 = v2;
    v56 = v5;
    v65 = v4;
    v41 = v7;
    v48 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v41;
    v6 = v48;
    v5 = v56;
    v4 = v65;
    v3 = v75;
    v2 = v86;
    v1 = v98;
    a1 = v111;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v99 = v1;
    v112 = a1;
    v76 = v3;
    v87 = v2;
    v57 = v5;
    v66 = v4;
    v42 = v7;
    v49 = v6;
    v36 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v36;
    v7 = v42;
    v6 = v49;
    v5 = v57;
    v4 = v66;
    v3 = v76;
    v2 = v87;
    v1 = v99;
    a1 = v112;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v100 = v1;
    v113 = a1;
    v77 = v3;
    v88 = v2;
    v58 = v5;
    v67 = v4;
    v43 = v7;
    v50 = v6;
    v32 = v9;
    v37 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v32;
    v8 = v37;
    v7 = v43;
    v6 = v50;
    v5 = v58;
    v4 = v67;
    v3 = v77;
    v2 = v88;
    v1 = v100;
    a1 = v113;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v101 = v1;
    v114 = a1;
    v78 = v3;
    v89 = v2;
    v59 = v5;
    v68 = v4;
    v44 = v7;
    v51 = v6;
    v33 = v9;
    v38 = v8;
    v29 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v29;
    v9 = v33;
    v8 = v38;
    v7 = v44;
    v6 = v51;
    v5 = v59;
    v4 = v68;
    v3 = v78;
    v2 = v89;
    v1 = v101;
    a1 = v114;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v103 = v1;
    v116 = a1;
    v80 = v3;
    v91 = v2;
    v61 = v5;
    v70 = v4;
    v46 = v7;
    v53 = v6;
    v35 = v9;
    v40 = v8;
    v28 = v11;
    v31 = v10;
    v26 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v26;
    v11 = v28;
    v10 = v31;
    v9 = v35;
    v8 = v40;
    v7 = v46;
    v6 = v53;
    v5 = v61;
    v4 = v70;
    v3 = v80;
    v2 = v91;
    v1 = v103;
    a1 = v116;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::Resize>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.resize", 0xBuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Resize,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32A68;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Resize>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec6ResizeEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSZ_ILS10_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec6ResizeEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSZ_ILS10_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec6ResizeEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec6ResizeEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec6ResizeEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSU_ILSV_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec6ResizeEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSU_ILSV_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Resize,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Resize,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Resize>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resize>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Resize>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Resize>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Resize>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Resize>::refineReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resize>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.resize";
      v17 = 11;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Resize>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v121 = v1;
    v136 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v121;
    a1 = v136;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v122 = v1;
    v137 = a1;
    v108 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v108;
    v1 = v122;
    a1 = v137;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v123 = v1;
    v138 = a1;
    v96 = v3;
    v109 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v96;
    v2 = v109;
    v1 = v123;
    a1 = v138;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v124 = v1;
    v139 = a1;
    v97 = v3;
    v110 = v2;
    v85 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v125 = v1;
    v140 = a1;
    v98 = v3;
    v111 = v2;
    v75 = v5;
    v86 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v75;
    v4 = v86;
    v3 = v98;
    v2 = v111;
    v1 = v125;
    a1 = v140;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v126 = v1;
    v141 = a1;
    v99 = v3;
    v112 = v2;
    v76 = v5;
    v87 = v4;
    v66 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v66;
    v5 = v76;
    v4 = v87;
    v3 = v99;
    v2 = v112;
    v1 = v126;
    a1 = v141;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v127 = v1;
    v142 = a1;
    v100 = v3;
    v113 = v2;
    v77 = v5;
    v88 = v4;
    v67 = v6;
    v58 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v128 = v1;
    v143 = a1;
    v101 = v3;
    v114 = v2;
    v78 = v5;
    v89 = v4;
    v68 = v6;
    v51 = v8;
    v59 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v51;
    v7 = v59;
    v6 = v68;
    v5 = v78;
    v4 = v89;
    v3 = v101;
    v2 = v114;
    v1 = v128;
    a1 = v143;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v129 = v1;
    v144 = a1;
    v102 = v3;
    v115 = v2;
    v79 = v5;
    v90 = v4;
    v69 = v6;
    v52 = v8;
    v60 = v7;
    v45 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v9 = v45;
    v8 = v52;
    v7 = v60;
    v6 = v69;
    v5 = v79;
    v4 = v90;
    v3 = v102;
    v2 = v115;
    v1 = v129;
    a1 = v144;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v130 = v1;
    v145 = a1;
    v103 = v3;
    v116 = v2;
    v80 = v5;
    v91 = v4;
    v70 = v6;
    v53 = v8;
    v61 = v7;
    v40 = v10;
    v46 = v9;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v10 = v40;
    v9 = v46;
    v8 = v53;
    v7 = v61;
    v6 = v70;
    v5 = v80;
    v4 = v91;
    v3 = v103;
    v2 = v116;
    v1 = v130;
    a1 = v145;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v131 = v1;
    v146 = a1;
    v104 = v3;
    v117 = v2;
    v81 = v5;
    v92 = v4;
    v71 = v6;
    v54 = v8;
    v62 = v7;
    v41 = v10;
    v47 = v9;
    v36 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v36;
    v10 = v41;
    v9 = v47;
    v8 = v54;
    v7 = v62;
    v6 = v71;
    v5 = v81;
    v4 = v92;
    v3 = v104;
    v2 = v117;
    v1 = v131;
    a1 = v146;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v132 = v1;
    v147 = a1;
    v105 = v3;
    v118 = v2;
    v82 = v5;
    v93 = v4;
    v72 = v6;
    v55 = v8;
    v63 = v7;
    v42 = v10;
    v48 = v9;
    v33 = v12;
    v37 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v33;
    v11 = v37;
    v10 = v42;
    v9 = v48;
    v8 = v55;
    v7 = v63;
    v6 = v72;
    v5 = v82;
    v4 = v93;
    v3 = v105;
    v2 = v118;
    v1 = v132;
    a1 = v147;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v134 = v1;
    v149 = a1;
    v107 = v3;
    v120 = v2;
    v84 = v5;
    v95 = v4;
    v74 = v6;
    v57 = v8;
    v65 = v7;
    v44 = v10;
    v50 = v9;
    v35 = v12;
    v39 = v11;
    v30 = v14;
    v32 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v30;
    v13 = v32;
    v12 = v35;
    v11 = v39;
    v10 = v44;
    v9 = v50;
    v8 = v57;
    v7 = v65;
    v6 = v74;
    v5 = v84;
    v4 = v95;
    v3 = v107;
    v2 = v120;
    v1 = v134;
    a1 = v149;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.ring_buffer_reader", 0x17uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32B30;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec16RingBufferReaderEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_16AtLeastNOperandsILj1EE4ImplENSI_12OpInvariantsENSI_4anec23SupportConstantOperandsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSI_11TypeChangerENSU_13MinimumFamilyILNSG_6FamilyE2EE4ImplENS13_ILS14_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec16RingBufferReaderEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_16AtLeastNOperandsILj1EE4ImplENSI_12OpInvariantsENSI_4anec23SupportConstantOperandsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSI_11TypeChangerENSU_13MinimumFamilyILNSG_6FamilyE2EE4ImplENS13_ILS14_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferReaderEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_16AtLeastNOperandsILj1EE4ImplENS9_12OpInvariantsENS9_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS9_11TypeChangerENSL_13MinimumFamilyILNS7_6FamilyE2EE4ImplENSU_ILSV_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferReaderEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_16AtLeastNOperandsILj1EE4ImplENS9_12OpInvariantsENS9_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS9_11TypeChangerENSL_13MinimumFamilyILNS7_6FamilyE2EE4ImplENSU_ILSV_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferReaderEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_16AtLeastNOperandsILj1EE4ImplENSD_12OpInvariantsENSD_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSD_11TypeChangerENSP_13MinimumFamilyILNSB_6FamilyE2EE4ImplENSY_ILSZ_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferReaderEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_16AtLeastNOperandsILj1EE4ImplENSD_12OpInvariantsENSD_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSD_11TypeChangerENSP_13MinimumFamilyILNSB_6FamilyE2EE4ImplENSY_ILSZ_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RingBufferReader,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RingBufferReader,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferReader>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::RingBufferReader>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferReader>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.ring_buffer_reader";
      v17 = 23;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferReader>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v170 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v170;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v154 = v1;
    v171 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v154;
    a1 = v171;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v155 = v1;
    v172 = a1;
    v139 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v139;
    v1 = v155;
    a1 = v172;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v156 = v1;
    v173 = a1;
    v125 = v3;
    v140 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v125;
    v2 = v140;
    v1 = v156;
    a1 = v173;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v157 = v1;
    v174 = a1;
    v126 = v3;
    v141 = v2;
    v112 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
    v4 = v112;
    v3 = v126;
    v2 = v141;
    v1 = v157;
    a1 = v174;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v158 = v1;
    v175 = a1;
    v127 = v3;
    v142 = v2;
    v100 = v5;
    v113 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v100;
    v4 = v113;
    v3 = v127;
    v2 = v142;
    v1 = v158;
    a1 = v175;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v159 = v1;
    v176 = a1;
    v128 = v3;
    v143 = v2;
    v101 = v5;
    v114 = v4;
    v89 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v89;
    v5 = v101;
    v4 = v114;
    v3 = v128;
    v2 = v143;
    v1 = v159;
    a1 = v176;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v160 = v1;
    v177 = a1;
    v129 = v3;
    v144 = v2;
    v102 = v5;
    v115 = v4;
    v79 = v7;
    v90 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v7 = v79;
    v6 = v90;
    v5 = v102;
    v4 = v115;
    v3 = v129;
    v2 = v144;
    v1 = v160;
    a1 = v177;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v161 = v1;
    v178 = a1;
    v130 = v3;
    v145 = v2;
    v103 = v5;
    v116 = v4;
    v80 = v7;
    v91 = v6;
    v70 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v70;
    v7 = v80;
    v6 = v91;
    v5 = v103;
    v4 = v116;
    v3 = v130;
    v2 = v145;
    v1 = v161;
    a1 = v178;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v162 = v1;
    v179 = a1;
    v131 = v3;
    v146 = v2;
    v104 = v5;
    v117 = v4;
    v81 = v7;
    v92 = v6;
    v62 = v9;
    v71 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v62;
    v8 = v71;
    v7 = v81;
    v6 = v92;
    v5 = v104;
    v4 = v117;
    v3 = v131;
    v2 = v146;
    v1 = v162;
    a1 = v179;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v163 = v1;
    v180 = a1;
    v132 = v3;
    v147 = v2;
    v105 = v5;
    v118 = v4;
    v82 = v7;
    v93 = v6;
    v63 = v9;
    v72 = v8;
    v55 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v55;
    v9 = v63;
    v8 = v72;
    v7 = v82;
    v6 = v93;
    v5 = v105;
    v4 = v118;
    v3 = v132;
    v2 = v147;
    v1 = v163;
    a1 = v180;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v164 = v1;
    v181 = a1;
    v133 = v3;
    v148 = v2;
    v106 = v5;
    v119 = v4;
    v83 = v7;
    v94 = v6;
    v64 = v9;
    v73 = v8;
    v49 = v11;
    v56 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v49;
    v10 = v56;
    v9 = v64;
    v8 = v73;
    v7 = v83;
    v6 = v94;
    v5 = v106;
    v4 = v119;
    v3 = v133;
    v2 = v148;
    v1 = v164;
    a1 = v181;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v165 = v1;
    v182 = a1;
    v134 = v3;
    v149 = v2;
    v107 = v5;
    v120 = v4;
    v84 = v7;
    v95 = v6;
    v65 = v9;
    v74 = v8;
    v50 = v11;
    v57 = v10;
    v44 = v12;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v12 = v44;
    v11 = v50;
    v10 = v57;
    v9 = v65;
    v8 = v74;
    v7 = v84;
    v6 = v95;
    v5 = v107;
    v4 = v120;
    v3 = v134;
    v2 = v149;
    v1 = v165;
    a1 = v182;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v166 = v1;
    v183 = a1;
    v135 = v3;
    v150 = v2;
    v108 = v5;
    v121 = v4;
    v85 = v7;
    v96 = v6;
    v66 = v9;
    v75 = v8;
    v51 = v11;
    v58 = v10;
    v40 = v13;
    v45 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v13 = v40;
    v12 = v45;
    v11 = v51;
    v10 = v58;
    v9 = v66;
    v8 = v75;
    v7 = v85;
    v6 = v96;
    v5 = v108;
    v4 = v121;
    v3 = v135;
    v2 = v150;
    v1 = v166;
    a1 = v183;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v167 = v1;
    v184 = a1;
    v136 = v3;
    v151 = v2;
    v109 = v5;
    v122 = v4;
    v86 = v7;
    v97 = v6;
    v67 = v9;
    v76 = v8;
    v52 = v11;
    v59 = v10;
    v41 = v13;
    v46 = v12;
    v37 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v37;
    v13 = v41;
    v12 = v46;
    v11 = v52;
    v10 = v59;
    v9 = v67;
    v8 = v76;
    v7 = v86;
    v6 = v97;
    v5 = v109;
    v4 = v122;
    v3 = v136;
    v2 = v151;
    v1 = v167;
    a1 = v184;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v168 = v1;
    v185 = a1;
    v137 = v3;
    v152 = v2;
    v110 = v5;
    v123 = v4;
    v87 = v7;
    v98 = v6;
    v68 = v9;
    v77 = v8;
    v53 = v11;
    v60 = v10;
    v42 = v13;
    v47 = v12;
    v35 = v15;
    v38 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v15 = v35;
    v14 = v38;
    v13 = v42;
    v12 = v47;
    v11 = v53;
    v10 = v60;
    v9 = v68;
    v8 = v77;
    v7 = v87;
    v6 = v98;
    v5 = v110;
    v4 = v123;
    v3 = v137;
    v2 = v152;
    v1 = v168;
    a1 = v185;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v169 = v1;
    v186 = a1;
    v138 = v3;
    v153 = v2;
    v111 = v5;
    v124 = v4;
    v88 = v7;
    v99 = v6;
    v69 = v9;
    v78 = v8;
    v54 = v11;
    v61 = v10;
    v43 = v13;
    v48 = v12;
    v36 = v15;
    v39 = v14;
    v34 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v16 = v34;
    v15 = v36;
    v14 = v39;
    v13 = v43;
    v12 = v48;
    v11 = v54;
    v10 = v61;
    v9 = v69;
    v8 = v78;
    v7 = v88;
    v6 = v99;
    v5 = v111;
    v4 = v124;
    v3 = v138;
    v2 = v153;
    v1 = v169;
    a1 = v186;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.ring_buffer_writer", 0x17uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32BF8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec16RingBufferWriterEJNS3_7OpTrait11ZeroRegionsENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_16AtLeastNOperandsILj2EE4ImplENSI_12OpInvariantsENSI_4anec23SupportConstantOperandsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSI_11TypeChangerENSQ_13MinimumFamilyILNSG_6FamilyE2EE4ImplENSZ_ILS10_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec16RingBufferWriterEJNS3_7OpTrait11ZeroRegionsENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_16AtLeastNOperandsILj2EE4ImplENSI_12OpInvariantsENSI_4anec23SupportConstantOperandsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSI_11TypeChangerENSQ_13MinimumFamilyILNSG_6FamilyE2EE4ImplENSZ_ILS10_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferWriterEJNS2_7OpTrait11ZeroRegionsENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_16AtLeastNOperandsILj2EE4ImplENS9_12OpInvariantsENS9_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS9_11TypeChangerENSH_13MinimumFamilyILNS7_6FamilyE2EE4ImplENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferWriterEJNS2_7OpTrait11ZeroRegionsENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_16AtLeastNOperandsILj2EE4ImplENS9_12OpInvariantsENS9_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS9_11TypeChangerENSH_13MinimumFamilyILNS7_6FamilyE2EE4ImplENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferWriterEJNS2_7OpTrait11ZeroRegionsENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_16AtLeastNOperandsILj2EE4ImplENSD_12OpInvariantsENSD_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSD_11TypeChangerENSL_13MinimumFamilyILNSB_6FamilyE2EE4ImplENSU_ILSV_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec16RingBufferWriterEJNS2_7OpTrait11ZeroRegionsENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_16AtLeastNOperandsILj2EE4ImplENSD_12OpInvariantsENSD_4anec23SupportConstantOperandsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSD_11TypeChangerENSL_13MinimumFamilyILNSB_6FamilyE2EE4ImplENSU_ILSV_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RingBufferWriter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RingBufferWriter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RingBufferWriter>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::RingBufferWriter>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferWriter>::inferReturnTypes(a1, a2, a3, a4, a5))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.ring_buffer_writer";
      v17 = 23;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RingBufferWriter>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v145 = v1;
    v161 = a1;
    v116 = v3;
    v130 = v2;
    v91 = v5;
    v103 = v4;
    v80 = v6;
    v61 = v8;
    v70 = v7;
    v53 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v53;
    v8 = v61;
    v7 = v70;
    v6 = v80;
    v5 = v91;
    v4 = v103;
    v3 = v116;
    v2 = v130;
    v1 = v145;
    a1 = v161;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v146 = v1;
    v162 = a1;
    v117 = v3;
    v131 = v2;
    v92 = v5;
    v104 = v4;
    v81 = v6;
    v62 = v8;
    v71 = v7;
    v47 = v10;
    v54 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v47;
    v9 = v54;
    v8 = v62;
    v7 = v71;
    v6 = v81;
    v5 = v92;
    v4 = v104;
    v3 = v117;
    v2 = v131;
    v1 = v146;
    a1 = v162;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v147 = v1;
    v163 = a1;
    v118 = v3;
    v132 = v2;
    v93 = v5;
    v105 = v4;
    v82 = v6;
    v63 = v8;
    v72 = v7;
    v48 = v10;
    v55 = v9;
    v42 = v11;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v11 = v42;
    v10 = v48;
    v9 = v55;
    v8 = v63;
    v7 = v72;
    v6 = v82;
    v5 = v93;
    v4 = v105;
    v3 = v118;
    v2 = v132;
    v1 = v147;
    a1 = v163;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v148 = v1;
    v164 = a1;
    v119 = v3;
    v133 = v2;
    v94 = v5;
    v106 = v4;
    v83 = v6;
    v64 = v8;
    v73 = v7;
    v49 = v10;
    v56 = v9;
    v38 = v12;
    v43 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v38;
    v11 = v43;
    v10 = v49;
    v9 = v56;
    v8 = v64;
    v7 = v73;
    v6 = v83;
    v5 = v94;
    v4 = v106;
    v3 = v119;
    v2 = v133;
    v1 = v148;
    a1 = v164;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v149 = v1;
    v165 = a1;
    v120 = v3;
    v134 = v2;
    v95 = v5;
    v107 = v4;
    v84 = v6;
    v65 = v8;
    v74 = v7;
    v50 = v10;
    v57 = v9;
    v39 = v12;
    v44 = v11;
    v35 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v35;
    v12 = v39;
    v11 = v44;
    v10 = v50;
    v9 = v57;
    v8 = v65;
    v7 = v74;
    v6 = v84;
    v5 = v95;
    v4 = v107;
    v3 = v120;
    v2 = v134;
    v1 = v149;
    a1 = v165;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v151 = v1;
    v167 = a1;
    v122 = v3;
    v136 = v2;
    v97 = v5;
    v109 = v4;
    v86 = v6;
    v67 = v8;
    v76 = v7;
    v52 = v10;
    v59 = v9;
    v41 = v12;
    v46 = v11;
    v34 = v14;
    v37 = v13;
    v32 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v15 = v32;
    v14 = v34;
    v13 = v37;
    v12 = v41;
    v11 = v46;
    v10 = v52;
    v9 = v59;
    v8 = v67;
    v7 = v76;
    v6 = v86;
    v5 = v97;
    v4 = v109;
    v3 = v122;
    v2 = v136;
    v1 = v151;
    a1 = v167;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec12RoundNearestEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec12RoundNearestEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec12RoundNearestEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec12RoundNearestEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec12RoundNearestEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec12RoundNearestEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RoundNearest,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::RoundNearest,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RoundNearest>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::RoundNearest>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.round_nearest";
      v17 = 18;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::RoundNearest>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec5RsqrtEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec5RsqrtEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec5RsqrtEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec5RsqrtEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec5RsqrtEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec5RsqrtEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Rsqrt,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Rsqrt,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Rsqrt>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Rsqrt>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.r_sqrt";
      v17 = 11;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Rsqrt>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::Op<mlir::anec::Rsqrt,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::anec::Rsqrt>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17 = a1;
  v18[0] = v8;
  v18[1] = v9;
  v19 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v20, v12, v11);
  v20[2] = a2;
  v20[3] = a3;
  v13 = mlir::anec::Rsqrt::fold(&v17, v18);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.sdpa", 9uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::ScaledDotProductAttention,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32E50;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec25ScaledDotProductAttentionEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj5EE4ImplENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec23SupportConstantOperandsENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSW_13MinimumFamilyILNSG_6FamilyE2EE4ImplENS12_ILS13_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec25ScaledDotProductAttentionEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj5EE4ImplENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec23SupportConstantOperandsENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSW_13MinimumFamilyILNSG_6FamilyE2EE4ImplENS12_ILS13_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec25ScaledDotProductAttentionEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj5EE4ImplENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec23SupportConstantOperandsENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENSN_13MinimumFamilyILNS7_6FamilyE2EE4ImplENST_ILSU_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec25ScaledDotProductAttentionEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj5EE4ImplENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec23SupportConstantOperandsENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENSN_13MinimumFamilyILNS7_6FamilyE2EE4ImplENST_ILSU_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec25ScaledDotProductAttentionEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj5EE4ImplENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec23SupportConstantOperandsENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSR_13MinimumFamilyILNSB_6FamilyE2EE4ImplENSX_ILSY_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec25ScaledDotProductAttentionEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj5EE4ImplENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec23SupportConstantOperandsENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSR_13MinimumFamilyILNSB_6FamilyE2EE4ImplENSX_ILSY_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ScaledDotProductAttention,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ScaledDotProductAttention,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledDotProductAttention>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ScaledDotProductAttention>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledDotProductAttention>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.sdpa";
      v17 = 9;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledDotProductAttention>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v145 = v1;
    v161 = a1;
    v116 = v3;
    v130 = v2;
    v91 = v5;
    v103 = v4;
    v80 = v6;
    v61 = v8;
    v70 = v7;
    v53 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v53;
    v8 = v61;
    v7 = v70;
    v6 = v80;
    v5 = v91;
    v4 = v103;
    v3 = v116;
    v2 = v130;
    v1 = v145;
    a1 = v161;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v146 = v1;
    v162 = a1;
    v117 = v3;
    v131 = v2;
    v92 = v5;
    v104 = v4;
    v81 = v6;
    v62 = v8;
    v71 = v7;
    v47 = v10;
    v54 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v47;
    v9 = v54;
    v8 = v62;
    v7 = v71;
    v6 = v81;
    v5 = v92;
    v4 = v104;
    v3 = v117;
    v2 = v131;
    v1 = v146;
    a1 = v162;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v147 = v1;
    v163 = a1;
    v118 = v3;
    v132 = v2;
    v93 = v5;
    v105 = v4;
    v82 = v6;
    v63 = v8;
    v72 = v7;
    v48 = v10;
    v55 = v9;
    v42 = v11;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v11 = v42;
    v10 = v48;
    v9 = v55;
    v8 = v63;
    v7 = v72;
    v6 = v82;
    v5 = v93;
    v4 = v105;
    v3 = v118;
    v2 = v132;
    v1 = v147;
    a1 = v163;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v148 = v1;
    v164 = a1;
    v119 = v3;
    v133 = v2;
    v94 = v5;
    v106 = v4;
    v83 = v6;
    v64 = v8;
    v73 = v7;
    v49 = v10;
    v56 = v9;
    v38 = v12;
    v43 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v38;
    v11 = v43;
    v10 = v49;
    v9 = v56;
    v8 = v64;
    v7 = v73;
    v6 = v83;
    v5 = v94;
    v4 = v106;
    v3 = v119;
    v2 = v133;
    v1 = v148;
    a1 = v164;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v149 = v1;
    v165 = a1;
    v120 = v3;
    v134 = v2;
    v95 = v5;
    v107 = v4;
    v84 = v6;
    v65 = v8;
    v74 = v7;
    v50 = v10;
    v57 = v9;
    v39 = v12;
    v44 = v11;
    v35 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v35;
    v12 = v39;
    v11 = v44;
    v10 = v50;
    v9 = v57;
    v8 = v65;
    v7 = v74;
    v6 = v84;
    v5 = v95;
    v4 = v107;
    v3 = v120;
    v2 = v134;
    v1 = v149;
    a1 = v165;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v151 = v1;
    v167 = a1;
    v122 = v3;
    v136 = v2;
    v97 = v5;
    v109 = v4;
    v86 = v6;
    v67 = v8;
    v76 = v7;
    v52 = v10;
    v59 = v9;
    v41 = v12;
    v46 = v11;
    v34 = v14;
    v37 = v13;
    v32 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v15 = v32;
    v14 = v34;
    v13 = v37;
    v12 = v41;
    v11 = v46;
    v10 = v52;
    v9 = v59;
    v8 = v67;
    v7 = v76;
    v6 = v86;
    v5 = v97;
    v4 = v109;
    v3 = v122;
    v2 = v136;
    v1 = v151;
    a1 = v167;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ScaledElementWise>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.scaled_elementwise", 0x17uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32F18;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec17ScaledElementWiseEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj2EE4ImplENSI_12OpInvariantsENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS11_ILS12_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1G_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec17ScaledElementWiseEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj2EE4ImplENSI_12OpInvariantsENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS11_ILS12_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1G_vE9CallbacksE(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec17ScaledElementWiseEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj2EE4ImplENS9_12OpInvariantsENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENSS_ILST_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS17_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec17ScaledElementWiseEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj2EE4ImplENS9_12OpInvariantsENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENSS_ILST_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS17_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec17ScaledElementWiseEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj2EE4ImplENSD_12OpInvariantsENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSW_ILSX_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1B_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec17ScaledElementWiseEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj2EE4ImplENSD_12OpInvariantsENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSW_ILSX_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1B_vE9CallbacksE(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ScaledElementWise,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ScaledElementWise,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ScaledElementWise>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}