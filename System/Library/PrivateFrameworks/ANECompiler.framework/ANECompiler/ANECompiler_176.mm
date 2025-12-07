BOOL mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::placement::ANEIOCast>,mlir::OpTrait::OneResult<mlir::placement::ANEIOCast>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::placement::ANEIOCast>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ANEIOCast>,mlir::OpTrait::OneOperand<mlir::placement::ANEIOCast>,mlir::OpTrait::OpInvariants<mlir::placement::ANEIOCast>,mlir::MemoryEffectOpInterface::Trait<mlir::placement::ANEIOCast>>(a1, a2))
  {
    v5 = a1;
    return mlir::placement::ANEIOCast::verify(&v5);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::placement::ANEIOCast>,mlir::OpTrait::OneResult<mlir::placement::ANEIOCast>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::placement::ANEIOCast>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ANEIOCast>,mlir::OpTrait::OneOperand<mlir::placement::ANEIOCast>,mlir::OpTrait::OpInvariants<mlir::placement::ANEIOCast>,mlir::MemoryEffectOpInterface::Trait<mlir::placement::ANEIOCast>>(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
    return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>(uint64_t a1)
{
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v35;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v29 = v1;
    v36 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v29;
    a1 = v36;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v30 = v1;
    v37 = a1;
    v24 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v24;
    v1 = v30;
    a1 = v37;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v31 = v1;
    v38 = a1;
    v25 = v2;
    v20 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v20;
    v2 = v25;
    v1 = v31;
    a1 = v38;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v32 = v1;
    v39 = a1;
    v26 = v2;
    v17 = v4;
    v21 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v17;
    v3 = v21;
    v2 = v26;
    v1 = v32;
    a1 = v39;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v34 = v1;
    v41 = a1;
    v28 = v2;
    v19 = v4;
    v23 = v3;
    v14 = v6;
    v16 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v6 = v14;
    v5 = v16;
    v4 = v19;
    v3 = v23;
    v2 = v28;
    v1 = v34;
    a1 = v41;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HostTypeConversion<Empty>]";
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

uint64_t mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v6 = a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.memref_to_tensor", 0x1AuLL, a2, &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, &v9);
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

  *a1 = &unk_1F1A05FD8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::placement::MemrefToTensor>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::placement::MemrefToTensor::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "placement.memref_to_tensor";
      v17 = 26;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char a2, char *a3, const char **a4, char *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v24);
  if (v24)
  {
    mlir::Diagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(&v25, a3, a4, a5, a6, a7, a8);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v31;
      v17 = __p;
      if (v31 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v31 = v15;
      operator delete(v17);
    }

    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
      {
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
        v20 = v28;
      }

      v29 = v18;
      operator delete(v20);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

const char *llvm::getTypeName<mlir::CompatibleReturnTypesInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CompatibleReturnTypesInterface]";
  v6 = 86;
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

BOOL mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::placement::MemrefToTensor>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
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

  mlir::ValueRange::ValueRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::placement::MemrefToTensor::fold(v17);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CompatibleReturnTypesInterface::Trait<Empty>]";
  v6 = 100;
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

uint64_t mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::placement::MemrefToTensor::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    v6 = mlir::placement::MemrefToTensor::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.region_call", 0x15uLL, a2, &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, &v9);
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

  *a1 = &unk_1F1A060A0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>::verifySymbolUses;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>::getExecutionCost;
  {
    v5 = v2;
    mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
    v1 = v37;
    a1 = v45;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v38 = v1;
    v46 = a1;
    v31 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v31;
    v1 = v38;
    a1 = v46;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v39 = v1;
    v47 = a1;
    v32 = v2;
    v26 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v3 = v26;
    v2 = v32;
    v1 = v39;
    a1 = v47;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v40 = v1;
    v48 = a1;
    v33 = v2;
    v22 = v4;
    v27 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v22;
    v3 = v27;
    v2 = v33;
    v1 = v40;
    a1 = v48;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v41 = v1;
    v49 = a1;
    v34 = v2;
    v23 = v4;
    v28 = v3;
    v19 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v19;
    v4 = v23;
    v3 = v28;
    v2 = v34;
    v1 = v41;
    a1 = v49;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v43 = v1;
    v51 = a1;
    v36 = v2;
    v25 = v4;
    v30 = v3;
    v18 = v6;
    v21 = v5;
    v16 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
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

const char *llvm::getTypeName<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExecutionCostOpInterface::Trait<Empty>]";
  v6 = 94;
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

uint64_t mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    v4 = mlir::placement::RegionCall::verifyInvariantsImpl(&v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.replaced_ops", 0x16uLL, a2, &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id, &v9);
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

  *a1 = &unk_1F1A06168;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 32), **(*(this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v4 + 16 * v5), *(*(*(this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

BOOL mlir::detail::FunctionOpInterfaceTrait<mlir::placement::ReplacedOps>::verifyBody(mlir::Operation **a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = (((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
  if (*v3 == v3)
  {
    return 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v2);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*a1 + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&AttrDictionary);
  v9 = v8;
  v10 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 48;
  v12 = *(v11 + 48);
  if (((*(v13 + 8) - v12) >> 3) != v8)
  {
    v66[0] = "entry block must have ";
    v67 = 259;
    mlir::OpState::emitOpError(a1, v66, &AttrDictionary);
    if (AttrDictionary)
    {
      v68 = 5;
      v69 = v9;
      v17 = &v68;
      v18 = v73;
      if (v74 >= v75)
      {
        if (v73 <= &v68 && v73 + 24 * v74 > &v68)
        {
          v61 = &v68 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v18 = v73;
          v17 = (v73 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v17 = &v68;
          v18 = v73;
        }
      }

      v19 = &v18[24 * v74];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v74;
      if (AttrDictionary)
      {
        v68 = 3;
        v69 = " arguments to match function signature";
        v70 = 38;
        v22 = &v68;
        v23 = v73;
        if (v21 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v21 > &v68)
          {
            v62 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v21 + 1, 24);
            v23 = v73;
            v22 = (v73 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v21 + 1, 24);
            v22 = &v68;
            v23 = v73;
          }
        }

        v24 = &v23[24 * v74];
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        ++v74;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v82 != 1)
    {
      return v16;
    }

    if (v81 != &v82)
    {
      free(v81);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v80;
      v28 = __p;
      if (v80 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v80 = v26;
      operator delete(v28);
    }

    v29 = v77;
    if (v77)
    {
      v30 = v78;
      v31 = v77;
      if (v78 != v77)
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
        v31 = v77;
      }

      v78 = v29;
      operator delete(v31);
    }

    v59 = v73;
    if (v73 == v76)
    {
      return v16;
    }

LABEL_61:
    free(v59);
    return v16;
  }

  if (!v8)
  {
    return 1;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(*(v12 + 8 * v14) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v15)
    {
      break;
    }

    ++v14;
    ++Inputs;
    if (v8 == v14)
    {
      return 1;
    }
  }

  v34 = Inputs;
  v66[0] = "type of entry block argument #";
  v67 = 259;
  mlir::OpState::emitOpError(a1, v66, &AttrDictionary);
  if (AttrDictionary)
  {
    v68 = 5;
    v69 = v14;
    v35 = &v68;
    v36 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v68 && v73 + 24 * v74 > &v68)
      {
        v63 = &v68 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v36 = v73;
        v35 = (v73 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v35 = &v68;
        v36 = v73;
      }
    }

    v37 = &v36[24 * v74];
    v38 = *v35;
    *(v37 + 2) = *(v35 + 2);
    *v37 = v38;
    ++v74;
    if (AttrDictionary)
    {
      mlir::Diagnostic::operator<<(&v72, 40);
      if (AttrDictionary)
      {
        v39 = &v68;
        mlir::DiagnosticArgument::DiagnosticArgument(&v68, v15);
        v40 = v73;
        if (v74 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v74 > &v68)
          {
            v64 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v40 = v73;
            v39 = (v73 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v39 = &v68;
            v40 = v73;
          }
        }

        v41 = &v40[24 * v74];
        v42 = *v39;
        *(v41 + 2) = *(v39 + 2);
        *v41 = v42;
        v43 = ++v74;
        if (AttrDictionary)
        {
          v68 = 3;
          v69 = ") must match the type of the corresponding argument in ";
          v70 = 55;
          v44 = &v68;
          v45 = v73;
          if (v43 >= v75)
          {
            if (v73 <= &v68 && v73 + 24 * v43 > &v68)
            {
              v65 = &v68 - v73;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v43 + 1, 24);
              v45 = v73;
              v44 = (v73 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v43 + 1, 24);
              v44 = &v68;
              v45 = v73;
            }
          }

          v46 = &v45[24 * v74];
          v47 = *v44;
          *(v46 + 2) = *(v44 + 2);
          *v46 = v47;
          ++v74;
        }
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v48, v34);
  if (*v49)
  {
    v50 = v49;
    mlir::Diagnostic::operator<<((v49 + 1), 41);
    v49 = v50;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v82)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v51 = __p;
    if (__p)
    {
      v52 = v80;
      v53 = __p;
      if (v80 != __p)
      {
        do
        {
          v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
        }

        while (v52 != v51);
        v53 = __p;
      }

      v80 = v51;
      operator delete(v53);
    }

    v54 = v77;
    if (v77)
    {
      v55 = v78;
      v56 = v77;
      if (v78 != v77)
      {
        do
        {
          v58 = *--v55;
          v57 = v58;
          *v55 = 0;
          if (v58)
          {
            MEMORY[0x1AC55A040](v57, 0x1000C8077774924);
          }
        }

        while (v55 != v54);
        v56 = v77;
      }

      v78 = v54;
      operator delete(v56);
    }

    v59 = v73;
    if (v73 != v76)
    {
      goto LABEL_61;
    }
  }

  return v16;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
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

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::placement::ReplacedOps::print(&v7, a3);
}

BOOL mlir::function_interface_impl::verifyTrait<mlir::placement::ReplacedOps>(mlir::Operation *a1)
{
  v180 = *MEMORY[0x1E69E9840];
  v166 = a1;
  v169[0] = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(v169);
  v169[0] = mlir::Operation::getAttrDictionary(a1);
  v3 = mlir::ArrayAttr::getValue(v169);
  v5 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(a1 + 6) + 96));
  if (v5)
  {
    v6 = *(*v5 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v5 : 0;
    v165 = v8;
    if (v7)
    {
      v169[0] = mlir::Operation::getAttrDictionary(a1);
      v25 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::Operation::getAttrDictionary(v166);
      v26 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v25, (v26 + 16 * v27 - 16), *(*(*(v166 + 6) + 96) + 8));
      v169[0] = mlir::AffineMapAttr::getValue(v169);
      mlir::FunctionType::getInputs(v169);
      v29 = v28;
      mlir::ArrayAttr::getValue(&v165);
      v30 = v29;
      if (v31 != v29)
      {
        v164 = 257;
        mlir::OpState::emitOpError(&v166, v163, v169);
        if (v169[0])
        {
          LODWORD(v167) = 3;
          *(&v167 + 1) = "expects argument attribute array to have the same number of elements as the number of function arguments, got ";
          v168 = 110;
          v59 = &v167;
          v60 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v150 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v60 = v170;
              v59 = v170 + v150;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v59 = &v167;
              v60 = v170;
            }
          }

          v61 = &v60[24 * v171];
          v62 = *v59;
          *(v61 + 2) = *(v59 + 2);
          *v61 = v62;
          ++v171;
        }

        mlir::ArrayAttr::getValue(&v165);
        if (v169[0])
        {
          LODWORD(v167) = 5;
          *(&v167 + 1) = v63;
          v64 = &v167;
          v65 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v151 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v65 = v170;
              v64 = v170 + v151;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v64 = &v167;
              v65 = v170;
            }
          }

          v66 = &v65[24 * v171];
          v67 = *v64;
          *(v66 + 2) = *(v64 + 2);
          *v66 = v67;
          ++v171;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v169, ", but expected ");
        if (*v68)
        {
          v69 = *(v68 + 24);
          LODWORD(v167) = 5;
          *(&v167 + 1) = v30;
          v70 = *(v68 + 32);
          v71 = &v167;
          if (v70 >= *(v68 + 36))
          {
            if (v69 <= &v167 && v69 + 24 * v70 > &v167)
            {
              v152 = &v167 - v69;
              v153 = v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v68 + 24, (v68 + 40), v70 + 1, 24);
              v68 = v153;
              v69 = *(v153 + 24);
              v71 = &v152[v69];
            }

            else
            {
              v148 = v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v68 + 24, (v68 + 40), v70 + 1, 24);
              v68 = v148;
              v69 = *(v148 + 24);
              v71 = &v167;
            }
          }

          v72 = v69 + 24 * *(v68 + 32);
          v73 = *v71;
          *(v72 + 16) = *(v71 + 2);
          *v72 = v73;
          ++*(v68 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 == 1)
        {
          if (v178 != &v179)
          {
            free(v178);
          }

          v74 = __p;
          if (__p)
          {
            v75 = v177;
            v76 = __p;
            if (v177 != __p)
            {
              do
              {
                v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
              }

              while (v75 != v74);
              v76 = __p;
            }

            v177 = v74;
            operator delete(v76);
          }

          v20 = v174;
          if (!v174)
          {
            goto LABEL_196;
          }

          v77 = v175;
          v22 = v174;
          if (v175 == v174)
          {
            goto LABEL_195;
          }

          do
          {
            v79 = *--v77;
            v78 = v79;
            *v77 = 0;
            if (v79)
            {
              MEMORY[0x1AC55A040](v78, 0x1000C8077774924);
            }
          }

          while (v77 != v20);
          goto LABEL_194;
        }

        return v16;
      }

      if (v29)
      {
        v32 = 0;
        while (1)
        {
          v33 = *(mlir::ArrayAttr::getValue(&v165) + 8 * v32);
          if (!v33)
          {
            v162 = 0;
LABEL_149:
            v164 = 257;
            mlir::OpState::emitOpError(&v166, v163, v169);
            if (v169[0])
            {
              LODWORD(v167) = 3;
              v168 = 71;
              v113 = &v167;
              v114 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v158 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v114 = v170;
                  v113 = v170 + v158;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v113 = &v167;
                  v114 = v170;
                }
              }

              v115 = &v114[24 * v171];
              v116 = *v113;
              *(v115 + 2) = *(v113 + 2);
              *v115 = v116;
              ++v171;
            }

            v117 = mlir::ArrayAttr::getValue(&v165);
            if (v169[0])
            {
              v118 = *(v117 + 8 * v32);
              v119 = &v167;
              mlir::DiagnosticArgument::DiagnosticArgument(&v167, v118);
              v120 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v159 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v120 = v170;
                  v119 = v170 + v159;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v119 = &v167;
                  v120 = v170;
                }
              }

              v121 = &v120[24 * v171];
              v122 = *v119;
              *(v121 + 2) = *(v119 + 2);
              *v121 = v122;
              ++v171;
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v123);
            if (v169[0])
            {
              mlir::InFlightDiagnostic::report(v169);
            }

            if (v179 != 1)
            {
              return v16;
            }

            if (v178 != &v179)
            {
              free(v178);
            }

            v124 = __p;
            if (__p)
            {
              v125 = v177;
              v126 = __p;
              if (v177 != __p)
              {
                do
                {
                  v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
                }

                while (v125 != v124);
                v126 = __p;
              }

              v177 = v124;
              operator delete(v126);
            }

            v20 = v174;
            if (!v174)
            {
              goto LABEL_196;
            }

            v127 = v175;
            v22 = v174;
            if (v175 == v174)
            {
              goto LABEL_195;
            }

            do
            {
              v129 = *--v127;
              v128 = v129;
              *v127 = 0;
              if (v129)
              {
                MEMORY[0x1AC55A040](v128, 0x1000C8077774924);
              }
            }

            while (v127 != v20);
            goto LABEL_194;
          }

          if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v33 = 0;
          }

          v162 = v33;
          if (!v33)
          {
            goto LABEL_149;
          }

          v34 = mlir::AffineMapAttr::getValue(&v162);
          v35 = mlir::DictionaryAttr::end(&v162);
          if (v34 != v35)
          {
            break;
          }

LABEL_45:
          if (++v32 == v29)
          {
            goto LABEL_6;
          }
        }

        v36 = v35;
        while (1)
        {
          v167 = *v34;
          v169[0] = ZinCompressedFootprintInfo::GetCompressedBytes(&v167);
          AttrData = mlir::OpaqueAttr::getAttrData(v169);
          if (!v38)
          {
            break;
          }

          v39 = AttrData;
          v40 = memchr(AttrData, 46, v38);
          if (!v40 || v40 - v39 == -1)
          {
            break;
          }

          NameDialect = mlir::NamedAttribute::getNameDialect(&v167);
          if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v166, 0, v32, v167, *(&v167 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v34 == v36)
          {
            goto LABEL_45;
          }
        }

        v163[0] = "arguments may only have dialect attributes";
        v164 = 259;
        mlir::OpState::emitOpError(&v166, v163, v169);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v169);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 != 1)
        {
          return v16;
        }

        if (v178 != &v179)
        {
          free(v178);
        }

        v101 = __p;
        if (__p)
        {
          v102 = v177;
          v103 = __p;
          if (v177 != __p)
          {
            do
            {
              v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
            }

            while (v102 != v101);
            v103 = __p;
          }

          v177 = v101;
          operator delete(v103);
        }

        v20 = v174;
        if (!v174)
        {
          goto LABEL_196;
        }

        v104 = v175;
        v22 = v174;
        if (v175 == v174)
        {
          goto LABEL_195;
        }

        do
        {
          v106 = *--v104;
          v105 = v106;
          *v104 = 0;
          if (v106)
          {
            MEMORY[0x1AC55A040](v105, 0x1000C8077774924);
          }
        }

        while (v104 != v20);
        goto LABEL_194;
      }
    }
  }

LABEL_6:
  v169[0] = mlir::Operation::getAttrDictionary(v166);
  v9 = mlir::ArrayAttr::getValue(v169);
  v169[0] = mlir::Operation::getAttrDictionary(v166);
  v10 = mlir::ArrayAttr::getValue(v169);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v9 + 32), (v10 + 16 * v11), *(*(*(v166 + 6) + 96) + 24));
  if (v12)
  {
    v13 = *(*v12 + 136);
    v14 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v15 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v12 : 0;
    v165 = v15;
    if (v14)
    {
      v169[0] = mlir::Operation::getAttrDictionary(v166);
      v42 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::Operation::getAttrDictionary(v166);
      v43 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v42, (v43 + 16 * v44 - 16), *(*(*(v166 + 6) + 96) + 8));
      v169[0] = mlir::AffineMapAttr::getValue(v169);
      mlir::FunctionType::getResults(v169);
      v46 = v45;
      mlir::ArrayAttr::getValue(&v165);
      v47 = v46;
      if (v48 != v46)
      {
        v164 = 257;
        mlir::OpState::emitOpError(&v166, v163, v169);
        if (v169[0])
        {
          LODWORD(v167) = 3;
          *(&v167 + 1) = "expects result attribute array to have the same number of elements as the number of function results, got ";
          v168 = 106;
          v80 = &v167;
          v81 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v154 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v81 = v170;
              v80 = v170 + v154;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v80 = &v167;
              v81 = v170;
            }
          }

          v82 = &v81[24 * v171];
          v83 = *v80;
          *(v82 + 2) = *(v80 + 2);
          *v82 = v83;
          ++v171;
        }

        mlir::ArrayAttr::getValue(&v165);
        if (v169[0])
        {
          LODWORD(v167) = 5;
          *(&v167 + 1) = v84;
          v85 = &v167;
          v86 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v155 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v86 = v170;
              v85 = v170 + v155;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v85 = &v167;
              v86 = v170;
            }
          }

          v87 = &v86[24 * v171];
          v88 = *v85;
          *(v87 + 2) = *(v85 + 2);
          *v87 = v88;
          ++v171;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v169, ", but expected ");
        if (*v89)
        {
          v90 = *(v89 + 24);
          LODWORD(v167) = 5;
          *(&v167 + 1) = v47;
          v91 = *(v89 + 32);
          v92 = &v167;
          if (v91 >= *(v89 + 36))
          {
            if (v90 <= &v167 && v90 + 24 * v91 > &v167)
            {
              v156 = &v167 - v90;
              v157 = v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v89 + 24, (v89 + 40), v91 + 1, 24);
              v89 = v157;
              v90 = *(v157 + 24);
              v92 = &v156[v90];
            }

            else
            {
              v149 = v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v89 + 24, (v89 + 40), v91 + 1, 24);
              v89 = v149;
              v90 = *(v149 + 24);
              v92 = &v167;
            }
          }

          v93 = v90 + 24 * *(v89 + 32);
          v94 = *v92;
          *(v93 + 16) = *(v92 + 2);
          *v93 = v94;
          ++*(v89 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 == 1)
        {
          if (v178 != &v179)
          {
            free(v178);
          }

          v95 = __p;
          if (__p)
          {
            v96 = v177;
            v97 = __p;
            if (v177 != __p)
            {
              do
              {
                v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
              }

              while (v96 != v95);
              v97 = __p;
            }

            v177 = v95;
            operator delete(v97);
          }

          v20 = v174;
          if (!v174)
          {
            goto LABEL_196;
          }

          v98 = v175;
          v22 = v174;
          if (v175 == v174)
          {
            goto LABEL_195;
          }

          do
          {
            v100 = *--v98;
            v99 = v100;
            *v98 = 0;
            if (v100)
            {
              MEMORY[0x1AC55A040](v99, 0x1000C8077774924);
            }
          }

          while (v98 != v20);
          goto LABEL_194;
        }

        return v16;
      }

      if (v46)
      {
        v49 = 0;
        while (1)
        {
          v50 = *(mlir::ArrayAttr::getValue(&v165) + 8 * v49);
          if (!v50)
          {
            v162 = 0;
LABEL_172:
            v164 = 257;
            mlir::OpState::emitOpError(&v166, v163, v169);
            if (v169[0])
            {
              LODWORD(v167) = 3;
              v168 = 69;
              v130 = &v167;
              v131 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v160 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v131 = v170;
                  v130 = v170 + v160;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v130 = &v167;
                  v131 = v170;
                }
              }

              v132 = &v131[24 * v171];
              v133 = *v130;
              *(v132 + 2) = *(v130 + 2);
              *v132 = v133;
              ++v171;
            }

            v134 = mlir::ArrayAttr::getValue(&v165);
            if (v169[0])
            {
              v135 = *(v134 + 8 * v49);
              v136 = &v167;
              mlir::DiagnosticArgument::DiagnosticArgument(&v167, v135);
              v137 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v161 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v137 = v170;
                  v136 = v170 + v161;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v136 = &v167;
                  v137 = v170;
                }
              }

              v138 = &v137[24 * v171];
              v139 = *v136;
              *(v138 + 2) = *(v136 + 2);
              *v138 = v139;
              ++v171;
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v140);
            if (v169[0])
            {
              mlir::InFlightDiagnostic::report(v169);
            }

            if (v179 != 1)
            {
              return v16;
            }

            if (v178 != &v179)
            {
              free(v178);
            }

            v141 = __p;
            if (__p)
            {
              v142 = v177;
              v143 = __p;
              if (v177 != __p)
              {
                do
                {
                  v142 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v142 - 1);
                }

                while (v142 != v141);
                v143 = __p;
              }

              v177 = v141;
              operator delete(v143);
            }

            v20 = v174;
            if (!v174)
            {
              goto LABEL_196;
            }

            v144 = v175;
            v22 = v174;
            if (v175 == v174)
            {
              goto LABEL_195;
            }

            do
            {
              v146 = *--v144;
              v145 = v146;
              *v144 = 0;
              if (v146)
              {
                MEMORY[0x1AC55A040](v145, 0x1000C8077774924);
              }
            }

            while (v144 != v20);
            goto LABEL_194;
          }

          if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v50 = 0;
          }

          v162 = v50;
          if (!v50)
          {
            goto LABEL_172;
          }

          v51 = mlir::AffineMapAttr::getValue(&v162);
          v52 = mlir::DictionaryAttr::end(&v162);
          if (v51 != v52)
          {
            break;
          }

LABEL_63:
          if (++v49 == v46)
          {
            goto LABEL_11;
          }
        }

        v53 = v52;
        while (1)
        {
          v167 = *v51;
          v169[0] = ZinCompressedFootprintInfo::GetCompressedBytes(&v167);
          v54 = mlir::OpaqueAttr::getAttrData(v169);
          if (!v55)
          {
            break;
          }

          v56 = v54;
          v57 = memchr(v54, 46, v55);
          if (!v57 || v57 - v56 == -1)
          {
            break;
          }

          v58 = mlir::NamedAttribute::getNameDialect(&v167);
          if (v58 && ((*(*v58 + 88))(v58, v166, 0, v49, v167, *(&v167 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v51 == v53)
          {
            goto LABEL_63;
          }
        }

        v163[0] = "results may only have dialect attributes";
        v164 = 259;
        mlir::OpState::emitOpError(&v166, v163, v169);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v169);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 != 1)
        {
          return v16;
        }

        if (v178 != &v179)
        {
          free(v178);
        }

        v107 = __p;
        if (__p)
        {
          v108 = v177;
          v109 = __p;
          if (v177 != __p)
          {
            do
            {
              v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
            }

            while (v108 != v107);
            v109 = __p;
          }

          v177 = v107;
          operator delete(v109);
        }

        v20 = v174;
        if (!v174)
        {
          goto LABEL_196;
        }

        v110 = v175;
        v22 = v174;
        if (v175 == v174)
        {
          goto LABEL_195;
        }

        do
        {
          v112 = *--v110;
          v111 = v112;
          *v110 = 0;
          if (v112)
          {
            MEMORY[0x1AC55A040](v111, 0x1000C8077774924);
          }
        }

        while (v110 != v20);
        goto LABEL_194;
      }
    }
  }

LABEL_11:
  if ((*(v166 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::placement::ReplacedOps>::verifyBody(&v166);
  }

  v163[0] = "expects one region";
  v164 = 259;
  mlir::OpState::emitOpError(&v166, v163, v169);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v169);
  if (v169[0])
  {
    mlir::InFlightDiagnostic::report(v169);
  }

  if (v179 == 1)
  {
    if (v178 != &v179)
    {
      free(v178);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v177;
      v19 = __p;
      if (v177 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v177 = v17;
      operator delete(v19);
    }

    v20 = v174;
    if (!v174)
    {
      goto LABEL_196;
    }

    v21 = v175;
    v22 = v174;
    if (v175 == v174)
    {
LABEL_195:
      v175 = v20;
      operator delete(v22);
LABEL_196:
      if (v170 != v173)
      {
        free(v170);
      }

      return v16;
    }

    do
    {
      v24 = *--v21;
      v23 = v24;
      *v21 = 0;
      if (v24)
      {
        MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
      }
    }

    while (v21 != v20);
LABEL_194:
    v22 = v174;
    goto LABEL_195;
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
  }

  else
  {
    IsTerminator = 0;
  }

  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<Empty>]";
  v6 = 126;
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

BOOL mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::placement::StartTimer::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void *mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.tensor_to_memref", 0x1AuLL, a2, &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, &v9);
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

  *a1 = &unk_1F1A06488;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::placement::TensorToMemref>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::placement::TensorToMemref::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "placement.tensor_to_memref";
      v17 = 26;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

uint64_t mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::placement::TensorToMemref::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    v6 = mlir::placement::TensorToMemref::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void mlir::Dialect::addAttribute<mlir::placement::RegionTypeAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::placement::RegionTypeAttr,mlir::Attribute,mlir::placement::detail::RegionTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSD_6detail21RegionTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSC_6detail21RegionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v23 = "placement.region_type";
  v24 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSC_6detail21RegionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::Dialect::addType<mlir::placement::TimerHandleType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::placement::TimerHandleType,mlir::Type,mlir::placement::detail::TimerHandleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSD_6detail22TimerHandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSC_6detail22TimerHandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v23 = "placement.timer";
  v24 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, &v12);
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

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSC_6detail22TimerHandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
  v13[1] = v8;
  v12 = v2;
  v4 = HIDWORD(v2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v2 + 8) ^ v4);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
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
  Slow[1] = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

uint64_t mlir::AsmParser::parseInteger<unsigned long long>(uint64_t a1, unint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
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

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v27 = 1;
  v26 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v10 = BYTE1(v7);
    goto LABEL_40;
  }

  llvm::APInt::sextOrTrunc(&v28, &v26, 0x40u);
  v8 = v29;
  if (v29 >= 0x41)
  {
    v11 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v28);
    v12 = v28;
    if (v11 <= 0x40)
    {
      *a2 = *v28;
    }

    else
    {
      v9 = -1;
      *a2 = -1;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x1AC55A040]();
    v9 = *a2;
  }

  else
  {
    v9 = v28;
    *a2 = v28;
  }

LABEL_10:
  v29 = v27;
  if (v27 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28, v9, 0);
  }

  if (v27)
  {
    v13 = 0xFFFFFFFFFFFFFFFFLL >> -v27;
  }

  else
  {
    v13 = 0;
  }

  v28 = (v13 & v9);
  if (v28 == v26)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v24 = "integer value too large";
    v25 = 259;
    (*(*a1 + 24))(&v28, a1, v6, &v24);
    if (v28)
    {
      mlir::InFlightDiagnostic::report(&v28);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v17 = v32;
      if (v32)
      {
        v18 = v33;
        v19 = v32;
        if (v33 != v32)
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
          v19 = v32;
        }

        v33 = v17;
        operator delete(v19);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    LOBYTE(v7) = 0;
  }

  v10 = 1;
LABEL_40:
  if (v27 >= 0x41 && v26)
  {
    v22 = v7;
    MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
    LOBYTE(v7) = v22;
  }

  return v7 | (v10 << 8);
}

__n128 mlir::Diagnostic::append<char const(&)[7]>(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = a1;
  v6 = a1 + 16;
  v7 = *(a1 + 16);
  v14 = 3;
  v15 = __s;
  v16 = v4;
  v8 = *(a1 + 24);
  v9 = &v14;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v14 && v7 + 24 * v8 > &v14)
    {
      v12 = &v14 - v7;
      v13 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v5 + 32), v8 + 1, 24);
      v5 = v13;
      v7 = *(v13 + 16);
      v9 = &v12[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = a1;
      v7 = *(a1 + 16);
      v9 = &v14;
    }
  }

  v10 = (v7 + 24 * *(v5 + 24));
  result = *v9;
  v10[1].n128_u64[0] = v9[1].n128_u64[0];
  *v10 = result;
  ++*(v5 + 24);
  return result;
}

uint64_t mlir::placement::anonymous namespace::inferMemrefTensorOpReturnTypes<mlir::placement::MemrefToTensorAdaptor>(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = mlir::UnrankedTensorType::get(a2);
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v2 + 16), v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(v2 + 8);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 8);
  return 1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::placement::ReplacedOps::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  return v4 + 1;
}

void mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_0::operator()(void ***a1, uint64_t *a2, unsigned int (*a3)(uint64_t), uint64_t a4)
{
  v7 = a1[1];
  v8 = **a1;
  v9 = (*a1)[1];
  if (v8 == v9)
  {
    mlir::MLIRContext::getRegisteredOperations((*(*a2 + 24) & 0xFFFFFFFFFFFFFFF8));
    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v14 = *a1;
    v15 = **a1;
    v12 = *a1;
    if (v15)
    {
      v14[1] = v15;
      operator delete(v15);
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      v12 = *a1;
    }

    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v8 = *v12;
    v9 = v12[1];
  }

  while (v8 != v9)
  {
    v17 = *v8;
    if (a3(a4))
    {
      v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](*v7, &v17);
      v16 = *a2;
      std::vector<mlir::Operation *>::push_back[abi:nn200100](v13, &v16);
    }

    ++v8;
  }

  std::vector<std::unique_ptr<mlir::Diagnostic>>::push_back[abi:nn200100](*v7 + 24, a2);
}

void mlir::FrozenRewritePatternSet::~FrozenRewritePatternSet(mlir::FrozenRewritePatternSet *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2)
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
      result = v3 + 16 * (HashValue & v6);
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
          result = v3 + 16 * (v15 & v6);
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
      result = v3 + 16 * (HashValue & v6);
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
          result = v3 + 16 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }

LABEL_29:
    if (v7 != -1)
    {
      return 0;
    }

    return result;
  }

  v16 = 1;
  if (v7 == -2)
  {
    v17 = HashValue & v6;
    result = v3 + 16 * (HashValue & v6);
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
        result = v3 + 16 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v28 = HashValue & v6;
    result = v3 + 16 * (HashValue & v6);
    if (*result != -2)
    {
      if (*result == -1)
      {
        goto LABEL_29;
      }

      if (!*(result + 8))
      {
        return result;
      }
    }

    HashValue = v16 + v28;
    ++v16;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<convertPDLToPDLInterp(mlir::ModuleOp,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>> &)::$_0>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::isOpTriviallyDead(a2, a2))
  {

    mlir::Operation::erase(a2, v3);
  }
}

llvm::StringMapImpl *llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2800000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v18 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        while (1)
        {
          v9 = *(*a2 + 8 * v7);
          if (v9 && v9 + 1 != 0)
          {
            break;
          }

          *(v4 + 8 * v7++) = v9;
          if (v5 == v7)
          {
            return this;
          }
        }

        v11 = *v9;
        buffer = llvm::allocate_buffer(*v9 + 41, 8uLL);
        v13 = buffer;
        v14 = (buffer + 5);
        if (v11)
        {
          memcpy(buffer + 5, v9 + 5, v11);
        }

        v14[v11] = 0;
        *v13 = v11;
        v15 = v13 + 1;
        v16 = v9[4];
        if (v16)
        {
          if (v16 == v9 + 1)
          {
            v13[4] = v15;
            (*(*v16 + 24))(v16);
          }

          else
          {
            v13[4] = (*(*v16 + 16))(v16, v15);
          }
        }

        else
        {
          v13[4] = 0;
        }

        v4 = *this;
        *(*this + 8 * v7) = v13;
        *(v18 + 4 * v7) = *(v8 + 4 * v7);
        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A06550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void mlir::FrozenRewritePatternSet::Impl::~Impl(mlir::FrozenRewritePatternSet::Impl *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    mlir::detail::PDLByteCode::~PDLByteCode(v2);
    MEMORY[0x1AC55A070]();
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = *(this + 6);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 6);
    }

    *(this + 7) = v3;
    operator delete(v5);
  }

  v8 = *(this + 3);
  if (v8)
  {
    v9 = *(this + 4);
    v10 = *(this + 3);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 3);
    }

    *(this + 4) = v8;
    operator delete(v10);
  }

  v13 = *(this + 4);
  v14 = *this;
  if (v13)
  {
    v15 = (v14 + 16);
    v16 = 32 * v13;
    do
    {
      if ((*(v15 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          *v15 = v17;
          operator delete(v17);
        }
      }

      v15 += 4;
      v16 -= 32;
    }

    while (v16);
    v14 = *this;
    v18 = (32 * *(this + 4));
  }

  else
  {
    v18 = 0;
  }

  llvm::deallocate_buffer(v14, v18);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, llvm::hashing::detail **a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v12);
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
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13);
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
  v11 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2, char ***a3)
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
      v29 = 1;
      v30 = HashValue & v8;
      v13 = (v5 + 16 * (HashValue & v8));
      v31 = *v13;
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
            v32 = 0;
          }

          else
          {
            v32 = v31 + 2 == 0;
          }

          if (v32)
          {
            v21 = v13;
          }

          v33 = v29 + v30;
          ++v29;
          v30 = v33 & v8;
          v13 = (v5 + 16 * (v33 & v8));
          v31 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v31 == -1)
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
    v13 = (v5 + 16 * (HashValue & v8));
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
          v13 = (v5 + 16 * (v20 & v8));
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
    v13 = (v5 + 16 * (HashValue & v8));
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
        v13 = (v5 + 16 * (v26 & v8));
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
        v34 = v22;
        v28 = memcmp(v9, v24, v10);
        v22 = v34;
        v21 = v27;
        v24 = v35;
        if (!v28)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 16 * (HashValue & v8));
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
      v13 = (v5 + 16 * (v15 & v8));
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

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_1A75AD9C0;
        *(v14 - 1) = xmmword_1A75AD9C0;
        *v14 = xmmword_1A75AD9C0;
        v14[1] = xmmword_1A75AD9C0;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_1A75AD9C0;
        }

        while (v10 != v16);
      }
    }

    v17 = (16 * v3);
    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, v19, &v26);
          *v26 = *v19;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    llvm::deallocate_buffer(v4, v17);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_23;
    }

    v22 = v21 + 1;
    v10 = &result[v22 & 0x1FFFFFFFFFFFFFFCLL];
    v23 = result + 2;
    v24 = v22 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v23 - 2) = xmmword_1A75AD9C0;
      *(v23 - 1) = xmmword_1A75AD9C0;
      *v23 = xmmword_1A75AD9C0;
      v23[1] = xmmword_1A75AD9C0;
      v23 += 4;
      v24 -= 4;
    }

    while (v24);
    if (v22 != (v22 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_23:
      v25 = &result[v20];
      do
      {
        *v10++ = xmmword_1A75AD9C0;
      }

      while (v10 != v25);
    }
  }

  return result;
}

void *llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 32 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
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
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 32 * v25);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          *(v22 + 1) = *(v16 + 8);
          v22[3] = *(v16 + 3);
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::RegisteredOperationName)>::callback_fn<mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_3>(unint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  do
  {
    v6 = v5 >> 1;
    v7 = &v4[2 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v5 += ~(v5 >> 1);
    if (v9 < v2)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v4 == (*(a2 + 32) + 16 * v3))
  {
    return 0;
  }

  if (*v4 == v2)
  {
    return v4[1] != 0;
  }

  return 0;
}

void mlir::detail::PDLByteCode::~PDLByteCode(mlir::detail::PDLByteCode *this)
{
  v2 = *(this + 470);
  if (v2)
  {
    v3 = *(this + 471);
    v4 = *(this + 470);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 470);
    }

    *(this + 471) = v2;
    operator delete(v4);
  }

  v7 = *(this + 467);
  if (v7)
  {
    v8 = *(this + 468);
    v9 = *(this + 467);
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 8);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = *(this + 467);
    }

    *(this + 468) = v7;
    operator delete(v9);
  }

  v12 = *(this + 49);
  v13 = *(this + 100);
  if (v13)
  {
    v14 = &v12[104 * v13 - 80];
    v15 = -104 * v13;
    do
    {
      v16 = *(v14 + 48);
      if ((v14 + 64) != v16)
      {
        free(v16);
      }

      if (v14 + 16 != *v14)
      {
        free(*v14);
      }

      v14 -= 104;
      v15 += 104;
    }

    while (v15);
    v12 = *(this + 49);
  }

  if (v12 != this + 408)
  {
    free(v12);
  }

  v17 = *(this + 30);
  if (v17 != this + 264)
  {
    free(v17);
  }

  v18 = *(this + 11);
  if (v18 != this + 112)
  {
    free(v18);
  }

  v19 = *(this + 8);
  if (v19)
  {
    *(this + 9) = v19;
    operator delete(v19);
  }

  v20 = *this;
  v21 = *(this + 2);
  if (v21)
  {
    v22 = &v20[8 * v21];
    do
    {
      v24 = *(v22 - 1);
      v22 -= 8;
      v23 = v24;
      *v22 = 0;
      if (v24)
      {
        v25 = *v23;
        v26 = *(v23 + 2);
        if (v26)
        {
          v27 = 8 * v26;
          v28 = v25 - 8;
          do
          {
            v29 = *&v28[v27];
            *&v28[v27] = 0;
            if (v29)
            {
              (*(*v29 + 8))(v29);
            }

            v27 -= 8;
          }

          while (v27);
          v25 = *v23;
        }

        if (v25 != (v23 + 2))
        {
          free(v25);
        }

        MEMORY[0x1AC55A070](v23, 0x1080C407559D7D1);
      }
    }

    while (v22 != v20);
    v20 = *this;
  }

  if (v20 != this + 16)
  {
    free(v20);
  }
}

mlir::PatternApplicator *mlir::PatternApplicator::PatternApplicator(mlir::PatternApplicator *this, const mlir::FrozenRewritePatternSet *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  *(this + 4) = this + 48;
  *(this + 5) = 0x100000000;
  *(this + 7) = 0;
  if (*(*a2 + 72))
  {
    operator new();
  }

  return this;
}

void mlir::PatternApplicator::~PatternApplicator(mlir::PatternApplicator *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    mlir::detail::PDLByteCodeMutableState::~PDLByteCodeMutableState(v2);
    MEMORY[0x1AC55A070]();
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  v4 = *(this + 6);
  v5 = *(this + 1);
  if (v4)
  {
    v6 = v5 + 24;
    v7 = 40 * v4;
    do
    {
      if ((*(v6 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v8 = *(v6 - 2);
        if (v6 != v8)
        {
          free(v8);
        }
      }

      v6 += 40;
      v7 -= 40;
    }

    while (v7);
    v5 = *(this + 1);
    v9 = 40 * *(this + 6);
  }

  else
  {
    v9 = 0;
  }

  llvm::deallocate_buffer(v5, v9);
}

void mlir::PatternApplicator::applyCostModel(uint64_t **a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v67[0] = a2;
  v67[1] = a3;
  v4 = *(**a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 400);
    if (v5)
    {
      v8 = 0;
      v9 = *(v4 + 392);
      v10 = 104 * v5;
      do
      {
        v11 = a1[7];
        v12 = a2(a3, v9);
        mlir::detail::PDLByteCodeMutableState::updatePatternBenefit(v11, v8++, v12);
        v9 += 104;
        v10 -= 104;
      }

      while (v10);
    }
  }

  v13 = *(a1 + 4);
  if (!v13 && !*(a1 + 5))
  {
LABEL_10:
    v15 = **a1;
    if (!*(v15 + 8))
    {
      goto LABEL_89;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 6);
  if (v14 > 4 * v13 && v14 >= 0x41)
  {
    llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::shrink_and_clear((a1 + 1));
    goto LABEL_10;
  }

  if (v14)
  {
    v16 = a1[1] + 3;
    for (i = 40 * v14; i; i -= 40)
    {
      v18 = *(v16 - 3);
      if (v18 != -8192)
      {
        if (v18 == -4096)
        {
          goto LABEL_15;
        }

        v19 = *(v16 - 2);
        if (v16 != v19)
        {
          free(v19);
        }
      }

      *(v16 - 3) = -4096;
LABEL_15:
      v16 += 5;
    }
  }

  a1[2] = 0;
  v15 = **a1;
  if (!*(v15 + 8))
  {
    goto LABEL_89;
  }

LABEL_21:
  v20 = *(v15 + 16);
  if (v20)
  {
    v21 = 32 * v20;
    v22 = *v15;
    while ((*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v22 += 4;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    v22 = *v15;
  }

  v23 = *v15 + 32 * v20;
  if (v22 == v23)
  {
    goto LABEL_89;
  }

  while (2)
  {
    v25 = v22[1];
    v24 = v22[2];
    while (v25 != v24)
    {
      v30 = *v25;
      if (*(*v25 + 20) == -1)
      {
        goto LABEL_35;
      }

      v31 = a1[1];
      v32 = *(a1 + 6);
      if (!v32)
      {
        goto LABEL_56;
      }

      v26 = ((*v22 >> 4) ^ (*v22 >> 9)) & (v32 - 1);
      v27 = &v31[5 * v26];
      v28 = *v27;
      if (*v22 != *v27)
      {
        v33 = 0;
        v34 = 1;
        while (v28 != -4096)
        {
          if (v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = v28 == -8192;
          }

          if (v35)
          {
            v33 = v27;
          }

          v36 = v26 + v34++;
          v26 = v36 & (v32 - 1);
          v27 = &v31[5 * v26];
          v28 = *v27;
          if (*v22 == *v27)
          {
            goto LABEL_32;
          }
        }

        if (v33)
        {
          v27 = v33;
        }

        v37 = *(a1 + 4);
        if (4 * v37 + 4 >= (3 * v32))
        {
LABEL_56:
          v38 = 2 * v32;
          goto LABEL_58;
        }

        if (v32 + ~v37 - *(a1 + 5) <= v32 >> 3)
        {
          v38 = *(a1 + 6);
LABEL_58:
          v39 = (v38 - 1) | ((v38 - 1) >> 1);
          v40 = v39 | (v39 >> 2) | ((v39 | (v39 >> 2)) >> 4);
          v41 = ((v40 | (v40 >> 8)) >> 16) | v40 | (v40 >> 8);
          if ((v41 + 1) > 0x40)
          {
            v42 = v41 + 1;
          }

          else
          {
            v42 = 64;
          }

          *(a1 + 6) = v42;
          buffer = llvm::allocate_buffer(40 * v42, 8uLL);
          a1[1] = buffer;
          if (v31)
          {
            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::moveFromOldBuckets((a1 + 1), v31, &v31[5 * v32]);
            llvm::deallocate_buffer(v31, (40 * v32));
          }

          a1[2] = 0;
          v44 = *(a1 + 6);
          if (v44)
          {
            v45 = 40 * v44 - 40;
            v46 = buffer;
            if (v45 < 0x28)
            {
              goto LABEL_113;
            }

            v47 = v45 / 0x28 + 1;
            v46 = &buffer[5 * (v47 & 0xFFFFFFFFFFFFFFELL)];
            v48 = buffer;
            v49 = v47 & 0xFFFFFFFFFFFFFFELL;
            do
            {
              *v48 = -4096;
              v48[5] = -4096;
              v48 += 10;
              v49 -= 2;
            }

            while (v49);
            if (v47 != (v47 & 0xFFFFFFFFFFFFFFELL))
            {
LABEL_113:
              do
              {
                *v46 = -4096;
                v46 += 5;
              }

              while (v46 != &buffer[5 * v44]);
            }

            v50 = v44 - 1;
            v51 = ((*v22 >> 4) ^ (*v22 >> 9)) & v50;
            v27 = &buffer[5 * v51];
            v52 = *v27;
            if (*v22 != *v27)
            {
              v53 = 0;
              v54 = 1;
              while (v52 != -4096)
              {
                if (v53)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v52 == -8192;
                }

                if (v55)
                {
                  v53 = v27;
                }

                v56 = v51 + v54++;
                v51 = v56 & v50;
                v27 = &buffer[5 * v51];
                v52 = *v27;
                if (*v22 == *v27)
                {
                  goto LABEL_80;
                }
              }

              if (v53)
              {
                v27 = v53;
              }
            }
          }

          else
          {
            v27 = 0;
          }

LABEL_80:
          ++*(a1 + 4);
          if (*v27 != -4096)
          {
LABEL_42:
            --*(a1 + 5);
          }
        }

        else
        {
          *(a1 + 4) = v37 + 1;
          if (*v27 != -4096)
          {
            goto LABEL_42;
          }
        }

        *v27 = *v22;
        v27[1] = (v27 + 3);
        v27[2] = 0x200000000;
      }

LABEL_32:
      v29 = *(v27 + 4);
      if (v29 >= *(v27 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v27 + 1), v27 + 3, v29 + 1, 8);
        v29 = *(v27 + 4);
      }

      *(v27[1] + 8 * v29) = v30;
      ++*(v27 + 4);
LABEL_35:
      ++v25;
    }

    do
    {
      v22 += 4;
    }

    while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000);
    if (v22 != v23)
    {
      continue;
    }

    break;
  }

  v15 = **a1;
LABEL_89:
  *(a1 + 10) = 0;
  v57 = *(v15 + 48);
  v58 = *(v15 + 56);
  if (v57 != v58)
  {
    v59 = 0;
    do
    {
      v60 = *v57;
      if (*(*v57 + 20) != -1)
      {
        if (v59 >= *(a1 + 11))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 4), a1 + 6, v59 + 1, 8);
          v59 = *(a1 + 10);
        }

        a1[4][v59] = v60;
        v59 = *(a1 + 10) + 1;
        *(a1 + 10) = v59;
      }

      ++v57;
    }

    while (v57 != v58);
  }

  v68 = 1;
  v69 = -4096;
  v71 = -4096;
  v72 = -4096;
  v73 = -4096;
  v66 = &v68;
  v65[0] = v67;
  v65[1] = &v68;
  v65[2] = &v66;
  if (*(a1 + 4))
  {
    v61 = *(a1 + 6);
    if (v61)
    {
      v62 = 40 * v61;
      v63 = a1[1];
      while ((*v63 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v63 += 5;
        v62 -= 40;
        if (!v62)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v63 = a1[1];
    }

    v64 = &a1[1][5 * v61];
    while (v63 != v64)
    {
      mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v65, (v63 + 1));
      do
      {
        v63 += 5;
      }

      while (v63 != v64 && (*v63 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_101:
  mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v65, (a1 + 4));
  if ((v68 & 1) == 0)
  {
    llvm::deallocate_buffer(v69, (16 * v70));
  }
}

void mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    if ((**a1)(*(*a1 + 8), **a2 + 8) == 0xFFFF)
    {
      *(a2 + 8) = 0;
    }

    return;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  if (*v4 > 1u || *(v4 + 4))
  {
    if (v5)
    {
      v23 = v4 + 8;
      v24 = (v4 + 72);
      v25 = 48;
    }

    else
    {
      v6 = *(v4 + 16);
      if (v6 > 2 * v5 && v6 >= 0x41)
      {
        llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::shrink_and_clear(v4);
        goto LABEL_10;
      }

      if (!v6)
      {
LABEL_31:
        *v4 = v6;
        *(v4 + 4) = 0;
        v7 = *a2;
        v8 = *(a2 + 8);
        if (v8)
        {
          goto LABEL_11;
        }

LABEL_32:
        v15 = 0;
        v21 = 0;
        v35[0] = **(a1 + 16);
        v14 = v7;
LABEL_33:
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v14, v7, v35, v15, 0, v21);
        i = *(a2 + 8);
        if (!i)
        {
          return;
        }

        goto LABEL_34;
      }

      v23 = *(v4 + 8);
      v24 = (v23 + 16 * v6);
      v25 = v24 - v23 - 16;
      if (v25 <= 0xF)
      {
        v26 = *(v4 + 8);
        do
        {
LABEL_29:
          *v26 = -4096;
          v26 += 2;
        }

        while (v26 != v24);
LABEL_30:
        LODWORD(v6) = *v4 & 1;
        goto LABEL_31;
      }
    }

    v27 = (v25 >> 4) + 1;
    v26 = (v23 + 16 * (v27 & 0x1FFFFFFFFFFFFFFELL));
    v28 = (v23 + 16);
    v29 = v27 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v28 - 2) = -4096;
      *v28 = -4096;
      v28 += 4;
      v29 -= 2;
    }

    while (v29);
    if (v27 == (v27 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_10:
  v7 = *a2;
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_11:
  v9 = 8 * v8;
  do
  {
    v10 = *v7;
    v7 += 8;
    v11 = v10 + 8;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v37 = v12;
    v13 = *(a1 + 8);
    v36 = (**a1)(*(*a1 + 8));
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::try_emplace<mlir::PatternBenefit>(v13, &v37, &v36, v35);
    v9 -= 8;
  }

  while (v9);
  v14 = *a2;
  v15 = *(a2 + 8);
  v7 = (*a2 + 8 * v15);
  v35[0] = **(a1 + 16);
  if (v15 < 0x81)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v16 = v14;
  v17 = MEMORY[0x1E69E5398];
  v18 = v15;
  v19 = v15;
  while (1)
  {
    v20 = operator new(8 * v19, v17);
    if (v20)
    {
      break;
    }

    v21 = v19 >> 1;
    v22 = v19 > 1;
    v19 >>= 1;
    if (!v22)
    {
      v15 = v18;
      v14 = v16;
      goto LABEL_33;
    }
  }

  v34 = v20;
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v16, v7, v35, v18, v20, v19);
  operator delete(v34);
  for (i = *(a2 + 8); i; *(a2 + 8) = i)
  {
LABEL_34:
    v31 = *(a1 + 8);
    v32 = *(*a2 + 8 * i - 8);
    if (v32)
    {
      v33 = (v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v35[0] = v33;
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v31, v35) != -1)
    {
      break;
    }

    i = *(a2 + 8) - 1;
  }
}

uint64_t **mlir::PatternApplicator::walkAllPatterns(uint64_t **result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = **result;
  if (*(v6 + 8))
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 32 * v7;
      v9 = *v6;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 4;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v9 = *v6;
    }

    v10 = *v6 + 32 * v7;
    if (v9 != v10)
    {
      do
      {
        v11 = v9[1];
        for (i = v9[2]; v11 != i; result = a2(a3, v13 + 8))
        {
          v13 = *v11++;
        }

        do
        {
          v9 += 4;
        }

        while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v9 != v10);
      v6 = **v5;
    }
  }

LABEL_17:
  v14 = *(v6 + 48);
  v15 = *(v6 + 56);
  if (v14 != v15)
  {
    do
    {
      v16 = *v14++;
      result = a2(a3, v16 + 8);
    }

    while (v14 != v15);
    v6 = **v5;
  }

  v17 = *(v6 + 72);
  if (v17)
  {
    v18 = *(v17 + 400);
    if (v18)
    {
      v19 = *(v17 + 392);
      v20 = 104 * v18;
      do
      {
        result = a2(a3, v19);
        v19 += 104;
        v20 -= 104;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t mlir::PatternApplicator::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59[60] = *MEMORY[0x1E69E9840];
  v54[0] = a6;
  v54[1] = a7;
  v53[0] = a9;
  v53[1] = a10;
  v52 = a2;
  v57 = v59;
  v58 = 0x400000000;
  v14 = *(**a1 + 72);
  v51 = v14;
  if (v14)
  {
    mlir::detail::PDLByteCode::match(v14, a2, a3, &v57, *(a1 + 56));
    a2 = v52;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  if (!v16)
  {
LABEL_9:
    v19 = (v15 + 40 * v16);
    goto LABEL_10;
  }

  v17 = *(a2 + 48);
  v18 = ((v17 >> 4) ^ (v17 >> 9)) & (v16 - 1);
  v19 = (v15 + 40 * v18);
  v20 = *v19;
  if (v17 != *v19)
  {
    v21 = 1;
    while (v20 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & (v16 - 1);
      v19 = (v15 + 40 * v18);
      v20 = *v19;
      if (v17 == *v19)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  if (v19 == (v15 + 40 * v16))
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v19[1];
    v24 = *(v19 + 4);
  }

  v25 = 0;
  v50 = 0;
  v26 = *(a1 + 40);
  v49 = 0;
  v27 = v58;
  v55 = 0;
  while (1)
  {
    if (v25 >= v24)
    {
      v30 = v50;
      if (v50 < v26)
      {
        v31 = *(a1 + 32);
LABEL_26:
        v32 = *(v31 + 8 * v30);
        goto LABEL_27;
      }

      v34 = v49;
      if (v49 >= v27)
      {
        goto LABEL_46;
      }

      v35 = v57;
LABEL_38:
      v47 = &v35[120 * v34];
      v29 = *(v47 + 13);
      v48 = v29;
      v33 = &v49;
      goto LABEL_39;
    }

    v28 = *(v23 + 8 * v25);
    if (v28)
    {
      v29 = v28 + 8;
    }

    else
    {
      v29 = 0;
    }

    v48 = v29;
    v30 = v50;
    if (v50 >= v26)
    {
      v33 = &v50 + 1;
      v47 = 0;
      v34 = v49;
      if (v49 >= v27)
      {
        goto LABEL_39;
      }

LABEL_33:
      v35 = v57;
      if (v29 && *(v29 + 12) >= *(v57 + 60 * v34 + 56))
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v31 = *(a1 + 32);
    if (!v28)
    {
      goto LABEL_26;
    }

    v32 = *(v31 + 8 * v50);
    if (*(v29 + 12) >= *(v32 + 20))
    {
      v33 = &v50 + 1;
      v29 = v28 + 8;
      v47 = 0;
      v34 = v49;
      if (v49 < v27)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }

LABEL_27:
    if (v32)
    {
      v29 = v32 + 8;
    }

    else
    {
      v29 = 0;
    }

    v47 = 0;
    v48 = v29;
    v33 = &v50;
    v34 = v49;
    if (v49 < v27)
    {
      goto LABEL_33;
    }

LABEL_39:
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_40:
    ++*v33;
    if (a4 && !a4(a5))
    {
      goto LABEL_14;
    }

    v46 = 0;
    Context = mlir::Attribute::getContext((v52 + 24));
    v45[0] = a3;
    v45[1] = &v52;
    v45[2] = &v47;
    v45[3] = &v55;
    v45[4] = &v51;
    v45[5] = a1;
    v45[6] = &v48;
    v45[7] = v53;
    v45[8] = &v46;
    v45[9] = v54;
    v56 = v52 & 0xFFFFFFFFFFFFFFF9;
    v37 = v48;
    if (mlir::MLIRContext::hasActionHandler(Context))
    {
      break;
    }

    llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(v45);
    if (v46)
    {
      goto LABEL_46;
    }

LABEL_14:
    v25 = HIDWORD(v50);
  }

  mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(Context, llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>, v45, &v56, 1, v37);
  if ((v46 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_46:
  v38 = *(a1 + 56);
  if (v38)
  {
    mlir::detail::PDLByteCodeMutableState::cleanupAfterMatchAndRewrite(v38);
  }

  v39 = v57;
  if (v58)
  {
    v40 = v57 + 120 * v58 - 48;
    v41 = -120 * v58;
    do
    {
      v42 = *(v40 + 2);
      if (v40 + 32 != v42)
      {
        free(v42);
      }

      if (v40 + 16 != *v40)
      {
        free(*v40);
      }

      v43 = *(v40 - 8);
      if (v40 - 48 != v43)
      {
        free(v43);
      }

      v40 -= 120;
      v41 += 120;
    }

    while (v41);
    v39 = v57;
  }

  if (v39 != v59)
  {
    free(v39);
  }

  return v55;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::try_emplace<mlir::PatternBenefit>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 4;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = v7 - 1;
  v10 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v11 = &v8[4 * v10];
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 4;
    }

    else
    {
      v5 = *(result + 1);
      v13 = result[4];
    }

    *a4 = v11;
    *(a4 + 8) = &v5[4 * v13];
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -4096)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -8192;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = &v8[4 * (v19 & v9)];
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 4;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -4096)
  {
    --result[1];
  }

  *v11 = *a2;
  *(v11 + 4) = *a3;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v5 = *(result + 1);
    v15 = result[4];
  }

  *a4 = v11;
  *(a4 + 8) = &v5[4 * v15];
  *(a4 + 16) = 1;
  return result;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](unsigned int *a1, void *a2)
{
  v2 = a1 + 2;
  v3 = *a1;
  v4 = *a1 & 1;
  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a1[4];
    if (!v5)
    {
      v8 = 0;
      v11 = 0;
      v18 = 0;
      goto LABEL_8;
    }

    v2 = *(a1 + 1);
  }

  v6 = v5 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = &v2[4 * v7];
  v9 = *v8;
  if (*a2 == *v8)
  {
    return v8 + 2;
  }

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
    v8 = &v2[4 * (v15 & v6)];
    v9 = *v8;
    if (*a2 == *v8)
    {
      return v8 + 2;
    }
  }

  if (v12)
  {
    v8 = v12;
  }

  v18 = v8;
  if (v4)
  {
    v11 = 4;
  }

  else
  {
    v11 = a1[4];
  }

LABEL_8:
  if (4 * (v3 >> 1) + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_28;
  }

  if (v11 + ~(v3 >> 1) - a1[1] <= v11 >> 3)
  {
LABEL_28:
    v16 = a2;
    v17 = a1;
    llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(a1, v11);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v17, v16, &v18);
    a2 = v16;
    a1 = v17;
    v3 = *v17;
    v8 = v18;
    v4 = *v17 & 1;
  }

  *a1 = (v3 & 0xFFFFFFFE | v4) + 2;
  if (*v8 != -4096)
  {
    --a1[1];
  }

  *v8 = *a2;
  *(v8 + 4) = -1;
  return v8 + 2;
}

unsigned int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::shrink_and_clear(unsigned int *result)
{
  v1 = *result;
  v2 = __clz((*result >> 1) - 1);
  if (v2 - 28 >= 3)
  {
    v3 = 1 << (33 - v2);
  }

  else
  {
    v3 = 64;
  }

  if (v1 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ((v1 & 1) != 0 && v4 < 5)
  {
    *result &= 1u;
    result[1] = 0;
    v5 = result + 2;
    v6 = result + 18;
    v7 = 48;
    goto LABEL_15;
  }

  if (v1)
  {
    if (v4 <= 4)
    {
      *result = 1;
    }

    else
    {
      *result &= ~1u;
      v13 = result;
      buffer = llvm::allocate_buffer(16 * v4, 8uLL);
      result = v13;
      *(v13 + 1) = buffer;
      *(v13 + 2) = v4;
      v15 = *v13;
      *v13 = *v13 & 1;
      if ((v15 & 1) == 0)
      {
        v16 = &buffer[4 * v4];
        v17 = 16 * v4 - 16;
        if (v17 < 0x10)
        {
          v19 = buffer;
          goto LABEL_31;
        }

LABEL_24:
        v18 = (v17 >> 4) + 1;
        v19 = &buffer[4 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
        v20 = buffer + 4;
        v21 = v18 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v20 - 2) = -4096;
          *v20 = -4096;
          v20 += 4;
          v21 -= 2;
        }

        while (v21);
        if (v18 == (v18 & 0x1FFFFFFFFFFFFFFELL))
        {
          return result;
        }

        do
        {
LABEL_31:
          *v19 = -4096;
          v19 += 4;
        }

        while (v19 != v16);
        return result;
      }
    }

    buffer = result + 2;
    v16 = result + 18;
    v17 = 48;
    goto LABEL_24;
  }

  v9 = result[4];
  if (v4 != v9)
  {
    llvm::deallocate_buffer(*(result + 1), (16 * v9));
  }

  *result = 0;
  if (!v4)
  {
    return result;
  }

  v5 = *(result + 1);
  v6 = &v5[4 * v4];
  v7 = 16 * v4 - 16;
  if (v7 < 0x10)
  {
    v8 = *(result + 1);
    do
    {
LABEL_18:
      *v8 = -4096;
      v8 += 4;
    }

    while (v8 != v6);
    return result;
  }

LABEL_15:
  v10 = (v7 >> 4) + 1;
  v8 = &v5[4 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
  v11 = v5 + 4;
  v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v11 - 2) = -4096;
    *v11 = -4096;
    v11 += 4;
    v12 -= 2;
  }

  while (v12);
  if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 16 * v6);
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
        v7 = (v3 + 16 * (v13 & v5));
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

int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(uint64_t a1, unsigned int a2)
{
  v21[6] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v7 = v21;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 4) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 4) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 4) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v17 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = v13 & ((v17 >> 4) ^ (v17 >> 9));
      v15 = &v12[4 * v14];
      v16 = *v15;
      if (v17 != *v15)
      {
        v18 = 0;
        v19 = 1;
        while (v16 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16 == -8192;
          }

          if (v20)
          {
            v18 = v15;
          }

          v21 = v14 + v19++;
          v14 = v21 & v13;
          v15 = &v12[4 * (v21 & v13)];
          v16 = *v15;
          if (v17 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v18)
        {
          v15 = v18;
        }
      }

LABEL_15:
      *v15 = v17;
      *(v15 + 4) = *(a2 + 4);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *result, char *a2, unsigned int **a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return *&v13;
  }

  v7 = a2;
  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    if (v9)
    {
      v10 = v9 + 8;
    }

    else
    {
      v10 = 0;
    }

    if (*result)
    {
      v11 = *result + 8;
    }

    else
    {
      v11 = 0;
    }

    v116 = v11;
    v117 = v10;
    v12 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) < *v12)
    {
      v14 = *v8;
      *v8 = *(v7 - 1);
      *(v7 - 1) = v14;
    }

    return *&v13;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return *&v13;
    }

    v15 = result + 8;
    if (result + 8 == a2)
    {
      return *&v13;
    }

    v16 = result;
LABEL_19:
    v17 = v15;
    v19 = *v16;
    v18 = *(v16 + 1);
    if (v18)
    {
      v20 = v18 + 8;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19 + 8;
    }

    else
    {
      v21 = 0;
    }

    v116 = v21;
    v117 = v20;
    v22 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) >= *v22)
    {
      goto LABEL_18;
    }

    v23 = *v17;
    if (*v17)
    {
      v24 = *v17 + 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = (v24 >> 4) ^ (v24 >> 9);
    v115 = v17;
    while (1)
    {
      *v17 = *v16;
      if (v16 == v8)
      {
        v17 = v8;
LABEL_17:
        *v17 = v23;
        v7 = a2;
        v17 = v115;
LABEL_18:
        v15 = v17 + 8;
        v16 = v17;
        if (v17 + 8 != v7)
        {
          goto LABEL_19;
        }

        return *&v13;
      }

      v17 = v16;
      v32 = *(v16 - 1);
      v16 -= 8;
      v33 = v32 + 8;
      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = *a3;
      v37 = *a3 + 2;
      v36 = **a3;
      v38 = v36 & 1;
      if (v36)
      {
        v39 = 4;
        v40 = *a3 + 2;
      }

      else
      {
        v39 = v35[4];
        if (!v39)
        {
          v43 = 0;
          v47 = 0;
          goto LABEL_46;
        }

        v40 = *(v35 + 1);
      }

      v41 = v39 - 1;
      v42 = v41 & v25;
      v43 = &v40[4 * (v41 & v25)];
      v44 = *v43;
      if (v24 == *v43)
      {
        goto LABEL_42;
      }

      v53 = 0;
      v54 = 1;
      while (v44 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v44 == -8192;
        }

        if (v55)
        {
          v53 = v43;
        }

        v56 = v42 + v54++;
        v42 = v56 & v41;
        v43 = &v40[4 * v42];
        v44 = *v43;
        if (v24 == *v43)
        {
          goto LABEL_42;
        }
      }

      if (v53)
      {
        v43 = v53;
      }

      if (v36)
      {
        v47 = 4;
      }

      else
      {
        v47 = v35[4];
      }

LABEL_46:
      if (4 * (v36 >> 1) + 4 >= 3 * v47)
      {
        v47 *= 2;
      }

      else if (v47 + ~(v36 >> 1) - v35[1] > v47 >> 3)
      {
        goto LABEL_48;
      }

      v112 = v23;
      llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v35, v47);
      v36 = *v35;
      if (*v35)
      {
        v57 = 4;
      }

      else
      {
        v57 = v35[4];
        if (!v57)
        {
          v38 = 0;
          v43 = 0;
LABEL_116:
          v23 = v112;
          goto LABEL_48;
        }

        v37 = *(v35 + 1);
      }

      v23 = v112;
      v38 = *v35 & 1;
      v59 = v57 - 1;
      v60 = v59 & v25;
      v43 = &v37[4 * (v59 & v25)];
      v61 = *v43;
      if (v24 != *v43)
      {
        v62 = 0;
        v63 = 1;
        while (v61 != -4096)
        {
          if (v62)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 == -8192;
          }

          if (v64)
          {
            v62 = v43;
          }

          v65 = v60 + v63++;
          v60 = v65 & v59;
          v43 = &v37[4 * v60];
          v61 = *v43;
          if (v24 == *v43)
          {
            goto LABEL_116;
          }
        }

        if (v62)
        {
          v43 = v62;
        }

        goto LABEL_116;
      }

LABEL_48:
      *v35 = (v36 & 0xFFFFFFFE | v38) + 2;
      if (*v43 != -4096)
      {
        --v35[1];
      }

      *v43 = v24;
      *(v43 + 4) = -1;
      v35 = *a3;
      v36 = **a3;
LABEL_42:
      v45 = v36 & 1;
      v46 = v35 + 2;
      if (v36)
      {
        v26 = 4;
        v27 = v35 + 2;
      }

      else
      {
        v26 = v35[4];
        if (!v26)
        {
          v30 = 0;
          v48 = 0;
          goto LABEL_52;
        }

        v27 = *(v35 + 1);
      }

      v28 = v26 - 1;
      v29 = (v26 - 1) & ((v34 >> 4) ^ (v34 >> 9));
      v30 = &v27[4 * v29];
      v31 = *v30;
      if (v34 != *v30)
      {
        v49 = 0;
        v50 = 1;
        while (v31 != -4096)
        {
          if (v49)
          {
            v51 = 0;
          }

          else
          {
            v51 = v31 == -8192;
          }

          if (v51)
          {
            v49 = v30;
          }

          v52 = v29 + v50++;
          v29 = v52 & v28;
          v30 = &v27[4 * (v52 & v28)];
          v31 = *v30;
          if (v34 == *v30)
          {
            goto LABEL_32;
          }
        }

        if (v49)
        {
          v30 = v49;
        }

        if (v36)
        {
          v48 = 4;
        }

        else
        {
          v48 = v35[4];
        }

LABEL_52:
        if (4 * (v36 >> 1) + 4 >= 3 * v48)
        {
          v48 *= 2;
        }

        else if (v48 + ~(v36 >> 1) - v35[1] > v48 >> 3)
        {
LABEL_54:
          *v35 = (v36 & 0xFFFFFFFE | v45) + 2;
          if (*v30 != -4096)
          {
            --v35[1];
          }

          *v30 = v34;
          *(v30 + 4) = -1;
          goto LABEL_32;
        }

        v113 = v23;
        llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v35, v48);
        v36 = *v35;
        if (*v35)
        {
          v58 = 4;
LABEL_105:
          v23 = v113;
          v45 = *v35 & 1;
          v66 = v58 - 1;
          v67 = (v58 - 1) & ((v34 >> 4) ^ (v34 >> 9));
          v30 = &v46[4 * v67];
          v68 = *v30;
          if (v34 == *v30)
          {
            goto LABEL_54;
          }

          v69 = 0;
          v70 = 1;
          while (v68 != -4096)
          {
            if (v69)
            {
              v71 = 0;
            }

            else
            {
              v71 = v68 == -8192;
            }

            if (v71)
            {
              v69 = v30;
            }

            v72 = v67 + v70++;
            v67 = v72 & v66;
            v30 = &v46[4 * (v72 & v66)];
            v68 = *v30;
            if (v34 == *v30)
            {
              goto LABEL_118;
            }
          }

          if (v69)
          {
            v30 = v69;
          }
        }

        else
        {
          v58 = v35[4];
          if (v58)
          {
            v46 = *(v35 + 1);
            goto LABEL_105;
          }

          v45 = 0;
          v30 = 0;
        }

LABEL_118:
        v23 = v113;
        goto LABEL_54;
      }

LABEL_32:
      if (*(v30 + 4) >= *(v43 + 4))
      {
        goto LABEL_17;
      }
    }
  }

  v73 = a5;
  v74 = a4 >> 1;
  v75 = &result[8 * (a4 >> 1)];
  v76 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, v75, a3, a4 >> 1, a5);
    v79 = &v73[v74];
    std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v75, v7, a3, v76, v79);
    v80 = &v73[a4];
    v81 = v8;
    v82 = v79;
    do
    {
      if (v82 == v80)
      {
        if (v73 == v79)
        {
          return *&v13;
        }

        v102 = v79 - v73 - 8;
        if (v102 >= 0x38)
        {
          if ((v81 - v73) >= 0x20)
          {
            v104 = v8 + 16;
            v105 = (v102 >> 3) + 1;
            v106 = v105 & 0x3FFFFFFFFFFFFFFCLL;
            v8 += v106 * 8;
            v103 = &v73[v106];
            v107 = (v73 + 2);
            v108 = v105 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v13 = *(v107 - 1);
              v109 = *v107;
              *(v104 - 1) = v13;
              *v104 = v109;
              v107 += 2;
              v104 += 2;
              v108 -= 4;
            }

            while (v108);
            if (v105 == (v105 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return *&v13;
            }
          }

          else
          {
            v103 = v73;
          }
        }

        else
        {
          v103 = v73;
        }

        do
        {
          v110 = *v103++;
          *v8 = v110;
          v8 += 8;
        }

        while (v103 != v79);
        return *&v13;
      }

      v83 = v82;
      v84 = *v82;
      if (v84)
      {
        v85 = v84 + 8;
      }

      else
      {
        v85 = 0;
      }

      if (*v73)
      {
        v86 = *v73 + 8;
      }

      else
      {
        v86 = 0;
      }

      v116 = v86;
      v117 = v85;
      v87 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
      v88 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) >= *v87;
      v89 = !v88;
      if (v88)
      {
        v90 = v73;
      }

      else
      {
        v90 = v83;
      }

      v73 += v88;
      v91 = v89;
      v82 = &v83[v91];
      *v8 = *v90;
      v8 += 8;
      v81 += 8;
    }

    while (v73 != v79);
    if (v82 != v80)
    {
      v92 = v80 - v83 - v91 * 8 - 8;
      if (v92 <= 0x57)
      {
        goto LABEL_164;
      }

      if ((v81 - v83 - v91 * 8) < 0x20)
      {
        goto LABEL_164;
      }

      v93 = 0;
      v94 = (v92 >> 3) + 1;
      v95 = 8 * (v94 & 0x3FFFFFFFFFFFFFFCLL);
      v96 = &v8[v95];
      v82 = (v82 + v95);
      v97 = &v83[v91 + 2];
      v98 = v94 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v99 = &v8[v93];
        v13 = *(v97 - 1);
        v100 = *v97;
        *v99 = v13;
        *(v99 + 1) = v100;
        v97 += 4;
        v93 += 32;
        v98 -= 4;
      }

      while (v98);
      v8 = v96;
      if (v94 != (v94 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_164:
        do
        {
          v101 = *v82++;
          *v8 = v101;
          v8 += 8;
        }

        while (v82 != v80);
      }
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, v75, a3, a4 >> 1, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v75, v7, a3, v76, v73, a6);

    *&v13 = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v8, v75, v7, a3, v74, v76, v73, a6).n128_u64[0];
  }

  return *&v13;
}