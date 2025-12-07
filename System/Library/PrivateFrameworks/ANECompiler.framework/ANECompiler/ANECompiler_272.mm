void *mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.dequant", 0xCuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::DeQuant,void>::id, &v9);
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

  *a1 = &unk_1F1A2FD18;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::DeQuant>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::DeQuant>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.dequant";
      v17 = 12;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::DeQuant>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::SupportConstantOperands,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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

uint64_t mlir::Op<mlir::anec::DeQuant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

void *mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.deconvolution", 0x12uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, &v9);
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

  *a1 = &unk_1F1A2FDE0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Deconvolution,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Deconvolution>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Deconvolution>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Deconvolution>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.deconvolution";
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Deconvolution>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Degamma,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Degamma>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Degamma>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.degamma";
      v17 = 12;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Degamma>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Dirac,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Dirac>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Dirac>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.dirac";
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Dirac>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseAbs,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAbs>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseAbs>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.abs";
      v17 = 8;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAbs>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  v10 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ReshapeSwapInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  v11 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::TransposeSwapInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseAdd>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseAdd>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.add";
      v17 = 8;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseAdd>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
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
    mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  v11 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ReshapeSwapInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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

uint64_t mlir::Op<mlir::anec::ElementwiseAdd,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseDiv>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseDiv>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.div";
      v17 = 8;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseDiv>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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

  v8 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  v10 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ReshapeSwapInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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

uint64_t mlir::Op<mlir::anec::ElementwiseDiv,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqual>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseEqual>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.equal";
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqual>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ElementwiseEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseEqualZero>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseEqualZero>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
      v16 = "anec.equal_zero";
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseEqualZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThan>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseGreaterThan>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.greater_than";
      v17 = 17;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThan>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ElementwiseGreaterThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqual>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseGreaterThanEqual>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.greater_than_equal";
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqual>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ElementwiseGreaterThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseGreaterThanEqualZero>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.greater_than_equal_zero";
      v17 = 28;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanEqualZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseGreaterThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseGreaterThanZero>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseGreaterThanZero>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.greater_than_zero";
      v17 = 22;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseGreaterThanZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThan>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseLessThan>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.less_than";
      v17 = 14;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThan>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ElementwiseLessThan,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqual>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::mutateOpForReshapeSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a6 == 1)
  {
    LODWORD(v8) = *a5;
  }

  else
  {
    v8 = *a5;
    if (*a5 == a5[1])
    {
      return 1;
    }
  }

  v14[4] = v6;
  v14[5] = v7;
  v10 = (*(*(*(a2 + 72) + 32 * (v8 ^ 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  Shape = mlir::ShapedType::getShape(v14);
  return mlir::ShapedType::getNumElements(Shape, v13) == 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseLessThanEqual>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.less_than_equal";
      v17 = 20;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqual>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ElementwiseLessThanEqual,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::ElementwiseAdd::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThanEqualZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanEqualZero>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ElementwiseLessThanEqualZero>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.less_than_equal_zero";
      v17 = 25;
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanEqualZero>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::ElementwiseLessThanZero,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ElementwiseLessThanZero>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::ElementwiseLessThanZero>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}