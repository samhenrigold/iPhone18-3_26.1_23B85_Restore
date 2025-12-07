BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypeOp>,mlir::OpTrait::OneResult<mlir::pdl::TypeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypeOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v10 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v6, "constantType", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 13 && (*a3 == 0x746E6174736E6F63 ? (v7 = *(a3 + 5) == 0x7365707954746E61) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 13 && *result == 0x746E6174736E6F63 && *(result + 5) == 0x7365707954746E61)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "constantTypes", 0xDuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl::TypesOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::TypesOp>,mlir::OpTrait::OneResult<mlir::pdl::TypesOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypesOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::writeProperties;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v35;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  v29 = v1;
  v36 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v29;
  a1 = v36;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v30 = v1;
  v37 = a1;
  v24 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>();
  v2 = v24;
  v1 = v30;
  a1 = v37;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = v1;
  v38 = a1;
  v25 = v2;
  v20 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v20;
  v2 = v25;
  v1 = v31;
  a1 = v38;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

LABEL_35:
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
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_36;
  }

LABEL_34:
  v32 = v1;
  v39 = a1;
  v26 = v2;
  v17 = v4;
  v21 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v17;
  v3 = v21;
  v2 = v26;
  v1 = v32;
  a1 = v39;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_35;
  }

LABEL_7:
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_36:
  v34 = v1;
  v41 = a1;
  v28 = v2;
  v19 = v4;
  v23 = v3;
  v14 = v6;
  v16 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v6 = v14;
  v5 = v16;
  v4 = v19;
  v3 = v23;
  v2 = v28;
  v1 = v34;
  a1 = v41;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl::TypesOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypesOp>,mlir::OpTrait::OneResult<mlir::pdl::TypesOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypesOp>>(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8))
  {
    return 1;
  }

  return verifyHasBindingUse(a1);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypesOp>,mlir::OpTrait::OneResult<mlir::pdl::TypesOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypesOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v10 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v6, "constantTypes", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>(uint64_t ***a1, uint64_t a2)
{
  v10[25] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 48);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v9 = *(v4 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v9);
    if (!Values)
    {
      goto LABEL_6;
    }
  }

  else
  {
    Values = *(v4 + 24);
    if (!Values)
    {
LABEL_6:
      v8 = 259;
      mlir::OpState::emitOpError(v3, &v7, &v9);
      mlir::Diagnostic::attachNote(v10, *(a2 + 24), 1);
    }
  }

  if (*(Values + 24) != &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    goto LABEL_6;
  }

  return 1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::PatternOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

const char *llvm::getTypeName<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::RewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties]";
  v6 = 105;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseAttribute<mlir::TypeAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t OUTLINED_FUNCTION_5_12@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 58;
  ++*(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 2;
  return result;
}

void OUTLINED_FUNCTION_47_1()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

__n128 OUTLINED_FUNCTION_49_1@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_55_1@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  v20 = (a1 + 24 * a19);
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_60_1@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v16 = (a1 + 24 * a15);
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  return result;
}

BOOL OUTLINED_FUNCTION_63_1(uint64_t a1)
{
  v5 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v1;

  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(v6, v5, v3, 6, v2);
}

uint64_t OUTLINED_FUNCTION_64_0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 1752459639;
  *(result + 32) += 4;
  return result;
}

void *OUTLINED_FUNCTION_79_1(llvm::raw_ostream *a1)
{

  return llvm::raw_ostream::write(a1, v1, 2uLL);
}

void OUTLINED_FUNCTION_81_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = a1;

  return mlir::ArrayAttr::getValue(&a10);
}

void OUTLINED_FUNCTION_100_1(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, a1 + 1, 24);
}

uint64_t mlir::pdl::RangeType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Attribute::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v5[1] = &Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t mlir::pdl::PDLDialect::parseType(uint64_t a1, mlir::AsmParser *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if ((generatedTypeParser(a2, &v33, &v32) & 0x100) != 0)
  {
    return v32;
  }

  v31[16] = 257;
  (*(*a2 + 24))(&v39, a2, v4, v31);
  if (v39)
  {
    LODWORD(v35) = 3;
    v37 = 15;
    v5 = &v35;
    v6 = v41;
    if (v42 >= v43)
    {
      if (v41 <= &v35 && v41 + 24 * v42 > &v35)
      {
        v28 = &v35 - v41;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v6 = v41;
        v5 = (v41 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v5 = &v35;
        v6 = v41;
      }
    }

    v7 = &v6[24 * v42];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v42;
    if (v39)
    {
      v38 = 261;
      v35 = v33;
      v36 = v34;
      mlir::Diagnostic::operator<<(v40, &v35);
      if (v39)
      {
        LODWORD(v35) = 3;
        v37 = 14;
        v9 = &v35;
        v10 = v41;
        if (v42 >= v43)
        {
          if (v41 <= &v35 && v41 + 24 * v42 > &v35)
          {
            v29 = &v35 - v41;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
            v10 = v41;
            v9 = (v41 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
            v9 = &v35;
            v10 = v41;
          }
        }

        v11 = &v10[24 * v42];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        ++v42;
        if (v39)
        {
          v13 = *(a1 + 8);
          v14 = *(a1 + 16);
          v38 = 261;
          v35 = v13;
          v36 = v14;
          mlir::Diagnostic::operator<<(v40, &v35);
          if (v39)
          {
            LODWORD(v35) = 3;
            v37 = 1;
            v15 = &v35;
            v16 = v41;
            if (v42 >= v43)
            {
              if (v41 <= &v35 && v41 + 24 * v42 > &v35)
              {
                v30 = &v35 - v41;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
                v16 = v41;
                v15 = (v41 + v30);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
                v15 = &v35;
                v16 = v41;
              }
            }

            v17 = &v16[24 * v42];
            v18 = *v15;
            *(v17 + 2) = v15[2];
            *v17 = v18;
            ++v42;
            if (v39)
            {
              mlir::InFlightDiagnostic::report(&v39);
            }
          }
        }
      }
    }
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v48;
      v21 = __p;
      if (v48 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v48 = v19;
      operator delete(v21);
    }

    v22 = v45;
    if (v45)
    {
      v23 = v46;
      v24 = v45;
      if (v46 != v45)
      {
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
        v24 = v45;
      }

      v46 = v22;
      operator delete(v24);
    }

    if (v41 != v44)
    {
      free(v41);
    }
  }

  return 0;
}

uint64_t generatedTypeParser(mlir::AsmParser *a1, llvm::StringRef *a2, mlir::Type *a3)
{
  v20[0] = a1;
  v6 = (*(*a1 + 40))(a1);
  v22[2] = 0;
  v21 = 0uLL;
  v20[1] = v6;
  v22[0] = 0;
  if ((*(*a1 + 640))(a1, &v21))
  {
    v23 = "attribute";
    v24 = 9;
    if ((v22[2] & 1) == 0)
    {
      if (*(&v21 + 1))
      {
        if (*(&v21 + 1) == 9 && *v21 == 0x7475626972747461 && *(v21 + 8) == 101)
        {
          Context = mlir::AsmParser::getContext(a1);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
          v13 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
          goto LABEL_50;
        }

        v23 = "operation";
        v24 = 9;
      }

      else
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "operation";
        v24 = 9;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }
      }

      if (*(&v21 + 1))
      {
        if (*(&v21 + 1) == 9 && *v21 == 0x6F6974617265706FLL && *(v21 + 8) == 110)
        {
          v16 = mlir::AsmParser::getContext(a1);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(v16);
          v13 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
          goto LABEL_50;
        }

        v23 = "range";
        v24 = 5;
      }

      else
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "range";
        v24 = 5;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }
      }

      if (*(&v21 + 1))
      {
        if (*(&v21 + 1) == 5 && *v21 == 1735287154 && *(v21 + 4) == 101)
        {
          SingletonImpl = mlir::pdl::RangeType::parse(a1, v7);
LABEL_51:
          *a3 = SingletonImpl;
          v22[0] = SingletonImpl != 0;
          *&v22[1] = 257;
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }

        v23 = "type";
        v24 = 4;
      }

      else
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "type";
        v24 = 4;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }
      }

      if (!*(&v21 + 1))
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "value";
        v24 = 5;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }

        goto LABEL_37;
      }

      if (*(&v21 + 1) != 4 || *v21 != 1701869940)
      {
        v23 = "value";
        v24 = 5;
LABEL_37:
        if (!*(&v21 + 1))
        {
          (*(*v20[0] + 648))(v20[0], &v23, 1);
          if (v22[2])
          {
            return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
          }

          goto LABEL_47;
        }

        if (*(&v21 + 1) != 5 || (*v21 == 1970037110 ? (v14 = *(v21 + 4) == 101) : (v14 = 0), !v14))
        {
LABEL_47:
          *a2 = v21;
          *v22 = 0;
          goto LABEL_13;
        }

        v15 = mlir::AsmParser::getContext(a1);
        TypeUniquer = mlir::MLIRContext::getTypeUniquer(v15);
        v13 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
        goto LABEL_50;
      }

      v18 = mlir::AsmParser::getContext(a1);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(v18);
      v13 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
LABEL_50:
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, v13);
      goto LABEL_51;
    }
  }

  else
  {
    if ((v22[2] & 1) == 0)
    {
      *v22 = 256;
LABEL_13:
      v22[2] = 1;
      return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
    }

    *v22 = 256;
    v23 = "attribute";
    v24 = 9;
  }

  return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
}

llvm::raw_ostream *generatedTypePrinter(llvm::raw_ostream *result, uint64_t a2)
{
  v3 = *(*result + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = *(result + 4);
    if ((*(result + 3) - v7) <= 8)
    {
      v8 = "attribute";
      v9 = 9;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    v10 = 101;
    v11 = "attribute";
    goto LABEL_20;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = *(result + 4);
    if ((*(result + 3) - v7) <= 8)
    {
      v8 = "operation";
      v9 = 9;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    v10 = 110;
    v11 = "operation";
LABEL_20:
    *(v7 + 8) = v10;
    *v7 = *v11;
    *(result + 4) += 9;
    return result;
  }

  if (result && v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v4 = result;
    v5 = (*(*a2 + 16))(a2);
    v6 = v5[4];
    if ((v5[3] - v6) > 4)
    {
      *(v6 + 4) = 101;
      *v6 = 1735287154;
      v5[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v5, "range", 5uLL);
    }

    v12 = (*(*a2 + 16))(a2);
    v13 = v12[4];
    if (v12[3] == v13)
    {
      llvm::raw_ostream::write(v12, "<", 1uLL);
    }

    else
    {
      *v13 = 60;
      ++v12[4];
    }

    generatedTypePrinter(*(v4 + 1), a2);
    result = (*(*a2 + 16))(a2);
    v15 = *(result + 4);
    if (*(result + 3) != v15)
    {
      *v15 = 62;
      ++*(result + 4);
      return result;
    }

    v8 = ">";
    v9 = 1;

    return llvm::raw_ostream::write(result, v8, v9);
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v14 = *(result + 4);
    if (*(result + 3) - v14 <= 3uLL)
    {
      v8 = "type";
      v9 = 4;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    *v14 = 1701869940;
    *(result + 4) += 4;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v16 = *(result + 4);
    if ((*(result + 3) - v16) <= 4)
    {
      v8 = "value";
      v9 = 5;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    *(v16 + 4) = 101;
    *v16 = 1970037110;
    *(result + 4) += 5;
  }

  return result;
}

void mlir::pdl::PDLDialect::registerTypes(mlir::pdl::PDLDialect *this)
{
  mlir::Dialect::addType<mlir::pdl::AttributeType>(this);
  mlir::Dialect::addType<mlir::pdl::OperationType>(this);
  mlir::Dialect::addType<mlir::pdl::RangeType>(this);
}

void *mlir::pdl::getRangeElementTypeOrSelf(void *result)
{
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      return result[1];
    }
  }

  return result;
}

uint64_t mlir::pdl::RangeType::parse(mlir::pdl::RangeType *this, mlir::AsmParser *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (((*(*this + 152))(this, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(*this + 40))(this);
  v42 = 0;
  v43 = 0;
  v46 = 0;
  if ((generatedTypeParser(this, &v42, &v46) & 0x100) == 0)
  {
    v4 = (*(*this + 16))(this);
    v41 = 259;
    (*(*this + 24))(&v51, this, v4, &v38);
    if (v51)
    {
      v50 = 261;
      v47 = v42;
      v48 = v43;
      mlir::Diagnostic::operator<<(&v52, &v47);
      if (v51)
      {
        LODWORD(v47) = 3;
        v48 = "'";
        v49 = 1;
        v5 = &v47;
        v6 = v53;
        if (v54 >= v55)
        {
          if (v53 <= &v47 && v53 + 24 * v54 > &v47)
          {
            v35 = &v47 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v6 = v53;
            v5 = (v53 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v5 = &v47;
            v6 = v53;
          }
        }

        v7 = &v6[24 * v54];
        v8 = *v5;
        *(v7 + 2) = v5[2];
        *v7 = v8;
        ++v54;
        if (v51)
        {
          mlir::InFlightDiagnostic::report(&v51);
        }
      }
    }

    if (v62 != 1)
    {
      return 0;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v60;
      v11 = __p;
      if (v60 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v60 = v9;
      operator delete(v11);
    }

    v12 = v57;
    if (!v57)
    {
      goto LABEL_48;
    }

    v13 = v58;
    v14 = v57;
    if (v58 == v57)
    {
      goto LABEL_47;
    }

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
    goto LABEL_46;
  }

  v17 = v46;
  if (v46 && ((*(*this + 168))(this) & 1) != 0)
  {
    if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v44 = v17;
      Context = mlir::Attribute::getContext(&v44);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
      v38 = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
      p_Context = &Context;
      v51 = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
      v52 = &v38;
      v42 = v44;
      v19 = 0x9DDFEA08EB382D69 * ((8 * ((v44 >> 4) ^ (v44 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
      v46 = &v42;
      v47 = &v42;
      v48 = &v51;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v19 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v47);
    }

    v50 = 257;
    (*(*this + 24))(&v51, this, v3, &v47);
    if (v51)
    {
      LODWORD(v38) = 3;
      p_Context = "element of pdl.range cannot be another range, but got";
      v40 = 53;
      v21 = &v38;
      v22 = v53;
      if (v54 >= v55)
      {
        if (v53 <= &v38 && v53 + 24 * v54 > &v38)
        {
          v36 = &v38 - v53;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
          v22 = v53;
          v21 = (v53 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
          v21 = &v38;
          v22 = v53;
        }
      }

      v23 = &v22[24 * v54];
      v24 = *v21;
      *(v23 + 2) = v21[2];
      *v23 = v24;
      ++v54;
      if (v51)
      {
        v25 = &v38;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, v17);
        v26 = v53;
        if (v54 >= v55)
        {
          if (v53 <= &v38 && v53 + 24 * v54 > &v38)
          {
            v37 = &v38 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v26 = v53;
            v25 = (v53 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v25 = &v38;
            v26 = v53;
          }
        }

        v27 = &v26[24 * v54];
        v28 = *v25;
        *(v27 + 2) = v25[2];
        *v27 = v28;
        ++v54;
        if (v51)
        {
          mlir::InFlightDiagnostic::report(&v51);
        }
      }
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v60;
        v31 = __p;
        if (v60 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v60 = v29;
        operator delete(v31);
      }

      v12 = v57;
      if (!v57)
      {
        goto LABEL_48;
      }

      v32 = v58;
      v14 = v57;
      if (v58 == v57)
      {
LABEL_47:
        v58 = v12;
        operator delete(v14);
LABEL_48:
        if (v53 != v56)
        {
          free(v53);
        }

        return 0;
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

      while (v32 != v12);
LABEL_46:
      v14 = v57;
      goto LABEL_47;
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
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
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

uint64_t *mlir::Dialect::addType<mlir::pdl::AttributeType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::AttributeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  v24 = "pdl.attribute";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::pdl::OperationType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::OperationType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v24 = "pdl.operation";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::pdl::RangeType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::pdl::RangeType,mlir::pdl::PDLType,mlir::pdl::detail::RangeTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSC_7PDLTypeENSC_6detail16RangeTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v23 = "pdl.range";
  v24 = 9;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, &v12);
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
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addType<mlir::pdl::TypeType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::TypeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v24 = "pdl.type";
  v25 = 8;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::pdl::ValueType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::ValueType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  v24 = "pdl.value";
  v25 = 9;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSC_7PDLTypeENSC_6detail16RangeTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::pdl::RangeType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::pdl::RangeType>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v7);
  v8 = v3;
  Context = mlir::Attribute::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v9[1] = &Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

void mlir::pdl_interp::PDLInterpDialect::PDLInterpDialect(mlir::pdl_interp::PDLInterpDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "pdl_interp", 10, a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id);
  *v3 = &unk_1F1A03288;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "pdl", 3))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "pdl", 3, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::pdl::PDLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::pdl::PDLDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::Dialect::addOperations<mlir::pdl_interp::ApplyConstraintOp,mlir::pdl_interp::ApplyRewriteOp,mlir::pdl_interp::AreEqualOp,mlir::pdl_interp::BranchOp,mlir::pdl_interp::CheckAttributeOp,mlir::pdl_interp::CheckOperandCountOp,mlir::pdl_interp::CheckOperationNameOp,mlir::pdl_interp::CheckResultCountOp,mlir::pdl_interp::CheckTypeOp,mlir::pdl_interp::CheckTypesOp,mlir::pdl_interp::ContinueOp,mlir::pdl_interp::CreateAttributeOp,mlir::pdl_interp::CreateOperationOp,mlir::pdl_interp::CreateRangeOp,mlir::pdl_interp::CreateTypeOp,mlir::pdl_interp::CreateTypesOp,mlir::pdl_interp::EraseOp,mlir::pdl_interp::ExtractOp,mlir::pdl_interp::FinalizeOp,mlir::pdl_interp::ForEachOp,mlir::pdl_interp::FuncOp,mlir::pdl_interp::GetAttributeOp,mlir::pdl_interp::GetAttributeTypeOp,mlir::pdl_interp::GetDefiningOpOp,mlir::pdl_interp::GetOperandOp,mlir::pdl_interp::GetOperandsOp,mlir::pdl_interp::GetResultOp,mlir::pdl_interp::GetResultsOp,mlir::pdl_interp::GetUsersOp,mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::IsNotNullOp,mlir::pdl_interp::RecordMatchOp,mlir::pdl_interp::ReplaceOp,mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_interp::SwitchTypeOp,mlir::pdl_interp::SwitchTypesOp>(this);
}

void sub_1A6CE4C74()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::pdl_interp::CreateOperationOp::verify(uint64_t **this)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v3 = v1[8];
  v2 = v1 + 8;
  if (!v3)
  {
    return 1;
  }

  if (*(v2 + 8))
  {
    v43[0] = "with inferred results cannot also have explicit result types";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, &v48);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v57;
        v7 = __p;
        if (v57 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v57 = v5;
        operator delete(v7);
      }

      v8 = v54;
      if (!v54)
      {
        goto LABEL_55;
      }

      v9 = v55;
      v10 = v54;
      if (v55 == v54)
      {
LABEL_54:
        v55 = v8;
        operator delete(v10);
LABEL_55:
        if (v50 != v53)
        {
          free(v50);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_53:
      v10 = v54;
      goto LABEL_54;
    }

    return v4;
  }

  v48 = v2[2];
  AttrData = mlir::OpaqueAttr::getAttrData(&v48);
  v16 = v15;
  Context = mlir::Attribute::getContext((*this + 3));
  mlir::OperationName::OperationName(&v42, AttrData, v16, Context);
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v18 = *(v42 + 40);
  if (v18)
  {
    v19 = *(v42 + 32);
    v20 = *(v42 + 40);
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != (*(v42 + 32) + 16 * v18) && *v19 == mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id && v19[1])
    {
      return 1;
    }
  }

  v44 = 257;
  mlir::OpState::emitOpError(this, v43, &v48);
  if (v48)
  {
    v45 = 3;
    v46 = "has inferred results, but the created operation '";
    v47 = 49;
    v25 = &v45;
    v26 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v45 && v50 + 24 * v51 > &v45)
      {
        v40 = &v45 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v26 = v50;
        v25 = (v50 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v25 = &v45;
        v26 = v50;
      }
    }

    v27 = &v26[24 * v51];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    ++v51;
    if (v48)
    {
      mlir::Diagnostic::operator<<(&v49, v42);
      if (v48)
      {
        v45 = 3;
        v46 = "' does not support result type inference (or is not registered)";
        v47 = 63;
        v29 = &v45;
        v30 = v50;
        if (v51 >= v52)
        {
          if (v50 <= &v45 && v50 + 24 * v51 > &v45)
          {
            v41 = &v45 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v30 = v50;
            v29 = (v50 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v29 = &v45;
            v30 = v50;
          }
        }

        v31 = &v30[24 * v51];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v51;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
  if (v48)
  {
    mlir::InFlightDiagnostic::report(&v48);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v57;
      v35 = __p;
      if (v57 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v57 = v33;
      operator delete(v35);
    }

    v8 = v54;
    if (!v54)
    {
      goto LABEL_55;
    }

    v36 = v55;
    v10 = v54;
    if (v55 == v54)
    {
      goto LABEL_54;
    }

    do
    {
      v38 = *--v36;
      v37 = v38;
      *v36 = 0;
      if (v38)
      {
        MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
      }
    }

    while (v36 != v8);
    goto LABEL_53;
  }

  return v4;
}

void mlir::pdl_interp::ForEachOp::build(uint64_t a1, mlir::OperationState *a2, unint64_t a3, uint64_t a4, int a5)
{
  v6 = a3;
  mlir::OperationState::addOperands(a2, &v6, 1uLL);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::pdl_interp::ForEachOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  memset(&v8[4], 0, 24);
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, 24);
  if ((*(*a1 + 752))())
  {
    v6 = " after loop variable";
    v7 = 259;
    if ((*(*a1 + 400))(a1, "in", 2, &v6) & 1) != 0 && ((*(*a1 + 704))(a1, v8, 1))
    {
      v4 = mlir::pdl::RangeType::get(v9);
      if ((*(*a1 + 728))(a1, v8, v4, a2 + 16))
      {
        mlir::OperationState::addRegion(a2);
      }
    }
  }

  return 0;
}

uint64_t mlir::pdl_interp::ForEachOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = **(v5 + 48);
  v7 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 160))(a2, v6);
  v9 = (*(*a2 + 16))(a2);
  v10 = v9[4];
  if ((v9[3] - v10) > 2)
  {
    *(v10 + 2) = 32;
    *v10 = 14880;
    v9[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v9, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 3uLL)
  {
    *v12 = 544106784;
    v11[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v11, " in ", 4uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v13 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 1, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v16, 0, 0);
  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 3uLL)
  {
    *v18 = 540945696;
    v17[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v17, " -> ", 4uLL);
  }

  return (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
}

uint64_t mlir::pdl_interp::ForEachOp::verify(uint64_t **this)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    goto LABEL_7;
  }

  v2 = v1[1];
  v3 = v2 - 8;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  if (((*(v3 + 56) - v4) & 0x7FFFFFFF8) != 8)
  {
LABEL_7:
    v22[0] = "requires exactly one argument";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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
      if (!v27)
      {
        goto LABEL_41;
      }

      v11 = v28;
      v12 = v27;
      if (v28 == v27)
      {
        goto LABEL_40;
      }

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
      goto LABEL_39;
    }
  }

  else
  {
    if (mlir::pdl::RangeType::get(*(*v4 + 8) & 0xFFFFFFFFFFFFFFF8) == (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v22[0] = "operand must be a range of loop variable type";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

      v15 = __p;
      if (__p)
      {
        v16 = v30;
        v17 = __p;
        if (v30 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v30 = v15;
        operator delete(v17);
      }

      v10 = v27;
      if (!v27)
      {
        goto LABEL_41;
      }

      v18 = v28;
      v12 = v27;
      if (v28 == v27)
      {
LABEL_40:
        v28 = v10;
        operator delete(v12);
LABEL_41:
        if (v25 != &v26)
        {
          free(v25);
        }

        return v6;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v10);
LABEL_39:
      v12 = v27;
      goto LABEL_40;
    }
  }

  return v6;
}

void mlir::pdl_interp::FuncOp::build(mlir::StringAttr **a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = a5;
  Inputs = mlir::FunctionType::getInputs(&v17);
  mlir::ValueRange::ValueRange(v18, Inputs, v15);
  mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(a1, a2, a3, a4, a5, a6, a7, v16, v18[0], v18[1]);
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(mlir::StringAttr **a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 261;
  v21[0] = a3;
  v21[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v21);
  Context = mlir::Attribute::getContext(a2);
  v26 = 261;
  v24 = "sym_name";
  v25 = 8;
  v16 = mlir::StringAttr::get(Context, &v24);
  ZinMirCacheTensors::ZinMirCacheTensors(v23, v16, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v23[0], v23[1]);
  v17 = *(*(*(a2 + 8) + 96) + 8);
  v18 = mlir::TypeAttr::get(a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&v24, v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, v24, v25);
  *(a2 + 192) = 0;
  v19 = *(a2 + 120);
  v20 = v19 + ((16 * a7) >> 4);
  if (v20 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v20, 16);
    LODWORD(v19) = *(a2 + 120);
  }

  if (a7)
  {
    memcpy((*(a2 + 112) + 16 * v19), a6, 16 * a7);
    LODWORD(v19) = *(a2 + 120);
  }

  *(a2 + 120) = v19 + a7;
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::pdl_interp::SwitchAttributeOp::verify(Operation **this)
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = *this;
  mlir::SuccessorRange::SuccessorRange(v37, v33);
  mlir::SuccessorRange::SuccessorRange(v37, v33);
  v1 = v37[1] - 1;
  v37[0] = *(v33 + 2 * ((*(v33 + 11) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(v37);
  if (v1 == v2)
  {
    return 1;
  }

  v4 = v2;
  v31 = "expected number of cases to match the number of case values, got ";
  v32 = 259;
  mlir::OpState::emitOpError(&v33, &v31, v37);
  if (v37[0])
  {
    v34 = 5;
    v35 = v1;
    v5 = &v34;
    v6 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v34 && v38 + 24 * v39 > &v34)
      {
        v28 = &v34 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = v38;
        v5 = (v38 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v5 = &v34;
        v6 = v38;
      }
    }

    v7 = &v6[24 * v39];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v39;
    if (v37[0])
    {
      v34 = 3;
      v35 = " but expected ";
      v36 = 14;
      v10 = &v34;
      v11 = v38;
      if (v9 >= v40)
      {
        if (v38 <= &v34 && v38 + 24 * v9 > &v34)
        {
          v29 = &v34 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v11 = v38;
          v10 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v10 = &v34;
          v11 = v38;
        }
      }

      v12 = &v11[24 * v39];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v39;
      if (v37[0])
      {
        v34 = 5;
        v35 = v4;
        v15 = &v34;
        v16 = v38;
        if (v14 >= v40)
        {
          if (v38 <= &v34 && v38 + 24 * v14 > &v34)
          {
            v30 = &v34 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
            v16 = v38;
            v15 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
            v15 = &v34;
            v16 = v38;
          }
        }

        v17 = &v16[24 * v39];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v39;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
      {
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::SwitchOperandCountOp::verify(Operation **this)
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = *this;
  mlir::SuccessorRange::SuccessorRange(v37, v33);
  mlir::SuccessorRange::SuccessorRange(v37, v33);
  v1 = v37[1] - 1;
  v37[0] = *(v33 + 2 * ((*(v33 + 11) >> 23) & 1) + 8);
  NumElements = mlir::DenseElementsAttr::getNumElements(v37);
  if (v1 == NumElements)
  {
    return 1;
  }

  v4 = NumElements;
  v31 = "expected number of cases to match the number of case values, got ";
  v32 = 259;
  mlir::OpState::emitOpError(&v33, &v31, v37);
  if (v37[0])
  {
    v34 = 5;
    v35 = v1;
    v5 = &v34;
    v6 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v34 && v38 + 24 * v39 > &v34)
      {
        v28 = &v34 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = v38;
        v5 = (v38 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v5 = &v34;
        v6 = v38;
      }
    }

    v7 = &v6[24 * v39];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v39;
    if (v37[0])
    {
      v34 = 3;
      v35 = " but expected ";
      v36 = 14;
      v10 = &v34;
      v11 = v38;
      if (v9 >= v40)
      {
        if (v38 <= &v34 && v38 + 24 * v9 > &v34)
        {
          v29 = &v34 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v11 = v38;
          v10 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v10 = &v34;
          v11 = v38;
        }
      }

      v12 = &v11[24 * v39];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v39;
      if (v37[0])
      {
        v34 = 5;
        v35 = v4;
        v15 = &v34;
        v16 = v38;
        if (v14 >= v40)
        {
          if (v38 <= &v34 && v38 + 24 * v14 > &v34)
          {
            v30 = &v34 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
            v16 = v38;
            v15 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
            v15 = &v34;
            v16 = v38;
          }
        }

        v17 = &v16[24 * v39];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v39;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
      {
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v3;
}

BOOL mlir::pdl_interp::ApplyConstraintOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

void mlir::pdl_interp::ApplyConstraintOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  v29 = 261;
  v28[0] = a5;
  v28[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = StringAttr;
  BoolAttr = mlir::Builder::getBoolAttr(a1, a9, v17);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = BoolAttr;
  v22 = *(a2 + 208);
  if (v22 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v22 + 1, 8);
    LODWORD(v22) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v22) = a10;
  v23 = *(a2 + 212);
  v24 = (*(a2 + 208) + 1);
  *(a2 + 208) = v24;
  if (v24 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v24 + 1, 8);
    LODWORD(v24) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v24) = a11;
  ++*(a2 + 208);
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v25, 8);
    v25 = *(a2 + 72);
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      *(v27 + 8 * v26) = mlir::TypeRange::dereference_iterator(a3, v26);
      ++v26;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::verifyInvariantsImpl(uint64_t **this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    *v22 = v2;
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v4, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
    {
      return 0;
    }

    *v22 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "isNegated", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
    {
      return 0;
    }

    v6 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v7 = *(v6 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = v6[9] + 24;
        while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v22[0];
  }

  else
  {
    v20 = "requires attribute 'name'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (*v22)
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

BOOL mlir::pdl_interp::ApplyConstraintOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v26[0] = v27;
  v26[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x100000000;
  v21 = &v23;
  v22 = 0x100000000;
  v18 = v20;
  v19 = 0x200000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v14, v6))
  {
    if (v14)
    {
      v7 = *(a2 + 256);
      if (!v7)
      {
        operator new();
      }

      *(v7 + 8) = v14;
    }

    if ((*(*a1 + 280))(a1))
    {
      v8 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 720))(a1, v26, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v24) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && (((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v21)))
      {
        v13 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v9 = *(a2 + 8);
          v15 = a1;
          v16 = &v13;
          v17 = a2;
          if (mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v15) && ((*(*a1 + 56))(a1) & 1) != 0)
          {
            v15 = 0;
            v10 = (*(*a1 + 808))(a1, &v15);
            if ((v10 & 0x100) == 0)
            {
LABEL_17:
              mlir::BlockRange::BlockRange(&v15, v18, v19);
              mlir::OperationState::addSuccessors(a2, v15, v16);
              mlir::OperationState::addTypes(a2, v21, v22);
              v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v26, v24, v8, a2 + 16);
              goto LABEL_22;
            }

            if (v10)
            {
              do
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v18, &v15);
                if (((*(*a1 + 128))(a1) & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              while (((*(*a1 + 800))(a1, &v15) & 1) != 0);
            }
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_22:
  if (v18 != v20)
  {
    free(v18);
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  if (v24[0] != &v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v11;
}

uint64_t llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  if (v2 >= *(a1 + 3))
  {
    return llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a1, a2);
  }

  v3 = *a1;
  *(*a1 + 8 * v2) = *a2;
  v4 = v2 + 1;
  *(a1 + 2) = v4;
  return v3 + 8 * v4 - 8;
}

BOOL mlir::pdl_interp::ApplyRewriteOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2);
}

void mlir::pdl_interp::ApplyRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a5;
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v12, 8);
    v12 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else if (!a4)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = *(a2 + 64) + 8 * v12;
  do
  {
    *(v14 + 8 * v13) = mlir::TypeRange::dereference_iterator(a3, v13);
    ++v13;
  }

  while (a4 != v13);
  LODWORD(v12) = *(a2 + 72);
LABEL_10:
  *(a2 + 72) = v12 + a4;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::verifyInvariantsImpl(uint64_t **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    *v20 = v2;
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 17);
      if (v5)
      {
        v6 = 0;
        v7 = v4[9] + 24;
        while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }
    }

LABEL_8:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v20[0];
  }

  else
  {
    v18 = "requires attribute 'name'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (*v20)
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

BOOL mlir::pdl_interp::ApplyRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v26[0] = v27;
  v26[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x100000000;
  v20 = 0;
  __src = &v23;
  v22 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v20, v6))
  {
    goto LABEL_24;
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

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v24) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = 0;
  }

  if (((*(*a1 + 112))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v19 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v9 = *(a2 + 8), v18[0] = a1, v18[1] = &v19, v18[2] = a2, (v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96))) != 0) && !mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v10, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
  {
LABEL_24:
    v15 = 0;
    v16 = __src;
    if (__src == &v23)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v11 = __src;
  v12 = v22;
  v13 = *(a2 + 72);
  v14 = v13 + v22;
  if (v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v14, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v12);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  v15 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v26, v24, v8, a2 + 16);
  v16 = __src;
  if (__src != &v23)
  {
LABEL_25:
    free(v16);
  }

LABEL_26:
  if (v24[0] != &v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v15;
}

void mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 208);
  if (v9 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v9) = a5;
  v10 = *(a2 + 212);
  v11 = (*(a2 + 208) + 1);
  *(a2 + 208) = v11;
  if (v11 >= v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v11) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (mlir::pdl::PDLType::classof(a2))
  {
    return 1;
  }

  v43 = 261;
  v42[0] = a3;
  v42[1] = a4;
  mlir::Operation::emitOpError(a1, v42, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = " #";
    v46 = 2;
    v11 = &v44;
    v12 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v38 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v12 = v48;
        v11 = (v48 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v11 = &v44;
        v12 = v48;
      }
    }

    v13 = &v12[24 * v49];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    v15 = ++v49;
    if (v47[0])
    {
      v44 = 5;
      v45 = a5;
      v16 = &v44;
      v17 = v48;
      if (v15 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v15 > &v44)
        {
          v39 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v17 = v48;
          v16 = (v48 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v16 = &v44;
          v17 = v48;
        }
      }

      v18 = &v17[24 * v49];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v49;
      if (v47[0])
      {
        v44 = 3;
        v45 = " must be pdl type, but got ";
        v46 = 27;
        v21 = &v44;
        v22 = v48;
        if (v20 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v20 > &v44)
          {
            v40 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v22 = v48;
            v21 = (v48 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v21 = &v44;
            v22 = v48;
          }
        }

        v23 = &v22[24 * v49];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v49;
        if (v47[0])
        {
          v25 = &v44;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
          v26 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v49 > &v44)
            {
              v41 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v26 = v48;
              v25 = (v48 + v41);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v25 = &v44;
              v26 = v48;
            }
          }

          v27 = &v26[24 * v49];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          ++v49;
        }
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v55;
      v31 = __p;
      if (v55 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v55 = v29;
      operator delete(v31);
    }

    v32 = v52;
    if (v52)
    {
      v33 = v53;
      v34 = v52;
      if (v53 != v52)
      {
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
        v34 = v52;
      }

      v53 = v32;
      operator delete(v34);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v10;
}

BOOL mlir::pdl_interp::AreEqualOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v17[0] = v18;
  v17[1] = 0x400000000;
  v9 = 0;
  v14 = v16;
  v15 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v17, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v10 = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v10))
    {
      v9 = v10;
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v10 = 0;
        v5 = (*(*a1 + 808))(a1, &v10);
        if ((v5 & 0x100) == 0)
        {
LABEL_7:
          mlir::BlockRange::BlockRange(&v10, v14, v15);
          mlir::OperationState::addSuccessors(a2, v10, v11);
          v10 = &v9;
          v11 = 1;
          v12 = &v9;
          v13 = 1;
          v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(a1, v17, &v10, v4, a2 + 16);
          goto LABEL_16;
        }

        if (v5)
        {
          llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v14, &v10);
          while (((*(*a1 + 128))(a1) & 1) != 0)
          {
            if (((*(*a1 + 800))(a1, &v10) & 1) == 0)
            {
              goto LABEL_15;
            }

            v7 = v15;
            if (v15 >= HIDWORD(v15))
            {
              llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v14, &v10);
            }

            else
            {
              *(v14 + v15) = v10;
              LODWORD(v15) = v7 + 1;
            }
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_15:
  v6 = 0;
LABEL_16:
  if (v14 != v16)
  {
    free(v14);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  return v6;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(uint64_t a1, uint64_t *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 2);
  v8 = *a3;
  v9 = a3[1];
  v10 = &(*a3)[8 * v9];
  v11 = a3[2];
  v12 = a3[3];
  v13 = &v11[8 * v12];
  v14 = 0;
  if (v9 | v12)
  {
    v15 = *a3;
    v16 = a3[2];
    do
    {
      v17 = v15 == v10;
      v15 += 8;
      if (v17)
      {
        v16 += 8;
        v15 = v10;
      }

      ++v14;
    }

    while (v15 != v10 || v16 != v13);
  }

  if (v14 == v7)
  {
    v18 = *a2;
    v56 = *a2;
    v57 = v8;
    v58 = v11;
    v59 = v10;
    v60 = v13;
    if (v7)
    {
      v19 = v18 + 32 * v7;
      while (1)
      {
        v20 = &unk_1F1A05538;
        do
        {
          while (1)
          {
            v22 = *(v20 - 1);
            v23 = (&v57 + (*v20 >> 1));
            if (*v20)
            {
              break;
            }

            v20 += 2;
            v21 = v22(v23);
            if (v21)
            {
              goto LABEL_16;
            }
          }

          v20 += 2;
          v21 = (*(*v23 + v22))();
        }

        while (!v21);
LABEL_16:
        if (((*(*a1 + 728))(a1, v18, *v21, a5) & 1) == 0)
        {
          return 0;
        }

        v18 = v56 + 32;
        v56 += 32;
        if (v57 == v59)
        {
          if (v58 != v60)
          {
            v58 += 8;
          }
        }

        else
        {
          v57 += 8;
        }

        if (v18 == v19)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v52 = 257;
    (*(*a1 + 24))(&v56, a1, a4, v51);
    if (v56)
    {
      v53 = 5;
      v54 = v7;
      v24 = &v53;
      v25 = v59;
      if (v60 >= HIDWORD(v60))
      {
        if (v59 <= &v53 && v59 + 24 * v60 > &v53)
        {
          v48 = &v53 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v60 + 1, 24);
          v25 = v59;
          v24 = (v59 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v60 + 1, 24);
          v24 = &v53;
          v25 = v59;
        }
      }

      v26 = &v25[24 * v60];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      v28 = (v60 + 1);
      LODWORD(v60) = v60 + 1;
      if (v56)
      {
        v53 = 3;
        v54 = " operands present, but expected ";
        v55 = 32;
        v29 = &v53;
        v30 = v59;
        if (v28 >= HIDWORD(v60))
        {
          if (v59 <= &v53 && v59 + 24 * v28 > &v53)
          {
            v49 = &v53 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v28 + 1, 24);
            v30 = v59;
            v29 = (v59 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v28 + 1, 24);
            v29 = &v53;
            v30 = v59;
          }
        }

        v31 = &v30[24 * v60];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        v33 = (v60 + 1);
        LODWORD(v60) = v60 + 1;
        if (v56)
        {
          v53 = 5;
          v54 = v14;
          v34 = &v53;
          v35 = v59;
          if (v33 >= HIDWORD(v60))
          {
            if (v59 <= &v53 && v59 + 24 * v33 > &v53)
            {
              v50 = &v53 - v59;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v33 + 1, 24);
              v35 = v59;
              v34 = (v59 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v33 + 1, 24);
              v34 = &v53;
              v35 = v59;
            }
          }

          v36 = &v35[24 * v60];
          v37 = *v34;
          *(v36 + 2) = *(v34 + 2);
          *v36 = v37;
          LODWORD(v60) = v60 + 1;
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
    if (v56)
    {
      mlir::InFlightDiagnostic::report(&v56);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v65;
        v41 = __p;
        if (v65 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v65 = v39;
        operator delete(v41);
      }

      v42 = v62;
      if (v62)
      {
        v43 = v63;
        v44 = v62;
        if (v63 != v62)
        {
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
          v44 = v62;
        }

        v63 = v42;
        operator delete(v44);
      }

      if (v59 != v61)
      {
        free(v59);
      }
    }
  }

  return v38;
}

uint64_t mlir::pdl_interp::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (((*(*a1 + 800))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = v7;
  v5 = *(a2 + 208);
  if (v5 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v5 + 1, 8);
    LODWORD(v5) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v5) = v4;
  ++*(a2 + 208);
  return 1;
}

void mlir::pdl_interp::BranchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  v9 = v11;
  v10 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl_interp::CheckAttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
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
    v6 = mlir::DictionaryAttr::get(&v21, "constantValue", 0xDuLL);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v25, a4);
    if (v25[0])
    {
      v22 = 3;
      v23 = "expected DictionaryAttr to set properties";
      v24 = 41;
      v8 = &v22;
      v9 = v26;
      if (v27 >= v28)
      {
        if (v26 <= &v22 && v26 + 24 * v27 > &v22)
        {
          v20 = &v22 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v9 = v26;
          v8 = (v26 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v8 = &v22;
          v9 = v26;
        }
      }

      v10 = &v9[24 * v27];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v27;
      if (v25[0])
      {
        mlir::InFlightDiagnostic::report(v25);
      }
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
              MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
            }
          }

          while (v16 != v15);
          v17 = v30;
        }

        v31 = v15;
        operator delete(v17);
      }

      if (v26 != v29)
      {
        free(v26);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl_interp::CheckAttributeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "constantValue", 0xDuLL, *a2);
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

uint64_t mlir::pdl_interp::CheckAttributeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return (*(*a1 + 48))(a1, v2) & 1;
}

void mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 208);
  if (v11 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v11) = a5;
  v12 = *(a2 + 212);
  v13 = (*(a2 + 208) + 1);
  *(a2 + 208) = v13;
  if (v13 >= v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v13 + 1, 8);
    LODWORD(v13) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v13) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckAttributeOp::verifyInvariantsImpl(uint64_t **this)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8])
  {
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  v11 = "requires attribute 'constantValue'";
  v12 = 259;
  mlir::OpState::emitOpError(this, &v11, v13);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v19;
      v4 = __p;
      if (v19 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v19 = v2;
      operator delete(v4);
    }

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      v7 = v16;
      if (v17 != v16)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            MEMORY[0x1AC55A040](v8, 0x1000C8077774924);
          }
        }

        while (v6 != v5);
        v7 = v16;
      }

      v17 = v5;
      operator delete(v7);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return v1;
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 53;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
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
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::parse(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  v14 = v16;
  v15 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1))
  {
    v18 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, v17) & 1) != 0 && ((*(*a1 + 440))(a1, &v11, 0))
    {
      if (v11)
      {
        v4 = a2[32];
        if (!v4)
        {
          operator new();
        }

        *v4 = v11;
      }

      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        mlir::NamedAttrList::get((a2 + 14), **(a2[1] + 96));
        if ((*(*a1 + 56))(a1))
        {
          v17[0] = 0;
          v5 = (*(*a1 + 808))(a1, v17);
          if ((v5 & 0x100) == 0)
          {
LABEL_11:
            mlir::BlockRange::BlockRange(v17, v14, v15);
            mlir::OperationState::addSuccessors(a2, v17[0], v17[1]);
            v6 = (*(*a1 + 32))(a1);
            v7 = mlir::Builder::getType<mlir::pdl::AttributeType>(v6);
            v8 = (*(*a1 + 728))(a1, v12, v7, a2 + 2) & 1;
            goto LABEL_20;
          }

          if (v5)
          {
            llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v14, v17);
            while (((*(*a1 + 128))(a1) & 1) != 0)
            {
              if (((*(*a1 + 800))(a1, v17) & 1) == 0)
              {
                goto LABEL_19;
              }

              v9 = v15;
              if (v15 >= HIDWORD(v15))
              {
                llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v14, v17);
              }

              else
              {
                *(v14 + v15) = v17[0];
                LODWORD(v15) = v9 + 1;
              }
            }

            goto LABEL_11;
          }
        }
      }
    }
  }

LABEL_19:
  v8 = 0;
LABEL_20:
  if (v14 != v16)
  {
    free(v14);
  }

  return v8;
}

uint64_t mlir::Builder::getType<mlir::pdl::AttributeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
}

void mlir::pdl_interp::CheckAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29545;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "is", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "constantValue";
  v31[1] = 13;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
  v14 = (*(*a2 + 16))(a2);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v58, "compareAtLeast", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 59;
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

  v36 = mlir::DictionaryAttr::get(&v58, "count", 5uLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 50;
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

uint64_t mlir::pdl_interp::CheckOperandCountOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "compareAtLeast", 0xEuLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "count", 5uLL, v8);
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

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v35 = a1;
  v8 = a4;
  v9 = a5;
  Value = mlir::AffineMapAttr::getValue(&v35);
  isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 32);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v34 = a1;
  mlir::IntegerAttr::getValue(&v34, &v40);
  v11 = v41[0] - 1;
  if (v41[0] >= 0x41)
  {
    v12 = (v40 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = &v40;
  }

  v13 = (1 << v11) & *v12;
  if (v41[0] >= 0x41 && v40)
  {
    MEMORY[0x1AC55A040]();
  }

  a4 = v8;
  a5 = v9;
  if (!v13)
  {
    return 1;
  }

LABEL_11:
  a4(&v40, a5);
  if (v40)
  {
    LODWORD(Value) = 3;
    v37 = "attribute '";
    v38 = 11;
    p_Value = &Value;
    v15 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &Value && v42 + 24 * v43 > &Value)
      {
        v32 = &Value - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v15 = v42;
        p_Value = (v42 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        p_Value = &Value;
        v15 = v42;
      }
    }

    v16 = &v15[24 * v43];
    v17 = *p_Value;
    *(v16 + 2) = p_Value[2];
    *v16 = v17;
    ++v43;
    if (v40)
    {
      v39 = 261;
      Value = a2;
      v37 = a3;
      mlir::Diagnostic::operator<<(v41, &Value);
      if (v40)
      {
        LODWORD(Value) = 3;
        v37 = "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative";
        v38 = 93;
        v18 = &Value;
        v19 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &Value && v42 + 24 * v43 > &Value)
          {
            v33 = &Value - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v19 = v42;
            v18 = (v42 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v18 = &Value;
            v19 = v42;
          }
        }

        v20 = &v19[24 * v43];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v43;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v22;
}

BOOL mlir::pdl_interp::CheckOperandCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 8));
}

uint64_t *mlir::pdl_interp::CheckOperandCountOp::getCount(mlir::pdl_interp::CheckOperandCountOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

void mlir::pdl_interp::CheckOperandCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = IntegerAttr;
  if (!a5)
  {
    v17 = *(a2 + 208);
    if (v17 < *(a2 + 212))
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  UnitAttr = mlir::Builder::getUnitAttr(a1, v15);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = UnitAttr;
  v17 = *(a2 + 208);
  if (v17 >= *(a2 + 212))
  {
LABEL_10:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v17 + 1, 8);
    LODWORD(v17) = *(a2 + 208);
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v17) = a6;
  v18 = *(a2 + 212);
  v19 = (*(a2 + 208) + 1);
  *(a2 + 208) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v19 + 1, 8);
    LODWORD(v19) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v19) = a7;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckOperandCountOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    v18[0] = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v4, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && (v18[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "compareAtLeast", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18)))
    {
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'count'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::parse(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21 = 0;
  v24 = v26;
  v25 = 0x200000000;
  v30 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v22, 1))
    {
      v30 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, &v27))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = (*(*a1 + 32))(a1);
          UnitAttr = mlir::Builder::getUnitAttr(v4, v5);
          v7 = a2[32];
          if (!v7)
          {
            operator new();
          }

          *v7 = UnitAttr;
        }

        v8 = (*(*a1 + 32))(a1);
        IntegerType = mlir::Builder::getIntegerType(v8, 32);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v21, IntegerType))
        {
          if (v21)
          {
            v10 = a2[32];
            if (!v10)
            {
              operator new();
            }

            *(v10 + 8) = v21;
          }

          v20 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v11 = a2[1];
            v27 = a1;
            v28 = &v20;
            v29 = a2;
            v12 = mlir::NamedAttrList::get((a2 + 14), **(v11 + 96));
            if (!v12 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v12, "compareAtLeast", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27))
            {
              v13 = mlir::NamedAttrList::get((a2 + 14), *(*(v11 + 96) + 8));
              if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v13, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27)) && ((*(*a1 + 56))(a1))
              {
                v27 = 0;
                v14 = (*(*a1 + 808))(a1, &v27);
                if ((v14 & 0x100) == 0)
                {
LABEL_20:
                  mlir::BlockRange::BlockRange(&v27, v24, v25);
                  mlir::OperationState::addSuccessors(a2, v27, v28);
                  v15 = (*(*a1 + 32))(a1);
                  v16 = mlir::Builder::getType<mlir::pdl::OperationType>(v15);
                  v17 = (*(*a1 + 728))(a1, v22, v16, a2 + 2) & 1;
                  goto LABEL_29;
                }

                if (v14)
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v24, &v27);
                  while (((*(*a1 + 128))(a1) & 1) != 0)
                  {
                    if (((*(*a1 + 800))(a1, &v27) & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v18 = v25;
                    if (v25 >= HIDWORD(v25))
                    {
                      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v24, &v27);
                    }

                    else
                    {
                      *(v24 + v25) = v27;
                      LODWORD(v25) = v18 + 1;
                    }
                  }

                  goto LABEL_20;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_28:
  v17 = 0;
LABEL_29:
  if (v24 != v26)
  {
    free(v24);
  }

  return v17;
}

uint64_t mlir::Builder::getType<mlir::pdl::OperationType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
}

void mlir::pdl_interp::CheckOperandCountOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v10 = (*(*a2 + 16))(a2);
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

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 29545;
    v12[4] += 2;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
  }

  v14 = (*(*a2 + 16))(a2);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 7uLL)
  {
    *v17 = 0x747361656C5F7461;
    v16[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v16, "at_least", 8uLL);
  }

LABEL_23:
  v18 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  v37 = v39;
  v39[0] = "compareAtLeast";
  v39[1] = 14;
  v39[2] = "count";
  v39[3] = 5;
  v38 = 0x200000002;
  mlir::Attribute::getContext((*this + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v37, v38);
  v22 = (*(*a2 + 16))(a2);
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

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] - v25 > 1uLL)
  {
    *v25 = 15917;
    v24[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, "->", 2uLL);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  v29 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v30 = v28 - 1;
  if (v30)
  {
    v31 = (v29 + 56);
    do
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 <= 1uLL)
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      else
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      v32 = *v31;
      v31 += 4;
      (*(*a2 + 176))(a2, v32);
      --v30;
    }

    while (v30);
  }

LABEL_37:
  if (v37 != v39)
  {
    free(v37);
  }
}

BOOL mlir::pdl_interp::CheckOperationNameOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2);
}

void mlir::pdl_interp::CheckOperationNameOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v19 = 261;
  v18[0] = a4;
  v18[1] = a5;
  StringAttr = mlir::Builder::getStringAttr(a1, v18);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = StringAttr;
  v15 = *(a2 + 208);
  if (v15 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v15) = a6;
  v16 = *(a2 + 212);
  v17 = (*(a2 + 208) + 1);
  *(a2 + 208) = v17;
  if (v17 >= v16)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v17 + 1, 8);
    LODWORD(v17) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v17) = a7;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckOperationNameOp::verifyInvariantsImpl(uint64_t **this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v1)
  {
    v15[0] = *this;
    return mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v1, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v13 = "requires attribute 'name'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::parse(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v20 = v22;
  v21 = 0x200000000;
  v26 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v18, 1))
    {
      v26 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, &v23))
      {
        v4 = (*(*a1 + 32))(a1);
        v6 = mlir::NoneType::get(*v4, v5);
        if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v17, v6))
        {
          if (v17)
          {
            v7 = a2[32];
            if (!v7)
            {
              operator new();
            }

            *v7 = v17;
          }

          v16 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v8 = a2[1];
            v23 = a1;
            v24 = &v16;
            v25 = a2;
            v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
            if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v23)) && ((*(*a1 + 56))(a1))
            {
              v23 = 0;
              v10 = (*(*a1 + 808))(a1, &v23);
              if ((v10 & 0x100) == 0)
              {
LABEL_14:
                mlir::BlockRange::BlockRange(&v23, v20, v21);
                mlir::OperationState::addSuccessors(a2, v23, v24);
                v11 = (*(*a1 + 32))(a1);
                v12 = mlir::Builder::getType<mlir::pdl::OperationType>(v11);
                v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 2) & 1;
                goto LABEL_23;
              }

              if (v10)
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v20, &v23);
                while (((*(*a1 + 128))(a1) & 1) != 0)
                {
                  if (((*(*a1 + 800))(a1, &v23) & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  v14 = v21;
                  if (v21 >= HIDWORD(v21))
                  {
                    llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v20, &v23);
                  }

                  else
                  {
                    *(v20 + v21) = v23;
                    LODWORD(v21) = v14 + 1;
                  }
                }

                goto LABEL_14;
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  v13 = 0;
LABEL_23:
  if (v20 != v22)
  {
    free(v20);
  }

  return v13;
}

void mlir::pdl_interp::CheckOperationNameOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v35[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v10 = (*(*a2 + 16))(a2);
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

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 29545;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v33 = v35;
  v35[0] = "name";
  v35[1] = 4;
  v34 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v17, v33, v34);
  v18 = (*(*a2 + 16))(a2);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] - v21 > 1uLL)
  {
    *v21 = 15917;
    v20[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, "->", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v24 = v32;
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v24 = v32;
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  v25 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v26 = v24 - 1;
  if (v26)
  {
    v27 = (v25 + 56);
    do
    {
      v29 = (*(*a2 + 16))(a2);
      v30 = v29[4];
      if (v29[3] - v30 <= 1uLL)
      {
        llvm::raw_ostream::write(v29, ", ", 2uLL);
      }

      else
      {
        *v30 = 8236;
        v29[4] += 2;
      }

      v28 = *v27;
      v27 += 4;
      (*(*a2 + 176))(a2, v28);
      --v26;
    }

    while (v26);
  }

LABEL_30:
  if (v33 != v35)
  {
    free(v33);
  }
}

BOOL mlir::pdl_interp::CheckResultCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 8));
}

void mlir::pdl_interp::CheckResultCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = IntegerAttr;
  if (!a5)
  {
    v17 = *(a2 + 208);
    if (v17 < *(a2 + 212))
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  UnitAttr = mlir::Builder::getUnitAttr(a1, v15);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = UnitAttr;
  v17 = *(a2 + 208);
  if (v17 >= *(a2 + 212))
  {
LABEL_10:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v17 + 1, 8);
    LODWORD(v17) = *(a2 + 208);
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v17) = a6;
  v18 = *(a2 + 212);
  v19 = (*(a2 + 208) + 1);
  *(a2 + 208) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v19 + 1, 8);
    LODWORD(v19) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v19) = a7;
  ++*(a2 + 208);
}

uint64_t mlir::pdl_interp::CheckResultCountOp::parse(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21 = 0;
  v24 = v26;
  v25 = 0x200000000;
  v30 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v22, 1))
    {
      v30 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, &v27))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = (*(*a1 + 32))(a1);
          UnitAttr = mlir::Builder::getUnitAttr(v4, v5);
          v7 = a2[32];
          if (!v7)
          {
            operator new();
          }

          *v7 = UnitAttr;
        }

        v8 = (*(*a1 + 32))(a1);
        IntegerType = mlir::Builder::getIntegerType(v8, 32);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v21, IntegerType))
        {
          if (v21)
          {
            v10 = a2[32];
            if (!v10)
            {
              operator new();
            }

            *(v10 + 8) = v21;
          }

          v20 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v11 = a2[1];
            v27 = a1;
            v28 = &v20;
            v29 = a2;
            v12 = mlir::NamedAttrList::get((a2 + 14), **(v11 + 96));
            if (!v12 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v12, "compareAtLeast", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27))
            {
              v13 = mlir::NamedAttrList::get((a2 + 14), *(*(v11 + 96) + 8));
              if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v13, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27)) && ((*(*a1 + 56))(a1))
              {
                v27 = 0;
                v14 = (*(*a1 + 808))(a1, &v27);
                if ((v14 & 0x100) == 0)
                {
LABEL_20:
                  mlir::BlockRange::BlockRange(&v27, v24, v25);
                  mlir::OperationState::addSuccessors(a2, v27, v28);
                  v15 = (*(*a1 + 32))(a1);
                  v16 = mlir::Builder::getType<mlir::pdl::OperationType>(v15);
                  v17 = (*(*a1 + 728))(a1, v22, v16, a2 + 2) & 1;
                  goto LABEL_29;
                }

                if (v14)
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v24, &v27);
                  while (((*(*a1 + 128))(a1) & 1) != 0)
                  {
                    if (((*(*a1 + 800))(a1, &v27) & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v18 = v25;
                    if (v25 >= HIDWORD(v25))
                    {
                      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v24, &v27);
                    }

                    else
                    {
                      *(v24 + v25) = v27;
                      LODWORD(v25) = v18 + 1;
                    }
                  }

                  goto LABEL_20;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_28:
  v17 = 0;
LABEL_29:
  if (v24 != v26)
  {
    free(v24);
  }

  return v17;
}

uint64_t mlir::pdl_interp::CheckTypeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "type", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 49;
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

uint64_t mlir::pdl_interp::CheckTypeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "type", 4uLL, *a2);
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

BOOL mlir::pdl_interp::CheckTypeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2);
}

void mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 208);
  if (v11 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v11) = a5;
  v12 = *(a2 + 212);
  v13 = (*(a2 + 208) + 1);
  *(a2 + 208) = v13;
  if (v13 >= v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v13 + 1, 8);
    LODWORD(v13) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v13) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckTypeOp::verifyInvariantsImpl(uint64_t **this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v1)
  {
    v15[0] = *this;
    return mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v1, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v13 = "requires attribute 'type'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::CheckTypeOp::parse(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v20 = v22;
  v21 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v18, 1))
  {
    v26 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, &v23))
    {
      v4 = (*(*a1 + 32))(a1);
      v6 = mlir::NoneType::get(*v4, v5);
      if (mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v17, v6))
      {
        if (v17)
        {
          v7 = a2[32];
          if (!v7)
          {
            operator new();
          }

          *v7 = v17;
        }

        v16 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v8 = a2[1];
          v23 = a1;
          v24 = &v16;
          v25 = a2;
          v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
          if (!v9 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v23)) && ((*(*a1 + 56))(a1))
          {
            v23 = 0;
            v10 = (*(*a1 + 808))(a1, &v23);
            if ((v10 & 0x100) == 0)
            {
LABEL_13:
              mlir::BlockRange::BlockRange(&v23, v20, v21);
              mlir::OperationState::addSuccessors(a2, v23, v24);
              v11 = (*(*a1 + 32))(a1);
              v12 = mlir::Builder::getType<mlir::pdl::TypeType>(v11);
              v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 2) & 1;
              goto LABEL_22;
            }

            if (v10)
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v20, &v23);
              while (((*(*a1 + 128))(a1) & 1) != 0)
              {
                if (((*(*a1 + 800))(a1, &v23) & 1) == 0)
                {
                  goto LABEL_21;
                }

                v14 = v21;
                if (v21 >= HIDWORD(v21))
                {
                  llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v20, &v23);
                }

                else
                {
                  *(v20 + v21) = v23;
                  LODWORD(v21) = v14 + 1;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v13 = 0;
LABEL_22:
  if (v20 != v22)
  {
    free(v20);
  }

  return v13;
}

uint64_t mlir::Builder::getType<mlir::pdl::TypeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
}

void mlir::pdl_interp::CheckTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29545;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "is", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "type";
  v31[1] = 4;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
  v14 = (*(*a2 + 16))(a2);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::CheckTypesOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "types", 5uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 50;
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

uint64_t mlir::pdl_interp::CheckTypesOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "types", 5uLL, *a2);
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

BOOL mlir::pdl_interp::CheckTypesOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2);
}

void mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 208);
  if (v11 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v11) = a5;
  v12 = *(a2 + 212);
  v13 = (*(a2 + 208) + 1);
  *(a2 + 208) = v13;
  if (v13 >= v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v13 + 1, 8);
    LODWORD(v13) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v13) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckTypesOp::verifyInvariantsImpl(uint64_t **this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v1)
  {
    v15[0] = *this;
    return mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v1, "types", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v13 = "requires attribute 'types'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::CheckTypesOp::parse(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v19, 1))
  {
    v27 = 257;
    if ((*(*a1 + 400))(a1, "are", 3, &v24))
    {
      v4 = (*(*a1 + 32))(a1);
      v6 = mlir::NoneType::get(*v4, v5);
      if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v18, v6))
      {
        if (v18)
        {
          v7 = a2[32];
          if (!v7)
          {
            operator new();
          }

          *v7 = v18;
        }

        v17 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v8 = a2[1];
          v24 = a1;
          v25 = &v17;
          v26 = a2;
          v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
          if (!v9 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v9, "types", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24)) && ((*(*a1 + 56))(a1))
          {
            v24 = 0;
            v10 = (*(*a1 + 808))(a1, &v24);
            if ((v10 & 0x100) == 0)
            {
LABEL_13:
              mlir::BlockRange::BlockRange(&v24, v21, v22);
              mlir::OperationState::addSuccessors(a2, v24, v25);
              v11 = (*(*a1 + 32))(a1);
              v12 = mlir::Builder::getType<mlir::pdl::TypeType>(v11);
              v13 = mlir::pdl::RangeType::get(v12);
              v14 = (*(*a1 + 728))(a1, v19, v13, a2 + 2) & 1;
              goto LABEL_22;
            }

            if (v10)
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, &v24);
              while (((*(*a1 + 128))(a1) & 1) != 0)
              {
                if (((*(*a1 + 800))(a1, &v24) & 1) == 0)
                {
                  goto LABEL_21;
                }

                v15 = v22;
                if (v22 >= HIDWORD(v22))
                {
                  llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v21, &v24);
                }

                else
                {
                  *(v21 + v22) = v24;
                  LODWORD(v22) = v15 + 1;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v14 = 0;
LABEL_22:
  if (v21 != v23)
  {
    free(v21);
  }

  return v14;
}