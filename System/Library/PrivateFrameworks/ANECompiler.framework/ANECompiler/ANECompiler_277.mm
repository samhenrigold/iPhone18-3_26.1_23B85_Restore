void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Unflatten>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Unflatten>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.unflatten";
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Unflatten>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::Unflatten,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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
  if (!mlir::anec::Unflatten::verifyInvariantsImpl(&v7))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::UnrealizedConversionCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::UnrealizedConversionCast>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::UnrealizedConversionCast>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v44;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v37 = v1;
    v45 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v37;
    a1 = v45;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v38 = v1;
    v46 = a1;
    v31 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v2 = v31;
    v1 = v38;
    a1 = v46;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v39 = v1;
    v47 = a1;
    v32 = v2;
    v26 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v26;
    v2 = v32;
    v1 = v39;
    a1 = v47;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v40 = v1;
    v48 = a1;
    v33 = v2;
    v22 = v4;
    v27 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v22;
    v3 = v27;
    v2 = v33;
    v1 = v40;
    a1 = v48;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v41 = v1;
    v49 = a1;
    v34 = v2;
    v23 = v4;
    v28 = v3;
    v19 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v19;
    v4 = v23;
    v3 = v28;
    v2 = v34;
    v1 = v41;
    a1 = v49;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v43 = v1;
    v51 = a1;
    v36 = v2;
    v25 = v4;
    v30 = v3;
    v18 = v6;
    v21 = v5;
    v16 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v16;
    v6 = v18;
    v5 = v21;
    v4 = v25;
    v3 = v30;
    v2 = v36;
    v1 = v43;
    a1 = v51;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<Empty>]";
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

uint64_t mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v7 = a1;
    if (mlir::anec::UnrealizedConversionCast::verifyInvariantsImpl(&v7))
    {
      {
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
      }

      if (((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
      }
    }
  }

  return 0;
}

uint64_t mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)4>(uint64_t a1)
{
  v2 = 0x100000002;
  if (mlir::Operation::hasTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(a1))
  {
    return 0x100000004;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
  }

  if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000003;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
  }

  if (((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    }

    if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return 0x100000001;
    }

    else
    {
      return mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>(a1) & 0xFFFFFFFFFFLL;
    }
  }

  return v2;
}

void ZinIrBroadcastUnitInfo::~ZinIrBroadcastUnitInfo(ZinIrBroadcastUnitInfo *this)
{
  *this = &unk_1F1A33DF0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A33DF0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = *(result + 8);
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v4)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    v3 = a2;
    v4 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v2 + 1, 4);
    a2 = v3;
    result = v4;
    LODWORD(v2) = *(v4 + 8);
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(mlir::Float16Type **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(v29, v24, v23);
  }

  mlir::OperationState::OperationState(v29, a2, v11);
  v13 = *a3;
  v15 = *(a4 + 8);
  v14 = (a4 + 8);
  v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v17 == v15)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v28, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v28, v14);
  }

  v18 = (a5 + 8);
  if (v17 == *(a5 + 8))
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, v18);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, v18);
  }

  mlir::anec::ClampedRelu::build(a1, v29, v13, v27, v25);
  if (v17 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  if (v17 == v28[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v28);
  }

  v19 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat,llvm::APFloat&>(mlir::Float16Type **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(v29, v24, v23);
  }

  mlir::OperationState::OperationState(v29, a2, v11);
  v13 = *a3;
  v15 = *(a4 + 8);
  v14 = (a4 + 8);
  v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v17 == v15)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v28, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, v14);
  }

  v18 = (a5 + 8);
  if (v17 == *(a5 + 8))
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v26, v18);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v26, v18);
  }

  mlir::anec::ClampedRelu::build(a1, v29, v13, v27, v25);
  if (v17 == v26[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v26);
  }

  if (v17 == v28.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v28);
  }

  v19 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v20;
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRNeuron *,std::shared_ptr<mlir::anec::ANECIRNeuron>::__shared_ptr_default_delete<mlir::anec::ANECIRNeuron,mlir::anec::ANECIRNeuron>,std::allocator<mlir::anec::ANECIRNeuron>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

mlir::anec::ANECIRUnit *std::__shared_ptr_pointer<mlir::anec::ANECIRNeuron *,std::shared_ptr<mlir::anec::ANECIRNeuron>::__shared_ptr_default_delete<mlir::anec::ANECIRNeuron,mlir::anec::ANECIRNeuron>,std::allocator<mlir::anec::ANECIRNeuron>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    mlir::anec::ANECIRUnit::~ANECIRUnit(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void ZinIrScaledEWUnitInfo::~ZinIrScaledEWUnitInfo(ZinIrScaledEWUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrSoftmaxUnitInfo::~ZinIrSoftmaxUnitInfo(ZinIrSoftmaxUnitInfo *this)
{
  *this = &unk_1F1A33E88;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A33E88;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = *(result + 8);
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v3)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrChannelToSpaceUnitInfo::~ZinIrChannelToSpaceUnitInfo(ZinIrChannelToSpaceUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrPixelShuffleUnitInfo::~ZinIrPixelShuffleUnitInfo(ZinIrPixelShuffleUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrPixelUnshuffleUnitInfo::~ZinIrPixelUnshuffleUnitInfo(ZinIrPixelUnshuffleUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrSpaceToChannelUnitInfo::~ZinIrSpaceToChannelUnitInfo(ZinIrSpaceToChannelUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrBatchToSpaceUnitInfo::~ZinIrBatchToSpaceUnitInfo(ZinIrBatchToSpaceUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrSpaceToBatchUnitInfo::~ZinIrSpaceToBatchUnitInfo(ZinIrSpaceToBatchUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void ZinIrMatrixMultUnitInfo::~ZinIrMatrixMultUnitInfo(ZinIrMatrixMultUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrFlattenUnitInfo::~ZinIrFlattenUnitInfo(ZinIrFlattenUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrUnflattenUnitInfo::~ZinIrUnflattenUnitInfo(ZinIrUnflattenUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrConcatUnitInfo::~ZinIrConcatUnitInfo(ZinIrConcatUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrInstanceNormUnitInfo::~ZinIrInstanceNormUnitInfo(ZinIrInstanceNormUnitInfo *this)
{
  *this = &unk_1F1A340D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A340D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrLayerNormUnitInfo::~ZinIrLayerNormUnitInfo(ZinIrLayerNormUnitInfo *this)
{
  *this = &unk_1F1A340D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A340D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrBatchNormUnitInfo::~ZinIrBatchNormUnitInfo(ZinIrBatchNormUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrArgMinMaxUnitInfo::~ZinIrArgMinMaxUnitInfo(ZinIrArgMinMaxUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrGlobalArgMinMaxUnitInfo::~ZinIrGlobalArgMinMaxUnitInfo(ZinIrGlobalArgMinMaxUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrTileUnitInfo::~ZinIrTileUnitInfo(ZinIrTileUnitInfo *this)
{
  *this = &unk_1F1A341F0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A341F0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = *(result + 8);
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v4)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrDeQuantUnitInfo::~ZinIrDeQuantUnitInfo(ZinIrDeQuantUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrQuantUnitInfo::~ZinIrQuantUnitInfo(ZinIrQuantUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(ZinIrRingBufferUnitInfo *this)
{
  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F1A34278;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    do
    {
      v10 = *v5;
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      operator delete(v5);
      v5 = v10;
    }

    while (v10);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  *this = &unk_1F1A2EA30;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 6);
    v9 = *(this + 5);
    if (v8 != v7)
    {
      do
      {
        v11 = *(v8 - 1);
        v8 -= 3;
        if (v11 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 5);
    }

    *(this + 6) = v7;
    operator delete(v9);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *mlir::getValues<unsigned char>(uint64_t a1, void *a2)
{
  v15 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements); v14 != v12; ++v14)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &v9);
    if (v10 >= 0x41)
    {
      v6 = v9;
    }

    else
    {
      v6 = &v9;
    }

    v7 = *v6;
    v8 = a2[1];
    if (v8 >= a2[2])
    {
      result = llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(a2, v7);
    }

    else
    {
      *(*a2 + v8) = v7;
      ++a2[1];
    }

    if (v10 >= 0x41)
    {
      result = v9;
      if (v9)
      {
        result = MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void *llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    v3 = a2;
    v4 = result;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v2 + 1, 1);
    a2 = v3;
    result = v4;
    v2 = v4[1];
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned long>>(void *a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = *(result + 8);
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v3)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,std::string>>(void *a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_11:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_11;
  }

  return v8;
}

void ZinIrRingBufferReaderUnitInfo::~ZinIrRingBufferReaderUnitInfo(ZinIrRingBufferReaderUnitInfo *this)
{
  *this = &unk_1F1A34298;
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);
}

{
  *this = &unk_1F1A34298;
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__hash_table<std::__hash_value_type<ZinIrDimension,long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,long>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned char>>(void *a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = *(result + 8);
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v3)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrSDPAUnitInfo::~ZinIrSDPAUnitInfo(ZinIrSDPAUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A11Legacy::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A18::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A17::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A16::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A12::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A13::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A14::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A15::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

BOOL llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v5 = a1;
  Value = mlir::AffineMapAttr::getValue(&v5);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v4 = a1;
    if (mlir::IntegerAttr::getInt(&v4))
    {
      v3 = a1;
      return mlir::IntegerAttr::getInt(&v3) == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseAdd>(llvm::LogicalResult (*)(mlir::anec::ElementwiseAdd,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseAdd>(llvm::LogicalResult (*)(mlir::anec::ElementwiseAdd,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMax>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMax,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMax>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMax,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMin>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMin,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMin>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMin,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMult>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMult,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMult>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMult,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseSub>(llvm::LogicalResult (*)(mlir::anec::ElementwiseSub,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseSub>(llvm::LogicalResult (*)(mlir::anec::ElementwiseSub,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::RewritePatternSet::add<mlir::anec::Reshape>(llvm::LogicalResult (*)(mlir::anec::Reshape,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::Reshape>(llvm::LogicalResult (*)(mlir::anec::Reshape,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::RewritePatternSet::add<mlir::anec::Transpose>(llvm::LogicalResult (*)(mlir::anec::Transpose,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::Transpose>(llvm::LogicalResult (*)(mlir::anec::Transpose,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

float OUTLINED_FUNCTION_7_17(void *a1)
{

  return result;
}

float OUTLINED_FUNCTION_9_15(void *a1)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return mlir::ElementsAttr::isSplat(&a9);
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v12;
  a12 = a1;

  return mlir::ShapedType::getShape(&a11);
}

void OUTLINED_FUNCTION_50_7()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v1 + 40), v0 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a9 = v10;
  a10 = a1;

  return mlir::ShapedType::getShape(&a9);
}

uint64_t OUTLINED_FUNCTION_83_7()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

BOOL OUTLINED_FUNCTION_85_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::Type::isF16(&a11);
}

BOOL OUTLINED_FUNCTION_86_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::Type::isF16(&a11);
}

void OUTLINED_FUNCTION_87_5(uint64_t a1)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (v2 + 40), v1 + 1, 24);
}

void mlir::anec::computeOpKeyString(uint64_t *__return_ptr a1@<X8>, mlir::anec *this@<X0>)
{
  if (!*(this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(this, "name", 4), (v5 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(this + 56, "name", 4uLL);
  }

  if (InherentAttr)
  {
    v22[0] = InherentAttr;
    AttrData = mlir::OpaqueAttr::getAttrData(v22);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v7;
    if (v7)
    {
      memmove(a1, AttrData, v7);
    }

    *(a1 + v8) = 0;
  }

  else
  {
    v22[0] = *(*(this + 6) + 8);
    v19 = 1283;
    v18[2] = mlir::OpaqueAttr::getAttrData(v22);
    v18[3] = v9;
    v20[0] = v18;
    v20[2] = "_";
    v21 = 770;
    v10 = mlir::anec::ANECIRNetwork::name_counter_++;
    v17 = v10;
    v18[0] = "__";
    v22[0] = v20;
    v22[2] = &v17;
    v23 = 2818;
    llvm::Twine::str(v22, a1);
    Context = mlir::Attribute::getContext((this + 24));
    v12 = *(a1 + 23);
    v13 = *a1;
    if (v12 >= 0)
    {
      v13 = a1;
    }

    if (v12 < 0)
    {
      v12 = a1[1];
    }

    v21 = 261;
    v20[0] = v13;
    v20[1] = v12;
    v14 = mlir::StringAttr::get(Context, v20);
    v15 = mlir::Attribute::getContext((this + 24));
    v23 = 261;
    v22[0] = "name";
    v22[1] = 4;
    v16 = mlir::StringAttr::get(v15, v22);
    mlir::Operation::setAttr(this, v16, v14);
  }
}

uint64_t mlir::anec::getANECIRDataType(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::isSignedInteger(&v5, 4))
  {
    v1 = 0;
    v2 = 0x100000000;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 8))
  {
    v2 = 0x100000000;
    v1 = 1;
  }

  else if (mlir::Type::isSignedInteger(&v5, 8) || mlir::Type::isSignlessInteger(&v5, 8))
  {
    v2 = 0x100000000;
    v1 = 2;
  }

  else if (mlir::Type::isF16(&v5))
  {
    v2 = 0x100000000;
    v1 = 3;
  }

  else if (mlir::Type::isF32(&v5))
  {
    v2 = 0x100000000;
    v1 = 4;
  }

  else if (mlir::Type::isSignedInteger(&v5, 16) || mlir::Type::isSignlessInteger(&v5, 16))
  {
    v2 = 0x100000000;
    v1 = 5;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 16))
  {
    v2 = 0x100000000;
    v1 = 6;
  }

  else if (mlir::Type::isSignedInteger(&v5, 32))
  {
    v2 = 0x100000000;
    v1 = 7;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 32))
  {
    v2 = 0x100000000;
    v1 = 8;
  }

  else
  {
    v2 = 0x100000000;
    if (mlir::Type::isSignedInteger(&v5, 64))
    {
      v1 = 9;
    }

    else
    {
      isUnsignedInteger = mlir::Type::isUnsignedInteger(&v5, 64);
      if (!isUnsignedInteger)
      {
        v2 = 0;
      }

      v1 = 10;
      if (!isUnsignedInteger)
      {
        v1 = 0;
      }
    }
  }

  return v1 | v2;
}

{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  if (v2)
  {
    v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  }

  else
  {
    v1 = 0;
  }

  v5[0] = v1;
  v5[1] = v2;
  isSplat = mlir::ElementsAttr::isSplat(v5);
  return mlir::anec::getANECIRDataType(isSplat) & 0xFFFFFFFFFFLL;
}

size_t anonymous namespace::stringify_to_cfstr@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        v3 = @"UInt8";
      }

      else
      {
        v3 = @"Int4";
      }
    }

    else if (a1 == 2)
    {
      v3 = @"Int8";
    }

    else if (a1 == 3)
    {
      v3 = @"Float16";
    }

    else
    {
      v3 = @"Float32";
    }
  }

  else if (a1 > 7)
  {
    if (a1 == 8)
    {
      v3 = @"UInt32";
    }

    else if (a1 == 9)
    {
      v3 = @"Int64";
    }

    else
    {
      v3 = @"UInt64";
    }
  }

  else if (a1 == 5)
  {
    v3 = @"Int16";
  }

  else if (a1 == 6)
  {
    v3 = @"UInt16";
  }

  else
  {
    v3 = @"Int32";
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, CStringPtr, result);
  }

  *(a2 + v6) = 0;
  return result;
}

void mlir::anec::ANECDictionary::Add<unsigned short,mlir::anec::ANECIRInput::Serialize(void)::$_0>(mlir::anec::ANECDictionary *a1, CFStringRef theString, unsigned __int16 *a3, uint64_t a4)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = strlen(CStringPtr);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v9 = v6;
  if (v6)
  {
    memmove(&__dst, CStringPtr, v6);
    *(&__dst + v7) = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    plist::PListArray::Create();
  }

  LOBYTE(__dst) = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECIRUnit::Serialize(mlir::anec::ANECIRUnit *this)
{
  v3 = *(this + 5);
  if (!v3)
  {
    mlir::anec::ANECDictionary::Create();
  }

  mlir::anec::ANECDictionary::Create(v3);
}

void mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(plist::PListArray *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = a6;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(a1, &__dst, a3, a4, a5, v6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void anonymous namespace::get_elem<std::pair<std::string,mlir::anec::ANECIRDataType>,0ul,anonymous namespace::identity_xform<std::string>>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(plist::PListArray *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = a6;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(a1, &__dst, a3, a4, a5, v6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(mlir::anec::ANECDictionary *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = a6;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(a1, &__dst, a3, a4, a5, v6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECIRConvPoolBase::addParams(uint64_t a1, mlir::anec::ANECDictionary **a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a5)
  {
    mlir::anec::ANECDictionary::PListEntry();
  }

  mlir::anec::ANECDictionary::PListEntry();
}

void mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(mlir::anec::ANECDictionary *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = a6;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(a1, &__dst, a3, a4, a5, v6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

size_t mlir::anec::ANECIRNeuron::ActivationToAneIRType@<X0>(int a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = @"ClampedReLU";
      break;
    case 2:
      v3 = @"Cos";
      break;
    case 3:
      v3 = @"Degamma";
      break;
    case 4:
      v3 = @"Dirac";
      break;
    case 5:
      v3 = @"ELU";
      break;
    case 6:
      v3 = @"Erf";
      break;
    case 7:
      v3 = @"Exp2";
      break;
    case 8:
      v3 = @"Floor";
      break;
    case 9:
      v3 = @"GELU";
      break;
    case 10:
      v3 = @"SigmoidHighPrecision";
      break;
    case 11:
      v3 = @"Inv";
      break;
    case 12:
      v3 = @"LeakyReLU";
      break;
    case 13:
      v3 = @"Log2";
      break;
    case 14:
      v3 = @"ReLUN";
      break;
    case 15:
      v3 = @"ReLU";
      break;
    case 16:
      v3 = @"RoundNearest";
      break;
    case 17:
      v3 = @"Rsqrt";
      break;
    case 18:
      v3 = @"Sigmoid";
      break;
    case 19:
      v3 = @"Sign";
      break;
    case 20:
      v3 = @"Sin";
      break;
    case 21:
      v3 = @"Sqr";
      break;
    case 22:
      v3 = @"Sqrt";
      break;
    case 23:
      v3 = @"Swish";
      break;
    case 24:
      v3 = @"Tanh";
      break;
    case 25:
      v3 = @"Trunc";
      break;
    default:
      v3 = @"Ceil";
      break;
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, CStringPtr, result);
  }

  *(a2 + v6) = 0;
  return result;
}

size_t mlir::anec::ANECIRPoolUnit::PoolTypeToAneIRType@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v3 = @"L2";
    }

    else
    {
      v3 = @"Avg";
    }
  }

  else
  {
    v3 = @"Max";
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, CStringPtr, result);
  }

  *(a2 + v6) = 0;
  return result;
}

uint64_t mlir::anec::ANECIRConstant::SetWeight(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 88) = a8;
  *(result + 96) = a9;
  *(result + 72) = a6;
  *(result + 80) = a7;
  *(result + 56) = a4;
  *(result + 64) = a5;
  return result;
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, CFStringRef theString, mlir::anec::ANECIRInput **a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v16 = v10;
  if (v10)
  {
    memmove(&__p, CStringPtr, v10);
  }

  *(&__p + v11) = 0;
  v12 = *(a5 + 24);
  if (v12)
  {
    if (v12 == a5)
    {
      v18 = v17;
      (*(*v12 + 24))(v12, v17);
    }

    else
    {
      v18 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(__p);
    return;
  }

  if (v18)
  {
    (*(*v18 + 40))(v18, v13, v14);
  }

  if (v16 < 0)
  {
    goto LABEL_18;
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v16 = v10;
  if (v10)
  {
    memmove(&__p, CStringPtr, v10);
  }

  *(&__p + v11) = 0;
  v12 = *(a5 + 24);
  if (v12)
  {
    if (v12 == a5)
    {
      v18 = v17;
      (*(*v12 + 24))(v12, v17);
    }

    else
    {
      v18 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(__p);
    return;
  }

  if (v18)
  {
    (*(*v18 + 40))(v18, v13, v14);
  }

  if (v16 < 0)
  {
    goto LABEL_18;
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v16 = v10;
  if (v10)
  {
    memmove(&__p, CStringPtr, v10);
  }

  *(&__p + v11) = 0;
  v12 = *(a5 + 24);
  if (v12)
  {
    if (v12 == a5)
    {
      v18 = v17;
      (*(*v12 + 24))(v12, v17);
    }

    else
    {
      v18 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(__p);
    return;
  }

  if (v18)
  {
    (*(*v18 + 40))(v18, v13, v14);
  }

  if (v16 < 0)
  {
    goto LABEL_18;
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v16 = v10;
  if (v10)
  {
    memmove(&__p, CStringPtr, v10);
  }

  *(&__p + v11) = 0;
  v12 = *(a5 + 24);
  if (v12)
  {
    if (v12 == a5)
    {
      v18 = v17;
      (*(*v12 + 24))(v12, v17);
    }

    else
    {
      v18 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(__p);
    return;
  }

  if (v18)
  {
    (*(*v18 + 40))(v18, v13, v14);
  }

  if (v16 < 0)
  {
    goto LABEL_18;
  }
}

void mlir::anec::ANECIRNetwork::getUnits(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 416);
  for (i = *(a1 + 424); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    v13 = *v2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 8);
    v7 = *a2;
    if (v6 >= *(a2 + 12))
    {
      if (v7 <= &v13 && v7 + 16 * v6 > &v13)
      {
        v12 = &v13 - v7;
        llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v6 + 1);
        v7 = *a2;
        v8 = &v12[*a2];
        goto LABEL_8;
      }

      llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v6 + 1);
      v7 = *a2;
    }

    v8 = &v13;
LABEL_8:
    v9 = *(a2 + 8);
    v10 = *v8;
    *(v7 + 16 * v9) = *v8;
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
      LODWORD(v9) = *(a2 + 8);
    }

    *(a2 + 8) = v9 + 1;
    v11 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void mlir::anec::ANECIRNetwork::getConstants(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 440);
  for (i = *(a1 + 448); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    v13 = *v2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 8);
    v7 = *a2;
    if (v6 >= *(a2 + 12))
    {
      if (v7 <= &v13 && v7 + 16 * v6 > &v13)
      {
        v12 = &v13 - v7;
        llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v6 + 1);
        v7 = *a2;
        v8 = &v12[*a2];
        goto LABEL_8;
      }

      llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v6 + 1);
      v7 = *a2;
    }

    v8 = &v13;
LABEL_8:
    v9 = *(a2 + 8);
    v10 = *v8;
    *(v7 + 16 * v9) = *v8;
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
      LODWORD(v9) = *(a2 + 8);
    }

    *(a2 + 8) = v9 + 1;
    v11 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void mlir::anec::ANECIRNetwork::getInputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 8);
    v5 = &v4[2 * v2];
    do
    {
      v6 = v4[1];
      v14 = *v4;
      v15 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(a2 + 8);
      v8 = *a2;
      if (v7 >= *(a2 + 12))
      {
        if (v8 <= &v14 && v8 + 16 * v7 > &v14)
        {
          v13 = &v14 - v8;
          llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v7 + 1);
          v8 = *a2;
          v9 = &v13[*a2];
          goto LABEL_8;
        }

        llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v7 + 1);
        v8 = *a2;
      }

      v9 = &v14;
LABEL_8:
      v10 = *(a2 + 8);
      v11 = *v9;
      *(v8 + 16 * v10) = *v9;
      if (*(&v11 + 1))
      {
        atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        LODWORD(v10) = *(a2 + 8);
      }

      *(a2 + 8) = v10 + 1;
      v12 = v15;
      if (v15)
      {
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void mlir::anec::ANECIRNetwork::addWeightFileInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 + 472 == std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::find<std::string>(a1 + 464, a2))
  {
    if (*(a4 + 23) < 0)
    {
      v8 = *(a4 + 8);
      if (v8)
      {
        std::string::__init_copy_ctor_external(&v10, *a4, v8);
LABEL_7:
        v9 = (a1 + 536);
        if (*(a3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
        }

        else
        {
          v11 = *a3;
        }

        v12 = *v9;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
        }

        else
        {
          v13 = *a2;
        }

        if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v14, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
        }

        else
        {
          v14 = v10;
        }

        if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          __p = v11;
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else if (*(a4 + 23))
    {
      v10 = *a4;
      goto LABEL_7;
    }

    v9 = (a1 + 528);
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_jEEC2B8nn200100IJLm0ELm1ELm2EEJS8_S8_jEJEJEJRA1_KcRKS8_RmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(&v10, "", a3, (a1 + 528));
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
    }

    else
    {
      v13 = *a2;
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v10;
    }

    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __p = v11;
      goto LABEL_27;
    }

LABEL_26:
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
LABEL_27:
    v16 = v12;
    std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::tuple<std::string,std::string,unsigned int>>>((a1 + 464), &v13.__r_.__value_.__l.__data_, &v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      }
    }

    else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_37;
    }

LABEL_36:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        ++*v9;
        return;
      }

LABEL_38:
      operator delete(v10.__r_.__value_.__l.__data_);
      goto LABEL_32;
    }

LABEL_37:
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }
}

uint64_t mlir::anec::ANECIRNetwork::getWeightFileIndex(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::find<std::string>(a1 + 464, a2);
  if (a1 + 472 == v8)
  {
    mlir::emitError(a4, &v25);
    if (v25)
    {
      LODWORD(v23[0]) = 3;
      v23[1] = "Cannot find corresponding index from weight file path: ";
      v23[2] = 55;
      v10 = v23;
      v11 = v27;
      if (v28 >= v29)
      {
        if (v27 <= v23 && v27 + 24 * v28 > v23)
        {
          v22 = v23 - v27;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 24);
          v11 = v27;
          v10 = (v27 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 24);
          v10 = v23;
          v11 = v27;
        }
      }

      v12 = &v11[24 * v28];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v28;
      if (v25)
      {
        v24 = 260;
        v23[0] = a2;
        mlir::Diagnostic::operator<<(&v26, v23);
        if (v25)
        {
          mlir::InFlightDiagnostic::report(&v25);
        }
      }
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v34;
        v16 = __p;
        if (v34 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v34 = v14;
        operator delete(v16);
      }

      v17 = v31;
      if (v31)
      {
        v18 = v32;
        v19 = v31;
        if (v32 != v31)
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
          v19 = v31;
        }

        v32 = v17;
        operator delete(v19);
      }

      if (v27 != v30)
      {
        free(v27);
      }
    }

    return 0;
  }

  else
  {
    *a3 = *(v8 + 104);
    return 1;
  }
}

void mlir::anec::ANECIRNetwork::getStates(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v4 = *(a1 + 200);
    v5 = &v4[2 * v2];
    do
    {
      v6 = v4[1];
      v14 = *v4;
      v15 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(a2 + 8);
      v8 = *a2;
      if (v7 >= *(a2 + 12))
      {
        if (v8 <= &v14 && v8 + 16 * v7 > &v14)
        {
          v13 = &v14 - v8;
          llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v7 + 1);
          v8 = *a2;
          v9 = &v13[*a2];
          goto LABEL_8;
        }

        llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v7 + 1);
        v8 = *a2;
      }

      v9 = &v14;
LABEL_8:
      v10 = *(a2 + 8);
      v11 = *v9;
      *(v8 + 16 * v10) = *v9;
      if (*(&v11 + 1))
      {
        atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        LODWORD(v10) = *(a2 + 8);
      }

      *(a2 + 8) = v10 + 1;
      v12 = v15;
      if (v15)
      {
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void mlir::anec::ANECIRNetwork::getLiveInParams(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v4 = *(a1 + 296);
    v5 = &v4[2 * v2];
    do
    {
      v6 = v4[1];
      v14 = *v4;
      v15 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(a2 + 8);
      v8 = *a2;
      if (v7 >= *(a2 + 12))
      {
        if (v8 <= &v14 && v8 + 16 * v7 > &v14)
        {
          v13 = &v14 - v8;
          llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v7 + 1);
          v8 = *a2;
          v9 = &v13[*a2];
          goto LABEL_8;
        }

        llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a2, v7 + 1);
        v8 = *a2;
      }

      v9 = &v14;
LABEL_8:
      v10 = *(a2 + 8);
      v11 = *v9;
      *(v8 + 16 * v10) = *v9;
      if (*(&v11 + 1))
      {
        atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        LODWORD(v10) = *(a2 + 8);
      }

      *(a2 + 8) = v10 + 1;
      v12 = v15;
      if (v15)
      {
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void plist::PListArray::push_back(void *a1, __int128 *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v3 >= v4)
  {
    v7 = a1[1];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
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

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[1];
    v15 = a1[2] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[2] = v6;
}

BOOL plist::PListDict::insert(uint64_t a1, CFStringRef theString, uint64_t **a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = strlen(CStringPtr);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v15 = v6;
  if (v6)
  {
    memmove(&__dst, CStringPtr, v6);
  }

  *(&__dst + v7) = 0;
  v8 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 8), &__dst);
  if (!v8)
  {
    p_dst = &__dst;
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), &__dst, &std::piecewise_construct, &p_dst);
    v12 = *a3;
    v11 = a3[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10[6];
    v10[5] = v12;
    v10[6] = v11;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  if (v15 < 0)
  {
    operator delete(__dst);
  }

  return v8 == 0;
}

void mlir::anec::ANECIRUnit::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4)
{
  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToNameAndShorten(v8, a2, a4);
  v9 = *(a1 + 40);
  if (v9)
  {
    std::string::operator=((v9 + 8), v8);
    v10 = *(a1 + 40);
    v11 = *(v10 + 40);
    v12 = *(v10 + 48);
    if (v11 != v12)
    {
      do
      {
        mlir::anec::PrependProcNameToNameAndShorten(v11, a2, a4);
        v11 += 24;
      }

      while (v11 != v12);
      v10 = *(a1 + 40);
    }

    if ((*(v10 + 32) - 61) < 2)
    {
      for (i = *(v10 + 96); i; i = *i)
      {
        mlir::anec::PrependProcNameToNameAndShorten((i + 3), a2, a4);
      }
    }
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = *(a1 + 64);
    v16 = 32 * v14;
    do
    {
      mlir::anec::PrependProcNameToNameAndShorten(v15, a2, a4);
      v15 += 32;
      v16 -= 32;
    }

    while (v16);
  }

  v19 = v8;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v8->__r_.__value_.__l.__data_, &std::piecewise_construct, &v19);
  std::string::operator=((v17 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::ANECIRGOCUnit::~ANECIRGOCUnit(mlir::anec::ANECIRGOCUnit *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::ANECIRNeuron::~ANECIRNeuron(mlir::anec::ANECIRNeuron *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::ANECIRPoolUnit::~ANECIRPoolUnit(mlir::anec::ANECIRPoolUnit *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_jEEC2B8nn200100IJLm0ELm1ELm2EEJS8_S8_jEJEJEJRA1_KcRKS8_RmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(uint64_t a1, char *__s, __int128 *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v8;
  if (v8)
  {
    memmove(a1, __s, v8);
  }

  *(a1 + v9) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v10;
  }

  *(a1 + 48) = *a4;
  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_33;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_33:
    operator new();
  }

  v16 = *(v4 + 23);
  if (v16 >= 0)
  {
    v17 = *(v4 + 23);
  }

  else
  {
    v17 = v4[1];
  }

  if (v16 < 0)
  {
    v4 = *v4;
  }

  while (1)
  {
    v18 = v15[1];
    if (v18 == v9)
    {
      break;
    }

    if (v12 <= 1)
    {
      v18 &= *&v10 - 1;
    }

    else if (v18 >= *&v10)
    {
      v18 %= *&v10;
    }

    if (v18 != v13)
    {
      goto LABEL_33;
    }

LABEL_20:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_33;
    }
  }

  v19 = *(v15 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v15[3];
  }

  if (v19 != v17)
  {
    goto LABEL_20;
  }

  v21 = v20 >= 0 ? (v15 + 2) : v15[2];
  if (memcmp(v21, v4, v17))
  {
    goto LABEL_20;
  }

  return v15;
}

void mlir::anec::ANECDictionary::Add(uint64_t *a1, CFStringRef theString, uint64_t **a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = strlen(CStringPtr);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v13 = v6;
  if (v6)
  {
    memmove(&__dst, CStringPtr, v6);
  }

  *(&__dst + v7) = 0;
  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::Add(a1, &__dst, &v10);
  v9 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (v13 < 0)
  {
LABEL_12:
    operator delete(__dst);
  }
}

void mlir::anec::ANECDictionary::PListEntry(mlir::anec::ANECDictionary *this, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v4 = strlen(CStringPtr);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      v7 = v4;
      if (v4)
      {
        memmove(&__dst, CStringPtr, v4);
      }

      *(&__dst + v5) = 0;
      mlir::anec::ANECDictionary::PListEntry();
    }

    operator new();
  }

  std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
}

void mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(plist::PListArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t, uint64_t, uint64_t), char a6)
{
  if (a4)
  {
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(&__p, a3, a2, a3);
      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create();
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(plist::PListArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t, uint64_t, uint64_t), char a6)
{
  if (a4)
  {
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(&__p, a3, a2, a3);
      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create();
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(mlir::anec::ANECDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), char a6)
{
  if (a4)
  {
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(a3, a2, a3);
      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create();
  }
}

void mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(mlir::anec::ANECDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), char a6)
{
  if (a4)
  {
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(a3, a2, a3);
      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create();
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, uint64_t a2, mlir::anec::ANECIRInput **a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    mlir::anec::ANECIRInput::Serialize();
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, 0, 1);
}

void mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(plist::PListArray *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (a4)
  {
    if (a4 == 1 && (a5 & 1) == 0)
    {
      v5 = *a3;
      if (*(*a3 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, *(v5 + 8), *(v5 + 16));
      }

      else
      {
        v6 = *(v5 + 8);
        v7.__r_.__value_.__r.__words[2] = *(v5 + 24);
        *&v7.__r_.__value_.__l.__data_ = v6;
      }

      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create();
  }
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_11ANECIRInputENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    mlir::anec::ANECIROutput::Serialize();
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, 0, 1);
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_12ANECIROutputENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 16 * a4;
    v11 = a3;
    do
    {
      v12 = *v11;
      (*(**v11 + 24))(&v17, *v11);
      v13 = *(a5 + 24);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        JUMPOUT(0x1A737E2C0);
      }

      (*(*v13 + 48))(&v19);
      mlir::anec::ANECDictionary::PListEntry(&v19, &v21);
      mlir::anec::ANECDictionary::Add(a1, (v12 + 8), &v21);
      v14 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = v20;
        if (v20)
        {
LABEL_8:
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }
      }

      else
      {
        v15 = v20;
        if (v20)
        {
          goto LABEL_8;
        }
      }

      v16 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v11 += 2;
      v10 -= 16;
    }

    while (v10);
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, a4, 1);
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_10ANECIRUnitENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(plist::PListArray *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    mlir::anec::ANECIRConstant::Serialize();
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, 0, 1);
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_14ANECIRConstantENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t **std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::tuple<std::string,std::string,unsigned int>>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = *(v20 + 8);
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = (v38 + 1);
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = a4 + 4;
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

std::string **std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:nn200100]<std::vector<std::string>&,std::vector<std::string>&,0>(std::string **a1, __int128 **a2, char **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_8;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v4 = a3[1] - *a3;
  if (v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_8:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return;
  }

  std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(a1, *a2);
  std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(a1, *(a2 + 1));
  if ((a2[103] & 0x80000000) == 0)
  {
    if ((a2[79] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    operator delete(*(a2 + 7));
    if ((a2[55] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    operator delete(*(a2 + 4));
    goto LABEL_5;
  }

  operator delete(*(a2 + 10));
  if (a2[79] < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (a2[55] < 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  operator delete(a2);
}

void mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRNetwork>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRNetwork>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRNetwork>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRNetwork> const&)#1}>(plist::PListArray *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (a4)
  {
    if (a4 == 1 && (a5 & 1) == 0)
    {
      v5 = *a3;
      if (*(*a3 + 415) < 0)
      {
        std::string::__init_copy_ctor_external(&v6, *(v5 + 392), *(v5 + 400));
      }

      else
      {
        v6 = *(v5 + 392);
      }

      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create();
  }
}

void std::__shared_ptr_emplace<plist::PListString>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A34748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_emplace<plist::PListString>::__shared_ptr_emplace[abi:nn200100]<__CFString const*,std::allocator<plist::PListString>,0>(uint64_t a1, const __CFString **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1A34748;
  v3 = *a2;
  *(a1 + 24) = &unk_1F1A34888;
  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  v5 = strlen(CStringPtr);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v7 = (a1 + 32);
  *(a1 + 55) = v5;
  if (v5)
  {
    memmove(v7, CStringPtr, v5);
  }

  *(v7 + v6) = 0;
  return a1;
}

void std::allocator<plist::PListString>::construct[abi:nn200100]<plist::PListString,char const(&)[19]>(int a1, void *a2, char *__s)
{
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  *a2 = &unk_1F1A34888;
  v7 = (a2 + 1);
  if (SHIBYTE(v10) < 0)
  {
    v8 = __dst;
    std::string::__init_copy_ctor_external(v7, __dst, *(&__dst + 1));

    operator delete(v8);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = __dst;
    v7->__r_.__value_.__r.__words[2] = v10;
  }
}

BOOL mlir::anec::ANECIRWeightSerializer::hasConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v11, a2);
  v3 = *(this + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 6);
  v5 = v3 - 1;
  v6 = v5 & ((LODWORD(v12[0]) >> 4) ^ (LODWORD(v12[0]) >> 9));
  v7 = *(v4 + 8 * v6);
  if (v7 == v12[0])
  {
    return 1;
  }

  v9 = 1;
  do
  {
    result = v7 != -4096;
    if (v7 == -4096)
    {
      break;
    }

    v10 = v6 + v9++;
    v6 = v10 & v5;
    v7 = *(v4 + 8 * v6);
  }

  while (v7 != v12[0]);
  return result;
}

uint64_t mlir::anec::ANECIRWeightSerializer::resetForNextFunction(uint64_t this)
{
  if (*(this + 56))
  {
    v1 = *(this + 64);
    if (v1 <= 4 * *(this + 56) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = *(this + 48);
        v3 = (v1 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v4 = v2;
        if (v3 <= 2)
        {
          goto LABEL_10;
        }

        v5 = v3 + 1;
        v4 = &v2->i64[v5 & 0x3FFFFFFFFFFFFFFCLL];
        v6 = v2 + 1;
        v7 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v8 = v5 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v6[-1] = v7;
          *v6 = v7;
          v6 += 2;
          v8 -= 4;
        }

        while (v8);
        if (v5 != (v5 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_10:
          v9 = &v2->i64[v1];
          do
          {
            *v4++ = -4096;
          }

          while (v4 != v9);
        }
      }

      *(this + 56) = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(this + 48);
    }
  }

  return this;
}

unint64_t mlir::anec::ANECIRWeightSerializer::addConstant(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  isSplat = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 48), &isSplat, &ShapedType);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6 - 1;
  v8 = ((a2 >> 4) ^ (a2 >> 9)) & (v6 - 1);
  v9 = *(v5 + 16 * v8);
  if (v9 != a2)
  {
    v20 = 1;
    v21 = *(v5 + 16 * (((a2 >> 4) ^ (a2 >> 9)) & v7));
    v22 = ((a2 >> 4) ^ (a2 >> 9)) & v7;
    while (v21 != -4096)
    {
      v23 = v22 + v20++;
      v22 = v23 & v7;
      v21 = *(v5 + 16 * v22);
      if (v21 == a2)
      {
        if (v22 == v6)
        {
          goto LABEL_4;
        }

        if (v9 != a2)
        {
          v24 = 1;
          while (v9 != -4096)
          {
            v25 = v8 + v24++;
            v8 = v25 & v7;
            v9 = *(v5 + 16 * v8);
            if (v9 == a2)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_4;
  }

  if (v8 == v6)
  {
LABEL_4:
    ShapedType = mlir::ElementsAttr::getShapedType(&v31);
    v37 = v10;
    isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
    if (mlir::Type::getIntOrFloatBitWidth(&isSplat) == 32)
    {
      v11 = 4;
    }

    else
    {
      ShapedType = mlir::ElementsAttr::getShapedType(&v31);
      v37 = v12;
      isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      v11 = 1;
      if (IntOrFloatBitWidth == 16)
      {
        v11 = 2;
      }
    }

    v14 = (*a1 - (*a1 != 0)) / v11;
    if (*a1)
    {
      ++v14;
    }

    v15 = v14 * v11;
    llvm::raw_ostream::write(*(a1 + 72), v30, v14 * v11 - *a1);
    v16 = v31;
    v28 = v31;
    v29 = v15;
    isSplat = v31;
    v35 = 0;
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>((a1 + 8), &isSplat, &v35, &ShapedType);
    if (v38 == 1)
    {
      v17 = *(a1 + 40);
      *(ShapedType + 8) = v17;
      v33 = &v29;
      isSplat = &v28;
      if (v17 >= *(a1 + 44))
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(a1 + 32, &std::piecewise_construct, &isSplat, &v33);
      }

      else
      {
        v18 = (*(a1 + 32) + 16 * v17);
        *v18 = v16;
        v18[1] = v15;
        *(a1 + 40) = v17 + 1;
      }
    }

    Type = mlir::ElementsAttr::getType(&v31);
    if (Type)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *a1 = mlir::mps::writeConstantData(*(a1 + 72), v31, v32);
    return v15;
  }

LABEL_24:
  if (v8 == v6)
  {
LABEL_25:
    v26 = (a1 + 40);
  }

  else
  {
    v26 = (v5 + 16 * v8 + 8);
  }

  return *(*(a1 + 32) + 16 * *v26 + 8);
}

unint64_t mlir::anec::ANECIRWeightSerializer::addConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v5 = 0;
  v6 = 0;
  v4 = &v5;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v4, a2);
  return mlir::anec::ANECIRWeightSerializer::addConstant(this, v5, v6);
}

uint64_t mlir::anec::ANECIRWeightSerializer::lookupConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v11, a2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 1);
    v5 = (v3 - 1) & ((LODWORD(v12[0]) >> 4) ^ (LODWORD(v12[0]) >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == v12[0])
    {
LABEL_3:
      if (v5 != v3)
      {
        v7 = (v4 + 16 * v5 + 8);
        return *(*(this + 4) + 16 * *v7 + 8);
      }
    }

    else
    {
      v9 = 1;
      while (v6 != -4096)
      {
        v10 = v5 + v9++;
        v5 = v10 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == v12[0])
        {
          goto LABEL_3;
        }
      }
    }
  }

  v7 = (this + 40);
  return *(*(this + 4) + 16 * *v7 + 8);
}

void mlir::anec::ANECDictionary::Create(mlir::anec::ANECDictionary *this)
{
  switch(*(this + 8))
  {
    case 2:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xD:
    case 0xE:
    case 0x17:
    case 0x1A:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x21:
    case 0x26:
    case 0x28:
    case 0x2A:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
      __break(1u);
      return;
    case 3:
      ZinCreateConcatUnit(this);
      break;
    case 4:
      ZinCreateEWUnit(this);
      break;
    case 5:
      ZinCreateScaledEWUnit(this);
      break;
    case 0xB:
      ZinCreateFlattenUnit(this);
      break;
    case 0xC:
      ZinCreateUnflattenUnit(this);
      break;
    case 0xF:
      ZinCreateArgMinMaxUnit(this);
      break;
    case 0x10:
      ZinCreateGlobalArgMinMaxUnit(this);
      break;
    case 0x11:
      ZinCreateInputViewUnit(this);
      break;
    case 0x12:
      ZinCreateMatrixMultUnit(this);
      break;
    case 0x13:
      ZinCreateBroadcastUnit(this);
      break;
    case 0x14:
      ZinCreateReductionUnit(this);
      break;
    case 0x15:
      ZinCreateTransposeUnit(this);
      break;
    case 0x16:
      ZinCreateReshapeUnit(this);
      break;
    case 0x18:
      ZinCreateSoftmaxUnit(this);
      break;
    case 0x19:
      ZinCreateInstanceNormUnit(this);
      break;
    case 0x1C:
      ZinCreateMinMaxNormUnit(this);
      break;
    case 0x1F:
      ZinCreatePixelShuffleUnit(this);
      break;
    case 0x20:
      ZinCreatePixelUnshuffleUnit(this);
      break;
    case 0x22:
      ZinCreateSpaceToBatchUnit(this);
      break;
    case 0x23:
      ZinCreateBatchToSpaceUnit(this);
      break;
    case 0x24:
      ZinCreateSpaceToChannelUnit(this);
      break;
    case 0x25:
      ZinCreateChannelToSpaceUnit(this);
      break;
    case 0x27:
      ZinCreateGatherUnit(this);
      break;
    case 0x29:
      ZinCreateResizeUnit(this);
      break;
    case 0x2B:
      ZinCreateResampleUnit(this);
      break;
    case 0x2C:
      ZinCreatePadUnit(this);
      break;
    case 0x2D:
      ZinCreateTileUnit(this);
      break;
    case 0x2E:
      ZinCreateCropResizeUnit(this);
      break;
    case 0x3A:
      ZinCreateQuantUnit(this);
      break;
    case 0x3B:
      ZinCreateDeQuantUnit(this);
      break;
    case 0x3C:
      ZinCreateLinearUnit(this);
      break;
    case 0x3D:
      ZinCreateRingBufferWriterUnit(this);
      break;
    case 0x3E:
      ZinCreateRingBufferReaderUnit(this);
      break;
    case 0x3F:
      ZinCreateBatchNormUnit(this);
      break;
    case 0x4B:
    case 0x4C:
      ZinCreateAllGatherUnit(this);
      break;
    case 0x4D:
      ZinCreateSDPAUnit(this);
      break;
    default:
      ZinCreateConvUnit(this);
      break;
  }

  operator new();
}

void mlir::anec::ANECDictionary::Add(uint64_t *a1, unsigned __int8 *a2, uint64_t **a3)
{
  plist::PListDict::GetValueForKey(*a1, a2, &v13);
  v7 = v13;
  v6 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

  v8 = *a1;
  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v8 + 8), a2))
  {
    v13 = a2;
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 8), a2, &std::piecewise_construct, &v13);
    v11 = *a3;
    v10 = a3[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v9[6];
    v9[5] = v11;
    v9[6] = v10;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void mlir::anec::ANECDictionary::WriteToStream(mlir::anec::ANECDictionary *this, llvm::raw_ostream *a2)
{
  v17 = 0;
  v3 = MEMORY[0x1E69E5570] + 24;
  v4 = MEMORY[0x1E69E5570] + 64;
  v16 = MEMORY[0x1E69E5570] + 64;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v7 = *(MEMORY[0x1E69E54E8] + 8);
  *(&v7 + *(v7 - 24)) = v5;
  v6 = (&v7 + *(v7 - 24));
  std::ios_base::init(v6, &v8);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v7 = v3;
  v16 = v4;
  v8 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC559EE0](&v9);
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v8 = MEMORY[0x1E69E5548] + 16;
  *v13 = 0u;
  v14 = 0u;
  v15 = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](&v8);
  plist::PListDict::Dump(*this, &v7, 0, 4);
}

void mlir::anec::ANECDictionary::PListEntry()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void mlir::anec::ANECDictionary::PListEntry(void **a1@<X1>, void *a2@<X8>)
{
  v2 = (*a1)[1];
  *a2 = **a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::PListEntry(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::Create(ZinIrUnitInfo const&)::$_0::__invoke(const __CFString *a1, const __CFString *a2, uint64_t *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  ZinGetString(a1, __p);
  plist::PListType::PListFromCF(&v6, a2);
  mlir::anec::ANECDictionary::Add(a3, __p, &v6);
  v5 = v7;
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (SHIBYTE(v9) < 0)
  {
LABEL_4:
    operator delete(__p[0]);
  }
}

BOOL ZinGetString(CFStringRef theString, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    if (theString)
    {
      goto LABEL_3;
    }

    return 0;
  }

  **a2 = 0;
  *(a2 + 8) = 0;
  if (!theString)
  {
    return 0;
  }

LABEL_3:
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    if (v6 <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v6;
      if (v6)
      {
        memmove(&__dst, v5, v6);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      return 1;
    }

LABEL_37:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v11 = MaximumSizeForEncoding + 1;
  if ((MaximumSizeForEncoding + 1) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_37;
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = MaximumSizeForEncoding + 1;
  if (MaximumSizeForEncoding != -1)
  {
    bzero(&__dst, v11);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  CString = CFStringGetCString(theString, p_dst, v11, 0x8000100u);
  result = CString != 0;
  v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (CString)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__dst;
    }

    else
    {
      v15 = __dst.__r_.__value_.__r.__words[0];
    }

    v16 = strlen(v15);
    std::string::resize(&__dst, v16, 0);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __dst;
    }

    result = 1;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      result = 1;
    }

    *a2 = v18;
    v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v14 < 0)
  {
    v17 = result;
    operator delete(__dst.__r_.__value_.__l.__data_);
    return v17;
  }

  return result;
}

void std::__shared_ptr_pointer<mlir::anec::ANECDictionary *,std::shared_ptr<mlir::anec::ANECDictionary>::__shared_ptr_default_delete<mlir::anec::ANECDictionary,mlir::anec::ANECDictionary>,std::allocator<mlir::anec::ANECDictionary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<mlir::anec::ANECDictionary *,std::shared_ptr<mlir::anec::ANECDictionary>::__shared_ptr_default_delete<mlir::anec::ANECDictionary,mlir::anec::ANECDictionary>,std::allocator<mlir::anec::ANECDictionary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v2 = *(result + 8);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2;
    v5 = *(a1 + 87);
    v6 = *(a1 + 96);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
LABEL_3:
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

LABEL_4:
  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__shared_ptr_pointer<plist::PListInt *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListInt>,std::allocator<plist::PListInt>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<plist::PListInt *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListInt>,std::allocator<plist::PListInt>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListBool *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListBool>,std::allocator<plist::PListBool>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<plist::PListBool *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListBool>,std::allocator<plist::PListBool>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListString *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListString>,std::allocator<plist::PListString>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<plist::PListString *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListString>,std::allocator<plist::PListString>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void plist::PListType::PListFromCF(uint64_t *__return_ptr a1@<X8>, const __CFString *this@<X0>)
{
  if (this)
  {
    v4 = CFGetTypeID(this);
    if (v4 == CFStringGetTypeID())
    {
      __p[0] = 0;
      __p[1] = 0;
      v14 = 0;
      ZinGetString(this, __p);
      operator new();
    }

    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(this);
      operator new();
    }

    v6 = CFGetTypeID(this);
    if (v6 == CFNumberGetTypeID())
    {
      Type = CFNumberGetType(this);
      v12 = 0.0;
      CFNumberGetValue(this, Type, &v12);
      IsFloatType = CFNumberIsFloatType(this);
      ByteSize = CFNumberGetByteSize(this);
      if (IsFloatType)
      {
        if (ByteSize == 4)
        {
          operator new();
        }

        CFNumberGetByteSize(this);
        operator new();
      }

      if (ByteSize == 1)
      {
        operator new();
      }

      if (CFNumberGetByteSize(this) == 2)
      {
        operator new();
      }

      if (CFNumberGetByteSize(this) == 4)
      {
        operator new();
      }

      CFNumberGetByteSize(this);
      operator new();
    }

    v10 = CFGetTypeID(this);
    if (v10 == CFDictionaryGetTypeID())
    {
      operator new();
    }

    v11 = CFGetTypeID(this);
    if (v11 == CFArrayGetTypeID())
    {
      operator new();
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

void *plist::PListString::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v24 = __len;
  if (__len)
  {
    memset(__b, 32, __len);
  }

  *(__b + __len) = 0;
  if ((v24 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v7 = v24;
  }

  else
  {
    v7 = __b[1];
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
  v22 = 8;
  strcpy(v21, "<string>");
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v21, 8);
  v12 = *(a1 + 8);
  v11 = a1 + 8;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v14, v15);
  v20 = 10;
  strcpy(__p, "</string>\n");
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 10);
  if ((v20 & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v21[0]);
    if ((v24 & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_25:
    operator delete(__b[0]);
    return v17;
  }

  operator delete(__p[0]);
  if (v22 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v24 < 0)
  {
    goto LABEL_25;
  }

  return v17;
}

plist::PListReal *plist::PListReal::PListReal(plist::PListReal *this, double a2)
{
  *this = &unk_1F1A34860;
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a2 == -INFINITY)
  {
    MEMORY[0x1AC559980](v3, "-infinity");
  }

  else if (a2 == INFINITY)
  {
    MEMORY[0x1AC559980](v3, "+infinity");
  }

  else if (a2 == 0.0)
  {
    MEMORY[0x1AC559980](v3, "0.0");
  }

  else
  {
    v4 = v3;
    memset(&v10, 0, sizeof(v10));
    v6 = snprintf(0, 0, "%.*g", 17, a2);
    begin = 0;
    v8 = v6 + 1;
    if (v6 != -1)
    {
      std::vector<char>::__append(&v10, v6 + 1);
      begin = v10.__begin_;
    }

    snprintf(begin, v8, "%.*g", 17, a2);
    MEMORY[0x1AC559980](v4, v10.__begin_);
    if (v10.__begin_)
    {
      v10.__end_ = v10.__begin_;
      operator delete(v10.__begin_);
    }
  }

  return this;
}

void *plist::PListReal::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v24 = __len;
  if (__len)
  {
    memset(__b, 32, __len);
  }

  *(__b + __len) = 0;
  if ((v24 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v7 = v24;
  }

  else
  {
    v7 = __b[1];
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
  v22 = 6;
  strcpy(v21, "<real>");
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v21, 6);
  v12 = *(a1 + 8);
  v11 = a1 + 8;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v14, v15);
  v20 = 8;
  strcpy(__p, "</real>\n");
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 8);
  if ((v20 & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v21[0]);
    if ((v24 & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_25:
    operator delete(__b[0]);
    return v17;
  }

  operator delete(__p[0]);
  if (v22 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v24 < 0)
  {
    goto LABEL_25;
  }

  return v17;
}

void *plist::PListInt::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v21 = __len;
  if (__len)
  {
    memset(__b, 32, __len);
  }

  *(__b + __len) = 0;
  if ((v21 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = __b[1];
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
  v19 = 9;
  strcpy(__p, "<integer>");
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, __p, 9);
  std::to_string(&v17, *(a1 + 8));
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v17;
  }

  else
  {
    v10 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v10, size);
  v16 = 11;
  strcpy(v15, "</integer>\n");
  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v15, 11);
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      operator delete(__p[0]);
      if ((v21 & 0x80000000) == 0)
      {
        return v13;
      }

LABEL_27:
      operator delete(__b[0]);
      return v13;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if (v19 < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (v21 < 0)
  {
    goto LABEL_27;
  }

  return v13;
}

void *plist::PListBool::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v12 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if (v12 >= 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b;
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = *(&__b + 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, p_b, v7);
  if (v12 < 0)
  {
    operator delete(__b);
  }

  if (*(a1 + 8) == 1)
  {
    v12 = 8;
    strcpy(&__b, "<true/>\n");
    v8 = a2;
    v9 = 8;
  }

  else
  {
    v12 = 9;
    strcpy(&__b, "<false/>\n");
    v8 = a2;
    v9 = 9;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, &__b, v9);
  if (v12 < 0)
  {
    operator delete(__b);
  }

  return a2;
}

void *plist::PListDict::DoPrint(uint64_t a1, void *a2, size_t __len, uint64_t a4)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_62:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v32 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v32 & 0x80u) == 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b;
  }

  if ((v32 & 0x80u) == 0)
  {
    v9 = v32;
  }

  else
  {
    v9 = v31;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, p_b, v9);
  v29 = 7;
  strcpy(__p, "<dict>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, __p, 7);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(__b);
    v11 = *(a1 + 24);
    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_19;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
LABEL_19:
    v12 = a4 + __len;
    do
    {
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v32 = a4 + __len;
      if (v12)
      {
        memset(&__b, 32, v12);
      }

      *(&__b + v12) = 0;
      if ((v32 & 0x80u) == 0)
      {
        v13 = &__b;
      }

      else
      {
        v13 = __b;
      }

      if ((v32 & 0x80u) == 0)
      {
        v14 = v32;
      }

      else
      {
        v14 = v31;
      }

      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v13, v14);
      v29 = 5;
      strcpy(__p, "<key>");
      v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, __p, 5);
      v17 = *(v11 + 39);
      if (v17 >= 0)
      {
        v18 = (v11 + 2);
      }

      else
      {
        v18 = v11[2];
      }

      if (v17 >= 0)
      {
        v19 = *(v11 + 39);
      }

      else
      {
        v19 = v11[3];
      }

      v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v18, v19);
      v27 = 7;
      strcpy(v26, "</key>\n");
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, v26, 7);
      if (v27 < 0)
      {
        operator delete(v26[0]);
        if ((v29 & 0x80000000) == 0)
        {
LABEL_41:
          if (v32 < 0)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        }
      }

      else if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      operator delete(__p[0]);
      if (v32 < 0)
      {
LABEL_45:
        operator delete(__b);
      }

LABEL_20:
      (*(*v11[5] + 16))(v11[5], a2, v12, a4);
      v11 = *v11;
    }

    while (v11);
  }

LABEL_46:
  if (__len >= 0x17)
  {
    operator new();
  }

  v32 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v32 & 0x80u) == 0)
  {
    v21 = &__b;
  }

  else
  {
    v21 = __b;
  }

  if ((v32 & 0x80u) == 0)
  {
    v22 = v32;
  }

  else
  {
    v22 = v31;
  }

  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v21, v22);
  v29 = 8;
  strcpy(__p, "</dict>\n");
  v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, __p, 8);
  if (v29 < 0)
  {
    operator delete(__p[0]);
    if ((v32 & 0x80000000) == 0)
    {
      return v24;
    }

LABEL_61:
    operator delete(__b);
    return v24;
  }

  if (v32 < 0)
  {
    goto LABEL_61;
  }

  return v24;
}

uint64_t **plist::PListDict::GetValueForKey@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 8), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void *plist::PListArray::DoPrint(uint64_t a1, void *a2, size_t __len, uint64_t a4)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v23 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v23 & 0x80u) == 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b;
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = v22;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, p_b, v9);
  v20 = 8;
  strcpy(__p, "<array>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, __p, 8);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__b);
LABEL_15:
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  while (v12 != v11)
  {
    v13 = *v12;
    v12 += 2;
    (*(*v13 + 16))(v13, a2, a4 + __len, a4);
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v23 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v23 & 0x80u) == 0)
  {
    v14 = &__b;
  }

  else
  {
    v14 = __b;
  }

  if ((v23 & 0x80u) == 0)
  {
    v15 = v23;
  }

  else
  {
    v15 = v22;
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v14, v15);
  v20 = 9;
  strcpy(__p, "</array>\n");
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 9);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((v23 & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_34:
    operator delete(__b);
    return v17;
  }

  if (v23 < 0)
  {
    goto LABEL_34;
  }

  return v17;
}

void plist::PListString::~PListString(void **this)
{
  *this = &unk_1F1A34888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F1A34888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1AC55A070);
}

void plist::PListArray::~PListArray(plist::PListArray *this)
{
  *this = &unk_1F1A34900;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_1F1A34900;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1AC55A070);
}

void plist::PListDict::~PListDict(plist::PListDict *this)
{
  *this = &unk_1F1A34928;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(this + 8);
}

{
  *this = &unk_1F1A34928;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(this + 8);

  JUMPOUT(0x1AC55A070);
}

void plist::PListReal::~PListReal(void **this)
{
  *this = &unk_1F1A34860;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F1A34860;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1AC55A070);
}

void plist::PListType::PListFromCF(void const*)::$_0::__invoke(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  ZinGetString(a1, __p);
  plist::PListType::PListFromCF(&v10, a2);
  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a3 + 8), __p))
  {
    v14 = __p;
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 8), __p, &std::piecewise_construct, &v14);
    v8 = v10;
    v7 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6[6];
    v6[5] = v8;
    v6[6] = v7;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  v5 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (SHIBYTE(v13) < 0)
  {
LABEL_5:
    operator delete(__p[0]);
  }
}

void plist::PListType::PListFromCF(void const*)::$_1::__invoke(const __CFString *a1, void *a2)
{
  plist::PListType::PListFromCF(&v17, a1);
  v3 = a2[2];
  v4 = a2[3];
  if (v3 >= v4)
  {
    v7 = a2[1];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
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

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *(&v17 + 1);
    *(16 * v8) = v17;
    v5 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a2[1];
    v15 = a2[2] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a2[1] = v16;
    a2[2] = v6;
    a2[3] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(&v17 + 1);
    *v3 = v17;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a2[2] = v6;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1AC559AD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1AC559AE0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      v15 = v14;
      if (v19 < 0)
      {
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void std::__shared_ptr_emplace<plist::PListBool>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A34950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<plist::PListReal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A34988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<plist::PListInt>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A349C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_pointer<plist::PListDict *,std::shared_ptr<plist::PListDict>::__shared_ptr_default_delete<plist::PListDict,plist::PListDict>,std::allocator<plist::PListDict>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<plist::PListDict *,std::shared_ptr<plist::PListDict>::__shared_ptr_default_delete<plist::PListDict,plist::PListDict>,std::allocator<plist::PListDict>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListArray *,std::shared_ptr<plist::PListArray>::__shared_ptr_default_delete<plist::PListArray,plist::PListArray>,std::allocator<plist::PListArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<plist::PListArray *,std::shared_ptr<plist::PListArray>::__shared_ptr_default_delete<plist::PListArray,plist::PListArray>,std::allocator<plist::PListArray>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void mlir::anec::anonymous namespace::ANEC_AddGocs::~ANEC_AddGocs(mlir::anec::_anonymous_namespace_::ANEC_AddGocs *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_AddGocs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v143[1] = *MEMORY[0x1E69E9840];
  v137 = v139;
  v139[0] = a2;
  v138 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ShapedType = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ShapedType);
  if (!DefiningOp)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v5 + 3);
LABEL_15:
    (*(*v10 + 88))(v10, v11, v12, &ShapedType);
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v7 = DefiningOp;
  v8 = *(*(DefiningOp + 48) + 16);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v9 = DefiningOp;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v7 + 24);
    goto LABEL_15;
  }

  ShapedType = *(*(DefiningOp + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&ShapedType);
  if (!v15)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v7 + 24);
    goto LABEL_15;
  }

  v16 = *(*(v15 + 48) + 16);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10)
    {
      goto LABEL_16;
    }

    v18 = v15;
    if (!instruction::util::IsTasklet(v10))
    {
      goto LABEL_16;
    }

    v11 = *(v18 + 24);
    goto LABEL_15;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v19 = *(v15 + 72);
    v20 = v19 + 32;
  }

  else
  {
    v19 = 0;
    v20 = 32;
  }

  *(v137 + v138) = v15;
  LODWORD(v138) = v138 + 1;
  ShapedType = *(*(v7 + 72) + 56);
  v21 = mlir::Value::getDefiningOp(&ShapedType);
  if (!v21)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v7 + 24);
    goto LABEL_15;
  }

  v22 = *(*(v21 + 48) + 16);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10)
    {
      goto LABEL_16;
    }

    v24 = v21;
    if (!instruction::util::IsTasklet(v10))
    {
      goto LABEL_16;
    }

    v11 = *(v24 + 24);
    goto LABEL_15;
  }

  v132 = v23;
  if ((*(v21 + 46) & 0x80) != 0)
  {
    v25 = *(v21 + 72);
    v26 = v25 + 32;
  }

  else
  {
    v25 = 0;
    v26 = 32;
  }

  v133 = v26;
  v27 = v138;
  if (v138 >= HIDWORD(v138))
  {
    v131 = v25;
    v105 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v138 + 1, 8);
    v21 = v105;
    v25 = v131;
    v27 = v138;
  }

  *(v137 + v27) = v21;
  v28 = (v138 + 1);
  LODWORD(v138) = v28;
  if (v28 >= HIDWORD(v138))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v28 + 1, 8);
    LODWORD(v28) = v138;
  }

  *(v137 + v28) = v7;
  LODWORD(v138) = v138 + 1;
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v29 = *(v5 + 9);
    v30 = v29 + 32;
  }

  else
  {
    v29 = 0;
    v30 = 32;
  }

  v134 = v30;
  v135 = 0;
  v31 = *(v29 + 88);
  v136 = 0;
  v143[0] = &v135;
  ShapedType = v31;
  v32 = mlir::Value::getDefiningOp(&ShapedType);
  if (!v32 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v143, v32))
  {
    goto LABEL_247;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(&v135);
  v141 = v33;
  v34 = *(*mlir::ElementsAttr::isSplat(&ShapedType) + 136);
  v130 = v25;
  if (v34 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ShapedType = v142;
    v141 = 0xC00000000;
    mlir::getIntValues<float>(v135, v136, &ShapedType, 0);
    if (v141)
    {
      v41 = 4 * v141 - 4;
      v42 = ShapedType;
      do
      {
        v43 = *v42++;
        v44 = v43 == 0.0;
        v45 = v43 != 0.0 || v41 == 0;
        v41 -= 4;
      }

      while (!v45);
    }

    else
    {
      v44 = 1;
    }

    if (ShapedType != v142)
    {
      free(ShapedType);
    }

    if (!v44)
    {
      goto LABEL_247;
    }
  }

  else
  {
    ShapedType = mlir::ElementsAttr::getShapedType(&v135);
    v141 = v35;
    if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_247;
    }

    ShapedType = v142;
    v141 = 0xC00000000;
    mlir::getIntValues<float>(v135, v136, &ShapedType, 0);
    if (v141)
    {
      v36 = 4 * v141 - 4;
      v37 = ShapedType;
      do
      {
        v38 = *v37++;
        v39 = v38 == 0.0;
        v40 = v38 != 0.0 || v36 == 0;
        v36 -= 4;
      }

      while (!v40);
    }

    else
    {
      v39 = 1;
    }

    if (ShapedType != v142)
    {
      free(ShapedType);
    }

    if (!v39)
    {
LABEL_247:
      v98 = *(a3 + 2);
      if (!v98 || !instruction::util::IsTasklet(v98))
      {
        goto LABEL_16;
      }

      v99 = *(a2 + 3);
      goto LABEL_250;
    }
  }

  v46 = *(v19 + 88);
  v135 = 0;
  v136 = 0;
  v143[0] = &v135;
  ShapedType = v46;
  v47 = mlir::Value::getDefiningOp(&ShapedType);
  if (!v47 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v143, v47))
  {
    goto LABEL_284;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(&v135);
  v141 = v48;
  v49 = *(*mlir::ElementsAttr::isSplat(&ShapedType) + 136);
  v63 = v49 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v63 || v49 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ShapedType = v142;
    v141 = 0xC00000000;
    mlir::getIntValues<float>(v135, v136, &ShapedType, 0);
    if (v141)
    {
      v64 = 4 * v141 - 4;
      v65 = ShapedType;
      do
      {
        v66 = *v65++;
        v67 = v66 == 0.0;
        v68 = v66 != 0.0 || v64 == 0;
        v64 -= 4;
      }

      while (!v68);
    }

    else
    {
      v67 = 1;
    }

    if (ShapedType != v142)
    {
      free(ShapedType);
    }

    if (!v67)
    {
      goto LABEL_284;
    }
  }

  else
  {
    ShapedType = mlir::ElementsAttr::getShapedType(&v135);
    v141 = v108;
    if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_284;
    }

    ShapedType = v142;
    v141 = 0xC00000000;
    mlir::getIntValues<float>(v135, v136, &ShapedType, 0);
    if (v141)
    {
      v109 = 4 * v141 - 4;
      v110 = ShapedType;
      do
      {
        v111 = *v110++;
        v112 = v111 == 0.0;
        v113 = v111 != 0.0 || v109 == 0;
        v109 -= 4;
      }

      while (!v113);
    }

    else
    {
      v112 = 1;
    }

    if (ShapedType != v142)
    {
      free(ShapedType);
    }

    if (!v112)
    {
LABEL_284:
      v98 = *(a3 + 2);
      if (!v98 || !instruction::util::IsTasklet(v98))
      {
        goto LABEL_16;
      }

      v99 = *(a2 + 3);
      goto LABEL_250;
    }
  }

  v69 = *(v130 + 88);
  v135 = 0;
  v136 = 0;
  v143[0] = &v135;
  ShapedType = v69;
  v70 = mlir::Value::getDefiningOp(&ShapedType);
  if (!v70 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v143, v70))
  {
    goto LABEL_294;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(&v135);
  v141 = v71;
  v72 = *(*mlir::ElementsAttr::isSplat(&ShapedType) + 136);
  v86 = v72 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v86 || v72 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ShapedType = v142;
    v141 = 0xC00000000;
    mlir::getIntValues<float>(v135, v136, &ShapedType, 0);
    if (v141)
    {
      v87 = 4 * v141 - 4;
      v88 = ShapedType;
      do
      {
        v89 = *v88++;
        v90 = v89 == 0.0;
        v91 = v89 != 0.0 || v87 == 0;
        v87 -= 4;
      }

      while (!v91);
    }

    else
    {
      v90 = 1;
    }

    if (ShapedType != v142)
    {
      free(ShapedType);
    }

    if (!v90)
    {
      goto LABEL_294;
    }
  }

  else
  {
    ShapedType = mlir::ElementsAttr::getShapedType(&v135);
    v141 = v116;
    if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_294;
    }

    ShapedType = v142;
    v141 = 0xC00000000;
    mlir::getIntValues<float>(v135, v136, &ShapedType, 0);
    if (v141)
    {
      v117 = 4 * v141 - 4;
      v118 = ShapedType;
      do
      {
        v119 = *v118++;
        v120 = v119 == 0.0;
        v121 = v119 != 0.0 || v117 == 0;
        v117 -= 4;
      }

      while (!v121);
    }

    else
    {
      v120 = 1;
    }

    if (ShapedType != v142)
    {
      free(ShapedType);
    }

    if (!v120)
    {
LABEL_294:
      v98 = *(a3 + 2);
      if (!v98 || !instruction::util::IsTasklet(v98))
      {
        goto LABEL_16;
      }

      v99 = *(a2 + 3);
      goto LABEL_250;
    }
  }

  v92 = (*(*(v134 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v92)
  {
    v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
  }

  else
  {
    v93 = 0;
  }

  ShapedType = v92;
  v141 = v93;
  Shape = mlir::ShapedType::getShape(&ShapedType);
  if (mlir::ShapedType::getNumElements(Shape, v95) != 1)
  {
    v98 = *(a3 + 2);
    if (!v98 || !instruction::util::IsTasklet(v98))
    {
      goto LABEL_16;
    }

    v99 = *(a2 + 3);
LABEL_250:
    (*(*v98 + 88))(v98, v99, v100, &ShapedType);
    goto LABEL_16;
  }

  v96 = (*(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v96)
  {
    v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
  }

  else
  {
    v97 = 0;
  }

  ShapedType = v96;
  v141 = v97;
  v101 = mlir::ShapedType::getShape(&ShapedType);
  if (mlir::ShapedType::getNumElements(v101, v102) == 1)
  {
    v103 = (*(*(v133 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v103)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v103 + 8);
    }

    else
    {
      v104 = 0;
    }

    ShapedType = v103;
    v141 = v104;
    v106 = mlir::ShapedType::getShape(&ShapedType);
    if (mlir::ShapedType::getNumElements(v106, v107) == 1)
    {
      if (*(*mlir::getElementTypeOrSelf((*(*(v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        if (*(*mlir::getElementTypeOrSelf((*(*(v130 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          if (*(v5 + 9))
          {
            v114 = v5 - 16;
          }

          else
          {
            v114 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v114, 0);
          if (*(*mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (*(v9 + 36))
            {
              v122 = v9 - 16;
            }

            else
            {
              v122 = 0;
            }

            v123 = mlir::detail::OpResultImpl::getNextResultAtOffset(v122, 0);
            ShapedType = mlir::getElementTypeOrSelf((*(v123 + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isF16(&ShapedType))
            {
              if (*(v17 + 36))
              {
                v124 = v17 - 16;
              }

              else
              {
                v124 = 0;
              }

              v125 = mlir::detail::OpResultImpl::getNextResultAtOffset(v124, 0);
              ShapedType = mlir::getElementTypeOrSelf((*(v125 + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isF16(&ShapedType))
              {
                if (*(v132 + 36))
                {
                  v126 = v132 - 16;
                }

                else
                {
                  v126 = 0;
                }

                v127 = mlir::detail::OpResultImpl::getNextResultAtOffset(v126, 0);
                ShapedType = mlir::getElementTypeOrSelf((*(v127 + 8) & 0xFFFFFFFFFFFFFFF8));
                if (mlir::Type::isF16(&ShapedType))
                {
                  v128 = *(*(v137 + 1) + 24);
                  ShapedType = *(*v137 + 24);
                  v141 = v128;
                  v129 = *(*(v137 + 3) + 24);
                  v142[0] = *(*(v137 + 2) + 24);
                  v142[1] = v129;
                  mlir::Builder::getFusedLoc(a3 + 1, &ShapedType, 4, 0);
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_17:
  if (v137 != v139)
  {
    free(v137);
  }

  return v13;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#13}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#14}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#15}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#16}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#17}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#18}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::canonicalizeAddGocs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v54 = a2;
  v51 = a6;
  v52 = a4;
  Loc = mlir::Value::getLoc(&v54);
  v14 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v50[0] = v14;
  v50[1] = v15;
  v16 = (*(v54 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v49[0] = v16;
  v49[1] = v17;
  v57 = 0uLL;
  v55 = &v57;
  v56 = a5;
  DefiningOp = mlir::Value::getDefiningOp(&v56);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, DefiningOp))
  {
    SplatFloat = mlir::getSplatFloatValue<float>(v57, *(&v57 + 1));
    v20 = SplatFloat & 0xFFFFFF00;
    v21 = SplatFloat;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v57 = 0uLL;
  v55 = &v57;
  v56 = a7;
  v22 = mlir::Value::getDefiningOp(&v56);
  if (v22 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v22))
  {
    v23 = mlir::getSplatFloatValue<float>(v57, *(&v57 + 1));
    v24 = v23 & 0xFFFFFF00;
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v57 = 0uLL;
  v55 = &v57;
  v56 = a8;
  v26 = mlir::Value::getDefiningOp(&v56);
  if (v26 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v26))
  {
    v28 = mlir::getSplatFloatValue<float>(v57, *(&v57 + 1));
    v29 = v28 & 0xFFFFFF00;
    v30 = v28;
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v47 = COERCE_FLOAT(v20 | v21) * COERCE_FLOAT(v24 | v25);
  v48 = COERCE_FLOAT(v29 | v30) / COERCE_FLOAT(v24 | v25);
  v57 = xmmword_1A7601028;
  v58 = unk_1A7601038;
  F32Type = mlir::Builder::getF32Type((a1 + 8), v27);
  v32 = mlir::RankedTensorType::get(&v57, 4, F32Type, 0);
  v57 = xmmword_1A7601028;
  v58 = unk_1A7601038;
  F16Type = mlir::Builder::getF16Type((a1 + 8), v33);
  v56 = mlir::MemRefType::get(&v57, 4, F16Type, 0, 0, 0);
  *&v57 = mlir::createRawElementsAttr(v32, &v48, 4uLL);
  *(&v57 + 1) = v35;
  v55 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), Loc, &v56, &v57);
  *&v57 = mlir::createRawElementsAttr(v32, &v47, 4uLL);
  *(&v57 + 1) = v36;
  v46 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), Loc, &v56, &v57);
  v38 = mlir::Builder::getF16Type((a1 + 8), v37);
  LOBYTE(v57) = 0;
  LOBYTE(v58) = 0;
  *&v57 = mlir::ShapedType::cloneWith(v50, &v57, v38);
  *(&v57 + 1) = v39;
  v45 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a1 + 8), Loc, &v57, &v52, &v55, &v51);
  v41 = mlir::Builder::getF16Type((a1 + 8), v40);
  LOBYTE(v57) = 0;
  LOBYTE(v58) = 0;
  *&v57 = mlir::ShapedType::cloneWith(v49, &v57, v41);
  *(&v57 + 1) = v42;
  v44 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ShapedType,mlir::Value &,mlir::anec::GOC &>((a1 + 8), Loc, &v57, &v53, &v45);
  return mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::anec::ElementwiseAdd &,mlir::mps::ConstantOp &,mlir::Value &>((a1 + 8), Loc, v49, &v44, &v46, &v51) - 16;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}