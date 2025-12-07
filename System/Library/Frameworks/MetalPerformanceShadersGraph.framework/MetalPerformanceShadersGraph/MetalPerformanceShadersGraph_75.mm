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
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::CheckAttributeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::CheckAttributeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::CheckAttributeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::CheckAttributeOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::getSpeculatability;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::getEffects;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
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
  *a1 = &unk_1F5B05788;
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
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
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
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
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::CheckAttributeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::CheckAttributeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::CheckAttributeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::CheckAttributeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::CheckAttributeOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getSpeculatability;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::AreEqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::AreEqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::AreEqualOp>,mlir::OpTrait::SameTypeOperands<mlir::pdl_interp::AreEqualOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getEffects;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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
            operator delete[](v15);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v16);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v17);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void OUTLINED_FUNCTION_51_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v4, a1 + 1, 16);
}

void OUTLINED_FUNCTION_75_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = 0x200000002;

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a12, v13, 3uLL, 16);
}

unint64_t *OUTLINED_FUNCTION_95_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return mlir::ValueRange::ValueRange(va, a12 + 32 * a13, a15 - a13);
}

void *OUTLINED_FUNCTION_111_1(llvm::raw_ostream *a1)
{

  return llvm::raw_ostream::write(a1, v1, 2uLL);
}

double mlir::createPDLToPDLInterpPass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x160uLL);
  v4[2] = "builtin.module";
  v4[3] = 14;
  *(v4 + 32) = 1;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  v4[22] = 0;
  v4[23] = v4 + 25;
  v4[24] = 0x400000000;
  v4[29] = v4 + 31;
  v4[30] = 0x400000000;
  v4[35] = 0;
  v4[36] = 0;
  v4[37] = 0x1000000000;
  v4[42] = 0;
  v4[43] = a1;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *v4 = &unk_1F5B04ED8;
  *a2 = v4;
  return result;
}

void anonymous namespace::PDLToPDLInterpPass::~PDLToPDLInterpPass(_anonymous_namespace_::PDLToPDLInterpPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  mlir::Pass::~Pass(this, a2, a3, a4);

  operator delete(v4);
}

void *mlir::impl::ConvertPDLToPDLInterpBase<anonymous namespace::PDLToPDLInterpPass>::getDependentDialects(int a1, uint64_t ***a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5B04F78;
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
  v55 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(&v2[8 * v2[10] + 18 + 4 * ((v2[11] >> 23) & 1)] + ((v2[11] >> 21) & 0x7F8));
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 5);
  Parent = mlir::Block::getParent(v4);
  Context = mlir::Region::getContext(Parent);
  v25[2] = v4;
  v25[3] = v5;
  v8 = *(v2 + 3);
  v25[0] = Context;
  v25[1] = 0;
  *&v34 = "matcher";
  *(&v34 + 1) = 7;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  mlir::ValueRange::ValueRange(&v29, &SingletonImpl, 1uLL);
  mlir::ValueRange::ValueRange(&p_SingletonImpl, 0, 0);
  FunctionType = mlir::Builder::getFunctionType(v25, v29, v30, p_SingletonImpl, v33);
  v10 = mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v25, v8, &v34, &FunctionType);
  v11 = *(v2 + 3);
  *&v34 = "rewriters";
  *(&v34 + 1) = 9;
  v12 = mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(v25, v11, &v34);
  v13 = *(this + 43);
  v34 = mlir::Attribute::getContext((v10 + 24));
  v35 = 0;
  v36 = 0;
  v37 = v10;
  v38 = v12;
  mlir::SymbolTable::SymbolTable(&v39, v12);
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v42 = 0;
  v43 = &v45;
  v44 = 0x800000000;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  v49 = 0;
  v48 = 0;
  v50 = 0;
  v51 = v53;
  v52 = 0;
  v53[2] = 0;
  v53[0] = v13;
  v53[1] = 0;
  v54 = 0;
  mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer(&SingletonImpl);
  v14 = mlir::Attribute::getContext((v2 + 6));
  p_SingletonImpl = &SingletonImpl;
  v33 = v14;
  v29 = v40;
  v30 = v42;
  v42 = &v29;
  v16 = *(v37 + 10);
  v15 = *(v37 + 11);
  *&v31 = 0;
  v17 = *((&v37[16 * ((v15 >> 23) & 1) + 71 + ((v15 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v16 + 8);
  if (v17)
  {
    v18 = v17 - 8;
  }

  else
  {
    v18 = 0;
  }

  FunctionType = 0;
  v27 = 0;
  FunctionType = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(&SingletonImpl, 0, 0, &FunctionType, &v27);
  v19 = **(v18 + 48);
  v20 = v42;
  v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v40, &FunctionType);
  v22 = v20[2];
  v23 = *v21;
  buffer = llvm::allocate_buffer(0x20uLL, 8uLL);
  buffer[2] = FunctionType;
  buffer[3] = v19;
  *buffer = v22;
  buffer[1] = v23;
  *v21 = buffer;
  v20[2] = buffer;
  mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(v2, &FunctionType, &p_SingletonImpl, v46);
}

void sub_1DFDB706C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (STACK[0x218] != a10)
  {
    free(STACK[0x218]);
  }

  llvm::deallocate_buffer(STACK[0x200], (8 * LODWORD(STACK[0x210])));
}

void sub_1DFDB70A8(int a1, int a2, int a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, llvm *a56, uint64_t a57, int a58, uint64_t a59, void *a60)
{
  if (a60 != a11)
  {
    free(a60);
  }

  llvm::deallocate_buffer(a56, (16 * a58));
}

double mlir::impl::ConvertPDLToPDLInterpBase<anonymous namespace::PDLToPDLInterpPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x160uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *v4 = &unk_1F5B04ED8;
  *(v4 + 1) = v5;
  v7 = *(a1 + 344);
  *(v4 + 42) = 0;
  *(v4 + 43) = v7;
  *a2 = v4;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B04F78;
  return result;
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

mlir::pdl_interp::PDLInterpDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::pdl_interp::PDLInterpDialect * mlir::MLIRContext::getOrLoadDialect<mlir::pdl_interp::PDLInterpDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::pdl_interp::PDLInterpDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::pdl_interp::PDLInterpDialect::PDLInterpDialect(v4, v3);
  *a2 = result;
  return result;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(mlir::OpBuilder *a1, uint64_t a2, size_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::FuncOp::build(a1, v17, *a3, a3[1], *a4, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(mlir::StringAttr **a1, uint64_t a2, __int128 *a3)
{
  v16[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(v16, &v14, v13);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  v14 = *a3;
  v15 = 1;
  mlir::ModuleOp::build(a1, v16, &v14);
  v9 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v10;
}

mlir::Block *anonymous namespace::PatternLowering::generateMatcher(_anonymous_namespace_::PatternLowering *this, mlir::pdl_to_pdl_interp::MatcherNode *a2, mlir::Region *a3, mlir::Block *a4)
{
  v4 = a4;
  v126 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v4 = operator new(0x48uLL);
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 4) = v4 + 32;
    *(v4 + 5) = v4 + 32;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    *(v4 + 6) = 0;
    llvm::ilist_traits<mlir::Block>::addNodeToList(a3, v4);
    v8 = *a3;
    *(v4 + 2) = a3;
    *(v4 + 1) = v8;
    *(v8 + 8) = v4 + 8;
    *a3 = v4 + 8;
  }

  v9 = *(this + 14);
  v112[0] = (this + 88);
  v112[1] = v9;
  *(this + 14) = v112;
  v112[2] = 0;
  v10 = *(a2 + 5);
  {
    if (v10 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_5;
    }

LABEL_90:
    *(this + 2) = v4;
    *(this + 3) = v4 + 32;
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(this, *(*(this + 4) + 24));
    goto LABEL_149;
  }

  if (v10 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_90;
  }

LABEL_5:
  v11 = *(a2 + 3);
  if (v11)
  {
    v13 = *(this + 32);
    if (v13 >= *(this + 33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(this + 120, this + 136, v13 + 1, 8);
      LODWORD(v13) = *(this + 32);
    }

    *(*(this + 15) + 8 * v13) = Matcher;
    ++*(this + 32);
    v111 = v4;
    v14 = *(a2 + 1);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = 0;
    v110 = 0;
    goto LABEL_19;
  }

  Matcher = *(*(this + 15) + 8 * *(this + 32) - 8);
  v111 = v4;
  v14 = *(a2 + 1);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_9:
  v110 = ValueAt;
  if (ValueAt && *(*(*(ValueAt + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 28, &v110, __src);
    if (v120 == 1)
    {
      v17 = v110;
      v18 = *(this + 64);
      if (v18 >= *(this + 65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 248, this + 264, v18 + 1, 8);
        LODWORD(v18) = *(this + 64);
      }

      *(*(this + 31) + 8 * v18) = v17;
      ++*(this + 64);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_19:
  v108 = a2;
  v109 = 0;
  v19 = *(a2 + 5);
  {
    if (v19 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0;
    }

    if (v19 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_24;
    }

LABEL_95:
    v103 = v16;
    *&v113 = v110;
    Loc = mlir::Value::getLoc(&v113);
    v68 = *(a2 + 2);
    v105 = *(a2 + 6);
    v107 = Loc;
    Parent = mlir::Block::getParent(v111);
    __src[0] = &v120;
    __src[1] = 0x600000000;
    if (*v68 == 21)
    {
      v72 = *(v68 + 32);
      if (v72)
      {
        v73 = *(v68 + 24);
        v74 = 8 * v72;
        do
        {
          v76 = LODWORD(__src[1]);
          if (LODWORD(__src[1]) >= HIDWORD(__src[1]))
          {
            v102 = v75;
            llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v120, LODWORD(__src[1]) + 1, 8);
            v75 = v102;
            v76 = LODWORD(__src[1]);
          }

          *(__src[0] + v76) = v75;
          ++LODWORD(__src[1]);
          ++v73;
          v74 -= 8;
        }

        while (v74);
      }
    }

    else if (*v68 == 20)
    {
      LODWORD(__src[1]) = 0;
      if (HIDWORD(__src[1]))
      {
        v71 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v120, 1uLL, 8);
        v71 = LODWORD(__src[1]);
      }

      *(__src[0] + v71) = v70;
      ++LODWORD(__src[1]);
    }

    v77 = operator new(0x48uLL);
    *v77 = 0u;
    v77[1] = 0u;
    *(v77 + 4) = v77 + 2;
    *(v77 + 5) = v77 + 2;
    *(v77 + 7) = 0;
    *(v77 + 8) = 0;
    *(v77 + 6) = 0;
    llvm::ilist_traits<mlir::Block>::addNodeToList(Parent, v77);
    v78 = *Parent;
    *(v77 + 2) = Parent;
    *(v77 + 1) = v78;
    *(v78 + 8) = v77 + 8;
    *Parent = v77 + 8;
    v117 = v77;
    v116 = *(*(this + 15) + 8 * *(this + 32) - 8);
    v79 = v111 + 32;
    *(this + 2) = v111;
    *(this + 3) = v79;
    v80 = *v68;
    if (*v68 > 17)
    {
      if ((v80 - 18) >= 2)
      {
        if (v80 == 20)
        {
          if (*v105 == 25)
          {
            v82 = &v117;
          }

          else
          {
            v82 = &v116;
          }

          if (*v105 == 25)
          {
            v83 = &v116;
          }

          else
          {
            v83 = &v117;
          }

          mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(this, v107, &v113, __src[0], v82, v83);
        }

        else
        {
          v124 = *(v68 + 40);
          v118 = *(v68 + 8);
          LOBYTE(v115) = *(v68 + 56);
          v84 = mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(this, v107, &v124, &v118, __src, &v115, &v117, &v116);
          *&v118 = v68;
          *(&v118 + 1) = v84;
          llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>(this + 34, &v118, &v118 + 1, &v124);
        }
      }

      else
      {
        LOBYTE(v124) = v80 == 18;
        mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(this, v107, &v113, v105 + 2, &v124, &v117, &v116);
      }

      v16 = v103;
    }

    else if (v80 > 14)
    {
      v16 = v103;
      if ((v80 - 16) >= 2)
      {
        mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(this, v107, &v113, v105 + 1, &v117, &v116);
      }

      else
      {
        LOBYTE(v124) = v80 == 16;
        mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(this, v107, &v113, v105 + 2, &v124, &v117, &v116);
      }
    }

    else
    {
      v16 = v103;
      if (v80 == 12)
      {
        mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(this, v107, &v113, &v117, &v116);
      }

      else if (v80 == 13)
      {
        *&v124 = *(*(v105 + 1) + 8);
        *&v124 = mlir::OpaqueAttr::getAttrData(&v124);
        *(&v124 + 1) = v81;
        mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(this, v107, &v113, &v124, &v117, &v116);
      }

      else if (*(*(*(v113 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v124 = *(v105 + 1);
        mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(this, v107, &v113, &v124, &v117, &v116);
      }

      else
      {
        *&v124 = *(v105 + 1);
        mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(this, v107, &v113, &v124, &v117, &v116);
      }
    }

    v63 = __src[0];
    if (__src[0] == &v120)
    {
      goto LABEL_132;
    }

LABEL_131:
    free(v63);
LABEL_132:
    v109 = 1;
    goto LABEL_133;
  }

  if (v19 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  if (v19 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_95;
  }

LABEL_24:
  v21 = *(v108 + 5);
  {
    if (v21 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_133;
    }

LABEL_26:
    v115 = v108;
    v116 = v110;
    v22 = *(v108 + 2);
    v101 = v111;
    v106 = mlir::Block::getParent(v111);
    v114 = *(*(this + 15) + 8 * *(this + 32) - 8);
    v104 = *v22;
    if ((*v22 & 0xFFFFFFFD) != 0x10)
    {
      v120 = 0;
      *__src = 0u;
      v121 = v123;
      v122 = 0;
      v26 = *(v115 + 20);
      if (v26)
      {
        v27 = (*(v115 + 9) + 8);
        v28 = 16 * v26;
        do
        {
          *&v113 = *(v27 - 1);
          *(&v113 + 1) = v29;
          *&v118 = v113;
          DWORD2(v118) = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(__src, &v118, &v118 + 2, &v124);
          if (v125[0] == 1)
          {
            v30 = v122;
            *(v124 + 8) = v122;
            v117 = (&v113 + 8);
            *&v118 = &v113;
            if (v30 < HIDWORD(v122))
            {
              *(v121 + v30) = v113;
              LODWORD(v122) = v30 + 1;
            }

            else
            {
              llvm::SmallVectorTemplateBase<std::pair<mlir::StringAttr,mlir::Attribute>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::StringAttr&&>,std::tuple<mlir::Attribute&&>>(&v121, &std::piecewise_construct, &v118, &v117);
            }
          }

          v27 += 2;
          v28 -= 16;
        }

        while (v28);
      }

      *(this + 2) = v101;
      *(this + 3) = v101 + 32;
      v31 = *v22;
      if (*v22 <= 14)
      {
        if (v31 == 13)
        {
          createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v116, v114, this, __src);
        }

        else if (*(*(*(v116 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v116, v114, this, __src);
        }

        else
        {
          createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v116, v114, this, __src);
        }
      }

      else if (v31 == 15)
      {
        createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(v116, v114, this, __src);
      }

      else if (v31 == 17)
      {
        createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v116, v114, this, __src);
      }

      else
      {
        createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v116, v114, this, __src);
      }

      if (v121 != v123)
      {
        free(v121);
      }

      llvm::deallocate_buffer(__src[0], (16 * v120));
    }

    v23 = *(v115 + 20);
    __src[0] = &v120;
    __src[1] = 0x1000000000;
    if (v23 < 0x11)
    {
      if (!v23)
      {
        v40 = 0;
        v25 = &v120;
LABEL_49:
        *&v124 = v125;
        *(&v124 + 1) = 0xC00000000;
        v41 = (v40 + v23);
        LODWORD(__src[1]) = v41;
        if (v41)
        {
          if (v25 == &v120)
          {
            v42 = v41;
            if (v41 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v125, v41, 4), v42 = __src[1], v25 = __src[0], LODWORD(__src[1])))
            {
              memcpy(v124, v25, 4 * v42);
              v25 = __src[0];
            }

            DWORD2(v124) = v41;
          }

          else
          {
            *&v124 = v25;
            *(&v124 + 1) = __PAIR64__(HIDWORD(__src[1]), v41);
            __src[0] = &v120;
            HIDWORD(__src[1]) = 0;
            v25 = &v120;
          }

          LODWORD(__src[1]) = 0;
        }

        if (v25 != &v120)
        {
          free(v25);
          LODWORD(v41) = DWORD2(v124);
        }

        __src[0] = &v115;
        v43 = 126 - 2 * __clz(v41);
        if (v41)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = v114;
        v46 = *(this + 32);
        if (v46 >= *(this + 33))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 120, this + 136, v46 + 1, 8);
          LODWORD(v46) = *(this + 32);
        }

        *(*(this + 15) + 8 * v46) = v45;
        ++*(this + 32);
        v47 = mlir::Value::getLoc(&v116);
        if (DWORD2(v124))
        {
          v48 = v47;
          v49 = v124;
          v50 = 4 * DWORD2(v124);
          do
          {
            v53 = (*(v115 + 9) + 16 * *v49);
            *&v118 = v54;
            mlir::ValueRange::ValueRange(__src, 0, 0);
            Block = mlir::OpBuilder::createBlock(this, v54, __src[0], __src[1], 0, 0);
            *(this + 2) = Block;
            *(this + 3) = Block + 2;
            LODWORD(__src[0]) = *(*v53 + 2);
            LOBYTE(v113) = 1;
            if (v104 == 16)
            {
              mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(this, v48, &v116, __src, &v113, &v118, &v114);
            }

            else
            {
              mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(this, v48, &v116, __src, &v113, &v118, &v114);
            }

            v51 = *(this + 15);
            v52 = *(this + 32);
            *(v51 + 8 * v52 - 8) = Block;
            ++v49;
            v50 -= 4;
          }

          while (v50);
        }

        else
        {
          v51 = *(this + 15);
          v52 = *(this + 32);
        }

        v56 = *(v51 + 8 * v52 - 8);
        *(this + 32) = v52 - 1;
        v57 = (v56 + 32);
        if (*(v56 + 4) != (v56 + 32) && v56 != v101)
        {
          v58 = (v101 + 32);
          v59 = *(v56 + 5);
          llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v101 + 32, v56 + 32, v59, v56 + 32);
          if (v59 != v57)
          {
            v60 = *v57;
            v61 = *v59;
            *(v61 + 8) = v57;
            *v57 = v61;
            v62 = *v58;
            *(v60 + 8) = v58;
            *v59 = v62;
            *(v62 + 8) = v59;
            *v58 = v60;
          }
        }

        mlir::Block::erase(v56);
        v63 = v124;
        if (v124 == v125)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      }

      v24 = 0;
      v25 = &v120;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v120, v23, 4);
      v24 = LODWORD(__src[1]);
      v25 = __src[0];
    }

    v32 = &v25[v24];
    if (v23 >= 8)
    {
      v33 = v23 & 0xFFFFFFF8;
      v34 = (v32 + 4 * v33);
      v35 = v32 + 1;
      v36 = xmmword_1E0970050;
      v37.i64[0] = 0x400000004;
      v37.i64[1] = 0x400000004;
      v38.i64[0] = 0x800000008;
      v38.i64[1] = 0x800000008;
      v39 = v33;
      do
      {
        v35[-1] = v36;
        *v35 = vaddq_s32(v36, v37);
        v36 = vaddq_s32(v36, v38);
        v35 += 2;
        v39 -= 8;
      }

      while (v39);
      if (v33 == v23)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v33 = 0;
      v34 = v32;
    }

    do
    {
      v34->i32[0] = v33;
      v34 = (v34 + 4);
      ++v33;
    }

    while (v23 != v33);
LABEL_48:
    v40 = __src[1];
    goto LABEL_49;
  }

  if (v21 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
  {
    goto LABEL_26;
  }

LABEL_133:
  __src[0] = this;
  __src[1] = &v111;
  v85 = *(this + 15) - 8;
  v86 = *(this + 32);
  if (*(v85 + 8 * v86) != Matcher)
  {
    do
    {
      LODWORD(v86) = v86 - 1;
    }

    while (*(v85 + 8 * v86) != Matcher);
    *(this + 32) = v86;
  }

  if (*(a2 + 3))
  {
    *(this + 32) = v86 - 1;
  }

  if (v16)
  {
    v87 = *(this + 60);
    if (v87)
    {
      v88 = *(this + 28);
      v89 = 0x9DDFEA08EB382D69 * ((8 * v110 - 0xAE502812AA7333) ^ HIDWORD(v110));
      v90 = 0x9DDFEA08EB382D69 * (HIDWORD(v110) ^ (v89 >> 47) ^ v89);
      LODWORD(v89) = -348639895 * ((v90 >> 47) ^ v90);
      v91 = v87 - 1;
      v92 = v89 & (v87 - 1);
      v93 = *(v88 + 8 * v92);
      if (v110 == v93)
      {
LABEL_141:
        *(v88 + 8 * v92) = -8192;
        *(this + 29) = vadd_s32(*(this + 232), 0x1FFFFFFFFLL);
        v94 = *(this + 31);
        v95 = *(this + 64);
        v96 = &v94[v95];
        if (v95)
        {
          v97 = 8 * v95;
          while (*v94 != v110)
          {
            ++v94;
            v97 -= 8;
            if (!v97)
            {
              v94 = v96;
              break;
            }
          }
        }

        v64 = v94 + 1;
        v65 = v96 - (v94 + 1);
        if (v96 != v94 + 1)
        {
          memmove(v94, v64, v65);
          LODWORD(v95) = *(this + 64);
        }

        *(this + 64) = v95 - 1;
      }

      else
      {
        v99 = 1;
        while (v93 != -4096)
        {
          v100 = v92 + v99++;
          v92 = v100 & v91;
          v93 = *(v88 + 8 * v92);
          if (v110 == v93)
          {
            goto LABEL_141;
          }
        }
      }
    }
  }

LABEL_149:
  llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v112, v64, v65, v66);
  return v4;
}

mlir::pdl_to_pdl_interp::PredicateUniquer *mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer(mlir::pdl_to_pdl_interp::PredicateUniquer *this)
{
  mlir::StorageUniquer::StorageUniquer(this);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::AttributePosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::ConstraintPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ForEachPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::ForEachPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::OperandPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::OperandGroupPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::OperationPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::ResultPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::ResultGroupPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::TypePosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::TypeLiteralPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UsersPosition,void>::resolveTypeID(void)::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::pdl_to_pdl_interp::UsersPosition>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v10);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id, 0, v2);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id, 0, v3);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id, 0, v4);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id, 0, v5);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::FalseAnswer,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::FalseAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::FalseAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TrueAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TrueAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id, 0, v6);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id, 0, v7);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::AttributeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::IsNotNullQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperationNameQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  {
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
  }

  v10 = 0;
  v11 = 0;
  v9 = &v10;
  mlir::StorageUniquer::registerSingletonImpl(this, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TypeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v9);
  return this;
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
  *Slow = &unk_1F5B05048;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F5B04FF8;
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
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)0>::~PredicateBase()
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v0);
}

char *mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(mlir::OpBuilder *a1, uint64_t a2)
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
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

uint64_t anonymous namespace::PatternLowering::getValueAt(_anonymous_namespace_::PatternLowering *this, mlir::Block **a2, mlir::pdl_to_pdl_interp::Position *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v63 = a3;
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
    v58 = 1;
    while (v10 != -4096)
    {
      v59 = v9 + v58++;
      v9 = v59 & (v8 - 1);
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
    v64 = 0;
    goto LABEL_5;
  }

  result = *(*(v6 + 16 * v9 + 8) + 24);
  v64 = result;
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

        AttrData = v35;
        if (v35)
        {
          v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(this, Loc, &AttrData);
        }

        else
        {
          v61 = v34;
          v17 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(this, Loc, &v61);
        }
      }

      else
      {
        if (v15 != 10)
        {
          v40 = (*(this + 15) + 8 * *(this + 32) - 8);
          LOBYTE(AttrData) = 1;
          v41 = mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(this, Loc, &ValueAt, v40, &AttrData);
          v42 = ((&v41[16 * ((*(v41 + 11) >> 23) & 1) + 71 + ((*(v41 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v41 + 10));
          v43 = v42[1];
          if (v43)
          {
            v44 = v43 - 8;
          }

          else
          {
            v44 = 0;
          }

          v64 = **(v44 + 48);
          mlir::ValueRange::ValueRange(&AttrData, 0, 0);
          Block = mlir::OpBuilder::createBlock(this, v42, 0, AttrData, v66, 0, 0);
          mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(this, v13);
          v46 = *(this + 32);
          if (v46 >= *(this + 33))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(this + 120, this + 136, v46 + 1, 8);
            LODWORD(v46) = *(this + 32);
          }

          *(*(this + 15) + 8 * v46) = Block;
          ++*(this + 32);
          v47 = *((&v41[16 * ((*(v41 + 11) >> 23) & 1) + 71 + ((*(v41 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v41 + 10) + 8);
          if (v47)
          {
            v48 = (v47 - 8);
          }

          else
          {
            v48 = 0;
          }

          *a2 = v48;
          goto LABEL_69;
        }

        v26 = ValueAt;
        if (*(*(*(ValueAt + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(a3 + 32) == 1)
        {
          LODWORD(AttrData) = 0;
          v26 = mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(this, Loc, &ValueAt, &AttrData) - 16;
        }

        v64 = v26;
        v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(this, v13, &v64);
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

      AttrData = SingletonImpl;
      v30 = *(a3 + 4);
      LODWORD(v61) = v30;
      BYTE4(v61) = BYTE4(v30);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(this, v13, &AttrData, &ValueAt, &v61);
    }

    else if (v15 == 7)
    {
      if (*(*(*(ValueAt + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
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

    goto LABEL_67;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v31 = mlir::MLIRContext::getTypeUniquer(*this);
      v32 = mlir::StorageUniquer::getSingletonImpl(v31, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
      v60 = *(a3 + 4);
      v61 = v32;
      AttrData = mlir::OpaqueAttr::getAttrData(&v60);
      v66 = v33;
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(this, v13, &v61, &ValueAt, &AttrData);
      goto LABEL_67;
    }

    if (v15 != 4)
    {
      v39 = mlir::MLIRContext::getTypeUniquer(*this);
      AttrData = mlir::StorageUniquer::getSingletonImpl(v39, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      LODWORD(v61) = *(a3 + 8);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(this, v13, &AttrData, &ValueAt, &v61);
      goto LABEL_67;
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
        goto LABEL_62;
      }

      v24 = 1;
      while (v23 != -4096)
      {
        v25 = v22 + v24++;
        v22 = v25 & (v20 - 1);
        v23 = *(v19 + 16 * v22);
        if (v23 == v21)
        {
          goto LABEL_62;
        }
      }
    }

    v22 = *(this + 72);
LABEL_62:
    v50 = *(v19 + 16 * v22 + 8);
    v51 = *(a3 + 8);
    if (v51 > 5)
    {
      v49 = v50 - 24 * (v51 - 5) - 96;
    }

    else
    {
      v49 = v50 - 16 * v51 - 16;
    }

    goto LABEL_68;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v16 = mlir::MLIRContext::getTypeUniquer(*this);
      AttrData = mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      LODWORD(v61) = *(a3 + 8);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(this, v13, &AttrData, &ValueAt, &v61);
    }

    else
    {
      v36 = mlir::MLIRContext::getTypeUniquer(*this);
      v37 = mlir::StorageUniquer::getSingletonImpl(v36, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      if (*(a3 + 40) == 1)
      {
        v37 = mlir::pdl::RangeType::get(v37);
      }

      AttrData = v37;
      v38 = *(a3 + 4);
      LODWORD(v61) = v38;
      BYTE4(v61) = BYTE4(v38);
      v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(this, v13, &AttrData, &ValueAt, &v61);
    }

    goto LABEL_67;
  }

  if (mlir::pdl_to_pdl_interp::OperationPosition::isOperandDefiningOp(a3))
  {
    v27 = mlir::MLIRContext::getTypeUniquer(*this);
    AttrData = mlir::StorageUniquer::getSingletonImpl(v27, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
    v17 = mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(this, v13, &AttrData, &ValueAt);
LABEL_67:
    v49 = (v17 - 16);
    goto LABEL_68;
  }

  v49 = ValueAt;
LABEL_68:
  v64 = v49;
LABEL_69:
  v52 = *(this + 14);
  v53 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v7, &v63);
  v54 = *(v52 + 16);
  v55 = *v53;
  buffer = llvm::allocate_buffer(0x20uLL, 8uLL);
  v57 = v64;
  buffer[2] = v63;
  buffer[3] = v57;
  *buffer = v54;
  buffer[1] = v55;
  *v53 = buffer;
  *(v52 + 16) = buffer;
  return v64;
}

_BYTE *llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>(_BYTE *result, mlir::MLIRContext ***a2)
{
  v277[24] = *MEMORY[0x1E69E9840];
  if ((result[8] & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 40);
    {
      if (v3 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id)
      {
LABEL_4:
        v4 = *a2;
        v5 = *(v2 + 48);
        v6 = (*a2)[5];
        v8 = *(v6 + 10);
        v7 = *(v6 + 11);
        v271[0] = &v272;
        v271[1] = 0x800000000;
        v257 = v5;
        v9 = *(((v6 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v8 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        v4[2] = v10;
        v4[3] = (v10 + 32);
        v11 = *(v5 + 24);
        mlir::ValueRange::ValueRange(&v275, 0, 0);
        mlir::ValueRange::ValueRange(&SingletonImpl, 0, 0);
        v265[0] = mlir::Builder::getFunctionType(v4, v275, v276, SingletonImpl, v268);
        v256 = mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,char const(&)[23],mlir::FunctionType>(v4, v11, "pdl_generated_rewriter", v265);
        mlir::SymbolTable::insert((v4 + 6), v256, 0);
        v12 = *(((v256 + 16 * ((*(v256 + 11) >> 23) & 1) + ((*(v256 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v256 + 10) + 8);
        if (v12)
        {
          v13 = v12 - 8;
        }

        else
        {
          v13 = 0;
        }

        v4[2] = v13;
        v4[3] = (v13 + 32);
        v253 = 0;
        v254 = 0;
        v255 = 0;
        *&v251 = &v253;
        *(&v251 + 1) = v4;
        *&v252 = v271;
        *(&v252 + 1) = &v256;
        mlir::pdl::PatternOp::getRewriter(&v257);
        v250 = v14;
        v15 = *(v14 + 44);
        v16 = v14 + 16 * ((v15 >> 23) & 1);
        v18 = *(v16 + 64);
        v17 = v16 + 64;
        v249 = v18;
        v248 = v4;
        if (v18)
        {
          v275 = v277;
          v276 = 0x600000000;
          ODSOperandIndexAndLength = mlir::memref::AllocOp::getODSOperandIndexAndLength(&v250, 0);
          if ((*(v250 + 46) & 0x80) != 0)
          {
            v20 = *(v250 + 72);
            v21 = ODSOperandIndexAndLength;
            if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v20 = 0;
            v21 = ODSOperandIndexAndLength;
            if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
            {
              goto LABEL_242;
            }
          }

          if (*(v20 + 32 * v21 + 24))
          {
            v22 = mlir::memref::AllocOp::getODSOperandIndexAndLength(&v250, 0);
            if ((*(v250 + 46) & 0x80) != 0)
            {
              v23 = *(v250 + 72);
              v24 = v22;
              if (HIDWORD(v22) + v22 == v22)
              {
LABEL_16:
                v25 = 0;
LABEL_239:
                v211 = v276;
                if (v276 >= HIDWORD(v276))
                {
                  v244 = v210;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v276 + 1, 8);
                  v210 = v244;
                  v4 = v248;
                  v211 = v276;
                }

                *(v275 + v211) = v210;
                LODWORD(v276) = v276 + 1;
                goto LABEL_242;
              }
            }

            else
            {
              v23 = 0;
              v24 = v22;
              if (HIDWORD(v22) + v22 == v22)
              {
                goto LABEL_16;
              }
            }

            v25 = *(v23 + 32 * v24 + 24);
            goto LABEL_239;
          }

LABEL_242:
          v212 = mlir::memref::AllocOp::getODSOperandIndexAndLength(&v250, 1u);
          if ((*(v250 + 46) & 0x80) != 0)
          {
            v213 = *(v250 + 72);
          }

          else
          {
            v213 = 0;
          }

          v214 = v212;
          v215 = (HIDWORD(v212) + v212);
          v216 = (v213 + 32 * v212);
          v217 = v215 - v212;
          v218 = v276;
          v219 = v217 + v276;
          if (v219 > HIDWORD(v276))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v219, 8);
            v218 = v276;
          }

          SingletonImpl = v216;
          v268 = 0;
          v269[0] = v251;
          v269[1] = v252;
          v270 = 1;
          if (v215 != v214)
          {
            v220 = (v275 + 8 * v218);
            v221 = v216 + 3;
            v222 = 1;
            v223 = v217;
            do
            {
              v224 = *v221;
              v221 += 4;
              v268 = v222++;
              --v223;
            }

            while (v223);
            v218 = v276;
          }

          LODWORD(v276) = v218 + v217;
          v225 = *(v250 + 24);
          mlir::ValueRange::ValueRange(&SingletonImpl, 0, 0);
          mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v4, v225, &SingletonImpl, &v249, &v275);
          if (v275 != v277)
          {
            free(v275);
          }

LABEL_252:
          v226 = *(((v256 + 16 * ((*(v256 + 11) >> 23) & 1) + ((*(v256 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v256 + 10) + 8);
          if (v226)
          {
            v227 = (v226 - 8);
          }

          else
          {
            v227 = 0;
          }

          ArgumentTypes = mlir::Block::getArgumentTypes(v227);
          v229 = ArgumentTypes;
          v231 = v230;
          v275 = v277;
          v276 = 0x800000000;
          v232 = v230 - ArgumentTypes;
          v233 = (v230 - ArgumentTypes) >> 3;
          if (v233 < 9)
          {
            v234 = 0;
            v235 = v277;
            if (v231 == ArgumentTypes)
            {
              goto LABEL_262;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v233, 8);
            v234 = v276;
            v235 = v275;
            if (v231 == v229)
            {
              goto LABEL_262;
            }
          }

          v236 = &v235[v234];
          do
          {
            v237 = *v229++;
            *v236++ = *(v237 + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v229 != v231);
          v234 = v276;
          v235 = v275;
LABEL_262:
          LODWORD(v276) = v234 + (v232 >> 3);
          mlir::ValueRange::ValueRange(&SingletonImpl, v235, v276);
          mlir::ValueRange::ValueRange(v265, 0, 0);
          FunctionType = mlir::Builder::getFunctionType(v4, SingletonImpl, v268, v265[0], v265[1]);
          v239 = v256;
          if (v256)
          {
            InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v256);
            mlir::function_interface_impl::setFunctionType(v239, InterfaceFor, FunctionType);
            v241 = v275;
            if (v275 == v277)
            {
              goto LABEL_265;
            }
          }

          else
          {
            mlir::function_interface_impl::setFunctionType(0, 0, FunctionType);
            v241 = v275;
            if (v275 == v277)
            {
LABEL_265:
              mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(v4, *(v250 + 24));
              v242 = *v4;
              v275 = mlir::SymbolRefAttr::get(v256, v243);
              mlir::SymbolRefAttr::get(v242, "rewriters", 9uLL, &v275, 1);
              llvm::deallocate_buffer(v253, (16 * v255));
            }
          }

          free(v241);
          goto LABEL_265;
        }

        v26 = *(((v17 + ((v15 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v14 + 40) + 8);
        if (v26)
        {
          v27 = v26 - 8;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27 + 32;
        v29 = *(v27 + 40);
        if (v29 == v27 + 32)
        {
          goto LABEL_252;
        }

        v247 = v27 + 32;
        while (1)
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v32 = *(*(v31 + 48) + 16);
          if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeRewriteOp,void>::id)
          {
            __p = v31;
            v275 = v277;
            v276 = 0x200000000;
            v38 = mlir::func::ReturnOp::getODSOperandIndexAndLength(&__p, 0);
            v39 = __p;
            if ((*(__p + 46) & 0x80) != 0)
            {
              v40 = *(__p + 9);
              v41 = v38;
              v42 = (HIDWORD(v38) + v38);
              v43 = v42 - v38;
              if (v42 != v38)
              {
LABEL_38:
                v44 = (v40 + 32 * v41 + 24);
                do
                {
                  v46 = v276;
                  if (v276 >= HIDWORD(v276))
                  {
                    v47 = v45;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v276 + 1, 8);
                    v45 = v47;
                    v4 = v248;
                    v46 = v276;
                  }

                  *(v275 + v46) = v45;
                  LODWORD(v276) = v276 + 1;
                  v44 += 4;
                  --v43;
                }

                while (v43);
                v39 = __p;
              }
            }

            else
            {
              v40 = 0;
              v41 = v38;
              v186 = (HIDWORD(v38) + v38);
              v43 = v186 - v38;
              if (v186 != v38)
              {
                goto LABEL_38;
              }
            }

            v51 = v39[3];
            v52 = *(v39 + 9);
            v53 = (v39 - 2);
            if (!v52)
            {
              v53 = 0;
            }

            v265[0] = v53;
            v265[1] = v52;
            mlir::OperandRange::getTypes(&SingletonImpl, v265);
            v273[0] = *(__p + 2 * ((*(__p + 11) >> 23) & 1) + 8);
            v265[0] = mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::StringAttr,llvm::SmallVector<mlir::Value,2u> &>(v4, v51, &SingletonImpl, v273, &v275);
            ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&__p, 0);
            v55 = ODSResultIndexAndLength;
            if (*(__p + 9))
            {
              NextResultAtOffset = __p - 16;
            }

            else
            {
              NextResultAtOffset = 0;
            }

            if (ODSResultIndexAndLength)
            {
              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
            }

            v57 = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(v265, 0);
            v58 = v57;
            if (*(v265[0] + 9))
            {
              v59 = v265[0] - 16;
            }

            else
            {
              v59 = 0;
            }

            v60 = v57;
            if (v57)
            {
              v59 = mlir::detail::OpResultImpl::getNextResultAtOffset(v59, v57);
            }

            v61 = (HIDWORD(v55) + v55);
            if (v61 == v55 || (v62 = (HIDWORD(v58) + v58), v62 == v58))
            {
LABEL_100:
              if (v275 != v277)
              {
                free(v275);
              }

              v28 = v247;
              goto LABEL_23;
            }

            v63 = 0;
            v64 = v61 - v55;
            v65 = v62 - v60;
            while (2)
            {
              v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v63);
              v67 = mlir::detail::OpResultImpl::getNextResultAtOffset(v59, v63);
              v68 = v255;
              if (v255)
              {
                v69 = 0x9DDFEA08EB382D69 * ((8 * v66 - 0xAE502812AA7333) ^ HIDWORD(v66));
                v70 = 0x9DDFEA08EB382D69 * (HIDWORD(v66) ^ (v69 >> 47) ^ v69);
                v71 = v255 - 1;
                v72 = (-348639895 * ((v70 >> 47) ^ v70)) & (v255 - 1);
                v73 = v253 + 16 * v72;
                v74 = *v73;
                if (v66 != *v73)
                {
                  v75 = 0;
                  v76 = 1;
                  while (v74 != -4096)
                  {
                    if (v75)
                    {
                      v77 = 0;
                    }

                    else
                    {
                      v77 = v74 == -8192;
                    }

                    if (v77)
                    {
                      v75 = v73;
                    }

                    v78 = v72 + v76++;
                    v72 = v78 & v71;
                    v73 = v253 + 16 * (v78 & v71);
                    v74 = *v73;
                    if (v66 == *v73)
                    {
                      goto LABEL_76;
                    }
                  }

                  if (v75)
                  {
                    v73 = v75;
                  }

                  if (4 * v254 + 4 >= 3 * v255)
                  {
                    break;
                  }

                  if (v255 + ~v254 - HIDWORD(v254) > v255 >> 3)
                  {
                    LODWORD(v254) = v254 + 1;
                    if (*v73 != -4096)
                    {
                      goto LABEL_74;
                    }

                    goto LABEL_75;
                  }

LABEL_83:
                  llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(&v253, v68);
                  if (v255)
                  {
                    v79 = 0x9DDFEA08EB382D69 * ((8 * v66 - 0xAE502812AA7333) ^ HIDWORD(v66));
                    v80 = 0x9DDFEA08EB382D69 * (HIDWORD(v66) ^ (v79 >> 47) ^ v79);
                    LODWORD(v79) = -348639895 * ((v80 >> 47) ^ v80);
                    v81 = v255 - 1;
                    v82 = (v255 - 1) & v79;
                    v73 = v253 + 16 * v82;
                    v83 = *v73;
                    if (v66 != *v73)
                    {
                      v84 = 0;
                      v85 = 1;
                      while (v83 != -4096)
                      {
                        if (v84)
                        {
                          v86 = 0;
                        }

                        else
                        {
                          v86 = v83 == -8192;
                        }

                        if (v86)
                        {
                          v84 = v73;
                        }

                        v87 = v82 + v85++;
                        v82 = v87 & v81;
                        v73 = v253 + 16 * (v87 & v81);
                        v83 = *v73;
                        v4 = v248;
                        if (v66 == *v73)
                        {
                          goto LABEL_95;
                        }
                      }

                      if (v84)
                      {
                        v73 = v84;
                      }

                      v4 = v248;
                    }
                  }

                  else
                  {
                    v73 = 0;
                  }

LABEL_95:
                  LODWORD(v254) = v254 + 1;
                  if (*v73 != -4096)
                  {
LABEL_74:
                    --HIDWORD(v254);
                  }

LABEL_75:
                  *v73 = v66;
                  *(v73 + 1) = 0;
                }

LABEL_76:
                *(v73 + 1) = v67;
                if (++v63 == v64 || v63 == v65)
                {
                  goto LABEL_100;
                }

                continue;
              }

              break;
            }

            v68 = 2 * v255;
            goto LABEL_83;
          }

          if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
          {
            v48 = *(v31 + 24);
            v275 = *(v31 + 16 * ((*(v31 + 44) >> 23) & 1) + 64);
            v49 = v31;
            v35 = mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v248, v48, &v275) - 16;
            v50 = (v49 - 16);
            v4 = v248;
            v275 = v50;
            p_SingletonImpl = &v275;
LABEL_44:
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v253, p_SingletonImpl) = v35;
            goto LABEL_23;
          }

          if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::EraseOp,void>::id)
          {
            v30 = *(v31 + 24);
            mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(v4, v30, &v275);
            goto LABEL_23;
          }

          if (v32 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
          {
            if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeOp,void>::id)
            {
              SingletonImpl = v31;
              v275 = v277;
              v276 = 0x400000000;
              v103 = mlir::func::ReturnOp::getODSOperandIndexAndLength(&SingletonImpl, 0);
              v104 = SingletonImpl;
              if ((*(SingletonImpl + 46) & 0x80) != 0)
              {
                v105 = *(SingletonImpl + 9);
                v106 = v103;
                v107 = (HIDWORD(v103) + v103);
                v108 = v107 - v103;
                if (v107 != v103)
                {
LABEL_114:
                  v109 = (v105 + 32 * v106 + 24);
                  do
                  {
                    v111 = v276;
                    if (v276 >= HIDWORD(v276))
                    {
                      v112 = v110;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v276 + 1, 8);
                      v110 = v112;
                      v4 = v248;
                      v111 = v276;
                    }

                    *(v275 + v111) = v110;
                    LODWORD(v276) = v276 + 1;
                    v109 += 4;
                    --v108;
                  }

                  while (v108);
                  v104 = SingletonImpl;
                }
              }

              else
              {
                v105 = 0;
                v106 = v103;
                v193 = (HIDWORD(v103) + v103);
                v108 = v193 - v103;
                if (v193 != v103)
                {
                  goto LABEL_114;
                }
              }

              v140 = v104[3];
              v265[0] = (*(v104 - 1) & 0xFFFFFFFFFFFFFFF8);
              v141 = mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(v4, v140, v265, &v275) - 16;
              __p = SingletonImpl - 16;
              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v253, &__p) = v141;
              if (v275 != v277)
              {
                free(v275);
              }

              v4 = v248;
              goto LABEL_23;
            }

            if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::ReplaceOp,void>::id)
            {
              SingletonImpl = v31;
              v275 = v277;
              v276 = 0x400000000;
              v131 = mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(&SingletonImpl, 1u);
              if ((*(SingletonImpl + 46) & 0x80) != 0)
              {
                v132 = *(SingletonImpl + 9);
                v133 = v131;
                if (HIDWORD(v131) + v131 != v131)
                {
                  goto LABEL_139;
                }

LABEL_221:
                v194 = mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(&SingletonImpl, 2u);
                if ((*(SingletonImpl + 46) & 0x80) != 0)
                {
                  v195 = *(SingletonImpl + 9);
                  v196 = v194;
                  v197 = (HIDWORD(v194) + v194);
                  v198 = v197 - v194;
                  if (v197 == v194)
                  {
                    goto LABEL_223;
                  }

LABEL_230:
                  v204 = (v195 + 32 * v196 + 24);
                  do
                  {
                    v206 = v276;
                    if (v276 >= HIDWORD(v276))
                    {
                      v207 = v205;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v276 + 1, 8);
                      v205 = v207;
                      v4 = v248;
                      v206 = v276;
                    }

                    *(v275 + v206) = v205;
                    v199 = v276 + 1;
                    LODWORD(v276) = v276 + 1;
                    v204 += 4;
                    --v198;
                  }

                  while (v198);
LABEL_224:
                  v200 = *(SingletonImpl + 3);
                  if (v199)
                  {
                    v201 = mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(&SingletonImpl, 0);
                    mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(v4, v200, v265, &v275);
                  }

                  else
                  {
                    v202 = mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(&SingletonImpl, 0);
                    mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(v4, v200, v265);
                  }

                  v178 = v275;
                  if (v275 == v277)
                  {
                    goto LABEL_23;
                  }

LABEL_228:
                  free(v178);
                  goto LABEL_23;
                }

                v195 = 0;
                v196 = v194;
                v203 = (HIDWORD(v194) + v194);
                v198 = v203 - v194;
                if (v203 != v194)
                {
                  goto LABEL_230;
                }

LABEL_223:
                v199 = v276;
                goto LABEL_224;
              }

              v132 = 0;
              v133 = v131;
              if (HIDWORD(v131) + v131 == v131)
              {
                goto LABEL_221;
              }

LABEL_139:
              v265[0] = *(v132 + 32 * v133 + 24);
              if (!v265[0])
              {
                goto LABEL_221;
              }

              v134 = mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(&SingletonImpl, 0);
              v273[0] = *(*(SingletonImpl + 9) + 32 * v134 + 24);
              DefiningOp = mlir::Value::getDefiningOp(v273);
              if (DefiningOp)
              {
                v136 = *(*(DefiningOp + 48) + 16);
                v137 = v136 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id;
                if (v136 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
                {
                  v138 = DefiningOp;
                }

                else
                {
                  v138 = 0;
                }

                __p = v138;
                if (v137)
                {
                  v139 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&__p, 2u);
                  if (HIDWORD(v139) + v139 == v139)
                  {
                    goto LABEL_223;
                  }
                }
              }

              else
              {
                __p = 0;
              }

              Loc = mlir::Value::getLoc(v265);
              v184 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(v4, Loc, v273);
              v185 = v276;
              if (v276 >= HIDWORD(v276))
              {
                v208 = v184;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, v277, v276 + 1, 8);
                v184 = v208;
                v4 = v248;
                v185 = v276;
              }

              *(v275 + v185) = v184 - 16;
              LODWORD(v276) = v276 + 1;
              goto LABEL_223;
            }

            if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
            {
              v275 = v31;
              v142 = *(v31 + 24);
              v143 = *v4;
              v144 = v31;
              TypeUniquer = mlir::MLIRContext::getTypeUniquer(v143);
              SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
              LODWORD(v273[0]) = mlir::pdl::ResultOp::getIndex(&v275);
              v146 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v248, v142, &SingletonImpl, v265, v273) - 16;
              __p = v275 - 16;
              p_p = &__p;
LABEL_198:
              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v253, p_p) = v146;
              v4 = v248;
              goto LABEL_23;
            }

            if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
            {
              v275 = v31;
              v179 = *(v31 + 24);
              SingletonImpl = (*(v31 - 8) & 0xFFFFFFFFFFFFFFF8);
              Index = mlir::pdl::ResultsOp::getIndex(&v275);
              LODWORD(__p) = Index;
              BYTE4(__p) = BYTE4(Index);
              v146 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v4, v179, &SingletonImpl, v265, &__p) - 16;
              v273[0] = v275 - 16;
              p_p = v273;
              goto LABEL_198;
            }

            if (v32 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
            {
              v275 = *(v31 + 16 * ((*(v31 + 44) >> 23) & 1) + 64);
              if (!v275)
              {
                goto LABEL_23;
              }

              v181 = v31;
              v35 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v248, *(v31 + 24), &v275) - 16;
              v182 = (v181 - 16);
              v4 = v248;
              SingletonImpl = v182;
              p_SingletonImpl = &SingletonImpl;
            }

            else
            {
              if (v32 != &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
              {
                goto LABEL_23;
              }

              v275 = *(v31 + 16 * ((*(v31 + 44) >> 23) & 1) + 64);
              if (!v275)
              {
                goto LABEL_23;
              }

              v33 = *(v31 + 24);
              SingletonImpl = (*(v31 - 8) & 0xFFFFFFFFFFFFFFF8);
              v34 = v31;
              v35 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(v248, v33, &SingletonImpl, &v275) - 16;
              v36 = (v34 - 16);
              v4 = v248;
              v265[0] = v36;
              p_SingletonImpl = v265;
            }

            goto LABEL_44;
          }

          v260 = v31;
          SingletonImpl = v269;
          v268 = 0x400000000;
          v88 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v260, 0);
          if ((*(v260 + 46) & 0x80) != 0)
          {
            v89 = *(v260 + 72);
            v90 = v88;
            v91 = (HIDWORD(v88) + v88);
            v92 = v91 - v88;
            if (v91 == v88)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v89 = 0;
            v90 = v88;
            v187 = (HIDWORD(v88) + v88);
            v92 = v187 - v88;
            if (v187 == v88)
            {
              goto LABEL_105;
            }
          }

          v188 = (v89 + 32 * v90 + 24);
          do
          {
            v190 = v268;
            if (v268 >= HIDWORD(v268))
            {
              v191 = v189;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&SingletonImpl, v269, v268 + 1, 8);
              v189 = v191;
              v4 = v248;
              v190 = v268;
            }

            *(SingletonImpl + v190) = v189;
            LODWORD(v268) = v268 + 1;
            v188 += 4;
            --v92;
          }

          while (v92);
LABEL_105:
          v265[0] = &v266;
          v265[1] = 0x400000000;
          v93 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v260, 1u);
          v94 = v260;
          if ((*(v260 + 46) & 0x80) != 0)
          {
            v95 = *(v260 + 72);
            v96 = v93;
            v97 = (HIDWORD(v93) + v93);
            v98 = v97 - v93;
            if (v97 == v93)
            {
              goto LABEL_119;
            }
          }

          else
          {
            v95 = 0;
            v96 = v93;
            v192 = (HIDWORD(v93) + v93);
            v98 = v192 - v93;
            if (v192 == v93)
            {
              goto LABEL_119;
            }
          }

          v99 = (v95 + 32 * v96 + 24);
          do
          {
            v101 = LODWORD(v265[1]);
            if (LODWORD(v265[1]) >= HIDWORD(v265[1]))
            {
              v102 = v100;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v265, &v266, LODWORD(v265[1]) + 1, 8);
              v100 = v102;
              v4 = v248;
              v101 = LODWORD(v265[1]);
            }

            *(v265[0] + v101) = v100;
            ++LODWORD(v265[1]);
            v99 += 4;
            --v98;
          }

          while (v98);
          v94 = v260;
LABEL_119:
          v259 = 0;
          v273[0] = v274;
          v273[1] = 0x200000000;
          AttributeValueNames = v94;
          v113 = *(v94 + 2);
          v114 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&AttributeValueNames, 2u);
          if ((*(AttributeValueNames + 46) & 0x80) != 0)
          {
            v115 = *(AttributeValueNames + 9);
            v116 = v114;
            v117 = (HIDWORD(v114) + v114);
            v118 = v117 - v114;
            if (v117 == v114)
            {
              goto LABEL_153;
            }

LABEL_121:
            if (v118 > HIDWORD(v273[1]))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v273, v274, v118, 8);
            }

            v119 = 0;
            v120 = v115 + 32 * v116;
            while (2)
            {
              v121 = *(v120 + 32 * v119 + 24);
              v275 = v121;
              if (v255)
              {
                v122 = 0x9DDFEA08EB382D69 * ((8 * v121 - 0xAE502812AA7333) ^ HIDWORD(v121));
                v123 = 0x9DDFEA08EB382D69 * (HIDWORD(v121) ^ (v122 >> 47) ^ v122);
                v124 = (-348639895 * ((v123 >> 47) ^ v123)) & (v255 - 1);
                v125 = *(v253 + 2 * v124);
                if (v121 == v125)
                {
LABEL_126:
                  v126 = *(v253 + 2 * v124 + 1);
                  if (!v126)
                  {
                    break;
                  }

LABEL_129:
                  v127 = LODWORD(v273[1]);
                  if (LODWORD(v273[1]) >= HIDWORD(v273[1]))
                  {
                    v128 = v126;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v273, v274, LODWORD(v273[1]) + 1, 8);
                    v126 = v128;
                    v4 = v248;
                    v127 = LODWORD(v273[1]);
                  }

                  *(v273[0] + v127) = v126;
                  ++LODWORD(v273[1]);
                  if (++v119 == v118)
                  {
                    goto LABEL_171;
                  }

                  continue;
                }

                v129 = 1;
                while (v125 != -4096)
                {
                  v130 = v124 + v129++;
                  v124 = v130 & (v255 - 1);
                  v125 = *(v253 + 2 * v124);
                  if (v121 == v125)
                  {
                    goto LABEL_126;
                  }
                }
              }

              break;
            }

            if (*(mlir::Value::getDefiningOp(&v275) + 16) == v113)
            {
              LODWORD(v273[1]) = 0;
              goto LABEL_153;
            }

            goto LABEL_129;
          }

          v115 = 0;
          v116 = v114;
          v117 = (HIDWORD(v114) + v114);
          v118 = v117 - v114;
          if (v117 != v114)
          {
            goto LABEL_121;
          }

LABEL_153:
          if (mlir::pdl::OperationOp::hasTypeInference(&AttributeValueNames))
          {
            v259 = 1;
          }

          else
          {
            if (*(AttributeValueNames + 9))
            {
              v148 = AttributeValueNames - 16;
            }

            else
            {
              v148 = 0;
            }

            v149 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v148, 0);
            if (v149)
            {
              while (1)
              {
                v150 = *(v149 + 2);
                if (*(v150[6] + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::ReplaceOp,void>::id)
                {
                  v150 = 0;
                }

                v275 = v150;
                if (v150)
                {
                  if (mlir::OpOperand::getOperandNumber(v149))
                  {
                    v151 = mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(&v275, 0);
                    __p = *(*(v275 + 9) + 32 * v151 + 24);
                    v152 = mlir::Value::getDefiningOp(&__p);
                    v153 = v152;
                    if (*(v152 + 16) != v113 || mlir::Operation::isBeforeInBlock(v152, AttributeValueNames))
                    {
                      break;
                    }
                  }
                }

                v149 = *v149;
                if (!v149)
                {
                  goto LABEL_159;
                }
              }

              v154 = *(v153 + 24);
              v263 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(v4, v154, &v262) - 16;
              v155 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v4, *(v153 + 24), &v263);
              v156 = LODWORD(v273[1]);
              if (LODWORD(v273[1]) >= HIDWORD(v273[1]))
              {
                v209 = v155;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v273, v274, LODWORD(v273[1]) + 1, 8);
                v155 = v209;
                v4 = v248;
                v156 = LODWORD(v273[1]);
              }

              *(v273[0] + v156) = v155 - 16;
              ++LODWORD(v273[1]);
            }

            else
            {
LABEL_159:
              if (v117 != v116)
              {
              }
            }
          }

LABEL_171:
          v157 = *(v260 + 24);
          mlir::pdl::OperationOp::getOpName(&v275, &v260);
          AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&v260);
          v158 = mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(v4, v157, &v275, v273, &v259, &SingletonImpl, v265, &AttributeValueNames) - 16;
          __p = v158;
          if (*(v260 + 36))
          {
            v159 = v260 - 16;
          }

          else
          {
            v159 = 0;
          }

          v275 = mlir::detail::OpResultImpl::getNextResultAtOffset(v159, 0);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v253, &v275) = v158;
          v160 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v260, 2u);
          if ((*(v260 + 46) & 0x80) != 0)
          {
            v161 = *(v260 + 72);
          }

          else
          {
            v161 = 0;
          }

          v162 = v160;
          v163 = (HIDWORD(v160) + v160);
          v164 = v161 + 32 * v160;
          v165 = (v163 - v160);
          v4 = v248;
          if (v165 == 1 && *(*(*(*(v164 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
          {
            v275 = *(v164 + 24);
            v176 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v253, &v275);
            if (!*v176)
            {
              v177 = v176;
              v275 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(v248, v157, &__p);
              *v177 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::GetResultsOp &>(v248, v157, &v275) - 16;
            }
          }

          else
          {
            v166 = mlir::MLIRContext::getTypeUniquer(*v248);
            AttributeValueNames = mlir::StorageUniquer::getSingletonImpl(v166, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
            v263 = mlir::pdl::RangeType::get(AttributeValueNames);
            if (v163 != v162)
            {
              v167 = 0;
              v168 = 0;
              v169 = (v164 + 24);
              do
              {
                v171 = *v169;
                v275 = v168;
                v276 = v171;
                v172 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v253, &v276);
                if (!*v172)
                {
                  v173 = v172;
                  v174 = *(*(*(v276 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
                  v167 |= v174 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
                  v262 = 0;
                  if (v167)
                  {
                    if (v174 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
                    {
                      p_AttributeValueNames = &v263;
                    }

                    else
                    {
                      p_AttributeValueNames = &AttributeValueNames;
                    }

                    v258 = v275;
                    v170 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type &,mlir::Value &,unsigned long>(v248, v157, p_AttributeValueNames, &__p, &v258);
                  }

                  else
                  {
                    v258 = v275;
                    v170 = mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v248, v157, &AttributeValueNames, &__p, &v258);
                  }

                  v262 = v170 - 16;
                  *v173 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v248, v157, &v262) - 16;
                }

                ++v168;
                v169 += 4;
              }

              while (v165 != v168);
            }
          }

          if (v273[0] != v274)
          {
            free(v273[0]);
          }

          if (v265[0] != &v266)
          {
            free(v265[0]);
          }

          v178 = SingletonImpl;
          if (SingletonImpl != v269)
          {
            goto LABEL_228;
          }

LABEL_23:
          v29 = *(v29 + 8);
          if (v29 == v28)
          {
            goto LABEL_252;
          }
        }
      }
    }

    else
    {
      v245 = result;
      v246 = a2;
      a2 = v246;
      result = v245;
      if (v3 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::ForEachOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(mlir::OpBuilder *a1, uint64_t a2)
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
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, size_t *a5)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetAttributeTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetValueTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultsOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateAttributeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateTypesOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
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

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::BoolNode]";
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