void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::QuantizedMatMulOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::mpsx::QuantizedMatMulOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(v17, v18, v19);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    v21[0] = &unk_1F1A17650;
    v22 = v21;
    if (v22 == v21)
    {
      (*(*v22 + 4))(v22);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 5))(v22);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v21[0] = "mpsx.quantized_matmul";
    v21[1] = 21;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::QuantizedMatMulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::Op<mlir::mpsx::QuantizedMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(uint64_t *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::OneResult<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::QuantizedMatMulOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mpsx::QuantizedMatMulOp>,mlir::InferTypeOpInterface::Trait<mlir::mpsx::QuantizedMatMulOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mpsx::QuantizedMatMulOp>>(a1, a2))
  {
    v5 = a1;
    return mlir::mpsx::QuantizedMatMulOp::verify(&v5);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::OneResult<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mpsx::QuantizedMatMulOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::QuantizedMatMulOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mpsx::QuantizedMatMulOp>,mlir::InferTypeOpInterface::Trait<mlir::mpsx::QuantizedMatMulOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mpsx::QuantizedMatMulOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) != 0 && mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13))
  {
    v7 = a1;
    return mlir::mpsx::QuantizedMatMulOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::RegionReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::RegionReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mpsx::RegionReturnOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::RegionReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::RegionReturnOp>,mlir::OpTrait::VariadicOperands<mlir::mpsx::RegionReturnOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::RegionReturnOp>,mlir::OpTrait::IsTerminator<mlir::mpsx::RegionReturnOp>>(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
LABEL_10:
    IsTerminator = 0;
    return IsTerminator & 1;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v6 = *(a1 + 68);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 72) + 24;
      while (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(a1, (*(*v8 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v7))
      {
        ++v7;
        v8 += 32;
        if (v6 == v7)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_10;
    }
  }

LABEL_9:
  IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::ReturnStitchedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ReturnStitchedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::ReturnStitchedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::ReturnStitchedOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::ReturnStitchedOp>::getSuccessorRegions;
  {
    v5 = v2;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::ReturnStitchedOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<Empty>]";
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

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::OneOperand<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::IsTerminator<mlir::mpsx::ReturnStitchedOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::mpsx::ReturnStitchedOp>,mlir::OpTrait::ReturnLike<mlir::mpsx::ReturnStitchedOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::mpsx::ReturnStitchedOp>::verifyTrait(a1) && mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(a1, (*(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
  }

  else
  {
    IsTerminator = 0;
  }

  return IsTerminator & 1;
}

BOOL mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::mpsx::ReturnStitchedOp>::verifyTrait(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
      {
        return 1;
      }
    }
  }

  v19 = 257;
  mlir::Operation::emitOpError(a1, v18, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "expects parent op ");
  if (*v3)
  {
    v4 = v3;
    mlir::Diagnostic::operator<<((v3 + 1), "'");
    v3 = v4;
  }

  v20[0] = "mpsx.stitched";
  v20[1] = 13;
  v17[0] = v20;
  v17[1] = 1;
  v5 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v3, v17);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v5, "'");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
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
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v7;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.sparse_dense_matmul", 0x18uLL, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::SparseDenseMatMulOp,void>::id, &v9);
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

  *a1 = &unk_1F1A17218;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::SparseDenseMatMulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::SparseDenseMatMulOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::mpsx::SparseDenseMatMulOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(v17, v18, v19);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    v21[0] = &unk_1F1A17650;
    v22 = v21;
    if (v22 == v21)
    {
      (*(*v22 + 4))(v22);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 5))(v22);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v21[0] = "mpsx.sparse_dense_matmul";
    v21[1] = 24;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::SparseDenseMatMulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NOperands<5>::Impl<Empty>]";
  v6 = 90;
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

BOOL mlir::Op<mlir::mpsx::SparseDenseMatMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyNOperands(a1, 5) & 1) != 0 && (v7 = a1, mlir::mpsx::SparseDenseMatMulOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::mpsx::SparseDenseMatMulOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.stitched", 0xDuLL, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id, &v9);
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

  *a1 = &unk_1F1A172E0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::StitchedOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::StitchedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v20[0] = a9;
  v20[1] = 0;
  v11 = mlir::RegionRange::dereference_iterator(v20, 0);
  v20[0] = a11;
  v12 = *(v11 + 8);
  if (v12 != v11)
  {
    v13 = v11;
    do
    {
      v14 = v12 - 8;
      if (!v12)
      {
        v14 = 0;
      }

      v15 = *(v14 + 40);
      v16 = (v14 + 32);
      if (v15 != (v14 + 32))
      {
        do
        {
          v17 = *(v15 + 1);
          ZinIrHalH13g::~ZinIrHalH13g(v15);
          mlir::detail::walk<mlir::ForwardIterator>(v18, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::StitchedOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v20, 1);
          v15 = v17;
        }

        while (v17 != v16);
      }

      v12 = *(v12 + 8);
    }

    while (v12 != v13);
  }

  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::StitchedOp>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = v28;
  v27 = 0x400000000;
  v29 = a9;
  v30 = 0;
  v13 = mlir::RegionRange::dereference_iterator(&v29, 0);
  v29 = &v26;
  v14 = *(v13 + 8);
  if (v14 != v13)
  {
    v15 = v13;
    do
    {
      v16 = v14 - 8;
      if (!v14)
      {
        v16 = 0;
      }

      v17 = *(v16 + 40);
      v18 = (v16 + 32);
      if (v17 != (v16 + 32))
      {
        do
        {
          v19 = *(v17 + 1);
          ZinIrHalH13g::~ZinIrHalH13g(v17);
          mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::StitchedOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v29, 1);
          v17 = v19;
        }

        while (v19 != v18);
      }

      v14 = *(v14 + 8);
    }

    while (v14 != v15);
  }

  mlir::ValueRange::ValueRange(v25, v26, v27);
  mlir::ValueRange::ValueRange(v24, *a11, *(a11 + 8));
  v29 = &unk_1F1A17650;
  v31 = &v29;
  if (v31 == &v29)
  {
    (*(*v31 + 4))(v31);
    if (isCompatibleReturnTypesDefaultImpl)
    {
LABEL_13:
      v22 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    if (v31)
    {
      (*(*v31 + 5))();
    }

    if (isCompatibleReturnTypesDefaultImpl)
    {
      goto LABEL_13;
    }
  }

  v29 = "mpsx.stitched";
  v30 = 13;
  v22 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v29, "' op inferred type(s) ", &v26, " are incompatible with return type(s) of operation ", a11);
LABEL_16:
  if (v26 != v28)
  {
    free(v26);
  }

  return v22;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::StitchedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::StitchedOp>,mlir::OpTrait::OneResult<mlir::mpsx::StitchedOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::mpsx::StitchedOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::StitchedOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::StitchedOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::StitchedOp>,mlir::OpTrait::RegionOp<mlir::mpsx::StitchedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mpsx::StitchedOp>,mlir::InferTypeOpInterface::Trait<mlir::mpsx::StitchedOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mpsx::StitchedOp>>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.tensor_to_buffer", 0x15uLL, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id, &v9);
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

  *a1 = &unk_1F1A173A8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::TensorToBufferOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::TensorToBufferOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::mpsx::TensorToBufferOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(v17, v18, v19);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    v21[0] = &unk_1F1A17650;
    v22 = v21;
    if (v22 == v21)
    {
      (*(*v22 + 4))(v22);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 5))(v22);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v21[0] = "mpsx.tensor_to_buffer";
    v21[1] = 21;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17650;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::mpsx::TensorToBufferOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    v6 = mlir::mpsx::TensorToBufferOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>::getSuccessorRegions;
  {
    v5 = v2;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<Empty>]";
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

uint64_t mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::mpsx::UseMemrefOp>::verifyTrait(a1) && (v8 = a1, (mlir::mpsx::UseMemrefOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifyIsTerminator(a1, v7))
  {
    v8 = a1;
    v5 = mlir::mpsx::UseMemrefOp::verify(&v8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::mpsx::UseMemrefOp>::verifyTrait(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
      {
        return 1;
      }
    }
  }

  v19 = 257;
  mlir::Operation::emitOpError(a1, v18, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "expects parent op ");
  if (*v3)
  {
    v4 = v3;
    mlir::Diagnostic::operator<<((v3 + 1), "'");
    v3 = v4;
  }

  v20[0] = "mpsx.memref_backed";
  v20[1] = 18;
  v17[0] = v20;
  v17[1] = 1;
  v5 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v3, v17);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v5, "'");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
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
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v7;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>(uint64_t a1)
{
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v27;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v22 = v1;
    v28 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::mpsx::VarHandleOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void mlir::Dialect::addAttribute<mlir::mpsx::FusionTypeAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::mpsx::FusionTypeAttr,mlir::Attribute,mlir::mpsx::detail::FusionTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSD_6detail21FusionTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSC_6detail21FusionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
  v23 = "mpsx.fusion_type";
  v24 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSC_6detail21FusionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail21FusionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14FusionTypeAttrEJNS2_10FusionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_39;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        v9 = a2;
        v10 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 16);
        a2 = v9;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (!v8)
      {
        v10 = result;
        v8 = 0;
        goto LABEL_36;
      }

      v15 = *result;
      v16 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v16 >= 9)
      {
        if (v15 >= v2 + 16 * v8 || (v17 = *a2, v2 >= &v15[2 * v8]))
        {
          v30 = v16 + 1;
          v31 = 2 * (v30 & 0x1FFFFFFFFFFFFFFCLL);
          v32 = &v15[v31];
          v17 = (v2 + v31 * 8);
          v33 = (v2 + 32);
          v34 = v15 + 4;
          v35 = v30 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v37 = *(v33 - 2);
            v36 = *(v33 - 1);
            v39 = *v33;
            v38 = v33[1];
            v33 += 4;
            *(v34 - 2) = v37;
            *(v34 - 1) = v36;
            *v34 = v39;
            v34[1] = v38;
            v34 += 4;
            v35 -= 4;
          }

          while (v35);
          v15 = v32;
          if (v30 == (v30 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = *a2;
      }

      v40 = (v2 + 16 * v8);
      do
      {
        *v15 = *v17;
        v15[1] = v17[1];
        v17 += 2;
        v15 += 2;
      }

      while (v17 != v40);
LABEL_35:
      v10 = result;
LABEL_36:
      v11 = v7 - v8;
      if (v7 == v8)
      {
LABEL_38:
        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_39;
      }

LABEL_37:
      memcpy((*v10 + 16 * v8), (*a2 + 16 * v8), 16 * v11);
      goto LABEL_38;
    }

    if (v7)
    {
      v12 = *result;
      v13 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v13 >= 9)
      {
        v18 = v12 >= v2 + 16 * v7 || v2 >= &v12[2 * v7];
        v14 = *a2;
        if (v18)
        {
          v19 = v13 + 1;
          v20 = 2 * (v19 & 0x1FFFFFFFFFFFFFFCLL);
          v21 = &v12[v20];
          v14 = (v2 + v20 * 8);
          v22 = (v2 + 32);
          v23 = v12 + 4;
          v24 = v19 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = *(v22 - 2);
            v25 = *(v22 - 1);
            v28 = *v22;
            v27 = v22[1];
            v22 += 4;
            *(v23 - 2) = v26;
            *(v23 - 1) = v25;
            *v23 = v28;
            v23[1] = v27;
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
          v12 = v21;
          if (v19 == (v19 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v14 = *a2;
      }

      v29 = (v2 + 16 * v7);
      do
      {
        *v12 = *v14;
        v12[1] = v14[1];
        v14 += 2;
        v12 += 2;
      }

      while (v14 != v29);
    }

LABEL_26:
    *(result + 8) = v7;
LABEL_39:
    *v6 = 0;
  }

  return result;
}

void mlir::mpsx::MPSXOpFolderDialectInterface::~MPSXOpFolderDialectInterface(mlir::mpsx::MPSXOpFolderDialectInterface *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::Dialect::addType<mlir::mpsx::ListType>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  {
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
  }

  v2 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  mlir::AbstractType::get<mlir::mpsx::ListType>(a1, &v14);
  mlir::Dialect::addType(a1, v2, &v14);
  v3 = v19;
  if (v19 >= 8)
  {
    if ((v19 & 4) != 0)
    {
      if ((v19 & 2) != 0)
      {
        v4 = v18;
      }

      else
      {
        v4 = v18[0];
      }

      (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v18[0], v18[1]);
    }
  }

  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != &v17)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  {
    v13 = v9;
    mlir::Dialect::addType<mlir::mpsx::ListType>();
    v9 = v13;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v9);
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, v10, 0, v12);
}

void mlir::AbstractType::get<mlir::mpsx::ListType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  v16 = 0x300000000;
  *&v12 = mlir::detail::StorageUserBase<mlir::mpsx::ListType,mlir::Type,mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v14 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v15 = v17;
  {
    v9 = a1;
    mlir::Dialect::addType<mlir::mpsx::ListType>();
    a1 = v9;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(a2 + 72, &v12);
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx8ListTypeES2_NSD_6detail29TypeWithStaticSubtypesStorageILj1EEENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v11;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx8ListTypeES2_NSC_6detail29TypeWithStaticSubtypesStorageILj1EEENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "mpsx.list_type";
  *(a2 + 152) = 14;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

BOOL mlir::mpsx::anonymous namespace::qimpl::isFPType(void *a1)
{
  v1 = *(*mlir::getElementTypeOrSelf(a1) + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

BOOL mlir::mpsx::anonymous namespace::qimpl::verifyAffineQuant(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v41 = a6;
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
  {
    v38 = 0;
    v39 = 0;
    return 1;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  v38 = v11;
  v39 = v12;
  if (!v11 || !mlir::ElementsAttr::getShapedType(&v38))
  {
    return 1;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v35 = 0;
    if ((a6 & 0x100000000) == 0)
    {
LABEL_8:
      v42[0] = &v41;
      v42[1] = &v40;
      v42[2] = &v35;
      v43 = &v38;
    }

    mlir::ShapedType::getShape(&v38);
    if (a6 < 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + a6;
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v26 & 0x7FFFFFFF;
      mlir::ShapedType::getShape(&v38);
      if (v27 <= v28)
      {
        v35 = *(mlir::ShapedType::getShape(&v38) + 8 * v27);
        goto LABEL_8;
      }
    }

    v37 = 259;
    mlir::Operation::emitOpError(a1, v36, v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    v15 = result;
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
      result = v15;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v15;
      }

      v29 = __p;
      if (__p)
      {
        v30 = v48;
        v31 = __p;
        if (v48 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v48 = v29;
        operator delete(v31);
        result = v15;
      }

      v19 = v45;
      if (!v45)
      {
        goto LABEL_54;
      }

      v32 = v46;
      v21 = v45;
      if (v46 == v45)
      {
LABEL_53:
        v46 = v19;
        operator delete(v21);
        result = v15;
LABEL_54:
        if (v43 != &v44)
        {
          free(v43);
          return v15;
        }

        return result;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
        }
      }

      while (v32 != v19);
LABEL_52:
      v21 = v45;
      goto LABEL_53;
    }
  }

  else
  {
    v36[0] = "input and zeroPoint types must match";
    v37 = 259;
    mlir::Operation::emitOpError(a1, v36, v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    v15 = result;
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
      result = v15;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v48;
        v18 = __p;
        if (v48 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v48 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v45;
      if (!v45)
      {
        goto LABEL_54;
      }

      v20 = v46;
      v21 = v45;
      if (v46 == v45)
      {
        goto LABEL_53;
      }

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
      goto LABEL_52;
    }
  }

  return result;
}

uint64_t mlir::mpsx::anonymous namespace::qimpl::verifyAffineQuant(mlir::Operation *,mlir::Value,mlir::Value,mlir::Value,mlir::Value,std::optional<int>)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v110 = *MEMORY[0x1E69E9840];
  v5 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  v94[0] = v5;
  v94[1] = v6;
  if (*(*a1 + 4) == 1)
  {
    if (mlir::ElementsAttr::getShapedType(v94))
    {
      mlir::ShapedType::getShape(v94);
      if (v7 >= 2)
      {
        v8 = **(a1 + 8);
        v93 = 257;
        mlir::Operation::emitOpError(v8, v92, &v98);
        if (v98)
        {
          mlir::Diagnostic::operator<<(v99, a2);
          if (v98)
          {
            v95 = 3;
            v96 = " rank must be 0 or 1";
            v97 = 20;
            v9 = &v95;
            v10 = v100;
            if (v101 >= v102)
            {
              if (v100 <= &v95 && v100 + 24 * v101 > &v95)
              {
                v85 = &v95 - v100;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
                v10 = v100;
                v9 = (v100 + v85);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
                v9 = &v95;
                v10 = v100;
              }
            }

            v11 = &v10[24 * v101];
            v12 = *v9;
            *(v11 + 2) = *(v9 + 2);
            *v11 = v12;
            ++v101;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
        v14 = result;
        if (v98)
        {
          mlir::InFlightDiagnostic::report(&v98);
          result = v14;
        }

        if (v109 == 1)
        {
          if (v108 != &v109)
          {
            free(v108);
            result = v14;
          }

          v15 = __p;
          if (__p)
          {
            v16 = v107;
            v17 = __p;
            if (v107 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v107 = v15;
            operator delete(v17);
            result = v14;
          }

          v18 = v104;
          if (!v104)
          {
            goto LABEL_97;
          }

          v19 = v105;
          v20 = v104;
          if (v105 == v104)
          {
LABEL_96:
            v105 = v18;
            operator delete(v20);
            result = v14;
LABEL_97:
            if (v100 != v103)
            {
              free(v100);
              return v14;
            }

            return result;
          }

          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
LABEL_95:
          v20 = v104;
          goto LABEL_96;
        }

        return result;
      }
    }

    if (v94[0] && **(a1 + 16) != 0x8000000000000000 && mlir::ElementsAttr::getShapedType(v94))
    {
      Shape = mlir::ShapedType::getShape(v94);
      if (v35)
      {
        v36 = 8 * v35;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v36 -= 8;
          if (!v36)
          {
            goto LABEL_49;
          }
        }

        return 1;
      }

LABEL_49:
      v37 = mlir::ShapedType::getShape(v94);
      if (mlir::ShapedType::getNumElements(v37, v38) != **(a1 + 16))
      {
        v39 = mlir::ShapedType::getShape(v94);
        result = mlir::ShapedType::getNumElements(v39, v40);
        if (result == 1)
        {
          return result;
        }

        v41 = **(a1 + 8);
        v93 = 257;
        mlir::Operation::emitOpError(v41, v92, &v98);
        if (v98)
        {
          mlir::Diagnostic::append<char const(&)[7]>(v99, "input and ");
          if (v98)
          {
            mlir::Diagnostic::operator<<(v99, a2);
            if (v98)
            {
            }
          }
        }

        v42 = &v98;
        goto LABEL_102;
      }
    }

    return 1;
  }

  if (!v5 || !mlir::ElementsAttr::getShapedType(v94))
  {
    return 1;
  }

  v23 = mlir::ShapedType::getShape(v94);
  if (v24)
  {
    v25 = 8 * v24;
    while (*v23 != 0x8000000000000000)
    {
      ++v23;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    return 1;
  }

LABEL_33:
  mlir::ShapedType::getShape(v94);
  if (v26 <= 1)
  {
    v27 = mlir::ShapedType::getShape(v94);
    result = mlir::ShapedType::getNumElements(v27, v28);
    if (result == 1)
    {
      return result;
    }

    v29 = **(a1 + 8);
    v93 = 257;
    mlir::Operation::emitOpError(v29, v92, &v98);
    v31 = v30;
    if (*v30)
    {
      mlir::Diagnostic::operator<<((v30 + 1), a2);
      if (*v31)
      {
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v98)
    {
      v32 = result;
      mlir::InFlightDiagnostic::report(&v98);
      result = v32;
    }

    if (v109 != 1)
    {
      return result;
    }

    v33 = result;
    mlir::Diagnostic::~Diagnostic(v99);
    return v33;
  }

  if (mlir::ElementsAttr::getShapedType(*(a1 + 24)))
  {
    mlir::ShapedType::getShape(*(a1 + 24));
    v44 = v43;
    mlir::ShapedType::getShape(v94);
    if (v44 != v45)
    {
      v79 = **(a1 + 8);
      v93 = 257;
      mlir::Operation::emitOpError(v79, v92, &v98);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v98, "ND ");
      if (*v80)
      {
        v81 = v80;
        mlir::Diagnostic::operator<<((v80 + 1), a2);
        v80 = v81;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v80, " rank differs from input rank");
LABEL_102:
      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
      return v33;
    }
  }

  mlir::ShapedType::getShape(*(a1 + 24));
  if (!v46)
  {
    return 1;
  }

  v47 = 0;
  while (1)
  {
    v49 = 8 * v47;
    v50 = *(mlir::ShapedType::getShape(*(a1 + 24)) + v49);
    v51 = *(mlir::ShapedType::getShape(v94) + v49);
    v52 = v50 == 0x8000000000000000 || v51 == 0x8000000000000000;
    if (!v52 && v50 % v51)
    {
      break;
    }

    ++v47;
    mlir::ShapedType::getShape(*(a1 + 24));
    result = 1;
    if (v47 >= v48)
    {
      return result;
    }
  }

  v53 = **(a1 + 8);
  v93 = 257;
  mlir::Operation::emitOpError(v53, v92, &v98);
  if (v98)
  {
    mlir::Diagnostic::operator<<(v99, a2);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v98, " shape not compatible with input for axis ");
  if (*v54)
  {
    v55 = *(v54 + 24);
    v95 = 5;
    v96 = v47;
    v56 = *(v54 + 32);
    v57 = &v95;
    if (v56 >= *(v54 + 36))
    {
      if (v55 <= &v95 && v55 + 24 * v56 > &v95)
      {
        v86 = &v95 - v55;
        v87 = v54;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, (v54 + 40), v56 + 1, 24);
        v54 = v87;
        v55 = *(v87 + 24);
        v57 = &v86[v55];
      }

      else
      {
        v82 = v54;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, (v54 + 40), v56 + 1, 24);
        v54 = v82;
        v55 = *(v82 + 24);
        v57 = &v95;
      }
    }

    v58 = v55 + 24 * *(v54 + 32);
    v59 = *v57;
    *(v58 + 16) = *(v57 + 2);
    *v58 = v59;
    ++*(v54 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, ": ");
  if (*v60)
  {
    v61 = *(v60 + 24);
    v95 = 2;
    v96 = v50;
    v62 = *(v60 + 32);
    v63 = &v95;
    if (v62 >= *(v60 + 36))
    {
      if (v61 <= &v95 && v61 + 24 * v62 > &v95)
      {
        v88 = &v95 - v61;
        v89 = v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, (v60 + 40), v62 + 1, 24);
        v60 = v89;
        v61 = *(v89 + 24);
        v63 = &v88[v61];
      }

      else
      {
        v83 = v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, (v60 + 40), v62 + 1, 24);
        v60 = v83;
        v61 = *(v83 + 24);
        v63 = &v95;
      }
    }

    v64 = v61 + 24 * *(v60 + 32);
    v65 = *v63;
    *(v64 + 16) = *(v63 + 2);
    *v64 = v65;
    ++*(v60 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v60, " % ");
  if (*v66)
  {
    v67 = *(v66 + 24);
    v95 = 2;
    v96 = v51;
    v68 = *(v66 + 32);
    v69 = &v95;
    if (v68 >= *(v66 + 36))
    {
      if (v67 <= &v95 && v67 + 24 * v68 > &v95)
      {
        v90 = &v95 - v67;
        v91 = v66;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v66 + 24, (v66 + 40), v68 + 1, 24);
        v66 = v91;
        v67 = *(v91 + 24);
        v69 = &v90[v67];
      }

      else
      {
        v84 = v66;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v66 + 24, (v66 + 40), v68 + 1, 24);
        v66 = v84;
        v67 = *(v84 + 24);
        v69 = &v95;
      }
    }

    v70 = v67 + 24 * *(v66 + 32);
    v71 = *v69;
    *(v70 + 16) = *(v69 + 2);
    *v70 = v71;
    ++*(v66 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, " != 0");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v72);
  v14 = result;
  if (v98)
  {
    mlir::InFlightDiagnostic::report(&v98);
    result = v14;
  }

  if (v109)
  {
    if (v108 != &v109)
    {
      free(v108);
      result = v14;
    }

    v73 = __p;
    if (__p)
    {
      v74 = v107;
      v75 = __p;
      if (v107 != __p)
      {
        do
        {
          v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
        }

        while (v74 != v73);
        v75 = __p;
      }

      v107 = v73;
      operator delete(v75);
      result = v14;
    }

    v18 = v104;
    if (!v104)
    {
      goto LABEL_97;
    }

    v76 = v105;
    v20 = v104;
    if (v105 == v104)
    {
      goto LABEL_96;
    }

    do
    {
      v78 = *--v76;
      v77 = v78;
      *v76 = 0;
      if (v78)
      {
        MEMORY[0x1AC55A040](v77, 0x1000C8077774924);
      }
    }

    while (v76 != v18);
    goto LABEL_95;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeights(mlir::AffineMapAttr *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 - 16), *(*(*(a1 + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 8);
  v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 12) + v9 + v8);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v11 = *(a1 + 5);
  v13 = v11;
  v14 = v10;
  if (v10)
  {
    v11 = mlir::ValueRange::offset_base(&v13, v10);
  }

  v13 = v11;
  v14 = 0;
  return mlir::ValueRange::dereference_iterator(&v13, 0);
}

uint64_t mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(mlir::AffineMapAttr *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 - 16), *(*(*(a1 + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 8);
  v10 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 12) + v9 + v8;
  v11 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 16);
  v12 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 20) + v11;
  v13 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 24) + v12 + v10;
  v14 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 28) + v13);
  v15 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 32);
  v16 = *(a1 + 5);
  v19 = v16;
  v20 = v14;
  if (v14)
  {
    v16 = mlir::ValueRange::offset_base(&v19, v14);
    v17 = v20;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v15 + v14)
  {
    return 0;
  }

  v19 = v16;
  v20 = 0;
  return mlir::ValueRange::dereference_iterator(&v19, 0);
}

unint64_t mlir::getSingleIntValue<long long>(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10[0] = mlir::ElementsAttr::getShapedType(&v11);
  v10[1] = v2;
  Shape = mlir::ShapedType::getShape(v10);
  if (mlir::ShapedType::getNumElements(Shape, v4) == 1 && (v9[0] = mlir::ElementsAttr::getShapedType(&v11), v9[1] = v5, *(*mlir::ElementsAttr::isSplat(v9) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    v9[0] = 0;
    mlir::copyElementsAttrData<long long>(v11, v12, v9, 1);
    v7 = v9[0] & 0xFFFFFFFFFFFFFF00;
    v6 = LOBYTE(v9[0]);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

double mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char *__s, char **a3, char *a4, char *a5, char **a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 2;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[47],char const(&)[9],long long &>(v13, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char *__s, char *a3, char **a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[9],long long &>(v9, a3, a4).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<char const(&)[9],long long &>(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 2;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeights(mlir::AffineMapAttr *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 8);
  v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 12) + v9 + v8);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v11 = *(a1 + 5);
  v13 = v11;
  v14 = v10;
  if (v10)
  {
    v11 = mlir::ValueRange::offset_base(&v13, v10);
  }

  v13 = v11;
  v14 = 0;
  return mlir::ValueRange::dereference_iterator(&v13, 0);
}

uint64_t mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(mlir::AffineMapAttr *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 8);
  v10 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 12) + v9 + v8;
  v11 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 16);
  v12 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 20) + v11;
  v13 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 24) + v12 + v10;
  v14 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 28) + v13);
  v15 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 32);
  v16 = *(a1 + 5);
  v19 = v16;
  v20 = v14;
  if (v14)
  {
    v16 = mlir::ValueRange::offset_base(&v19, v14);
    v17 = v20;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v15 + v14)
  {
    return 0;
  }

  v19 = v16;
  v20 = 0;
  return mlir::ValueRange::dereference_iterator(&v19, 0);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
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
  Slow[1] = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::ANEOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::GPUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::CPUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::StitchedOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    v2 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v3 = *result;
    v4 = *(*result + 8);
    if (v4 >= *(*result + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(*result, (v3 + 16), v4 + 1, 8);
      LODWORD(v4) = *(v3 + 8);
    }

    *(*v3 + 8 * v4) = v2;
    ++*(v3 + 8);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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
  *(Slow + 8) = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), Slow);
  }

  return Slow;
}

void OUTLINED_FUNCTION_10_13(const char *a1@<X8>, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, uint64_t *);
  v3 = a1;
  LOWORD(v8) = 259;

  mlir::OpState::emitOpError(va1, va, va2);
}

void OUTLINED_FUNCTION_11_10(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  a2 = a1;
  a6 = 259;

  mlir::OpState::emitOpError(&a12, &a2, va);
}

void OUTLINED_FUNCTION_14_12(const char *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v8 = a1;
  LOWORD(v13) = 259;

  mlir::OpState::emitOpError(v6, va, va1);
}

void OUTLINED_FUNCTION_34_9()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v1 + 40), v0 + 1, 24);
}

void OUTLINED_FUNCTION_64_2(const char *a1@<X8>, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, uint64_t *);
  v3 = a1;
  LOWORD(v8) = 259;

  mlir::OpState::emitOpError(va1, va, va2);
}

unint64_t OUTLINED_FUNCTION_69_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(va, 4);
}

unint64_t OUTLINED_FUNCTION_70_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(va, 4);
}

void OUTLINED_FUNCTION_71_3(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_73_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, &a27, v27 + 1, 24);
}

void OUTLINED_FUNCTION_74_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  a13 = 259;

  mlir::OpState::emitOpError(&a19, &a9, va);
}

void OUTLINED_FUNCTION_75_5(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_91_6()
{

  JUMPOUT(0x1AC55A040);
}

unint64_t OUTLINED_FUNCTION_92_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(va, 5);
}

unint64_t OUTLINED_FUNCTION_93_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(va, 5);
}

BOOL mlir::mpsx::isMPSXType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  {
    v6 = v1;
    v7 = a1;
    mlir::mpsx::isMPSXType();
    v1 = v6;
    a1 = v7;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  v2 = *(*a1 + 136);
  v3 = v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v4 = v3 ? a1 : 0;
  v9 = v4;
  if (!v3)
  {
    return 0;
  }

  ElementType = mlir::TensorType::getElementType(&v9);
  return mlir::Type::isIntOrFloat(&ElementType);
}

uint64_t mlir::mpsx::MPSXDialect::parseType(uint64_t a1, mlir::AsmParser *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  if (!mlir::AsmParser::parseKeyword(this, &v22))
  {
    return 0;
  }

  v4 = (*(*this + 16))(this);
  v5 = (*(*this + 48))(this, v4);
  if (v23 != 4)
  {
    v6 = v22;
    goto LABEL_12;
  }

  v6 = v22;
  if (*v22 != 1953720684)
  {
LABEL_12:
    v28 = 1283;
    v25 = "unknown MPS type: ";
    v27[0] = v6;
    v27[1] = v23;
    mlir::emitError(v5, &v25, v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v35;
        v12 = __p;
        if (v35 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v35 = v10;
        operator delete(v12);
      }

      v13 = v32;
      if (v32)
      {
        v14 = v33;
        v15 = v32;
        if (v33 != v32)
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
          v15 = v32;
        }

        v33 = v13;
        operator delete(v15);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    return 0;
  }

  v7 = *(a1 + 32);
  if (((*(*this + 160))(this) & 1) == 0)
  {
    return 0;
  }

  v25 = v27;
  v26 = 0x100000000;
  do
  {
    v24 = 0;
    if (!mlir::AsmParser::parseType<mlir::Type>(this, &v24))
    {
      result = 0;
      goto LABEL_38;
    }

    v8 = v24;
    v9 = v26;
    if (v26 >= HIDWORD(v26))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
      v9 = v26;
    }

    *(v25 + v9) = v8;
    LODWORD(v26) = v26 + 1;
  }

  while (((*(*this + 128))(this) & 1) != 0);
  v19 = (*(*this + 168))(this);
  v20 = v19;
  result = 0;
  if ((v20 & 1) != 0 && v26 == 1)
  {
    result = mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(v25, 1, v7);
  }

LABEL_38:
  if (v25 != v27)
  {
    v21 = result;
    free(v25);
    return v21;
  }

  return result;
}

llvm::raw_ostream *mlir::mpsx::MPSXDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*a2 + 136);
    {
      v12 = a2;
      mlir::mpsx::isMPSXType();
      a2 = v12;
    }

    if (v4 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
    {
      v5 = a2;
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

  v6 = (*(*a3 + 16))(a3);
  v7 = v6[4];
  if (v6[3] - v7 > 3uLL)
  {
    *v7 = 1953720684;
    v6[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v6, "list", 4uLL);
  }

  v8 = (*(*a3 + 16))(a3);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, "<", 1uLL);
  }

  else
  {
    *v9 = 60;
    ++v8[4];
  }

  (*(*a3 + 32))(a3, *(v5 + 8));
  result = (*(*a3 + 16))(a3);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::Type>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  *a2 = v18;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
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

void mlir::mps_spi::MPSSPIDialect::MPSSPIDialect(mlir::mps_spi::MPSSPIDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "mps_spi", 7, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id);
  *v2 = &unk_1F1A176E0;
  mlir::mps_spi::MPSSPIDialect::initialize(v2);
}

void sub_1A6FA00F0()
{

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::mps_spi::MPSSPIDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

llvm::raw_ostream *mlir::mps_spi::operator<<(llvm::raw_ostream *a1, unsigned int *a2)
{
  v3 = llvm::raw_ostream::operator<<(a1, a2[2]);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    v3 = llvm::raw_ostream::write(v3, ".", 1uLL);
  }

  else
  {
    *v4 = 46;
    ++*(v3 + 4);
  }

  v5 = llvm::raw_ostream::operator<<(v3, a2[3]);
  v6 = *(v5 + 4);
  if (*(v5 + 3) == v6)
  {
    v5 = llvm::raw_ostream::write(v5, ".", 1uLL);
  }

  else
  {
    *v6 = 46;
    ++*(v5 + 4);
  }

  v7 = a2[4];

  return llvm::raw_ostream::operator<<(v5, v7);
}

void mlir::mps_spi::ScaledDotProductAttentionOp::downgradeToVersion(uint64_t **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v22[0] = &unk_1F1A17630;
  v22[1] = 1;
  v23 = 0;
  if (*(a2 + 8))
  {
    v5 = *(v4 + 9);
    v6 = v4 - 2;
    if (!v5)
    {
      v6 = 0;
    }

    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = 1;
  }

  else
  {
    v15[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v15[1] = 97;
    v15[2] = v19;
    v15[3] = 2;
    v16 = 1;
    v17[0] = &unk_1F1A17760;
    v17[1] = a2;
    v18[0] = &unk_1F1A17790;
    v18[1] = v22;
    v19[0] = v17;
    v19[1] = v18;
    v21 = 263;
    v20 = v15;
    mlir::OpState::emitOpError(a1, &v20, v24);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v30;
        v9 = __p;
        if (v30 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v30 = v7;
        operator delete(v9);
      }

      v10 = v27;
      if (v27)
      {
        v11 = v28;
        v12 = v27;
        if (v28 != v27)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v27;
        }

        v28 = v10;
        operator delete(v12);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }
}

void mlir::mps_spi::RMSNormOp::downgradeToVersion(uint64_t **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v23[0] = &unk_1F1A17630;
  v23[1] = 1;
  v24 = 1;
  v5 = a2[2];
  if (v5 && (v5 != 1 || a2[3] || a2[4]))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 2;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_1F1A17760;
    v18[1] = a2;
    v19[0] = &unk_1F1A17790;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
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
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

uint64_t mlir::mps_spi::ScaledDotProductAttentionOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = a4;
  v42 = a5;
  if (!a5)
  {
    v14 = mlir::Float32Type::get(a1, a2);
    v15 = mlir::UnrankedTensorType::get(v14);
    v16 = *(a11 + 8);
    if (v16 >= *(a11 + 12))
    {
      v33 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v16 + 1, 8);
      v15 = v33;
      LODWORD(v16) = *(a11 + 8);
    }

    *(*a11 + 8 * v16) = v15;
    goto LABEL_24;
  }

  v12 = (*(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8))
  {
    v12 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_19;
  }

  v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  v36 = v12;
  v37 = v13;
  if (!v12 || v42 <= 2)
  {
LABEL_19:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v12);
    if (!ElementTypeOrSelf)
    {
LABEL_20:
      ElementTypeOrSelf = mlir::Float32Type::get(a1, v28);
    }

LABEL_21:
    v29 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      v32 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v30 + 1, 8);
      v29 = v32;
      v30 = *(a11 + 8);
    }

    *(*a11 + 8 * v30) = v29;
LABEL_24:
    ++*(a11 + 8);
    return 1;
  }

  v17 = (*(mlir::ValueRange::dereference_iterator(&v41, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
  {
    v34 = 0;
    v35 = 0;
    goto LABEL_19;
  }

  v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  v34 = v17;
  v35 = v18;
  if (!v17)
  {
    goto LABEL_19;
  }

  if (!mlir::ElementsAttr::getShapedType(&v36) || (mlir::ElementsAttr::getShapedType(&v34) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    if (!ElementTypeOrSelf)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  Shape = mlir::ShapedType::getShape(&v36);
  llvm::SmallVector<long long,4u>::SmallVector<long long,void>(&v38, Shape, v20);
  v21 = mlir::ShapedType::getShape(&v34);
  v23 = *(v21 + 8 * v22 - 8);
  v24 = v38;
  v25 = v39;
  *(v38 + v39 - 1) = v23;
  v26 = mlir::ShapedType::clone(&v36, v24, v25);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v26);
  if (v38 != &v40)
  {
    free(v38);
  }

  return 1;
}

uint64_t mlir::mps_spi::ScaledDotProductAttentionOp::verify(uint64_t **this)
{
  v149 = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  v3 = *(v2[3] + 8);
  v4 = (*(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  v135 = v5;
  v136 = v4;
  v6 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  v134 = v6;
  v7 = (v3 & 0xFFFFFFFFFFFFFFF8);
  v137 = (v3 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v132 = v7;
    v133 = v8;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v130 = v4;
    v131 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v132 = v3 & 0xFFFFFFFFFFFFFFF8;
  v133 = 0;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  v130 = v4;
  v131 = v9;
  if (v5)
  {
LABEL_4:
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  v129[0] = v5;
  v129[1] = v10;
  ShapedType = mlir::ElementsAttr::getShapedType(&v132);
  v12 = mlir::ElementsAttr::getShapedType(&v130);
  v13 = mlir::ElementsAttr::getShapedType(v129);
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v14 = (*(*((*this)[9] + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v138 = v14;
  v139 = v15;
  if ((mlir::ElementsAttr::getShapedType(&v138) & 1) == 0)
  {
    v111 = "failed: expected scale to be scalar but it is unranked";
    v112 = 54;
    v113 = 0;
    v114 = 0;
    LOBYTE(v115) = 1;
    v123 = 263;
    v122[0] = &v111;
    mlir::OpState::emitOpError(this, v122, &v138);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
    if (v138)
    {
      mlir::InFlightDiagnostic::report(&v138);
    }

    if (v148 == 1)
    {
      if (v147 != &v148)
      {
        free(v147);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v146;
        v31 = __p;
        if (v146 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v146 = v29;
        operator delete(v31);
      }

      v24 = v143;
      if (!v143)
      {
        goto LABEL_115;
      }

      v32 = v144;
      v26 = v143;
      if (v144 == v143)
      {
        goto LABEL_114;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
        }
      }

      while (v32 != v24);
      goto LABEL_113;
    }

    return v20;
  }

  if (ShapedType)
  {
    Shape = mlir::ShapedType::getShape(&v132);
    v18 = v17;
    mlir::ShapedType::getShape(&v132);
    if (v19 <= 1)
    {
      v111 = "failed: expected query to have at least two dimensions but got {0}";
      v112 = 66;
      v113 = &v118;
      v114 = 1;
      LOBYTE(v115) = 1;
      v116 = &unk_1F1A16390;
      v117 = &v137;
      v118 = &v116;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        if (v147 != &v148)
        {
          free(v147);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v146;
          v23 = __p;
          if (v146 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v146 = v21;
          operator delete(v23);
        }

        v24 = v143;
        if (!v143)
        {
          goto LABEL_115;
        }

        v25 = v144;
        v26 = v143;
        if (v144 == v143)
        {
LABEL_114:
          v144 = v24;
          operator delete(v26);
LABEL_115:
          if (v141 != &v142)
          {
            free(v141);
          }

          return v20;
        }

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
LABEL_113:
        v26 = v143;
        goto LABEL_114;
      }

      return v20;
    }

    v128 = *(Shape + 8 * v18 - 8);
  }

  if (!v12)
  {
    v45 = 0;
    v46 = 0;
    if (!v13)
    {
LABEL_84:
      v58 = 0;
      v59 = 0;
      goto LABEL_86;
    }

LABEL_66:
    v47 = mlir::ShapedType::getShape(v129);
    v49 = v48;
    mlir::ShapedType::getShape(v129);
    if (v50 <= 1)
    {
      v111 = "failed: expected value to have at least two dimensions but got {0}";
      v112 = 66;
      v113 = &v118;
      v114 = 1;
      LOBYTE(v115) = 1;
      v116 = &unk_1F1A16390;
      v117 = &v135;
      v118 = &v116;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        if (v147 != &v148)
        {
          free(v147);
        }

        v51 = __p;
        if (__p)
        {
          v52 = v146;
          v53 = __p;
          if (v146 != __p)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = __p;
          }

          v146 = v51;
          operator delete(v53);
        }

        v24 = v143;
        if (!v143)
        {
          goto LABEL_115;
        }

        v54 = v144;
        v26 = v143;
        if (v144 == v143)
        {
          goto LABEL_114;
        }

        do
        {
          v56 = *--v54;
          v55 = v56;
          *v54 = 0;
          if (v56)
          {
            MEMORY[0x1AC55A040](v55, 0x1000C8077774924);
          }
        }

        while (v54 != v24);
        goto LABEL_113;
      }

      return v20;
    }

    v60 = v47 + 8 * v49;
    v58 = *(v60 - 8);
    v125 = v58;
    v59 = *(v60 - 16);
    v124 = v59;
LABEL_86:
    v61 = ShapedType ^ 1;
    if (((ShapedType ^ 1 | v12 ^ 1) & 1) == 0 && v128 != 0x8000000000000000 && v46 != 0x8000000000000000 && v128 != v46)
    {
      v111 = "failed: query and key must have matching inner dimension but have {0} and {1}";
      v112 = 77;
      v113 = &v120;
      v114 = 2;
      LOBYTE(v115) = 1;
      v116 = &unk_1F1A177C0;
      v117 = &v128;
      v118 = &unk_1F1A177C0;
      v119 = &v127;
      v120 = &v116;
      v121 = &v118;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        if (v147 != &v148)
        {
          free(v147);
        }

        v72 = __p;
        if (__p)
        {
          v73 = v146;
          v74 = __p;
          if (v146 != __p)
          {
            do
            {
              v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
            }

            while (v73 != v72);
            v74 = __p;
          }

          v146 = v72;
          operator delete(v74);
        }

        v24 = v143;
        if (!v143)
        {
          goto LABEL_115;
        }

        v75 = v144;
        v26 = v143;
        if (v144 == v143)
        {
          goto LABEL_114;
        }

        do
        {
          v77 = *--v75;
          v76 = v77;
          *v75 = 0;
          if (v77)
          {
            MEMORY[0x1AC55A040](v76, 0x1000C8077774924);
          }
        }

        while (v75 != v24);
        goto LABEL_113;
      }

      return v20;
    }

    v62 = v13 ^ 1;
    if (((v12 ^ 1 | v13 ^ 1) & 1) == 0 && v45 != 0x8000000000000000 && v59 != 0x8000000000000000 && v45 != v59)
    {
      v111 = "failed: key and value must have matching outer dimension but have {0} and {1}";
      v112 = 77;
      v113 = &v120;
      v114 = 2;
      LOBYTE(v115) = 1;
      v116 = &unk_1F1A177C0;
      v117 = &v126;
      v79 = &unk_1F1A177C0;
      v80 = &v124;
LABEL_158:
      v118 = v79;
      v119 = v80;
      v120 = &v116;
      v121 = &v118;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v139);
      }

      return v20;
    }

    v63 = v61 | v62;
    if (((v61 | v62) & 1) == 0 && v128 != 0x8000000000000000 && v58 != 0x8000000000000000 && v128 != v58)
    {
      v111 = "failed: query and value must have matching inner dimension but have {0} and {1}";
      v112 = 79;
      v113 = &v120;
      v114 = 2;
      LOBYTE(v115) = 1;
      v116 = &unk_1F1A177C0;
      v117 = &v128;
      v79 = &unk_1F1A177C0;
      v80 = &v125;
      goto LABEL_158;
    }

    if (((ShapedType ^ 1 | v12 ^ 1) & 1) != 0 || (mlir::ShapedType::getShape(&v132), v64 < 3) || (mlir::ShapedType::getShape(&v130), v65 < 3))
    {
      v70 = 0;
      v81 = 0;
      if (v63)
      {
        goto LABEL_153;
      }
    }

    else
    {
      mlir::ShapedType::getShape(&v132);
      v67 = *(mlir::ShapedType::getShape(&v132) + 8 * (v66 - 3));
      mlir::ShapedType::getShape(&v130);
      v69 = *(mlir::ShapedType::getShape(&v130) + 8 * (v68 - 3));
      v70 = v67 / v69;
      if (v67 % v69)
      {
        v71 = "failed: key heads dimensions do not represent a valid group for the head dimensions available in the query tensor";
LABEL_136:
        v111 = v71;
        v115 = 259;
        v90 = &v111;
        goto LABEL_165;
      }

      v88 = v136;
      if (v136)
      {
        v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
      }

      else
      {
        v89 = 0;
      }

      v111 = v88;
      v112 = v89;
      v93 = mlir::ShapedType::getShape(&v111);
      llvm::SmallVector<unsigned long long,6u>::SmallVector(&v138, v93, v94);
      v95 = v139;
      v96 = v138;
      *(v138 + v139 - 3) *= v70;
      v97 = v136;
      if (v136)
      {
        v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
        v96 = v138;
        v95 = v139;
      }

      else
      {
        v98 = 0;
      }

      v111 = v97;
      v112 = v98;
      v136 = mlir::ShapedType::clone(&v111, v96, v95);
      if (v138 != &v140)
      {
        free(v138);
      }

      v81 = 1;
      if (v63)
      {
LABEL_153:
        v110 = 0;
        {
          v111 = "failed: query with type {0} cannot be multiplied with the key (transposed) of type {1}";
          v112 = 86;
          v113 = &v120;
          v114 = 2;
          LOBYTE(v115) = 1;
          v116 = &unk_1F1A16390;
          v117 = &v137;
          v79 = &unk_1F1A16390;
          v80 = &v136;
          goto LABEL_158;
        }

        v105 = v110;
        {
          if (mlir::OpTrait::util::getBroadcastedType(v105, v6, 0))
          {
            return 1;
          }

          v106 = "failed: mask with type {0} is not broadcastable with the product of query and key transpose of type {1}";
          v107 = &v134;
          v108 = &v110;
        }

        else
        {
          v106 = "failed: product of query and key transpose of type {0} cannot be multiplied with value of type {1}";
          v107 = &v110;
          v108 = &v135;
        }

        llvm::formatv<mlir::Type &,mlir::Type &>(&v111, v106, v107, v108);
        v123 = 263;
        v122[0] = &v111;
        v90 = v122;
LABEL_165:
        mlir::OpState::emitOpError(this, v90, &v138);
        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
        return v20;
      }
    }

    mlir::ShapedType::getShape(&v132);
    if (v82 >= 3)
    {
      mlir::ShapedType::getShape(v129);
      if (v83 >= 3)
      {
        mlir::ShapedType::getShape(&v132);
        v85 = *(mlir::ShapedType::getShape(&v132) + 8 * (v84 - 3));
        mlir::ShapedType::getShape(v129);
        v87 = *(mlir::ShapedType::getShape(v129) + 8 * (v86 - 3));
        if (v85 % v87)
        {
          v71 = "failed: value heads dimensions do not represent a valid group for the head dimensions available in the query tensor";
          goto LABEL_136;
        }

        if (v81 && v70 != v85 / v87)
        {
          v71 = "failed: grouping for the value tensor does not match the one available on the key tensor";
          goto LABEL_136;
        }

        v91 = v135;
        if (v135)
        {
          v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
        }

        else
        {
          v92 = 0;
        }

        v111 = v91;
        v112 = v92;
        v99 = mlir::ShapedType::getShape(&v111);
        llvm::SmallVector<unsigned long long,6u>::SmallVector(&v138, v99, v100);
        v101 = v139;
        v102 = v138;
        *(v138 + v139 - 3) = v85;
        v103 = v135;
        if (v135)
        {
          v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
          v102 = v138;
          v101 = v139;
        }

        else
        {
          v104 = 0;
        }

        v111 = v103;
        v112 = v104;
        v135 = mlir::ShapedType::clone(&v111, v102, v101);
        if (v138 != &v140)
        {
          free(v138);
        }
      }
    }

    goto LABEL_153;
  }

  v35 = mlir::ShapedType::getShape(&v130);
  v37 = v36;
  mlir::ShapedType::getShape(&v130);
  if (v38 > 1)
  {
    v57 = v35 + 8 * v37;
    v46 = *(v57 - 8);
    v127 = v46;
    v45 = *(v57 - 16);
    v126 = v45;
    if (!v13)
    {
      goto LABEL_84;
    }

    goto LABEL_66;
  }

  v111 = "failed: expected key to have at least two dimensions but got {0}";
  v112 = 64;
  v113 = &v118;
  v114 = 1;
  LOBYTE(v115) = 1;
  v116 = &unk_1F1A16390;
  v117 = &v136;
  v118 = &v116;
  v123 = 263;
  v122[0] = &v111;
  mlir::OpState::emitOpError(this, v122, &v138);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
  if (v138)
  {
    mlir::InFlightDiagnostic::report(&v138);
  }

  if (v148 == 1)
  {
    if (v147 != &v148)
    {
      free(v147);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v146;
      v41 = __p;
      if (v146 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v146 = v39;
      operator delete(v41);
    }

    v24 = v143;
    if (!v143)
    {
      goto LABEL_115;
    }

    v42 = v144;
    v26 = v143;
    if (v144 == v143)
    {
      goto LABEL_114;
    }

    do
    {
      v44 = *--v42;
      v43 = v44;
      *v42 = 0;
      if (v44)
      {
        MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
      }
    }

    while (v42 != v24);
    goto LABEL_113;
  }

  return v20;
}

uint64_t mlir::mps_spi::anonymous namespace::inferMatMulResultType(uint64_t a1, char a2, void *a3, unint64_t a4, uint64_t *a5, int a6)
{
  v9 = a3;
  v84 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a3);
  v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v9 = 0;
  }

  v71[0] = v9;
  v71[1] = v13;
  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  }

  else
  {
    a4 = 0;
  }

  v70[0] = a4;
  v70[1] = v14;
  if (!(v9 | a4) || !mlir::ElementsAttr::getShapedType(v71) || (mlir::ElementsAttr::getShapedType(v70) & 1) == 0)
  {
    *a5 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    return 1;
  }

  v72 = v74;
  v73 = 0x400000000;
  Shape = mlir::ShapedType::getShape(v71);
  v17 = v16;
  v19 = mlir::ShapedType::getShape(v70);
  v81 = &v83;
  v82 = 0x400000000;
  v69 = v17;
  v78 = v80;
  v79 = 0x400000000;
  if (v17 == 1)
  {
    v21 = *Shape;
    v83.i64[0] = 1;
    v83.i64[1] = v21;
LABEL_16:
    LODWORD(v82) = 2;
    if (v18 != 1)
    {
      goto LABEL_17;
    }

LABEL_30:
    v32 = *v19;
    LODWORD(v79) = 0;
    if (HIDWORD(v79) > 1)
    {
      v34 = 0;
    }

    else
    {
      v33 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, 2uLL, 8);
      v18 = v33;
      v34 = v79;
    }

    v31 = v78 + 8 * v34;
    *v31 = v32;
    goto LABEL_34;
  }

  if (!v17)
  {
    v83 = vdupq_n_s64(1uLL);
    goto LABEL_16;
  }

  v66 = v18;
  v75 = v77;
  v76 = 0x400000000;
  v23 = (8 * v17) >> 3;
  if (v23 < 5)
  {
    v24 = 0;
    v25 = v77;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v23, 8);
    v24 = v76;
    v25 = v75;
  }

  memcpy(&v25[8 * v24], Shape, 8 * v17);
  LODWORD(v76) = v76 + v17;
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v81, &v75);
  if (v75 != v77)
  {
    free(v75);
  }

  v18 = v66;
  if (v66 == 1)
  {
    goto LABEL_30;
  }

LABEL_17:
  if (!v18)
  {
    LODWORD(v79) = 0;
    if (HIDWORD(v79) > 1)
    {
      v22 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, 2uLL, 8);
      v18 = 0;
      v22 = v79;
    }

    v31 = v78 + 8 * v22;
    *v31 = 1;
LABEL_34:
    *(v31 + 1) = 1;
    v35 = v79 + 2;
    LODWORD(v79) = v79 + 2;
    goto LABEL_41;
  }

  v26 = v18;
  v75 = v77;
  v76 = 0x400000000;
  v27 = (8 * v18) >> 3;
  v28 = v18;
  if (v27 < 5)
  {
    v29 = 0;
    v30 = v77;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v27, 8);
    v29 = v76;
    v30 = v75;
  }

  memcpy(&v30[8 * v29], v19, v26 * 8);
  LODWORD(v76) = v76 + ((v26 * 8) >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v78, &v75);
  if (v75 != v77)
  {
    free(v75);
  }

  v35 = v79;
  if (a6)
  {
    v36 = v78 + 8 * v79;
    *(v36 - 1) = v19[v26 - 2];
    *(v36 - 2) = v19[v26 - 1];
  }

  v18 = v28;
LABEL_41:
  LODWORD(v73) = 0;
  if (v82 <= v35)
  {
    v37 = 0;
    if (v35)
    {
      v41 = v78;
      v42 = 8 * v35;
      do
      {
        v43 = *v41;
        if (v37 >= HIDWORD(v73))
        {
          v68 = v18;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v37 + 1, 8);
          v18 = v68;
          v37 = v73;
        }

        *(v72 + v37) = v43;
        v37 = v73 + 1;
        LODWORD(v73) = v73 + 1;
        ++v41;
        v42 -= 8;
      }

      while (v42);
    }
  }

  else
  {
    v37 = 0;
    v38 = v81;
    v39 = 8 * v82;
    do
    {
      v40 = v38->i64[0];
      if (v37 >= HIDWORD(v73))
      {
        v67 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v37 + 1, 8);
        v18 = v67;
        v37 = v73;
      }

      *(v72 + v37) = v40;
      v37 = v73 + 1;
      LODWORD(v73) = v73 + 1;
      v38 = (v38 + 8);
      v39 -= 8;
    }

    while (v39);
  }

  v44 = v81;
  v45 = v82;
  v46 = &v81->i8[8 * v82];
  v47 = v78;
  v48 = v79;
  v49 = v78 + 8 * v79;
  v50 = v72;
  v51 = v72 + 8 * v37;
  *(v51 - 1) = *(v49 - 1);
  v52 = v49 - 16;
  *(v51 - 2) = *(v46 - 2);
  v53 = v46 - 16 == v44 || v52 == v47;
  if (v53)
  {
LABEL_73:
    if (v69 <= 1)
    {
      v61 = *(v51 - 1);
      LODWORD(v73) = --v37;
      v50[v37 - 1] = v61;
    }

    if (v18 > 1)
    {
      v62 = 0;
      if (v47 == v80)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v62 = 0;
      LODWORD(v73) = v37 - 1;
      if (v47 == v80)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v54 = 8 * v45 - 24;
  v55 = &v50[v37 - 3];
  v56 = 8 * v48 - 24;
  while (1)
  {
    v57 = *(v44->i64 + v54);
    v58 = *&v47[v56];
    if (v57 == 0x8000000000000000)
    {
      if (v58 <= 1)
      {
        v57 = 0x8000000000000000;
      }

      else
      {
        v57 = *&v47[v56];
      }

      goto LABEL_71;
    }

    if (v58 == 0x8000000000000000)
    {
      if (v57 <= 1)
      {
        v57 = 0x8000000000000000;
      }

      goto LABEL_71;
    }

    if (v57 != v58 && v58 != 1)
    {
      v53 = v57 == 1;
      v57 = *&v47[v56];
      if (!v53)
      {
        break;
      }
    }

LABEL_71:
    *v55-- = v57;
    if (v54)
    {
      v54 -= 8;
      v60 = v56;
      v56 -= 8;
      if (v60)
      {
        continue;
      }
    }

    goto LABEL_73;
  }

  LODWORD(v73) = 0;
  v65 = mlir::emitOptionalError<char const(&)[41]>(a1, a2, "incompatible dimensions");
  v47 = v78;
  v62 = !v65;
  if (v78 != v80)
  {
LABEL_79:
    free(v47);
  }

LABEL_80:
  if (v81 != &v83)
  {
    free(v81);
  }

  if (v62)
  {
    v63 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    result = 0;
  }

  else
  {
    v63 = mlir::RankedTensorType::get(v72, v73, ElementTypeOrSelf, 0);
    result = 1;
  }

  *a5 = v63;
  if (v72 != v74)
  {
    v64 = result;
    free(v72);
    return v64;
  }

  return result;
}

const char *llvm::formatv<mlir::Type &,mlir::Type &>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char *a3@<X1>, const char *a4@<X2>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v6;
  a1[1] = __s;
  a1[9] = (a1 + 5);
  a1[2] = (a1 + 9);
  a1[3] = 2;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A16390;
  a1[6] = a3;
  a1[7] = &unk_1F1A16390;
  a1[8] = a4;
  a1[10] = (a1 + 7);
  return __s;
}

uint64_t mlir::mps_spi::anonymous namespace::isCompatibleReturnTypesDefaultImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 24);
  if (!v9)
  {
    v14 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  if (v9 != a5)
  {
    v10 = (*(*v9 + 16))(v9);
    v14 = v10;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  (*(*v9 + 24))(v9, v13);
  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v10 == v13)
  {
    v18 = v17;
    (*(*v10 + 24))(v10, v17);
  }

  else
  {
    v18 = (*(*v10 + 16))(v10);
  }

LABEL_10:
  {
    v11 = 1;
  }

  else
  {
    if (v14)
    {
      if (v14 == v13)
      {
        v16 = v15;
        (*(*v14 + 24))();
      }

      else
      {
        v16 = (*(*v14 + 16))();
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 40))();
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  return v11;
}

BOOL mlir::mps_spi::RMSNormOp::verify(uint64_t **this)
{
  v60[6] = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v39[0] = v2;
  v39[1] = v3;
  v38[0] = 0;
  v38[1] = 0;
  Shape = mlir::ShapedType::getShape(v39);
  if (mlir::ShapedType::getNumElements(Shape, v5) != 1)
  {
    v11 = *((*this)[9] + 56);
    v40[0] = v38;
    v49[0] = v11;
    DefiningOp = mlir::Value::getDefiningOp(v49);
    if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v40, DefiningOp) || (mlir::ElementsAttr::isSplat(v38) & 1) == 0)
    {
      v40[0] = "requires epsilon to be a scalar";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, v49);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
      }

      if (v57 != 1)
      {
        return v13;
      }

      if (v56 != &v57)
      {
        free(v56);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v55;
        v16 = __p;
        if (v55 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v55 = v14;
        operator delete(v16);
      }

      v17 = v52;
      if (v52)
      {
        v18 = v53;
        v19 = v52;
        if (v53 != v52)
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
          v19 = v52;
        }

        v53 = v17;
        operator delete(v19);
      }

      v27 = v50;
      if (v50 == v51)
      {
        return v13;
      }

LABEL_35:
      free(v27);
      return v13;
    }
  }

  v6 = *this;
  v7 = v6[9];
  v8 = *(v7 + 88);
  v9 = (*(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v48[0] = v9;
  v48[1] = v10;
  v58 = v60;
  v59 = 0x600000000;
  if (mlir::ElementsAttr::getShapedType(v48) && (mlir::matchConstantWithIntVector<long long>(v8, &v58) & 1) != 0 && v59)
  {
    v22 = v58;
    v23 = 8 * v59;
    while (1)
    {
      v47 = *v22;
      v24 = v47;
      mlir::ShapedType::getShape(v48);
      mlir::tryGetPositiveAxis(v24, v25, 0, 0, 0);
      if ((v26 & 1) == 0)
      {
        break;
      }

      ++v22;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    mlir::ShapedType::getShape(v48);
    v40[0] = "failed: constant axis ({0}) is not within range for the input tensor rank ({1})";
    v40[1] = 79;
    v40[2] = v44;
    v40[3] = 2;
    LOBYTE(v41) = 1;
    v42[0] = &unk_1F1A177C0;
    v42[1] = &v47;
    v43[0] = &unk_1F1A17838;
    v43[1] = v29;
    v44[0] = v42;
    v44[1] = v43;
    v46 = 263;
    v45 = v40;
    mlir::Operation::emitOpError(v6, &v45, v49);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v55;
        v32 = __p;
        if (v55 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v55 = v30;
        operator delete(v32);
      }

      v33 = v52;
      if (v52)
      {
        v34 = v53;
        v35 = v52;
        if (v53 != v52)
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
          v35 = v52;
        }

        v53 = v33;
        operator delete(v35);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }
  }

  else
  {
LABEL_33:
    v13 = 1;
  }

  v27 = v58;
  if (v58 != v60)
  {
    goto LABEL_35;
  }

  return v13;
}

BOOL mlir::mps_spi::RMSNormOp::verifyInvariantsImpl(uint64_t **this)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v113 = *(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
    v114 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
    ShapedType = mlir::ElementsAttr::getShapedType(&v113);
    v4 = *v3;
    if (ShapedType)
    {
      v107 = v3;
      v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
      mlir::ShapedType::getShape(&v107);
      v4 = *v3;
      if (!v6)
      {
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
        Value = v3;
        v111 = v74;
        isSplat = mlir::ElementsAttr::isSplat(&Value);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          goto LABEL_45;
        }

        v4 = *v3;
      }
    }
  }

  if (*(v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v105[0] = v3;
    v105[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
    v7 = mlir::ElementsAttr::getShapedType(v105);
    v4 = *v3;
    if (v7)
    {
      v104[0] = v3;
      v104[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
      mlir::ShapedType::getShape(v104);
      v4 = *v3;
      if (v8 == 1)
      {
        v103[0] = v3;
        v103[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
        isSplat = mlir::ElementsAttr::isSplat(v103);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          goto LABEL_45;
        }

        v4 = *v3;
      }
    }
  }

  if (*(v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v102[0] = v3, v102[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), isSplat = mlir::ElementsAttr::isSplat(v102), !mlir::Type::isSignedInteger(&isSplat, 32)) && !mlir::Type::isSignedInteger(&isSplat, 64))
  {
    v109 = 261;
    v107 = "operand";
    v108 = 7;
    mlir::Operation::emitOpError(v2, &v107, &v113);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v113, " #");
    if (*v9)
    {
      v11 = v9 + 24;
      v10 = *(v9 + 24);
      LODWORD(Value) = 5;
      v111 = 2;
      v12 = *(v9 + 32);
      v13 = &Value;
      if (v12 >= *(v9 + 36))
      {
        if (v10 <= &Value && v10 + 24 * v12 > &Value)
        {
          v92 = &Value - v10;
          v93 = v9;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9 + 24, (v9 + 40), v12 + 1, 24);
          v9 = v93;
          v10 = *(v93 + 24);
          v13 = &v92[v10];
        }

        else
        {
          v88 = v9;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9 + 24, (v9 + 40), v12 + 1, 24);
          v9 = v88;
          v10 = *(v88 + 24);
          v13 = &Value;
        }
      }

      v14 = v10 + 24 * *(v9 + 32);
      v15 = *v13;
      *(v14 + 16) = v13[2];
      *v14 = v15;
      v16 = (*(v9 + 32) + 1);
      *(v9 + 32) = v16;
      if (*v9)
      {
        LODWORD(Value) = 3;
        v111 = " must be 0D tensor of mps index type values or 1D tensor of mps index type values or unranked tensor of mps index type values, but got ";
        v112 = 135;
        v17 = *(v9 + 24);
        v18 = &Value;
        if (v16 >= *(v9 + 36))
        {
          if (v17 <= &Value && v17 + 24 * v16 > &Value)
          {
            v94 = &Value - v17;
            v95 = v9;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v9 + 40), v16 + 1, 24);
            v9 = v95;
            v17 = *(v95 + 24);
            v18 = &v94[v17];
          }

          else
          {
            v89 = v9;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v9 + 40), v16 + 1, 24);
            v9 = v89;
            v17 = *(v89 + 24);
            v18 = &Value;
          }
        }

        v19 = v17 + 24 * *(v9 + 32);
        v20 = *v18;
        *(v19 + 16) = v18[2];
        *v19 = v20;
        ++*(v9 + 32);
        if (*v9)
        {
          v21 = &Value;
          v22 = v9;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, v3);
          v23 = *(v22 + 32);
          v24 = *(v22 + 24);
          if (v23 >= *(v22 + 36))
          {
            if (v24 <= &Value && v24 + 24 * v23 > &Value)
            {
              v98 = &Value - v24;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v22 + 40), v23 + 1, 24);
              v9 = v22;
              v24 = *(v22 + 24);
              v21 = &v98[v24];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v22 + 40), v23 + 1, 24);
              v9 = v22;
              v24 = *(v22 + 24);
              v21 = &Value;
            }
          }

          else
          {
            v9 = v22;
          }

          v25 = v24 + 24 * *(v9 + 32);
          v26 = *v21;
          *(v25 + 16) = v21[2];
          *v25 = v26;
          ++*(v9 + 32);
        }
      }
    }

    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    if (v113)
    {
      mlir::InFlightDiagnostic::report(&v113);
    }

    if (v122 == 1)
    {
      if (v121 != &v122)
      {
        free(v121);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v120;
        v30 = __p;
        if (v120 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v120 = v28;
        operator delete(v30);
      }

      v31 = v117;
      if (v117)
      {
        v32 = v118;
        v33 = v117;
        if (v118 != v117)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
            }
          }

          while (v32 != v31);
          v33 = v117;
        }

        v118 = v31;
        operator delete(v33);
      }

      if (v115 != v116)
      {
        free(v115);
      }
    }

    if (!v27)
    {
      return 0;
    }
  }

LABEL_45:
  if (*(*this + 9))
  {
    v36 = *this - 2;
  }

  else
  {
    v36 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0);
  v38 = *this;
  v39 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v40 = *v39;
  v41 = *(*v39 + 136);
  if (v41 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v41 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_67;
  }

  v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v40 + 8);
  v113 = v39;
  v114 = v43;
  Value = mlir::ElementsAttr::isSplat(&v113);
  if (!mlir::Type::isSignlessInteger(&Value, 1) && !mlir::Type::isSignedInteger(&Value, 8) && !mlir::Type::isSignedInteger(&Value, 16) && !mlir::Type::isSignedInteger(&Value, 32) && !mlir::Type::isSignedInteger(&Value, 64) && !mlir::Type::isUnsignedInteger(&Value, 8) && !mlir::Type::isUnsignedInteger(&Value, 16) && !mlir::Type::isUnsignedInteger(&Value, 32) && !mlir::Type::isUnsignedInteger(&Value, 64) && !mlir::Type::isF16(&Value) && !mlir::Type::isF32(&Value) && !mlir::Type::isBF16(&Value) && *(*Value + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v40 = *v39;
    v41 = *(*v39 + 136);
LABEL_67:
    if (v41 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v41 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v40 + 8);
      v107 = v39;
      v108 = v45;
      v46 = mlir::ElementsAttr::isSplat(&v107);
      if (*(*v46 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v75 = v46;
        v105[0] = v46;
        Value = mlir::AffineMapAttr::getValue(v105);
        if (mlir::Type::isF16(&Value))
        {
          goto LABEL_108;
        }

        v103[0] = v75;
        v104[0] = mlir::AffineMapAttr::getValue(v103);
        if (mlir::Type::isF32(v104))
        {
          goto LABEL_108;
        }
      }
    }

    v109 = 261;
    v107 = "result";
    v108 = 6;
    mlir::Operation::emitOpError(v38, &v107, &v113);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v113, " #");
    if (*v47)
    {
      v49 = v47 + 24;
      v48 = *(v47 + 24);
      LODWORD(Value) = 5;
      v111 = 0;
      v50 = *(v47 + 32);
      p_Value = &Value;
      if (v50 >= *(v47 + 36))
      {
        if (v48 <= &Value && v48 + 24 * v50 > &Value)
        {
          v96 = &Value - v48;
          v97 = v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47 + 24, (v47 + 40), v50 + 1, 24);
          v47 = v97;
          v48 = *(v97 + 24);
          p_Value = &v96[v48];
        }

        else
        {
          v90 = v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47 + 24, (v47 + 40), v50 + 1, 24);
          v47 = v90;
          v48 = *(v90 + 24);
          p_Value = &Value;
        }
      }

      v52 = v48 + 24 * *(v47 + 32);
      v53 = *p_Value;
      *(v52 + 16) = p_Value[2];
      *v52 = v53;
      v54 = (*(v47 + 32) + 1);
      *(v47 + 32) = v54;
      if (*v47)
      {
        LODWORD(Value) = 3;
        v111 = " must be tensor of mps native type values or tensor of complex values, but got ";
        v112 = 79;
        v55 = *(v47 + 24);
        v56 = &Value;
        if (v54 >= *(v47 + 36))
        {
          if (v55 <= &Value && v55 + 24 * v54 > &Value)
          {
            v99 = &Value - v55;
            v100 = v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v47 + 40), v54 + 1, 24);
            v47 = v100;
            v55 = *(v100 + 24);
            v56 = &v99[v55];
          }

          else
          {
            v91 = v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v47 + 40), v54 + 1, 24);
            v47 = v91;
            v55 = *(v91 + 24);
            v56 = &Value;
          }
        }

        v57 = v55 + 24 * *(v47 + 32);
        v58 = *v56;
        *(v57 + 16) = v56[2];
        *v57 = v58;
        ++*(v47 + 32);
        if (*v47)
        {
          v59 = &Value;
          v60 = v47;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, v39);
          v61 = *(v60 + 32);
          v62 = *(v60 + 24);
          if (v61 >= *(v60 + 36))
          {
            if (v62 <= &Value && v62 + 24 * v61 > &Value)
            {
              v101 = &Value - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v60 + 40), v61 + 1, 24);
              v47 = v60;
              v62 = *(v60 + 24);
              v59 = &v101[v62];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v60 + 40), v61 + 1, 24);
              v47 = v60;
              v62 = *(v60 + 24);
              v59 = &Value;
            }
          }

          else
          {
            v47 = v60;
          }

          v63 = v62 + 24 * *(v47 + 32);
          v64 = *v59;
          *(v63 + 16) = v59[2];
          *v63 = v64;
          ++*(v47 + 32);
        }
      }
    }

    v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v113)
    {
      mlir::InFlightDiagnostic::report(&v113);
    }

    if (v122 == 1)
    {
      if (v121 != &v122)
      {
        free(v121);
      }

      v66 = __p;
      if (__p)
      {
        v67 = v120;
        v68 = __p;
        if (v120 != __p)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = __p;
        }

        v120 = v66;
        operator delete(v68);
      }

      v69 = v117;
      if (v117)
      {
        v70 = v118;
        v71 = v117;
        if (v118 != v117)
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
          v71 = v117;
        }

        v118 = v69;
        operator delete(v71);
      }

      if (v115 != v116)
      {
        free(v115);
      }
    }

    if (v65)
    {
      goto LABEL_108;
    }

    return 0;
  }

LABEL_108:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*((*this)[9] + 24));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*((*this)[9] + 56)))
  {
    v77 = mlir::getElementTypeOrSelf(*((*this)[9] + 56));
    if (v77 == mlir::getElementTypeOrSelf(*((*this)[9] + 24)))
    {
      return 1;
    }
  }

  v107 = "failed to verify that all of {input, epsilon} have same element type";
  v109 = 259;
  mlir::OpState::emitOpError(this, &v107, &v113);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  v79 = result;
  if (v113)
  {
    mlir::InFlightDiagnostic::report(&v113);
    result = v79;
  }

  if (v122 == 1)
  {
    if (v121 != &v122)
    {
      free(v121);
      result = v79;
    }

    v80 = __p;
    if (__p)
    {
      v81 = v120;
      v82 = __p;
      if (v120 != __p)
      {
        do
        {
          v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
        }

        while (v81 != v80);
        v82 = __p;
      }

      v120 = v80;
      operator delete(v82);
      result = v79;
    }

    v83 = v117;
    if (v117)
    {
      v84 = v118;
      v85 = v117;
      if (v118 != v117)
      {
        do
        {
          v87 = *--v84;
          v86 = v87;
          *v84 = 0;
          if (v87)
          {
            MEMORY[0x1AC55A040](v86, 0x1000C8077774924);
          }
        }

        while (v84 != v83);
        v85 = v117;
      }

      v118 = v83;
      operator delete(v85);
      result = v79;
    }

    if (v115 != v116)
    {
      free(v115);
      return v79;
    }
  }

  return result;
}

BOOL mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v53[0] = a2;
    v53[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v48[0] = mlir::ElementsAttr::isSplat(v53);
    if (mlir::Type::isSignlessInteger(v48, 1))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 32))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 64))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 64))
    {
      return 1;
    }

    if (mlir::Type::isF16(v48))
    {
      return 1;
    }

    if (mlir::Type::isF32(v48))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v48))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v48[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  v49 = 261;
  v48[0] = a3;
  v48[1] = a4;
  mlir::Operation::emitOpError(a1, v48, v53);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v53, " #");
  if (*v13)
  {
    v15 = v13 + 24;
    v14 = *(v13 + 24);
    v50 = 5;
    v51 = a5;
    v16 = *(v13 + 32);
    v17 = &v50;
    if (v16 >= *(v13 + 36))
    {
      if (v14 <= &v50 && v14 + 24 * v16 > &v50)
      {
        v43 = &v50 - v14;
        v44 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v16 + 1, 24);
        v13 = v44;
        v14 = *(v44 + 24);
        v17 = &v43[v14];
      }

      else
      {
        v41 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v16 + 1, 24);
        v13 = v41;
        v14 = *(v41 + 24);
        v17 = &v50;
      }
    }

    v18 = v14 + 24 * *(v13 + 32);
    v19 = *v17;
    *(v18 + 16) = *(v17 + 2);
    *v18 = v19;
    v20 = (*(v13 + 32) + 1);
    *(v13 + 32) = v20;
    if (*v13)
    {
      v50 = 3;
      v51 = " must be tensor of mps native type values, but got ";
      v52 = 51;
      v21 = *(v13 + 24);
      v22 = &v50;
      if (v20 >= *(v13 + 36))
      {
        if (v21 <= &v50 && v21 + 24 * v20 > &v50)
        {
          v45 = &v50 - v21;
          v46 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 40), v20 + 1, 24);
          v13 = v46;
          v21 = *(v46 + 24);
          v22 = &v45[v21];
        }

        else
        {
          v42 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 40), v20 + 1, 24);
          v13 = v42;
          v21 = *(v42 + 24);
          v22 = &v50;
        }
      }

      v23 = v21 + 24 * *(v13 + 32);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 2);
      *v23 = v24;
      ++*(v13 + 32);
      if (*v13)
      {
        v25 = &v50;
        v26 = v13;
        mlir::DiagnosticArgument::DiagnosticArgument(&v50, a2);
        v27 = *(v26 + 32);
        v28 = *(v26 + 24);
        if (v27 >= *(v26 + 36))
        {
          if (v28 <= &v50 && v28 + 24 * v27 > &v50)
          {
            v47 = &v50 - v28;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v26 + 40), v27 + 1, 24);
            v13 = v26;
            v28 = *(v26 + 24);
            v25 = &v47[v28];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v26 + 40), v27 + 1, 24);
            v13 = v26;
            v28 = *(v26 + 24);
            v25 = &v50;
          }
        }

        else
        {
          v13 = v26;
        }

        v29 = v28 + 24 * *(v13 + 32);
        v30 = *v25;
        *(v29 + 16) = *(v25 + 2);
        *v29 = v30;
        ++*(v13 + 32);
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v53[0])
  {
    mlir::InFlightDiagnostic::report(v53);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v59;
      v34 = __p;
      if (v59 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v59 = v32;
      operator delete(v34);
    }

    v35 = v56;
    if (v56)
    {
      v36 = v57;
      v37 = v56;
      if (v57 != v56)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v56;
      }

      v57 = v35;
      operator delete(v37);
    }

    if (v54 != &v55)
    {
      free(v54);
    }
  }

  return v31;
}

BOOL mlir::mps_spi::ScaledDotProductAttentionOp::verifyInvariantsImpl(uint64_t **this)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*((*this)[9] + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v62[0] = *(*((*this)[9] + 152) + 8) & 0xFFFFFFFFFFFFFFF8, v62[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), ShapedType = mlir::ElementsAttr::getShapedType(v62), v4 = *v3, !ShapedType) || (v52 = v3, v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), mlir::ShapedType::getShape(&v52), v4 = *v3, v6))
  {
LABEL_8:
    v7 = *(v4 + 136);
    if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
      v57[0] = v3;
      v57[1] = v9;
      isSplat = mlir::ElementsAttr::isSplat(v57);
      if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
      {
        v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
        v56[0] = v3;
        v56[1] = v10;
        Shape = mlir::ShapedType::getShape(v56);
        v71 = 1;
        if (v12 == 1 && *Shape == v71)
        {
          goto LABEL_52;
        }
      }
    }

    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
      v55[0] = v3;
      v55[1] = v40;
      isSplat = mlir::ElementsAttr::isSplat(v55);
      if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_52;
      }
    }

    v54 = 261;
    v52 = "operand";
    v53 = 7;
    mlir::Operation::emitOpError(v2, &v52, v62);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v62, " #");
    if (*v13)
    {
      v15 = v13 + 24;
      v14 = *(v13 + 24);
      LODWORD(v59) = 5;
      v60 = 4;
      v16 = *(v13 + 32);
      v17 = &v59;
      if (v16 >= *(v13 + 36))
      {
        if (v14 <= &v59 && v14 + 24 * v16 > &v59)
        {
          v47 = &v59 - v14;
          v48 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v16 + 1, 24);
          v13 = v48;
          v14 = *(v48 + 24);
          v17 = &v47[v14];
        }

        else
        {
          v45 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v16 + 1, 24);
          v13 = v45;
          v14 = *(v45 + 24);
          v17 = &v59;
        }
      }

      v18 = v14 + 24 * *(v13 + 32);
      v19 = *v17;
      *(v18 + 16) = *(v17 + 2);
      *v18 = v19;
      v20 = (*(v13 + 32) + 1);
      *(v13 + 32) = v20;
      if (*v13)
      {
        LODWORD(v59) = 3;
        v60 = " must be 0D tensor of floating point values or static-shape defined tensor with shape equal to [1] or unranked tensor of floating point values, but got ";
        v61 = 152;
        v21 = *(v13 + 24);
        v22 = &v59;
        if (v20 >= *(v13 + 36))
        {
          if (v21 <= &v59 && v21 + 24 * v20 > &v59)
          {
            v49 = &v59 - v21;
            v50 = v13;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 40), v20 + 1, 24);
            v13 = v50;
            v21 = *(v50 + 24);
            v22 = &v49[v21];
          }

          else
          {
            v46 = v13;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 40), v20 + 1, 24);
            v13 = v46;
            v21 = *(v46 + 24);
            v22 = &v59;
          }
        }

        v23 = v21 + 24 * *(v13 + 32);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 2);
        *v23 = v24;
        ++*(v13 + 32);
        if (*v13)
        {
          v25 = &v59;
          v26 = v13;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v3);
          v27 = *(v26 + 32);
          v28 = *(v26 + 24);
          if (v27 >= *(v26 + 36))
          {
            if (v28 <= &v59 && v28 + 24 * v27 > &v59)
            {
              v51 = &v59 - v28;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v26 + 40), v27 + 1, 24);
              v13 = v26;
              v28 = *(v26 + 24);
              v25 = &v51[v28];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v26 + 40), v27 + 1, 24);
              v13 = v26;
              v28 = *(v26 + 24);
              v25 = &v59;
            }
          }

          else
          {
            v13 = v26;
          }

          v29 = v28 + 24 * *(v13 + 32);
          v30 = *v25;
          *(v29 + 16) = *(v25 + 2);
          *v29 = v30;
          ++*(v13 + 32);
        }
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 == 1)
    {
      if (v69 != &v70)
      {
        free(v69);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v68;
        v34 = __p;
        if (v68 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v68 = v32;
        operator delete(v34);
      }

      v35 = v65;
      if (v65)
      {
        v36 = v66;
        v37 = v65;
        if (v66 != v65)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v65;
        }

        v66 = v35;
        operator delete(v37);
      }

      if (v63 != &v64)
      {
        free(v63);
      }
    }

    if (v31)
    {
      goto LABEL_52;
    }

    return 0;
  }

  v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
  v59 = v3;
  v60 = v44;
  isSplat = mlir::ElementsAttr::isSplat(&v59);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
  {
    v4 = *v3;
    goto LABEL_8;
  }

LABEL_52:
  if (*(*this + 9))
  {
    v41 = *this - 2;
  }

  else
  {
    v41 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  return mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::mps_spi::DeviceDescriptorOptionsAttr::get(mlir::MLIRContext *a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v15[1] = a1;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir7mps_spi6detail34DeviceDescriptorOptionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27DeviceDescriptorOptionsAttrEJNS1_10StringAttrEiSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v20[1] = v15;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  *&v21[4] = 0;
  *&v21[8] = a3;
  *&v21[12] = (a4 >> 4) ^ (a4 >> 9);
  v9 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v10 = __ROR8__(v9 - *&v21[8], 43);
  v11 = __ROR8__((0x9AE16A3B2F90404FLL * *&v21[12]) ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * *&v21[4];
  v12 = v9 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v21[12] + __ROR8__(*&v21[8] ^ 0xC949D7C7509E6557, 20) + 20;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)));
  v16 = &v17;
  *v21 = &v17;
  *&v21[8] = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t mlir::mps_spi::DeviceDescriptorOptionsAttr::parse(mlir::AsmParser *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v28 = 257;
    if ((*(*a1 + 400))(a1, "architecture", 12, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
      *v27 = 0;
      v3 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, v27, 0);
      v4 = *a1;
      if (!v3)
      {
        v15 = (*(v4 + 40))(a1);
        v28 = 259;
        (*(*a1 + 24))(v31, a1, v15, v27);
        if (v31[0])
        {
          mlir::InFlightDiagnostic::report(v31);
        }

        if (v39 == 1)
        {
          if (v38 != &v39)
          {
            free(v38);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v37;
            v18 = __p;
            if (v37 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v37 = v16;
            operator delete(v18);
          }

          v19 = v34;
          if (v34)
          {
            v20 = v35;
            v21 = v34;
            if (v35 != v34)
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
              v21 = v34;
            }

            v35 = v19;
            operator delete(v21);
          }

          if (v32 != &v33)
          {
            free(v32);
          }
        }

        return 0;
      }

      v5 = *v27;
      if ((*(v4 + 120))(a1))
      {
        v28 = 257;
        if ((*(*a1 + 400))(a1, "gpu_core_count", 14, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
        {
          v27[0] = 0;
          v6 = mlir::AsmParser::parseInteger<int>(a1, v27);
          v7 = *a1;
          if (v6)
          {
            v8 = v27[0];
            if (((*(v7 + 120))(a1) & 1) == 0)
            {
              return 0;
            }

            v28 = 257;
            if (((*(*a1 + 400))(a1, "ane_options_json", 16, v27) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
            {
              return 0;
            }

            v9 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            v10 = *a1;
            if (v11)
            {
              v12 = v9;
              if ((*(v10 + 168))(a1))
              {
                v13 = mlir::AsmParser::getContext(a1);
                return mlir::mps_spi::DeviceDescriptorOptionsAttr::get(v13, v5, v8, v12);
              }

              return 0;
            }

            v26 = (*(v10 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v29, a1, v26, v27);
            v25 = v29;
          }

          else
          {
            v24 = (*(v7 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v30, a1, v24, v27);
            v25 = v30;
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
  v6 = 0;
  v3 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

llvm::raw_ostream *mlir::mps_spi::DeviceDescriptorOptionsAttr::print(mlir::mps_spi::DeviceDescriptorOptionsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 0xB)
  {
    *(v7 + 8) = 1701999988;
    *v7 = *"architecture";
    v6[4] += 12;
  }

  else
  {
    llvm::raw_ostream::write(v6, "architecture", 0xCuLL);
  }

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

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++v14[4];
  }

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
  v19 = v18[4];
  if (v18[3] - v19 > 0xDuLL)
  {
    qmemcpy(v19, "gpu_core_count", 14);
    v18[4] += 14;
  }

  else
  {
    llvm::raw_ostream::write(v18, "gpu_core_count", 0xEuLL);
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
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
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

  v26 = *(*this + 16);
  v27 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v27, v26);
  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] == v29)
  {
    llvm::raw_ostream::write(v28, ",", 1uLL);
  }

  else
  {
    *v29 = 44;
    ++v28[4];
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = v32[4];
  if (v32[3] - v33 > 0xFuLL)
  {
    *v33 = *"ane_options_json";
    v32[4] += 16;
  }

  else
  {
    llvm::raw_ostream::write(v32, "ane_options_json", 0x10uLL);
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
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "=", 1uLL);
  }

  else
  {
    *v37 = 61;
    ++v36[4];
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

  (*(*a2 + 40))(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v41 = *(result + 4);
  if (*(result + 3) == v41)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v41 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::mps_spi::MPSSPIDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v44 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v48) = 0;
  v46 = 0;
  v47 = 0;
  v45 = v5;
  LOBYTE(v48) = 0;
  if (((*(*a2 + 640))(a2, &v46) & 1) == 0)
  {
    v6 = 0;
    LOWORD(v48) = 256;
    if ((v48 & 0x10000) != 0)
    {
      v40 = "device_descriptor_options";
    }

    else
    {
      BYTE2(v48) = 1;
    }

    goto LABEL_21;
  }

  v40 = "device_descriptor_options";
  v41 = 25;
  if ((v48 & 0x10000) != 0)
  {
    v6 = 0;
LABEL_21:
    v7 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v7 = v47;
  if (v47)
  {
    if (v47 == 25)
    {
      v8 = *v46 == 0x645F656369766564 && *(v46 + 8) == 0x6F74706972637365;
      v9 = v8 && *(v46 + 16) == 0x6E6F6974706F5F72;
      if (v9 && *(v46 + 24) == 115)
      {
        v6 = mlir::mps_spi::DeviceDescriptorOptionsAttr::parse(a2);
        LOBYTE(v48) = v6 != 0;
        *(&v48 + 1) = 257;
        goto LABEL_21;
      }
    }
  }

  else
  {
    (*(*v44 + 648))(v44, &v40, 1);
    if ((v48 & 0x10000) != 0)
    {
      v7 = 0;
      v11 = 0;
      v6 = 0;
      goto LABEL_22;
    }

    v7 = v47;
  }

  v6 = 0;
  v11 = v46;
  LOWORD(v48) = 0;
  BYTE2(v48) = 1;
LABEL_22:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v44) & 0x100) == 0)
  {
    v39 = 257;
    (*(*a2 + 24))(&v44, a2, v4, v38);
    if (v44)
    {
      LODWORD(v40) = 3;
      v42 = 19;
      v12 = &v40;
      v13 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v40 && v47 + 24 * v48 > &v40)
        {
          v35 = &v40 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = v47;
          v12 = (v47 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v12 = &v40;
          v13 = v47;
        }
      }

      v14 = &v13[24 * v48];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      ++v48;
      if (v44)
      {
        v43 = 261;
        v40 = v11;
        v41 = v7;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (v44)
        {
          LODWORD(v40) = 3;
          v42 = 14;
          v16 = &v40;
          v17 = v47;
          if (v48 >= v49)
          {
            if (v47 <= &v40 && v47 + 24 * v48 > &v40)
            {
              v36 = &v40 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v17 = v47;
              v16 = (v47 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v16 = &v40;
              v17 = v47;
            }
          }

          v18 = &v17[24 * v48];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v48;
          if (v44)
          {
            v20 = *(a1 + 8);
            v21 = *(a1 + 16);
            v43 = 261;
            v40 = v20;
            v41 = v21;
            mlir::Diagnostic::operator<<(&v45, &v40);
            if (v44)
            {
              LODWORD(v40) = 3;
              v42 = 1;
              v22 = &v40;
              v23 = v47;
              if (v48 >= v49)
              {
                if (v47 <= &v40 && v47 + 24 * v48 > &v40)
                {
                  v37 = &v40 - v47;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v23 = v47;
                  v22 = (v47 + v37);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v22 = &v40;
                  v23 = v47;
                }
              }

              v24 = &v23[24 * v48];
              v25 = *v22;
              *(v24 + 2) = v22[2];
              *v24 = v25;
              ++v48;
              if (v44)
              {
                mlir::InFlightDiagnostic::report(&v44);
              }
            }
          }
        }
      }
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v54;
        v28 = __p;
        if (v54 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v54 = v26;
        operator delete(v28);
      }

      v29 = v51;
      if (v51)
      {
        v30 = v52;
        v31 = v51;
        if (v52 != v51)
        {
          do
          {
            v33 = *--v30;
            v32 = v33;
            *v30 = 0;
            if (v33)
            {
              MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
            }
          }

          while (v30 != v29);
          v31 = v51;
        }

        v52 = v29;
        operator delete(v31);
      }

      if (v47 != v50)
      {
        free(v47);
      }
    }

    return 0;
  }

  return v6;
}