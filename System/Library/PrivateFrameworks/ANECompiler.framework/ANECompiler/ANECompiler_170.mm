uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v7 = *(a3 + 8) == 29541) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 10 && *result == 0x756C615665736163 && *(result + 8) == 29541)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchAttributeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchAttributeOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchAttributeOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchAttributeOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchAttributeOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchAttributeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchAttributeOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchAttributeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchAttributeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchAttributeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchAttributeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchAttributeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchAttributeOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchAttributeOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchAttributeOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl_interp::SwitchAttributeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchAttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::pdl_interp::SwitchAttributeOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl_interp::SwitchAttributeOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v7 = *(a3 + 8) == 29541) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 10 && *result == 0x756C615665736163 && *(result + 8) == 29541)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      result = mlir::DenseIntElementsAttr::classof(a4);
      if (result)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperandCountOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchOperandCountOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchOperandCountOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchOperandCountOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchOperandCountOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchOperandCountOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchOperandCountOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchOperandCountOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchOperandCountOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchOperandCountOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchOperandCountOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchOperandCountOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchOperandCountOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchOperandCountOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchOperandCountOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl_interp::SwitchOperandCountOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchOperandCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::pdl_interp::SwitchOperandCountOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl_interp::SwitchOperandCountOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v7 = *(a3 + 8) == 29541) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 10 && *result == 0x756C615665736163 && *(result + 8) == 29541)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchOperationNameOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchOperationNameOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchOperationNameOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchOperationNameOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchOperationNameOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchOperationNameOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchOperationNameOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchOperationNameOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchOperationNameOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchOperationNameOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchOperationNameOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchOperationNameOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchOperationNameOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchOperationNameOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchOperationNameOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl_interp::SwitchOperationNameOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchOperationNameOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::pdl_interp::SwitchOperationNameOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl_interp::SwitchAttributeOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v7 = *(a3 + 8) == 29541) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 10 && *result == 0x756C615665736163 && *(result + 8) == 29541)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      result = mlir::DenseIntElementsAttr::classof(a4);
      if (result)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchResultCountOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchResultCountOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchResultCountOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchResultCountOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchResultCountOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchResultCountOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchResultCountOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchResultCountOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchResultCountOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchResultCountOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchResultCountOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchResultCountOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchResultCountOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchResultCountOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchResultCountOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl_interp::SwitchOperandCountOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchResultCountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::pdl_interp::SwitchOperandCountOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl_interp::SwitchOperandCountOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v7 = *(a3 + 8) == 29541) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 10 && *result == 0x756C615665736163 && *(result + 8) == 29541)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl_interp::SwitchAttributeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::pdl_interp::SwitchTypeOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl_interp::SwitchAttributeOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::hasTrait()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::printAssembly()
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v7);
  v5 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      if ((v8 & 2) != 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v7 = *(a3 + 8) == 29541) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 10 && *result == 0x756C615665736163 && *(result + 8) == 29541)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypesOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypesOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl_interp::SwitchAttributeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::pdl_interp::SwitchTypesOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl_interp::SwitchAttributeOp::verify(&v7) & 1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::pdl_interp::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::pdl::PDLType>(uint64_t a1, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 536))(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v5 = v19;
  if (mlir::pdl::PDLType::classof(v19))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  if (v6)
  {
    return 1;
  }

  v17 = "invalid kind of type specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v4, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v8 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v8;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v8;
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
      result = v8;
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
      result = v8;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v8;
    }
  }

  return result;
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<1ul>(uint64_t a1)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties]";
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

BOOL mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties]";
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

BOOL mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v21;
  if (mlir::DenseIntElementsAttr::classof(v21))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  if (v8)
  {
    return 1;
  }

  v19 = "invalid kind of attribute specified";
  v20 = 259;
  (*(*a1 + 24))(v22, a1, v6, &v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
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
      result = v10;
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
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void OUTLINED_FUNCTION_51_2(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v4, a1 + 1, 16);
}

void OUTLINED_FUNCTION_75_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = 0x200000002;

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a12, v13, 3uLL, 16);
}

unint64_t *OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return mlir::ValueRange::ValueRange(va, a12 + 32 * a13, a15 - a13);
}

void *OUTLINED_FUNCTION_111_1(llvm::raw_ostream *a1)
{

  return llvm::raw_ostream::write(a1, v1, 2uLL);
}

void anonymous namespace::PDLToPDLInterpPass::~PDLToPDLInterpPass(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x1AC55A070);
}

void *mlir::impl::ConvertPDLToPDLInterpBase<anonymous namespace::PDLToPDLInterpPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F1A05618;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id, "pdl_interp", 0xAuLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void anonymous namespace::PDLToPDLInterpPass::runOnOperation(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  v14[37] = *MEMORY[0x1E69E9840];
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 32 * *(v1 + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 5);
  Parent = mlir::Block::getParent(v3);
  Context = mlir::Region::getContext(Parent);
  v9[2] = v3;
  v9[3] = v4;
  v7 = *(v1 + 24);
  v9[0] = Context;
  v9[1] = 0;
  v14[0] = "matcher";
  v14[1] = 7;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  mlir::ValueRange::ValueRange(v12, &SingletonImpl, 1uLL);
  mlir::ValueRange::ValueRange(v13, 0, 0);
  FunctionType = mlir::Builder::getFunctionType(v9, v12[0], v12[1], v13[0], v13[1]);
  mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v9, v7, v14, &FunctionType);
}

void sub_1A6D308E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (STACK[0x218] != a10)
  {
    free(STACK[0x218]);
  }

  llvm::deallocate_buffer(STACK[0x200], (8 * LODWORD(STACK[0x210])));
}

void sub_1A6D30920(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, llvm *a56, uint64_t a57, int a58, uint64_t a59, void *a60)
{
  if (a60 != a11)
  {
    free(a60);
  }

  llvm::deallocate_buffer(a56, (16 * a58));
}

BOOL mlir::OperationPass<mlir::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(mlir::StringAttr **a1, uint64_t a2, size_t *a3, uint64_t *a4)
{
  v14[38] = *MEMORY[0x1E69E9840];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::pdl_interp::FuncOp::build(a1, v14, *a3, a3[1], *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v14, v13, v12);
}

void mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(mlir::StringAttr **a1, uint64_t a2, __int128 *a3)
{
  v13[38] = *MEMORY[0x1E69E9840];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v13, a2, v7);
    v11 = *a3;
    v12 = 1;
    mlir::ModuleOp::build(a1, v13, &v11);
  }

  mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(v13, &v11, v10);
}

mlir::Block *anonymous namespace::PatternLowering::generateMatcher(_anonymous_namespace_::PatternLowering *this, mlir::pdl_to_pdl_interp::MatcherNode *a2, mlir::Region *a3, mlir::Block *a4)
{
  v101 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    operator new();
  }

  v8 = *(this + 14);
  v85[0] = (this + 88);
  v85[1] = v8;
  *(this + 14) = v85;
  v85[2] = 0;
  v9 = *(a2 + 5);
  {
    if (v9 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_5;
    }

LABEL_81:
    *(this + 2) = a4;
    *(this + 3) = a4 + 32;
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(this, *(*(this + 4) + 24));
    goto LABEL_114;
  }

  if (v9 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_81;
  }

LABEL_5:
  v10 = *(a2 + 3);
  if (v10)
  {
    v12 = *(this + 32);
    if (v12 >= *(this + 33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(this + 120, this + 136, v12 + 1, 8);
      LODWORD(v12) = *(this + 32);
    }

    *(*(this + 15) + 8 * v12) = Matcher;
    ++*(this + 32);
    v84 = a4;
    v13 = *(a2 + 1);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_13:
    v15 = 0;
    v83 = 0;
    goto LABEL_19;
  }

  Matcher = *(*(this + 15) + 8 * *(this + 32) - 8);
  v84 = a4;
  v13 = *(a2 + 1);
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_9:
  v83 = ValueAt;
  if (ValueAt && *(*(*(ValueAt + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 28, &v83, __src);
    if (v94 == 1)
    {
      v16 = v83;
      v17 = *(this + 64);
      if (v17 >= *(this + 65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 248, this + 264, v17 + 1, 8);
        LODWORD(v17) = *(this + 64);
      }

      *(*(this + 31) + 8 * v17) = v16;
      ++*(this + 64);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

LABEL_19:
  v81 = a2;
  v82 = 0;
  v18 = *(a2 + 5);
  {
    if (v18 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_21;
    }

LABEL_83:
    *&v86 = v83;
    mlir::Value::getLoc(&v86);
    v54 = *(a2 + 2);
    mlir::Block::getParent(v84);
    __src[0] = &v94;
    __src[1] = 0x600000000;
    if (*v54 == 21)
    {
      v57 = *(v54 + 32);
      if (v57)
      {
        v58 = *(v54 + 24);
        v59 = 8 * v57;
        do
        {
          v61 = LODWORD(__src[1]);
          if (LODWORD(__src[1]) >= HIDWORD(__src[1]))
          {
            v79 = v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v94, LODWORD(__src[1]) + 1, 8);
            v60 = v79;
            v61 = LODWORD(__src[1]);
          }

          *(__src[0] + v61) = v60;
          ++LODWORD(__src[1]);
          ++v58;
          v59 -= 8;
        }

        while (v59);
      }
    }

    else if (*v54 == 20)
    {
      LODWORD(__src[1]) = 0;
      if (HIDWORD(__src[1]))
      {
        v56 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v94, 1uLL, 8);
        v56 = LODWORD(__src[1]);
      }

      *(__src[0] + v56) = v55;
      ++LODWORD(__src[1]);
    }

    operator new();
  }

  if (v18 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_83;
  }

LABEL_21:
  v19 = *(v81 + 5);
  {
    if (v19 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_98;
    }
  }

  else
  {
    if (v19 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_98;
    }
  }

  v88 = v81;
  v89 = v83;
  v20 = *(v81 + 2);
  v78 = v84;
  Parent = mlir::Block::getParent(v84);
  v87 = *(*(this + 15) + 8 * *(this + 32) - 8);
  if ((*v20 & 0xFFFFFFFD) != 0x10)
  {
    v94 = 0;
    *__src = 0u;
    v95 = v97;
    v96 = 0;
    v24 = *(v88 + 20);
    if (v24)
    {
      v25 = (*(v88 + 9) + 8);
      v26 = 16 * v24;
      do
      {
        *&v86 = *(v25 - 1);
        *(&v86 + 1) = v27;
        v91 = v86;
        v92 = 0;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(__src, &v91, &v92, &v98);
        if (v100[0] == 1)
        {
          v28 = v96;
          v98[2] = v96;
          v90 = (&v86 + 8);
          v91 = &v86;
          if (v28 < HIDWORD(v96))
          {
            *(v95 + v28) = v86;
            LODWORD(v96) = v28 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(&v95, &std::piecewise_construct, &v91, &v90);
          }
        }

        v25 += 2;
        v26 -= 16;
      }

      while (v26);
    }

    *(this + 2) = v78;
    *(this + 3) = v78 + 32;
    v29 = *v20;
    if (*v20 <= 14)
    {
      if (v29 == 13)
      {
        createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v89, v87, this, __src);
      }

      else if (*(*(*(v89 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v89, v87, this, __src);
      }

      else
      {
        createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v89, v87, this, __src);
      }
    }

    else if (v29 == 15)
    {
      createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(v89, v87, this, __src);
    }

    else if (v29 == 17)
    {
      createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v89, v87, this, __src);
    }

    else
    {
      createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v89, v87, this, __src);
    }

    if (v95 != v97)
    {
      free(v95);
    }

    llvm::deallocate_buffer(__src[0], (16 * v94));
  }

  v21 = *(v88 + 20);
  __src[0] = &v94;
  __src[1] = 0x1000000000;
  if (v21 < 0x11)
  {
    if (!v21)
    {
      v38 = 0;
      v23 = &v94;
      goto LABEL_46;
    }

    v22 = 0;
    v23 = &v94;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v94, v21, 4);
    v22 = LODWORD(__src[1]);
    v23 = __src[0];
  }

  v30 = &v23[v22];
  if (v21 >= 8)
  {
    v31 = v21 & 0xFFFFFFF8;
    v32 = (v30 + 4 * v31);
    v33 = v30 + 1;
    v34 = xmmword_1A75A3B20;
    v35.i64[0] = 0x400000004;
    v35.i64[1] = 0x400000004;
    v36.i64[0] = 0x800000008;
    v36.i64[1] = 0x800000008;
    v37 = v31;
    do
    {
      v33[-1] = v34;
      *v33 = vaddq_s32(v34, v35);
      v34 = vaddq_s32(v34, v36);
      v33 += 2;
      v37 -= 8;
    }

    while (v37);
    if (v31 == v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v31 = 0;
    v32 = v30;
  }

  do
  {
    v32->i32[0] = v31;
    v32 = (v32 + 4);
    ++v31;
  }

  while (v21 != v31);
LABEL_45:
  v38 = __src[1];
LABEL_46:
  v98 = v100;
  v99 = 0xC00000000;
  v39 = (v38 + v21);
  LODWORD(__src[1]) = v39;
  if (v39)
  {
    if (v23 == &v94)
    {
      v40 = v39;
      if (v39 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v100, v39, 4), v40 = __src[1], v23 = __src[0], LODWORD(__src[1])))
      {
        memcpy(v98, v23, 4 * v40);
        v23 = __src[0];
      }

      LODWORD(v99) = v39;
    }

    else
    {
      v98 = v23;
      v99 = __PAIR64__(HIDWORD(__src[1]), v39);
      __src[0] = &v94;
      HIDWORD(__src[1]) = 0;
      v23 = &v94;
    }

    LODWORD(__src[1]) = 0;
  }

  if (v23 != &v94)
  {
    free(v23);
    LODWORD(v39) = v99;
  }

  __src[0] = &v88;
  v41 = 126 - 2 * __clz(v39);
  if (v39)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = v87;
  v44 = *(this + 32);
  if (v44 >= *(this + 33))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 120, this + 136, v44 + 1, 8);
    LODWORD(v44) = *(this + 32);
  }

  *(*(this + 15) + 8 * v44) = v43;
  ++*(this + 32);
  mlir::Value::getLoc(&v89);
  if (v99)
  {
    v91 = v45;
    mlir::ValueRange::ValueRange(__src, 0, 0);
    mlir::OpBuilder::createBlock(this, v45, __src[0], __src[1], 0, 0);
  }

  v46 = *(this + 32);
  v47 = *(*(this + 15) + 8 * v46 - 8);
  *(this + 32) = v46 - 1;
  v48 = (v47 + 32);
  if (*(v47 + 4) != (v47 + 32) && v47 != v78)
  {
    v49 = (v78 + 32);
    v50 = *(v47 + 5);
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v78 + 32, v47 + 32, v50, v47 + 32);
    if (v50 != v48)
    {
      v51 = *v48;
      v52 = *v50;
      *(v52 + 8) = v48;
      *v48 = v52;
      v53 = *v49;
      *(v51 + 8) = v49;
      *v50 = v53;
      *(v53 + 8) = v50;
      *v49 = v51;
    }
  }

  mlir::Block::erase(v47);
  if (v98 != v100)
  {
    free(v98);
  }

  v82 = 1;
LABEL_98:
  __src[0] = this;
  __src[1] = &v84;
  v62 = *(this + 15) - 8;
  v63 = *(this + 32);
  if (*(v62 + 8 * v63) != Matcher)
  {
    do
    {
      LODWORD(v63) = v63 - 1;
    }

    while (*(v62 + 8 * v63) != Matcher);
    *(this + 32) = v63;
  }

  if (*(a2 + 3))
  {
    *(this + 32) = v63 - 1;
  }

  if (v15)
  {
    v64 = *(this + 60);
    if (v64)
    {
      v65 = *(this + 28);
      v66 = 0x9DDFEA08EB382D69 * ((8 * v83 - 0xAE502812AA7333) ^ HIDWORD(v83));
      v67 = 0x9DDFEA08EB382D69 * (HIDWORD(v83) ^ (v66 >> 47) ^ v66);
      LODWORD(v66) = -348639895 * ((v67 >> 47) ^ v67);
      v68 = v64 - 1;
      v69 = v66 & (v64 - 1);
      v70 = *(v65 + 8 * v69);
      if (v83 == v70)
      {
LABEL_106:
        *(v65 + 8 * v69) = -8192;
        *(this + 29) = vadd_s32(*(this + 232), 0x1FFFFFFFFLL);
        v71 = *(this + 31);
        v72 = *(this + 64);
        v73 = &v71[v72];
        if (v72)
        {
          v74 = 8 * v72;
          while (*v71 != v83)
          {
            ++v71;
            v74 -= 8;
            if (!v74)
            {
              v71 = v73;
              break;
            }
          }
        }

        if (v73 != v71 + 1)
        {
          memmove(v71, v71 + 1, v73 - (v71 + 1));
          LODWORD(v72) = *(this + 64);
        }

        *(this + 64) = v72 - 1;
      }

      else
      {
        v76 = 1;
        while (v70 != -4096)
        {
          v77 = v69 + v76++;
          v69 = v77 & v68;
          v70 = *(v65 + 8 * v69);
          if (v83 == v70)
          {
            goto LABEL_106;
          }
        }
      }
    }
  }

LABEL_114:
  llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v85);
  return a4;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributePosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeLiteralPosition]";
  v6 = 99;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintPosition]";
  v6 = 93;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ForEachPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandGroupPosition]";
  v6 = 95;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultPosition]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultGroupPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypePosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeLiteralPosition]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::UsersPosition]";
  v6 = 88;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeAnswer]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameAnswer]";
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeAnswer]";
  v6 = 85;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::UnsignedAnswer]";
  v6 = 89;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::FalseAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::FalseAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 23;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 23;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::FalseAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::FalseAnswer]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TrueAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TrueAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 25;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 25;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TrueAnswer]";
  v6 = 85;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintQuestion]";
  v6 = 93;
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::EqualToQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::AttributeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 15;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 15;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::IsNotNullQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 12;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 12;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::IsNotNullQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 17;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 17;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountQuestion]";
  v6 = 95;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 16;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 16;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion]";
  v6 = 102;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperationNameQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 13;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 13;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameQuestion]";
  v6 = 96;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 19;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 19;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 18;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 18;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TypeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 14;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 14;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeQuestion]";
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  {
    v11 = a3;
    v12 = a1;
    v9 = a2;
    v10 = a5;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>();
    a2 = v9;
    a5 = v10;
    a3 = v11;
    a1 = v12;
  }

  v16[0] = a2;
  v16[1] = a3;
  v5 = *a5;
  v14 = 0;
  v15 = v5;
  DWORD1(v17) = 0;
  DWORD2(v17) = v5;
  v6 = __ROR8__(*(&v17 + 4) + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL)));
  v13 = &v14;
  *&v17 = &v14;
  *(&v17 + 1) = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id, -348639895 * ((v7 >> 47) ^ v7), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 0;
  *Slow = &unk_1F1A056E8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F1A05698;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::OperationPosition::~OperationPosition(mlir::pdl_to_pdl_interp::OperationPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)0>::~PredicateBase(ZinIrHalH13g *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(a1);

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(ZinIrHalH13g *a1, uint64_t a2)
{
  v13[38] = *MEMORY[0x1E69E9840];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(v13, v12, v11);
  }

  mlir::OperationState::OperationState(v13, a2, v5);
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v7 = mlir::OpBuilder::create(a1, v13);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v8;
}

char *anonymous namespace::PatternLowering::getValueAt(_anonymous_namespace_::PatternLowering *this, mlir::Block **a2, mlir::pdl_to_pdl_interp::Position *a3)
{
  v57[2] = *MEMORY[0x1E69E9840];
  v55 = a3;
  v7 = this + 88;
  v6 = *(this + 11);
  v8 = *(this + 26);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = (v8 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v10 = *(v6 + 16 * v9);
  if (v10 != a3)
  {
    v50 = 1;
    while (v10 != -4096)
    {
      v51 = v9 + v50++;
      v9 = v51 & (v8 - 1);
      v10 = *(v6 + 16 * v9);
      if (v10 == a3)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v9 == v8)
  {
LABEL_4:
    v56 = 0;
    goto LABEL_5;
  }

  result = *(*(v6 + 16 * v9 + 8) + 24);
  v56 = result;
  if (result)
  {
    return result;
  }

LABEL_5:
  ValueAt = 0;
  v11 = *(a3 + 1);
  {
    Loc = mlir::Value::getLoc(&ValueAt);
  }

  else
  {
    Loc = mlir::Builder::getUnknownLoc(this, a2);
  }

  v13 = Loc;
  v14 = *a2 + 32;
  *(this + 2) = *a2;
  *(this + 3) = v14;
  v15 = *(a3 + 4);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v34 = *(a3 + 3);
        if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v35 = *(a3 + 3);
        }

        else
        {
          v35 = 0;
        }

        v57[0] = v35;
        if (v35)
        {
          v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(this, Loc, v57);
        }

        else
        {
          v53 = v34;
          v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(this, Loc, &v53);
        }
      }

      else
      {
        if (v15 != 10)
        {
          v40 = (*(this + 15) + 8 * *(this + 32) - 8);
          LOBYTE(v57[0]) = 1;
          mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(this, Loc, &ValueAt, v40, v57);
        }

        v26 = ValueAt;
        if (*(*(*(ValueAt + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(a3 + 32) == 1)
        {
          LODWORD(v57[0]) = 0;
          v26 = mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(this, Loc, &ValueAt, v57) - 16;
        }

        v56 = v26;
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(this, v13, &v56);
      }
    }

    else if (v15 == 6)
    {
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*this);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      if (*(a3 + 40) == 1)
      {
        SingletonImpl = mlir::pdl::RangeType::get(SingletonImpl);
      }

      v57[0] = SingletonImpl;
      v30 = *(a3 + 4);
      LODWORD(v53) = v30;
      BYTE4(v53) = BYTE4(v30);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(this, v13, v57, &ValueAt, &v53);
    }

    else if (v15 == 7)
    {
      if (*(*(*(ValueAt + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(this, Loc, &ValueAt);
      }

      else
      {
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(this, Loc, &ValueAt);
      }
    }

    else
    {
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(this, Loc, a3 + 3);
    }

    goto LABEL_59;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v31 = mlir::MLIRContext::getTypeUniquer(*this);
      v32 = mlir::StorageUniquer::getSingletonImpl(v31, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
      v52 = *(a3 + 4);
      v53 = v32;
      v57[0] = mlir::OpaqueAttr::getAttrData(&v52);
      v57[1] = v33;
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(this, v13, &v53, &ValueAt, v57);
      goto LABEL_59;
    }

    if (v15 != 4)
    {
      v39 = mlir::MLIRContext::getTypeUniquer(*this);
      v57[0] = mlir::StorageUniquer::getSingletonImpl(v39, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      LODWORD(v53) = *(a3 + 8);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(this, v13, v57, &ValueAt, &v53);
      goto LABEL_59;
    }

    v19 = *(this + 34);
    v20 = *(this + 72);
    if (v20)
    {
      v21 = *(a3 + 3);
      v22 = ((v21 >> 4) ^ (v21 >> 9)) & (v20 - 1);
      v23 = *(v19 + 16 * v22);
      if (v23 == v21)
      {
        goto LABEL_54;
      }

      v24 = 1;
      while (v23 != -4096)
      {
        v25 = v22 + v24++;
        v22 = v25 & (v20 - 1);
        v23 = *(v19 + 16 * v22);
        if (v23 == v21)
        {
          goto LABEL_54;
        }
      }
    }

    v22 = *(this + 72);
LABEL_54:
    v42 = *(v19 + 16 * v22 + 8);
    v43 = *(a3 + 8);
    if (v43 > 5)
    {
      v41 = v42 - 24 * (v43 - 5) - 96;
    }

    else
    {
      v41 = v42 - 16 * v43 - 16;
    }

    goto LABEL_60;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v16 = mlir::MLIRContext::getTypeUniquer(*this);
      v57[0] = mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      LODWORD(v53) = *(a3 + 8);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(this, v13, v57, &ValueAt, &v53);
    }

    else
    {
      v36 = mlir::MLIRContext::getTypeUniquer(*this);
      v37 = mlir::StorageUniquer::getSingletonImpl(v36, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      if (*(a3 + 40) == 1)
      {
        v37 = mlir::pdl::RangeType::get(v37);
      }

      v57[0] = v37;
      v38 = *(a3 + 4);
      LODWORD(v53) = v38;
      BYTE4(v53) = BYTE4(v38);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(this, v13, v57, &ValueAt, &v53);
    }

    goto LABEL_59;
  }

  if (mlir::pdl_to_pdl_interp::OperationPosition::isOperandDefiningOp(a3))
  {
    v27 = mlir::MLIRContext::getTypeUniquer(*this);
    v57[0] = mlir::StorageUniquer::getSingletonImpl(v27, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
    v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(this, v13, v57, &ValueAt);
LABEL_59:
    v41 = v17 - 16;
    goto LABEL_60;
  }

  v41 = ValueAt;
LABEL_60:
  v56 = v41;
  v44 = *(this + 14);
  v45 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](v7, &v55);
  v46 = *(v44 + 16);
  v47 = *v45;
  buffer = llvm::allocate_buffer(0x20uLL, 8uLL);
  v49 = v56;
  buffer[2] = v55;
  buffer[3] = v49;
  *buffer = v46;
  buffer[1] = v47;
  *v45 = buffer;
  *(v44 + 16) = buffer;
  return v56;
}

_BYTE *llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>(_BYTE *result, _anonymous_namespace_::PatternLowering **a2)
{
  v17[26] = *MEMORY[0x1E69E9840];
  if ((result[8] & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 40);
    {
      if (v3 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = result;
      v13 = a2;
      a2 = v13;
      result = v12;
      if (v3 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id)
      {
LABEL_4:
        v4 = *a2;
        v5 = *(v2 + 48);
        v6 = *(*a2 + 5);
        v8 = *(v6 + 40);
        v7 = *(v6 + 44);
        v15[10] = &v16;
        v15[11] = 0x800000000;
        v9 = *(((v6 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v8 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        *(v4 + 2) = v10;
        *(v4 + 3) = v10 + 32;
        v11 = *(v5 + 24);
        mlir::ValueRange::ValueRange(v17, 0, 0);
        mlir::ValueRange::ValueRange(v15, 0, 0);
        v14[0] = mlir::Builder::getFunctionType(v4, v17[0], v17[1], v15[0], v15[1]);
        mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,char const(&)[23],mlir::FunctionType>(v4, v11, "pdl_generated_rewriter", v14);
      }
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::ExitNode]";
  v6 = 83;
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::ExtractOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetUsersOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v16[38] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v16, a2, v11);
    mlir::pdl_interp::ForEachOp::build(a1, v16, *a3, *a4, *a5);
  }

  mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(v16, v15, v14);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(ZinIrHalH13g *a1, uint64_t a2)
{
  v13[38] = *MEMORY[0x1E69E9840];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(v13, v12, v11);
  }

  mlir::OperationState::OperationState(v13, a2, v5);
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v7 = mlir::OpBuilder::create(a1, v13);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v8;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetOperandOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetOperandsOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, size_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetAttributeOp::build(a1, v19, *a3, *a4, *a5, a5[1]);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
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