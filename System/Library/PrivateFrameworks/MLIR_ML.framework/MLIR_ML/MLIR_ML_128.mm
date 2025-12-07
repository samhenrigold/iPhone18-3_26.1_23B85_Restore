uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::foldHook()
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v6);
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v5 = v6[0];
      if ((v7 & 2) != 0)
      {
        v5 = v6;
      }

      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v1, v2, v3, v4);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::hasTrait()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::printAssembly()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::verifyInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1702060387 ? (v7 = *(a3 + 4) == 115) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v11);
  if (v8 == 5 && *result == 1702060387 && *(result + 4) == 115)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    *(v10 + 64) = 0;
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "cases", 5uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::scf::IndexSwitchOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::scf::IndexSwitchOp>,mlir::OpTrait::VariadicResults<mlir::scf::IndexSwitchOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::IndexSwitchOp>,mlir::OpTrait::OneOperand<mlir::scf::IndexSwitchOp>,mlir::OpTrait::SingleBlock<mlir::scf::IndexSwitchOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IndexSwitchOp>,mlir::OpTrait::OpInvariants<mlir::scf::IndexSwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::scf::IndexSwitchOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::IndexSwitchOp>,mlir::RegionBranchOpInterface::Trait<mlir::scf::IndexSwitchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::writeProperties;
  {
    v4 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::areTypesCompatible;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::IfOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AtLeastNRegions<1>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::scf::IndexSwitchOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, uint64_t a2, unsigned int a3)
{
  if ((mlir::OpTrait::impl::verifyAtLeastNRegions(a1, 1) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::IfOp>::verifyTrait(a1))
  {
    v7 = a1;
    if (mlir::scf::IndexSwitchOp::verifyInvariantsImpl(&v7))
    {
      v7 = a1;
      mlir::scf::IndexSwitchOp::verify(&v7);
    }
  }

  return 0;
}

uint64_t mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1)
{
  if (mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::verifyRegionTrait(a1))
  {
    return mlir::detail::verifyTypesAlongControlFlowEdges(a1, v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::hasTrait()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::printAssembly()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::verifyInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 != 19)
  {
    if (a4 != 21)
    {
      return 0;
    }

    v6 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    if (!v6 || *(a3 + 13) != 0x73657A69735F746ELL)
    {
      return 0;
    }

LABEL_19:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (*a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765 && *(a3 + 11) == 0x73657A6953746E65)
  {
    goto LABEL_19;
  }

  return 0;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v8);
  mlir::scf::ParallelOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;

  mlir::scf::ParallelOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = __ROR8__(v2 + 16, 16);
  v4 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 47))) ^ v2) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((-348639895 * ((-348639895 * (v3 ^ (((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 32) >> 15) ^ (-348639895 * (*a2 ^ 0xED558CCD ^ v3)))) ^ (((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 32) >> 15))) ^ v2) + 8) ^ v4);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::ParallelOp>,mlir::OpTrait::VariadicResults<mlir::scf::ParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ParallelOp>,mlir::OpTrait::VariadicOperands<mlir::scf::ParallelOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::scf::ParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::ParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::ParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::scf::ParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::scf::ParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::scf::ParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::ParallelOp>,mlir::RegionBranchOpInterface::Trait<mlir::scf::ParallelOp>,mlir::OpTrait::HasParallelRegion<mlir::scf::ParallelOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::writeProperties;
  {
    v4 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>>(a1);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    mlir::Attribute::getContext((a2 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 4);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
  v3 = v2;
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::replaceWithAdditionalYields;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::isDefinedOutsideOfLoop(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v6 = a3;
  v4 = *(mlir::Value::getParentRegion(&v6) + 2);
  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return mlir::Operation::isProperAncestor(a2, v4) ^ 1;
  }
}

double mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopRegions@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[2] = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::areTypesCompatible;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::IfOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::scf::ParallelOp::getSuccessorRegions(&v6, a2, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::scf::ParallelOp::getSuccessorRegions(&v5, a2, a4).n128_u64[0];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v7 = *a5 + 12 * v6;
    v8 = *(a2 + 44) & 0x7FFFFF;
    do
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 12;
      --v8;
    }

    while (v8);
    LODWORD(v6) = *(a5 + 8);
  }

  *(a5 + 8) = v6 + v5;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v108 = v1;
  v122 = a1;
  v83 = v3;
  v95 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  v109 = v1;
  v123 = a1;
  v84 = v3;
  v96 = v2;
  v73 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  v110 = v1;
  v124 = a1;
  v85 = v3;
  v97 = v2;
  v64 = v5;
  v74 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v5 = v64;
  v4 = v74;
  v3 = v85;
  v2 = v97;
  v1 = v110;
  a1 = v124;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v111 = v1;
  v125 = a1;
  v86 = v3;
  v98 = v2;
  v65 = v5;
  v75 = v4;
  v56 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v112 = v1;
  v126 = a1;
  v87 = v3;
  v99 = v2;
  v66 = v5;
  v76 = v4;
  v49 = v7;
  v57 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v113 = v1;
  v127 = a1;
  v88 = v3;
  v100 = v2;
  v67 = v5;
  v77 = v4;
  v50 = v7;
  v58 = v6;
  v43 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_67:
  v114 = v1;
  v128 = a1;
  v89 = v3;
  v101 = v2;
  v68 = v5;
  v78 = v4;
  v51 = v7;
  v59 = v6;
  v38 = v9;
  v44 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::CallableOpInterface::Trait,mlir::SymbolOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v9 = v38;
  v8 = v44;
  v7 = v51;
  v6 = v59;
  v5 = v68;
  v4 = v78;
  v3 = v89;
  v2 = v101;
  v1 = v114;
  a1 = v128;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_68:
  v115 = v1;
  v129 = a1;
  v90 = v3;
  v102 = v2;
  v69 = v5;
  v79 = v4;
  v52 = v7;
  v60 = v6;
  v39 = v9;
  v45 = v8;
  v34 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v10 = v34;
  v9 = v39;
  v8 = v45;
  v7 = v52;
  v6 = v60;
  v5 = v69;
  v4 = v79;
  v3 = v90;
  v2 = v102;
  v1 = v115;
  a1 = v129;
  v11 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

LABEL_70:
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
    v13 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_71;
  }

LABEL_69:
  v116 = v1;
  v130 = a1;
  v91 = v3;
  v103 = v2;
  v70 = v5;
  v80 = v4;
  v53 = v7;
  v61 = v6;
  v40 = v9;
  v46 = v8;
  v31 = v11;
  v35 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v11 = v31;
  v10 = v35;
  v9 = v40;
  v8 = v46;
  v7 = v53;
  v6 = v61;
  v5 = v70;
  v4 = v80;
  v3 = v91;
  v2 = v103;
  v1 = v116;
  a1 = v130;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_71:
  v118 = v1;
  v132 = a1;
  v93 = v3;
  v105 = v2;
  v72 = v5;
  v82 = v4;
  v55 = v7;
  v63 = v6;
  v42 = v9;
  v48 = v8;
  v33 = v11;
  v37 = v10;
  v28 = v13;
  v30 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v13 = v28;
  v12 = v30;
  v11 = v33;
  v10 = v37;
  v9 = v42;
  v8 = v48;
  v7 = v55;
  v6 = v63;
  v5 = v72;
  v4 = v82;
  v3 = v93;
  v2 = v105;
  v1 = v118;
  a1 = v132;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<Empty>]";
  v6 = 128;
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

uint64_t mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL))
  {
    return 0;
  }

  if (!mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::IfOp>::verifyTrait(a1))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::scf::ParallelOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneRegion(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::scf::ParallelOp::verify(&v6) & 1;
}

uint64_t mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants(mlir::detail *a1)
{
  if ((mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::verifyRegionTrait(a1) & 1) != 0 && mlir::detail::verifyLoopLikeOpInterface(a1, v2))
  {
    return mlir::detail::verifyTypesAlongControlFlowEdges(a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::verifyRegionTrait(mlir::Operation *a1)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11) & 0x7FFFFF;
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 64);
    v5 = 24 * v1;
    while (1)
    {
      v6 = (((&v4[4 * ((*(a1 + 11) >> 23) & 1) + 1] + ((*(a1 + 11) >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10) + v3);
      if (v6 != *v6)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v8 = *(v7 + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
        {
          break;
        }
      }

      v3 += 24;
      if (v5 == v3)
      {
        return 1;
      }
    }

    v17 = 1283;
    v16[0] = "expects regions to end with '";
    v16[2] = "scf.reduce";
    v16[3] = 10;
    v18[0] = v16;
    v18[2] = "', found '";
    v19 = 770;
    v28 = *(v8 + 8);
    Value = mlir::StringAttr::getValue(&v28);
    v11 = v19;
    if (v19 == 1)
    {
      v20 = Value;
      v21 = v10;
      v24 = 261;
      v12 = 5;
    }

    else
    {
      if (!v19)
      {
        v12 = 0;
        v24 = 256;
        v13 = 1;
        goto LABEL_15;
      }

      v15 = v18[0];
      v12 = 2;
      if (HIBYTE(v19) != 1)
      {
        v11 = 2;
        v15 = v18;
      }

      v20 = v15;
      v21 = v18[1];
      v22 = Value;
      v23 = v10;
      LOBYTE(v24) = v11;
      HIBYTE(v24) = 5;
      Value = &v20;
    }

    v25[0] = Value;
    v25[1] = v10;
    v25[2] = "'";
    v13 = 3;
LABEL_15:
    v26 = v12;
    v27 = v13;
    mlir::Operation::emitOpError(&v28, a1, v25);
    mlir::Diagnostic::attachNote(v29, 0, 0);
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::hasTrait()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::printAssembly()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::verifyInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  (a5)(v19, a6, a2, a3, a4);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
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
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::VariadicRegions<mlir::scf::ReduceOp>,mlir::OpTrait::ZeroResults<mlir::scf::ReduceOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ReduceOp>,mlir::OpTrait::VariadicOperands<mlir::scf::ReduceOp>,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>,mlir::OpTrait::OpInvariants<mlir::scf::ReduceOp>,mlir::OpTrait::IsTerminator<mlir::scf::ReduceOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::ReduceOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ReduceOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getSuccessorRegions;
  {
    v5 = v2;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::VariadicRegions<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<Empty>]";
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

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::VariadicRegions<mlir::scf::ReduceOp>,mlir::OpTrait::ZeroResults<mlir::scf::ReduceOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ReduceOp>,mlir::OpTrait::VariadicOperands<mlir::scf::ReduceOp>,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>,mlir::OpTrait::OpInvariants<mlir::scf::ReduceOp>,mlir::OpTrait::IsTerminator<mlir::scf::ReduceOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::ReduceOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ReduceOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroResults(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) & 1) != 0 && mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>::verifyTrait(a1))
  {
    v5 = *(a1 + 11);
    if ((v5 & 0x7FFFFF) == 0)
    {
      return mlir::OpTrait::impl::verifyIsTerminator(a1, v4) & 1;
    }

    v6 = 0;
    v7 = ((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10);
    v8 = 24 * (v5 & 0x7FFFFF);
    while (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(a1, v7, "reductions", 10, v6))
    {
      ++v6;
      v7 += 24;
      v8 -= 24;
      if (!v8)
      {
        return mlir::OpTrait::impl::verifyIsTerminator(a1, v4) & 1;
      }
    }
  }

  return 0;
}

BOOL mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>::verifyTrait(mlir::Block **a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
      {
        return 1;
      }
    }
  }

  v21 = 257;
  mlir::Operation::emitOpError(&v26, a1, v20);
  if (!v26)
  {
    goto LABEL_12;
  }

  LODWORD(v22) = 3;
  *(&v22 + 1) = "expects parent op ";
  v23 = 18;
  if (v29 >= v30)
  {
    if (v28 > &v22 || v28 + 24 * v29 <= &v22)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = v28 + 24 * v29;
  v4 = v22;
  *(v3 + 2) = v23;
  *v3 = v4;
  v5 = ++v29;
  if (v26)
  {
    LODWORD(v22) = 3;
    *(&v22 + 1) = "'";
    v23 = 1;
    if (v5 >= v30)
    {
      if (v28 > &v22 || v28 + 24 * v5 <= &v22)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v28 + 24 * v29;
    v7 = v22;
    *(v6 + 2) = v23;
    *v6 = v7;
    ++v29;
    v24 = "scf.parallel";
    v25 = 12;
    if (v26)
    {
      *&v22 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v24, &v26, v27, v27, &v22);
      if (v26)
      {
        LODWORD(v22) = 3;
        *(&v22 + 1) = "'";
        v23 = 1;
        if (v29 >= v30)
        {
          if (v28 > &v22 || v28 + 24 * v29 <= &v22)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v28 + 24 * v29;
        v9 = v22;
        *(v8 + 2) = v23;
        *v8 = v9;
        ++v29;
      }
    }
  }

  else
  {
LABEL_12:
    v24 = "scf.parallel";
    v25 = 12;
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v35;
      v13 = __p;
      if (v35 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v35 = v11;
      operator delete(v13);
    }

    v14 = v32;
    if (v32)
    {
      v15 = v33;
      v16 = v32;
      if (v33 != v32)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v32;
      }

      v33 = v14;
      operator delete(v16);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v10;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::hasTrait()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::printAssembly()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::verifyInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  (a5)(v19, a6, a2, a3, a4);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
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
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ReduceReturnOp>,mlir::OpTrait::ZeroResults<mlir::scf::ReduceReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ReduceReturnOp>,mlir::OpTrait::OneOperand<mlir::scf::ReduceReturnOp>,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>,mlir::OpTrait::OpInvariants<mlir::scf::ReduceReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ReduceReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ReduceReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ReduceReturnOp>,mlir::OpTrait::IsTerminator<mlir::scf::ReduceReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::scf::ReduceReturnOp>::getSpeculatability;
  {
    v6 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceReturnOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::scf::ReduceReturnOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0 || !mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>::verifyTrait(a1) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a1;
  return mlir::scf::ReduceReturnOp::verify(&v8);
}

BOOL mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>::verifyTrait(mlir::Block **a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
      {
        return 1;
      }
    }
  }

  v21 = 257;
  mlir::Operation::emitOpError(&v26, a1, v20);
  if (!v26)
  {
    goto LABEL_12;
  }

  LODWORD(v22) = 3;
  *(&v22 + 1) = "expects parent op ";
  v23 = 18;
  if (v29 >= v30)
  {
    if (v28 > &v22 || v28 + 24 * v29 <= &v22)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = v28 + 24 * v29;
  v4 = v22;
  *(v3 + 2) = v23;
  *v3 = v4;
  v5 = ++v29;
  if (v26)
  {
    LODWORD(v22) = 3;
    *(&v22 + 1) = "'";
    v23 = 1;
    if (v5 >= v30)
    {
      if (v28 > &v22 || v28 + 24 * v5 <= &v22)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v28 + 24 * v29;
    v7 = v22;
    *(v6 + 2) = v23;
    *v6 = v7;
    ++v29;
    v24 = "scf.reduce";
    v25 = 10;
    if (v26)
    {
      *&v22 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v24, &v26, v27, v27, &v22);
      if (v26)
      {
        LODWORD(v22) = 3;
        *(&v22 + 1) = "'";
        v23 = 1;
        if (v29 >= v30)
        {
          if (v28 > &v22 || v28 + 24 * v29 <= &v22)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v28 + 24 * v29;
        v9 = v22;
        *(v8 + 2) = v23;
        *v8 = v9;
        ++v29;
      }
    }
  }

  else
  {
LABEL_12:
    v24 = "scf.reduce";
    v25 = 10;
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v35;
      v13 = __p;
      if (v35 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v35 = v11;
      operator delete(v13);
    }

    v14 = v32;
    if (v32)
    {
      v15 = v33;
      v16 = v32;
      if (v33 != v32)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v32;
      }

      v33 = v14;
      operator delete(v16);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v10;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

void mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::hasTrait()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::printAssembly()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::verifyInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  (a5)(v19, a6, a2, a3, a4);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
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
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::areTypesCompatible;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::IfOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v7 = *a5 + 12 * v6;
    v8 = *(a2 + 44) & 0x7FFFFF;
    do
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 12;
      --v8;
    }

    while (v8);
    LODWORD(v6) = *(a5 + 8);
  }

  *(a5 + 8) = v6 + v5;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
  v3 = v2;
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::replaceWithAdditionalYields;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::isDefinedOutsideOfLoop(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v6 = a3;
  v4 = *(mlir::Value::getParentRegion(&v6) + 2);
  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return mlir::Operation::isProperAncestor(a2, v4) ^ 1;
  }
}

double mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopRegions@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  a2[2] = v2;
  *a2 = a2 + 2;
  a2[3] = v2 + 24;
  *&result = 0x600000002;
  a2[1] = 0x600000002;
  return result;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mps::serialization::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1, uint64_t a2, unsigned int a3)
{
  if ((mlir::OpTrait::impl::verifyNRegions(a1, 2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::IfOp>::verifyTrait(a1))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::scf::WhileOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::scf::WhileOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::hasTrait()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::printAssembly()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::verifyInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  (a5)(v19, a6, a2, a3, a4);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
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
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::YieldOp>,mlir::OpTrait::ZeroResults<mlir::scf::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::scf::YieldOp>,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::scf::YieldOp>,mlir::OpTrait::OpInvariants<mlir::scf::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::YieldOp>,mlir::OpTrait::ReturnLike<mlir::scf::YieldOp>,mlir::OpTrait::IsTerminator<mlir::scf::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::scf::YieldOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp, mlir::scf::ForOp, mlir::scf::IfOp, mlir::scf::IndexSwitchOp, mlir::scf::WhileOp>::Impl<Empty>]";
  v6 = 196;
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

uint64_t mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::scf::YieldOp>::verifyTrait(a1))
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::scf::YieldOp>::verifyTrait(mlir::Block **a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      v3 = *(*(ParentOp + 48) + 16);
      if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id)
      {
        return 1;
      }

      if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
      {
        return 1;
      }

      if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::IndexSwitchOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
      {
        return 1;
      }
    }
  }

  v24 = 257;
  mlir::Operation::emitOpError(&v33, a1, &v23);
  if (!v33)
  {
    goto LABEL_22;
  }

  LODWORD(v27) = 3;
  *(&v27 + 1) = "expects parent op ";
  *&v28 = 18;
  if (v36 >= v37)
  {
    if (v35 > &v27 || v35 + 24 * v36 <= &v27)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v35 + 24 * v36;
  v8 = v27;
  *(v7 + 2) = v28;
  *v7 = v8;
  v9 = ++v36;
  if (v33)
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = "to be one of '";
    *&v28 = 14;
    if (v9 >= v37)
    {
      if (v35 > &v27 || v35 + 24 * v9 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v27;
    *(v10 + 2) = v28;
    *v10 = v11;
    ++v36;
    v29 = xmmword_27983AD28;
    v30 = *&off_27983AD38;
    v31 = xmmword_27983AD48;
    v27 = xmmword_27983AD08;
    v28 = *&off_27983AD18;
    if (v33)
    {
      *&v25 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v27, &v32, v34, v34, &v25);
      if (v33)
      {
        LODWORD(v25) = 3;
        *(&v25 + 1) = "'";
        v26 = 1;
        if (v36 >= v37)
        {
          if (v35 > &v25 || v35 + 24 * v36 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v35 + 24 * v36;
        v13 = v25;
        *(v12 + 2) = v26;
        *v12 = v13;
        ++v36;
      }
    }
  }

  else
  {
LABEL_22:
    v29 = xmmword_27983AD28;
    v30 = *&off_27983AD38;
    v31 = xmmword_27983AD48;
    v27 = xmmword_27983AD08;
    v28 = *&off_27983AD18;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (v39)
    {
      v18 = v40;
      v19 = v39;
      if (v40 != v39)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v39;
      }

      v40 = v17;
      operator delete(v19);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v6;
}

void anonymous namespace::SCFInlinerInterface::~SCFInlinerInterface(_anonymous_namespace_::SCFInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::SCFInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

uint64_t anonymous namespace::SCFInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 4);
  if (!v3)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v4 = *result;
  v5 = a2[1];
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v7 = v3 - 1;
  v8 = (v3 - 1) & ((v6 >> 31) ^ v6);
  v9 = (*result + 16 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (*a2 != *v9 || v5 != v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096 || v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17 && v11 == -8192)
      {
        v15 = v9;
      }

      v19 = v8 + v16++;
      v8 = v19 & v7;
      v9 = (v4 + 16 * (v19 & v7));
      v11 = *v9;
      v10 = v9[1];
      if (*a2 == *v9 && v5 == v10)
      {
        goto LABEL_7;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_9:
    v24 = v9;
    v14 = *(result + 2);
    if (4 * v14 + 4 >= 3 * v3)
    {
      v3 *= 2;
    }

    else if (v3 + ~v14 - *(result + 3) > v3 >> 3)
    {
      *(result + 2) = v14 + 1;
      if (*v9 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v21 = result;
    v22 = a2;
    v23 = a3;
    llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(result, v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(v21, v22, &v24);
    a2 = v22;
    result = v21;
    a3 = v23;
    v9 = v24;
    ++*(v21 + 2);
    if (*v9 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (v9[1] == -4096)
    {
LABEL_14:
      *v9 = *a2;
      v9[1] = a2[1];
      v4 = *result;
      v3 = *(result + 4);
      v13 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 3);
    goto LABEL_14;
  }

LABEL_7:
  v13 = 0;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v4 + 16 * v3;
  *(a3 + 16) = v13;
  return result;
}

void llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    memset_pattern16(buffer, &unk_257371D60, 16 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_257371D60, 16 * v6);
  }

  if (a2 != a3)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v15 = *a2;
      v16 = a2[1];
      if ((*a2 != -4096 || v16 != -4096) && (v15 != -8192 || v16 != -8192))
      {
        v9 = 0xBF58476D1CE4E5B9 * ((v16 >> 4) ^ (v16 >> 9) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
        v10 = v8 & ((v9 >> 31) ^ v9);
        v11 = (*a1 + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        if (v15 != *v11 || v16 != v13)
        {
          v17 = 0;
          v18 = 1;
          while (v12 != -4096 || v13 != -4096)
          {
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v13 == -8192;
            }

            if (v19 && v12 == -8192)
            {
              v17 = v11;
            }

            v21 = v10 + v18++;
            v10 = v21 & v8;
            v11 = (*a1 + 16 * (v21 & v8));
            v12 = *v11;
            v13 = v11[1];
            if (v15 == *v11 && v16 == v13)
            {
              goto LABEL_10;
            }
          }

          if (v17)
          {
            v11 = v17;
          }
        }

LABEL_10:
        *v11 = v15;
        v11[1] = a2[1];
        *(a1 + 8) = ++v7;
      }

      a2 += 2;
    }

    while (a2 != a3);
  }
}

const char *llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::BufferDeallocationOpInterface]";
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

const char *llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::BufferizableOpInterface]";
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

const char *llvm::getTypeName<mlir::ValueBoundsOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ValueBoundsOpInterface]";
  v6 = 78;
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

void SingleBlockExecuteInliner::~SingleBlockExecuteInliner(SingleBlockExecuteInliner *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t SingleBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v4 = *(v3 + 8);
  if (v4 == v3 || *(v4 + 8) != v3)
  {
    return 0;
  }

  mlir::ValueRange::ValueRange(v16, 0, 0);
  v8 = v16[0];
  v9 = v16[1];
  v10 = *(v3 + 8);
  if (v10)
  {
    v11 = (v10 - 8);
  }

  else
  {
    v11 = 0;
  }

  mlir::Block::getTerminator(v11);
  v13 = v12;
  if ((*(v12 + 46) & 0x80) != 0)
  {
    v14 = *(v12 + 72);
    v15 = *(v12 + 68);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  mlir::ValueRange::ValueRange(v17, v14, v15);
  mlir::RewriterBase::inlineBlockBefore(a3, v11, a2, v8, v9);
  (**a3)(a3, a2, v17[0], v17[1]);
  (*(*a3 + 16))(a3, v13);
  return 1;
}

void MultiBlockExecuteInliner::~MultiBlockExecuteInliner(MultiBlockExecuteInliner *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t MultiBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t ***a2, mlir::RewriterBase *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a2[2];
  if (v5)
  {
    ParentOp = mlir::Block::getParentOp(v5);
    if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
      goto LABEL_7;
    }
  }

  else
  {
    ParentOp = 0;
    if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(0))
    {
      goto LABEL_7;
    }
  }

  if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id)
  {
LABEL_7:
    mlir::RewriterBase::splitBlock(a3, a2[2], a2);
  }

  return 0;
}

char *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(v15, v16, v14);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  v9 = *a3;
  mlir::ValueRange::ValueRange(v16, 0, 0);
  mlir::cf::BranchOp::build(a1, v15, v9, v16[0], v16[1]);
  v10 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9uLL);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v9 = *a1;
  v10 = *a1;
  v11 = a2 - *a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = a6 - a4;
  v15 = a6 - a4 + v13;
  if (*a1 + 8 * v13 == a2)
  {
    if (v15 > v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a6 != a4)
    {
      v25 = (v10 + 8 * v13);
      if (v14 < 0x14)
      {
        goto LABEL_20;
      }

      v26 = a3 + 32 * a4;
      if (v25 < a3 + 32 * a6 && v26 + 24 < (v10 + 8 * (a6 + v13 - a4)))
      {
        goto LABEL_20;
      }

      v28 = &v25[v14 & 0xFFFFFFFFFFFFFFFCLL];
      v6 = a4 + (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v29 = (v26 + 88);
      v30 = v25 + 2;
      v31 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v32 = v29 + 4;
        *&v33 = *(v29 - 8);
        *(&v33 + 1) = *(v29 - 4);
        v34 = *v29;
        v29 += 16;
        *&v35 = v34;
        *(&v35 + 1) = *v32;
        *(v30 - 1) = v33;
        *v30 = v35;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v25 = v28;
      if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_20:
        v36 = a6 - v6;
        v37 = (a3 + 32 * v6 + 24);
        do
        {
          v38 = *v37;
          v37 += 4;
          *v25++ = v38;
          --v36;
        }

        while (v36);
      }

      LODWORD(v13) = *(a1 + 2);
      v10 = *a1;
    }

    *(a1 + 2) = v13 + v14;
    return (v10 + v11);
  }

  v93 = a3;
  if (v15 > v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = (v10 + v11);
  v18 = 8 * v13;
  v19 = (v10 + 8 * v13);
  v20 = v11;
  v21 = 8 * v13 - v11;
  v22 = v21 >> 3;
  v92 = v20;
  if (v21 >> 3 < v14)
  {
    *(a1 + 2) = v13 + v14;
    if (v18 != v20)
    {
      v23 = v17;
      memcpy((v10 + 8 * (v13 + v14) - 8 * v22), v17, v21);
      if (v22 <= 0xF)
      {
        v24 = v23;
        v17 = v23;
        v18 = 8 * v13;
LABEL_34:
        v53 = (v93 + 32 * v6 + 24);
        v6 += v22;
        do
        {
          v54 = *v53;
          v53 += 4;
          *v24++ = v54;
          --v22;
        }

        while (v22);
        goto LABEL_36;
      }

      v44 = v93 + 32 * v6;
      v17 = v23;
      v18 = 8 * v13;
      if (v23 < v44 + 4 * v21)
      {
        v24 = v23;
        if (v44 + 24 < (v10 + v21 + a2 - v9))
        {
          goto LABEL_34;
        }
      }

      v6 += v22 & 0xFFFFFFFFFFFFFFFCLL;
      v45 = (v92 + v10 + 16);
      v46 = (v44 + 88);
      v47 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = (v23 + 8 * (v22 & 0xFFFFFFFFFFFFFFFCLL));
      do
      {
        v48 = v46 + 4;
        *&v49 = *(v46 - 8);
        *(&v49 + 1) = *(v46 - 4);
        v50 = *v46;
        v46 += 16;
        *&v51 = v50;
        *(&v51 + 1) = *v48;
        *(v45 - 1) = v49;
        *v45 = v51;
        v45 += 2;
        v47 -= 4;
      }

      while (v47);
      v52 = v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL);
      v22 = (v21 >> 3) & 3;
      if (!v52)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v55 = a6 - v6;
    if (a6 != v6)
    {
      if (v55 < 0x14)
      {
        goto LABEL_43;
      }

      v56 = v93 + 32 * v6;
      if (v19 < v93 + 32 * a6 && v56 + 24 < (v10 + 8 * (a6 + v13 - v6)))
      {
        goto LABEL_43;
      }

      v19 += 8 * (v55 & 0xFFFFFFFFFFFFFFFCLL);
      v6 += v55 & 0xFFFFFFFFFFFFFFFCLL;
      v57 = (v56 + 88);
      v58 = (v18 + v10 + 16);
      v59 = v55 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v60 = v57 + 4;
        *&v61 = *(v57 - 8);
        *(&v61 + 1) = *(v57 - 4);
        v62 = *v57;
        v57 += 16;
        *&v63 = v62;
        *(&v63 + 1) = *v60;
        *(v58 - 1) = v61;
        *v58 = v63;
        v58 += 2;
        v59 -= 4;
      }

      while (v59);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_43:
        v64 = a6 - v6;
        v65 = (v93 + 32 * v6 + 24);
        do
        {
          v66 = *v65;
          v65 += 4;
          *v19 = v66;
          v19 += 8;
          --v64;
        }

        while (v64);
      }
    }

    return v17;
  }

  v39 = 8 * v14;
  if (v13 + ((8 * v14) >> 3) > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v40 = &v19[-v39];
  if (a6 != a4)
  {
    v41 = (*a1 + 8 * v13);
    v42 = 8 * a6 - 8 * a4 - 8;
    if (v42 < 0x38)
    {
      v43 = &v19[-v39];
      do
      {
LABEL_50:
        v74 = *v43;
        v43 += 8;
        *v41++ = v74;
      }

      while (v43 != v19);
      goto LABEL_51;
    }

    v67 = 8 * v13 + *a1;
    v43 = &v19[-v39];
    if ((v67 - v40) < 0x20)
    {
      goto LABEL_50;
    }

    v68 = (v42 >> 3) + 1;
    v69 = 8 * (v68 & 0x3FFFFFFFFFFFFFFCLL);
    v41 = (v41 + v69);
    v43 = &v40[v69];
    v70 = (8 * a4 + v18 - 8 * a6 + v10 + 16);
    v71 = (v67 + 16);
    v72 = v68 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v73 = *v70;
      *(v71 - 1) = *(v70 - 1);
      *v71 = v73;
      v70 += 2;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (v68 != (v68 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  *(a1 + 2) = v13 + v14;
  v75 = v40 - v17;
  if (v40 != v17)
  {
    v76 = &v19[-v75];
    v77 = v17;
    memmove(v76, v17, v75);
    v17 = v77;
  }

  if (a6 != v6)
  {
    if (v14 >= 0x16)
    {
      v79 = v93;
      v80 = v93 + 32 * v6;
      if (v17 >= v93 + 32 * a6 || (v78 = v17, v80 + 24 >= (v10 + a2 + 8 * a6 - (v9 + 8 * v6))))
      {
        v78 = &v17[8 * (v14 & 0xFFFFFFFFFFFFFFFCLL)];
        v6 += v14 & 0xFFFFFFFFFFFFFFFCLL;
        v81 = (v80 + 88);
        v82 = (v92 + v10 + 16);
        v83 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v84 = v81 + 4;
          *&v85 = *(v81 - 8);
          *(&v85 + 1) = *(v81 - 4);
          v86 = *v81;
          v81 += 16;
          *&v87 = v86;
          *(&v87 + 1) = *v84;
          *(v82 - 1) = v85;
          *v82 = v87;
          v82 += 2;
          v83 -= 4;
        }

        while (v83);
        if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v17;
        }
      }
    }

    else
    {
      v78 = v17;
      v79 = v93;
    }

    v88 = a6 - v6;
    v89 = (v79 + 32 * v6 + 24);
    do
    {
      v90 = *v89;
      v89 += 4;
      *v78 = v90;
      v78 += 8;
      --v88;
    }

    while (v88);
  }

  return v17;
}

void *llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<mlir::scf::buildLoopNest(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,llvm::function_ref<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>)::$_0>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *result;
  v7 = *(*result + 8);
  if (v7 >= *(*result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v6 + 8 * v7) = a4;
  ++*(v6 + 8);
  v8 = result[1];
  *v8 = a5;
  v8[1] = a6;
  *result[2] = a3;
  return result;
}

double llvm::function_ref<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::scf::buildLoopNest(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>)::$_0>@<D0>(void (***a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = **a1;
  if (v3)
  {
    v3((*a1)[1]);
  }

  *a2 = a2 + 2;
  *&result = 0x600000000;
  a2[1] = 0x600000000;
  return result;
}

void anonymous namespace::ForOpIterArgsFolder::~ForOpIterArgsFolder(_anonymous_namespace_::ForOpIterArgsFolder *this)
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

  JUMPOUT(0x259C63180);
}

void anonymous namespace::SimplifyTrivialLoops::~SimplifyTrivialLoops(_anonymous_namespace_::SimplifyTrivialLoops *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v45 = a2;
  v5 = *(a2 + 72);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  if (v6 == v7)
  {
    v20 = *(a2 + 68);
    goto LABEL_36;
  }

  v48 = 0;
  v49 = 0;
  v42 = &v49;
  v53 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v53);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v42, DefiningOp))
    {
      v46 = &v48;
      v53 = v7;
      v9 = mlir::Value::getDefiningOp(&v53);
      if (v9)
      {
        if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v46, v9))
        {
          mlir::IntegerAttr::getValue(&v49, &v53);
          mlir::IntegerAttr::getValue(&v48, &v42);
          LODWORD(v59) = v43;
          if (v43 > 0x40)
          {
            llvm::APInt::initSlowCase(&v58, &v42);
          }

          v58 = v42;
          llvm::APInt::operator-=(&v58, &v53);
          v27 = v59;
          LODWORD(v59) = 0;
          if (v27 > 0x40)
          {
            v16 = *v58;
            if (v58)
            {
              MEMORY[0x259C63150](v58, 0x1000C8000313F17);
              if (v59 >= 0x41)
              {
                if (v58)
                {
                  MEMORY[0x259C63150](v58, 0x1000C8000313F17);
                }
              }
            }
          }

          else if (v27)
          {
            v16 = (v58 << -v27) >> -v27;
          }

          else
          {
            v16 = 0;
          }

          if (v43 >= 0x41 && v42)
          {
            MEMORY[0x259C63150](v42, 0x1000C8000313F17);
          }

          if (v54 >= 0x41 && v53)
          {
            MEMORY[0x259C63150](v53, 0x1000C8000313F17);
          }

          goto LABEL_27;
        }
      }
    }
  }

  v43 = 1;
  v42 = 0;
  v46 = v6;
  v47 = &v42;
  v52 = v7;
  v10 = mlir::Value::getDefiningOp(&v52);
  if (v10 && (v56 = v10, *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id) && (*(v10 + 46) & 0x80) != 0 && *(v10 + 68) == 2 && (LOBYTE(v50) = 1, v53 = &v50, v54 = &v56, mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v46, &v53), (v50 & 1) != 0) || (v56 = &v42, v57 = v6, v50 = v7, (v11 = mlir::Value::getDefiningOp(&v50)) != 0) && (v52 = v11, *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id) && (*(v11 + 46) & 0x80) != 0 && *(v11 + 68) == 2 && (v51 = 1, v53 = &v51, v54 = &v52, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> & &)#1},0ul,1ul>(&v56, &v53), (v51 & 1) != 0))
  {
    if (v43 > 0x40)
    {
      v12 = *v42;
    }

    else if (v43)
    {
      v12 = (v42 << -v43) >> -v43;
    }

    else
    {
      v12 = 0;
    }

    v15 = v12 & 0xFFFFFFFFFFFFFF00;
    v13 = v12;
    v14 = 1;
    if (v43 < 0x41)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v42)
    {
      MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    }

    goto LABEL_25;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v43 >= 0x41)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (!v14)
  {
    return 0;
  }

  v16 = v15 | v13;
LABEL_27:
  if (v16 <= 0)
  {
    if ((*(a2 + 46) & 0x80) == 0)
    {
      v5 = 0;
      v21 = -3;
      goto LABEL_37;
    }

    v20 = *(a2 + 68);
    v5 = *(a2 + 72);
LABEL_36:
    v21 = v20 - 3;
LABEL_37:
    mlir::ValueRange::ValueRange(&v53, v5 + 96, v21);
    (**a3)(a3, a2, v53, v54);
    return 1;
  }

  v58 = 0;
  v17 = *(*(a2 + 72) + 88);
  v42 = &v58;
  v53 = v17;
  v18 = mlir::Value::getDefiningOp(&v53);
  if (!v18 || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v42, v18) & 1) == 0)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v58, &v53);
  v43 = v54;
  v42 = v53;
  v44 = 1;
  LODWORD(v47) = v54;
  if (v54 > 0x40)
  {
    llvm::APInt::initSlowCase(&v46, &v42);
  }

  v46 = v42;
  if (v54)
  {
    v22 = (v42 << -v54) >> -v54;
  }

  else
  {
    v22 = 0;
  }

  if (v22 >= v16)
  {
    v53 = v55;
    v54 = 0x400000000;
    if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) - 2 > 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *v53 = *(*(a2 + 72) + 24);
    v28 = v54 + 1;
    LODWORD(v54) = v54 + 1;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v29 = *(a2 + 72);
      v30 = *(a2 + 68) - 3;
    }

    else
    {
      v29 = 0;
      v30 = -3;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v53, v53 + 8 * v28, v29 + 96, 0, v29 + 96, v30);
    v31 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    mlir::ValueRange::ValueRange(&v56, v53, v54);
    v32 = v56;
    v33 = v57;
    v34 = *(v31 + 8);
    if (v34)
    {
      v35 = (v34 - 8);
    }

    else
    {
      v35 = 0;
    }

    mlir::Block::getTerminator(v35);
    v37 = v36;
    if ((*(v36 + 46) & 0x80) != 0)
    {
      v38 = *(v36 + 72);
      v39 = *(v36 + 68);
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    mlir::ValueRange::ValueRange(&v58, v38, v39);
    mlir::RewriterBase::inlineBlockBefore(a3, v35, a2, v32, v33);
    (**a3)(a3, a2, v58, v59);
    (*(*a3 + 16))(a3, v37);
    if (v53 != v55)
    {
      free(v53);
    }

    result = 1;
    if (v47 < 0x41)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v23 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v24 = v23 - 8;
  if (!v23)
  {
    v24 = 0;
  }

  v25 = *(v24 + 40);
  v26 = v24 + 32;
  if (v25 != v26 && *(v25 + 8) == v26)
  {
    result = v53;
    if (v47 < 0x41)
    {
      goto LABEL_83;
    }

LABEL_81:
    if (v46)
    {
      v40 = result;
      MEMORY[0x259C63150](v46, 0x1000C8000313F17);
      result = v40;
    }

    goto LABEL_83;
  }

  result = 0;
  if (v47 >= 0x41)
  {
    goto LABEL_81;
  }

LABEL_83:
  if ((v44 & 1) != 0 && v43 >= 0x41)
  {
    if (v42)
    {
      v41 = result;
      MEMORY[0x259C63150](v42, 0x1000C8000313F17);
      return v41;
    }
  }

  return result;
}

uint64_t llvm::any_of<mlir::ValueRange,anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::Value)#1}>(uint64_t a1, uint64_t a2, mlir::Operation **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = mlir::ValueRange::dereference_iterator(&v11, v5);
    v7 = *a3;
    v10 = v6;
    v8 = *(mlir::Value::getParentRegion(&v10) + 2);
    if (v8 == v7)
    {
      break;
    }

    result = mlir::Operation::isProperAncestor(v7, v8);
    if ((result & 1) == 0)
    {
      v5 = v12 + 1;
      v12 = v5;
      if (v5 != a2)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(void *a1, char **a2)
{
  v3 = *(*a2[1] + 72);
  v4 = a1 + 1;
  v5 = **a2;
  if (*a1 != *(v3 + 24))
  {
    v5 = 0;
  }

  **a2 = v5;
  v13 = *(v3 + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    v7 = result;
    v12 = &v13;
    v13 = 0;
    result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, result);
    if (result)
    {
      v8 = *(*(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        result = mlir::detail::constant_int_value_binder::match(v4, v13);
      }

      else
      {
        result = 0;
      }
    }
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> & &)#1},0ul,1ul>(uint64_t *a1, uint64_t a2)
{
  v12 = *(*(**(a2 + 8) + 72) + 24);
  result = mlir::Value::getDefiningOp(&v12);
  if (result)
  {
    v5 = result;
    v11 = &v12;
    v12 = 0;
    result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, result);
    if (result)
    {
      v6 = *(*(*(v5 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        result = mlir::detail::constant_int_value_binder::match(a1, v12);
      }

      else
      {
        result = 0;
      }
    }
  }

  if (a1[1] == *(*(**(a2 + 8) + 72) + 56))
  {
    v10 = result & **a2;
  }

  else
  {
    v10 = 0;
  }

  **a2 = v10;
  return result;
}

void anonymous namespace::ForOpTensorCastFolder::~ForOpTensorCastFolder(_anonymous_namespace_::ForOpTensorCastFolder *this)
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

  JUMPOUT(0x259C63180);
}

void **llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 2)
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
      result[1] = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_19;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 2);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = *result;
        v10 = &v2[6 * v7];
        do
        {
          *v9 = *v2;
          *(v9 + 8) = *(v2 + 2);
          v2 += 6;
          v9 += 24;
        }

        while (v2 != v10);
      }

      *(result + 2) = v7;
      goto LABEL_19;
    }

    if (*(result + 3) < v7)
    {
      *(result + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v11 = &v2[6 * v8];
      v12 = result;
      v13 = *result;
      do
      {
        *v13 = *v2;
        *(v13 + 8) = *(v2 + 2);
        v2 += 6;
        v13 += 24;
      }

      while (v2 != v11);
      v14 = *v6 - v8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = result;
      v8 = 0;
      v14 = *v6;
      if (!*v6)
      {
        goto LABEL_18;
      }
    }

    memcpy(*v12 + 24 * v8, *a2 + 24 * v8, 24 * v14);
LABEL_18:
    result = v12;
    *(v12 + 2) = v7;
LABEL_19:
    *v6 = 0;
  }

  return result;
}

char *llvm::function_ref<mlir::Value ()(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)>::callback_fn<anonymous namespace::ForOpTensorCastFolder::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)#1}>(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  return mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::tensor::CastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

const char *llvm::getTypeName<mlir::DeviceMappingAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DeviceMappingAttrInterface]";
  v6 = 82;
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

void mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v2[40] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v2, a2, "scf.forall.in_parallel", 0x16uLL);
  mlir::OperationState::addRegion(v2);
}

void anonymous namespace::DimOfForallOp::~DimOfForallOp(_anonymous_namespace_::DimOfForallOp *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::DimOfForallOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v18);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
    {
      v6 = *(*(a2 + 72) + 24);
      v7 = (result + 16 * ((*(result + 44) >> 23) & 1));
      v8 = v7[24];
      v9 = v7[25];
      v10 = v7[26];
      if (v6)
      {
        v11 = (*(v6 + 8) & 7) == 6;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = *(v6 + 16) + 6;
      }

      else
      {
        v12 = *(v6 + 8) & 7;
      }

      v13 = *(*(result + 72) + 32 * (v9 + v8 + v10 + v12) + 24);
      (*(*a3 + 40))(a3, a2);
      v14 = *(a2 + 72);
      v15 = v14[1];
      if (v15)
      {
        v16 = *v14;
        *v15 = *v14;
        if (v16)
        {
          *(v16 + 8) = v15;
        }
      }

      v14[3] = v13;
      v17 = *v13;
      *v14 = *v13;
      v14[1] = v13;
      if (v17)
      {
        *(v17 + 8) = v14;
      }

      *v13 = v14;
      (*(*a3 + 48))(a3, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::FoldTensorCastOfOutputIntoForallOp::~FoldTensorCastOfOutputIntoForallOp(_anonymous_namespace_::FoldTensorCastOfOutputIntoForallOp *this)
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

  JUMPOUT(0x259C63180);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::try_emplace<unsigned int const&>@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>, unint64_t a5@<X3>)
{
  v6 = result + 2;
  v5 = *result;
  v7 = *result & 1;
  if (v7)
  {
    v8 = 2;
    v9 = result + 2;
  }

  else
  {
    v8 = result[4];
    if (!v8)
    {
      v12 = 0;
      v15 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v9 = *(result + 1);
  }

  v10 = v8 - 1;
  v11 = (37 * *a2) & (v8 - 1);
  v12 = &v9[2 * v11];
  v13 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v7)
    {
      v14 = 2;
    }

    else
    {
      v6 = *(result + 1);
      v14 = result[4];
    }

    *a4 = v12;
    *(a4 + 8) = &v6[2 * v14];
    *(a4 + 16) = 0;
    return result;
  }

  v17 = 0;
  a5 = 1;
  while (v13 != -1)
  {
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13 == -2;
    }

    if (v18)
    {
      v17 = v12;
    }

    v19 = v11 + a5;
    a5 = (a5 + 1);
    v11 = v19 & v10;
    v12 = &v9[2 * (v19 & v10)];
    v13 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v17)
  {
    v12 = v17;
  }

  v24 = v12;
  if (v7)
  {
    v15 = 2;
  }

  else
  {
    v15 = result[4];
  }

LABEL_11:
  if (4 * (v5 >> 1) + 4 >= 3 * v15)
  {
    v15 *= 2;
    goto LABEL_34;
  }

  if (v15 + ~(v5 >> 1) - result[1] <= v15 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(result, v15, a3, a5);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v5 = *v23;
    v12 = v24;
    v7 = *v23 & 1;
  }

  *result = (v5 & 0xFFFFFFFE | v7) + 2;
  if (*v12 != -1)
  {
    --result[1];
  }

  *v12 = *a2;
  v12[1] = *a3;
  if (*result)
  {
    v16 = 2;
  }

  else
  {
    v6 = *(result + 1);
    v16 = result[4];
  }

  *a4 = v12;
  *(a4 + 8) = &v6[2 * v16];
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
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

char *llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(char *result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v5 = result;
  v58[1] = *MEMORY[0x277D85DE8];
  if (a2 >= 3)
  {
    v6 = (a2 - 1) | ((a2 - 1) >> 1);
    v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
    v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
    if ((v8 + 1) > 0x40)
    {
      v4 = v8 + 1;
    }

    else
    {
      v4 = 64;
    }
  }

  v9 = *result;
  if ((*result & 1) == 0)
  {
    v11 = result + 8;
    v10 = *(result + 1);
    v12 = *(result + 4);
    if (v4 > 2)
    {
      buffer = llvm::allocate_buffer(8 * v4, 4uLL);
      *(v5 + 1) = buffer;
      *(v5 + 2) = v4;
      v25 = *v5;
      v13 = (v10 + 8 * v12);
      *v5 = *v5 & 1;
      if ((v25 & 1) == 0)
      {
        v26 = &buffer[2 * v4];
        v27 = 8 * v4 - 8;
        if (v27 < 8)
        {
          v29 = buffer;
          do
          {
LABEL_26:
            *v29 = -1;
            v29 += 8;
          }

          while (v29 != v26);
LABEL_27:
          if (!v12)
          {
LABEL_49:

            llvm::deallocate_buffer(v10, (8 * v12));
          }

          v32 = v10;
          while (1)
          {
            v38 = *v32;
            if (*v32 <= 0xFFFFFFFD)
            {
              break;
            }

LABEL_35:
            v32 = (v32 + 8);
            if (v32 == v13)
            {
              goto LABEL_49;
            }
          }

          if (*v5)
          {
            v34 = 1;
            v33 = v5 + 8;
            v35 = (37 * v38) & 1;
            v36 = &v11[8 * v35];
            v37 = *v36;
            if (v38 == *v36)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v33 = *(v5 + 1);
            v34 = *(v5 + 4) - 1;
            v35 = v34 & (37 * v38);
            v36 = &v33[8 * v35];
            v37 = *v36;
            if (v38 == *v36)
            {
LABEL_34:
              *v36 = v38;
              *(v36 + 1) = *(v32 + 1);
              *v5 += 2;
              goto LABEL_35;
            }
          }

          v39 = 0;
          v40 = 1;
          while (v37 != -1)
          {
            if (v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = v37 == -2;
            }

            if (v41)
            {
              v39 = v36;
            }

            v42 = v35 + v40++;
            v35 = v42 & v34;
            v36 = &v33[8 * (v42 & v34)];
            v37 = *v36;
            if (v38 == *v36)
            {
              goto LABEL_34;
            }
          }

          if (v39)
          {
            v36 = v39;
          }

          goto LABEL_34;
        }

LABEL_20:
        v28 = (v27 >> 3) + 1;
        v29 = &buffer[2 * (v28 & 0x3FFFFFFFFFFFFFFELL)];
        v30 = buffer + 2;
        v31 = v28 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          *(v30 - 2) = -1;
          *v30 = -1;
          v30 += 4;
          v31 -= 2;
        }

        while (v31);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFELL))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v13 = (v10 + 8 * v12);
      *result = 1;
    }

    v26 = v5 + 24;
    buffer = v5 + 8;
    v27 = 8;
    goto LABEL_20;
  }

  v14 = result + 8;
  v15 = v57;
  if (*(result + 2) <= 0xFFFFFFFD)
  {
    v43 = *(result + 3);
    v57[0] = *(result + 2);
    v57[1] = v43;
    v15 = v58;
    v16 = *(result + 4);
    if (v16 > 0xFFFFFFFD)
    {
LABEL_10:
      if (v4 < 3)
      {
        goto LABEL_11;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v16 = *(result + 4);
    if (v16 > 0xFFFFFFFD)
    {
      goto LABEL_10;
    }
  }

  v44 = *(result + 5);
  *v15 = v16;
  v15[1] = v44;
  v15 += 2;
  if (v4 < 3)
  {
LABEL_11:
    *result = v9 & 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_55:
    v18 = (v5 + 24);
    v17 = v5 + 8;
    v19 = 8;
    goto LABEL_14;
  }

LABEL_54:
  *result = v9 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v4, 4uLL);
  *(v5 + 1) = result;
  *(v5 + 2) = v4;
  v45 = *v5;
  v16 = v4;
  *v5 = *v5 & 1;
  if (v45)
  {
    goto LABEL_55;
  }

LABEL_12:
  if (!v16)
  {
    goto LABEL_58;
  }

  v17 = *v14;
  v18 = *v14 + 8 * v16;
  v19 = 8 * v16 - 8;
  if (v19 < 8)
  {
    v21 = *v14;
    do
    {
LABEL_57:
      *v21 = -1;
      v21 += 8;
    }

    while (v21 != v18);
    goto LABEL_58;
  }

LABEL_14:
  v20 = (v19 >> 3) + 1;
  v21 = &v17[8 * (v20 & 0x3FFFFFFFFFFFFFFELL)];
  v22 = v17 + 8;
  v23 = v20 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    *(v22 - 2) = -1;
    *v22 = -1;
    v22 += 4;
    v23 -= 2;
  }

  while (v23);
  if (v20 != (v20 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_57;
  }

LABEL_58:
  if (v57 != v15)
  {
    v46 = v57;
    while (1)
    {
      v52 = *v46;
      if (*v46 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_66:
      v46 += 2;
      if (v46 == v15)
      {
        return result;
      }
    }

    if (*v5)
    {
      v48 = 1;
      v47 = v5 + 8;
      v49 = (37 * v52) & 1;
      v50 = &v14[8 * v49];
      v51 = *v50;
      if (v52 == *v50)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v47 = *(v5 + 1);
      v48 = *(v5 + 4) - 1;
      v49 = v48 & (37 * v52);
      v50 = &v47[8 * v49];
      v51 = *v50;
      if (v52 == *v50)
      {
LABEL_65:
        *v50 = v52;
        *(v50 + 1) = v46[1];
        *v5 += 2;
        goto LABEL_66;
      }
    }

    v53 = 0;
    v54 = 1;
    while (v51 != -1)
    {
      if (v53)
      {
        v55 = 0;
      }

      else
      {
        v55 = v51 == -2;
      }

      if (v55)
      {
        v53 = v50;
      }

      v56 = v49 + v54++;
      v49 = v56 & v48;
      v50 = &v47[8 * (v56 & v48)];
      v51 = *v50;
      if (v52 == *v50)
      {
        goto LABEL_65;
      }
    }

    if (v53)
    {
      v50 = v53;
    }

    goto LABEL_65;
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>::callback_fn<anonymous namespace::FoldTensorCastOfOutputIntoForallOp::matchAndRewrite(mlir::scf::ForallOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder,mlir::Location,mlir::ValueRange)#1}>(uint64_t **a1, _OWORD *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  v19[0] = *a2;
  v19[1] = v7;
  v25[0] = a4;
  v25[1] = a5;
  v8 = *(**a1 + 36);
  if (a5 <= v8)
  {
    v9 = a4;
    v8 = a5;
  }

  else
  {
    v9 = mlir::ValueRange::offset_base(v25, a5 - v8);
  }

  __src = v24;
  v23 = 0x600000000;
  if (v8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v20[0] = v9;
  v20[1] = 0;
  if (v8)
  {
    v10 = 0;
    v11 = v24;
    do
    {
      *v11++ = mlir::ValueRange::dereference_iterator(v20, v10);
      v10 = v20[1] + 1;
      v20[1] = v10;
    }

    while (v10 != v8);
    LODWORD(v23) = v23 + v8;
    v12 = a1[1];
    v13 = *(v12 + 8);
    if (!v13)
    {
LABEL_12:
      v20[0] = *(**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + 72);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }
  }

  else
  {
    LODWORD(v23) = 0;
    v12 = a1[1];
    v13 = *(v12 + 8);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v14 = v12[3];
  v15 = 24 * v13;
  do
  {
    v16 = *(v14 + 16);
    v17 = *v14;
    v14 += 24;
    *v20 = v17;
    v21[0] = v16;
    v18 = (__src + 8 * v17);
    *v18 = (mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v19, a3, v21, v18) - 16);
    v15 -= 24;
  }

  while (v15);
  goto LABEL_12;
}

void anonymous namespace::ForallOpControlOperandsFolder::~ForallOpControlOperandsFolder(_anonymous_namespace_::ForallOpControlOperandsFolder *this)
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

  JUMPOUT(0x259C63180);
}

void anonymous namespace::ForallOpIterArgsFolder::~ForallOpIterArgsFolder(_anonymous_namespace_::ForallOpIterArgsFolder *this)
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

  JUMPOUT(0x259C63180);
}

void anonymous namespace::ForallOpIterArgsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v16 = v18;
  v17 = 0x600000000;
  v13 = v15;
  v14 = 0x600000000;
  v4 = *(a2 + 36);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v10 = a2 + 64;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
    v12 = NextResultAtOffset;
    if (NextResultAtOffset && (*(NextResultAtOffset + 8) & 7) == 6)
    {
      v8 = *(NextResultAtOffset + 16) + 6;
    }

    else
    {
      v8 = *(NextResultAtOffset + 8) & 7;
    }

    v9 = (v10 + 16 * ((*(a2 + 44) >> 23) & 1));
    mlir::OpOperand::getOperandNumber((*(a2 + 72) + 32 * (v9[9] + v9[8] + v9[10] + v8)));
    __src = *(v10 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  if (v13 != v15)
  {
    free(v13);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  llvm::deallocate_buffer(0, 0);
}

void anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::~ForallOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ForallOpSingleOrZeroIterationDimsFolder *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) || (__src = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)), LOBYTE(v7) = 1, mlir::ArrayAttr::getValue(&__src), !v3))
  {
    v11[6] = v12;
    v11[7] = 0x600000000;
    v10[6] = v11;
    v10[7] = 0x600000000;
    v8 = v10;
    v9 = 0x600000000;
    mlir::scf::ForallOp::getLoopLowerBounds(&v5);
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v24, a2, v13);
    v15 = *a3;
    v16 = *(a3 + 8);
    v17 = *a4;
    v18 = *(a4 + 8);
    v19 = *a5;
    v20 = *(a5 + 8);
    mlir::ValueRange::ValueRange(v25, *a6, a6[1]);
    mlir::scf::ForallOp::build(a1, v24, v15, v16, v17, v18, v19, v20, v25[0], v25[1], 0, 0, 0, v21);
  }

  mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(v24, v25, v23);
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9uLL);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v8 = *a2;
  mlir::ValueRange::ValueRange(&v8 + 1, 0, 0);
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    if (v4 > &v8 || v4 + 24 * v3 <= &v8)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = v4 + 24 * *(a1 + 8);
  v6 = v8;
  *(v5 + 16) = v9;
  *v5 = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 24 * v5 - 24;
}

void anonymous namespace::CombineIfs::~CombineIfs(_anonymous_namespace_::CombineIfs *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::CombineIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v104[6] = *MEMORY[0x277D85DE8];
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  if (v5 == a2)
  {
    return 0;
  }

  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  v7 = *(*(v6 + 48) + 16);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v6 : 0;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v9 = v6;
  if (*(*(a2 + 72) + 24) != *(*(v6 + 72) + 24))
  {
    v10 = 0;
    v11 = 0;
    v102 = *(*(a2 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v102);
    if (!DefiningOp)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = (32 * *(a2 + 40) + ((a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13 - 8;
  v37 = *v13 == 0;
  v17 = v13[3];
  v16 = v13 + 3;
  v15 = v17;
  if (v37)
  {
    v11 = 0;
  }

  else
  {
    v11 = v14;
  }

  v18 = (v15 - 1);
  if (!v15)
  {
    v18 = 0;
  }

  if (v15 == v16)
  {
    v10 = 0;
  }

  else
  {
    v10 = v18;
  }

  v102 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v102);
  if (DefiningOp)
  {
LABEL_18:
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v19 = *(DefiningOp + 72);
      if (*(v19 + 24) == *(*(v9 + 72) + 24))
      {
        v93 = *(v19 + 56);
        v34 = mlir::Value::getDefiningOp(&v93);
        if (v34)
        {
          v35 = v34;
          LODWORD(v103) = 1;
          v102 = 0;
          v94[0] = &v102;
          __src = 0;
          p_src = &__src;
          v40 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_src, v34) && ((v36 = *(*(*(v35 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v36 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v37 = v36 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v37 = 1), !v37 ? (v38 = v36 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v38 = 1), !v38 ? (v39 = v36 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v39 = 1), v39 && mlir::detail::constant_int_value_binder::match(v94, __src)) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v102);
          if (v103 >= 0x41 && v102)
          {
            MEMORY[0x259C63150](v102, 0x1000C8000313F17);
          }

          if (v40)
          {
            v45 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
            v46 = *v45 - 8;
            v37 = *v45 == 0;
            v49 = v45[3];
            v48 = v45 + 3;
            v47 = v49;
            if (v37)
            {
              v10 = 0;
            }

            else
            {
              v10 = v46;
            }

            v50 = (v47 - 1);
            if (!v47)
            {
              v50 = 0;
            }

            if (v47 != v48)
            {
              v11 = v50;
            }
          }
        }
      }
    }
  }

LABEL_20:
  v102 = *(*(v9 + 72) + 24);
  v20 = mlir::Value::getDefiningOp(&v102);
  if (v20)
  {
    if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v21 = *(v20 + 72);
      if (*(v21 + 24) == *(*(a2 + 72) + 24))
      {
        v93 = *(v21 + 56);
        v41 = mlir::Value::getDefiningOp(&v93);
        if (v41)
        {
          v42 = v41;
          LODWORD(v103) = 1;
          v102 = 0;
          v94[0] = &v102;
          __src = 0;
          p_src = &__src;
          v44 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_src, v41) && ((v43 = *(*(*(v42 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v43 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v43 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v43 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v43 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) && mlir::detail::constant_int_value_binder::match(v94, __src) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v102);
          if (v103 >= 0x41 && v102)
          {
            MEMORY[0x259C63150](v102, 0x1000C8000313F17);
          }

          if (v44)
          {
            v51 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
            v10 = *v51 ? *v51 - 8 : 0;
            v52 = v51[3];
            if (v52 != v51 + 3)
            {
              if (v52)
              {
                v11 = (v52 - 1);
              }

              else
              {
                v11 = 0;
              }
            }
          }
        }
      }
    }
  }

  if (v11 | v10)
  {
    v102 = v104;
    v103 = 0x600000000;
    v22 = 32 * *(v9 + 40) + ((*(v9 + 44) >> 21) & 0x7F8) + v9 + 64 + 16 * ((*(v9 + 44) >> 23) & 1);
    v87 = v9;
    if (*(v22 + 24) == v22 + 24)
    {
      goto LABEL_99;
    }

    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if ((*(v23 + 46) & 0x80) != 0)
    {
      v24 = *(v23 + 72);
      v25 = *(v23 + 68);
      __src = v101;
      v100 = 0x600000000;
      if (v25 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v25)
      {
        v27 = v101;
        v28 = v25;
        v29 = (v24 + 24);
        do
        {
          v30 = *v29;
          v29 += 4;
          *v27++ = v30;
          --v28;
        }

        while (v28);
        v31 = __src;
        v32 = (v100 + v25);
        LODWORD(v100) = v32;
        if (__src != v101)
        {
          if (v102 != v104)
          {
            free(v102);
            v31 = __src;
            LODWORD(v32) = v100;
          }

          v102 = v31;
          v103 = __PAIR64__(HIDWORD(v100), v32);
          __src = v101;
          HIDWORD(v100) = 0;
          goto LABEL_97;
        }

        v33 = v103;
        if (v103 >= v32)
        {
          if (v32)
          {
            memmove(v102, __src, 8 * v32);
          }
        }

        else
        {
          if (HIDWORD(v103) < v32)
          {
            LODWORD(v103) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v103)
          {
            memmove(v102, __src, 8 * v103);
          }

          else
          {
            v33 = 0;
          }

          if (v100 != v33)
          {
            memcpy(&v102[8 * v33], __src + 8 * v33, 8 * (v100 - v33));
          }
        }

LABEL_96:
        LODWORD(v103) = v32;
LABEL_97:
        LODWORD(v100) = 0;
        if (__src != v101)
        {
          free(__src);
        }

LABEL_99:
        v92 = *(v8 + 36);
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v85 = a2;
        v86 = v8;
        if ((*(v53 + 46) & 0x80) != 0)
        {
          v88 = *(v53 + 72);
          v91 = *(v53 + 68);
          v84 = (v8 - 16);
          if (v92)
          {
            v54 = (v8 - 16);
          }

          else
          {
            v54 = 0;
          }

          v90 = v54;
          if (!v92)
          {
            goto LABEL_137;
          }
        }

        else
        {
          v88 = 0;
          v84 = (v8 - 16);
          if (v92)
          {
            v83 = (v8 - 16);
          }

          else
          {
            v83 = 0;
          }

          v90 = v83;
          v91 = 0;
          if (!v92)
          {
            goto LABEL_137;
          }
        }

        if (v91 && v103)
        {
          v55 = 0;
          v56 = v102;
          v89 = &v102[8 * v103];
          while (1)
          {
            v57 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v90, v55);
            if (v57)
            {
              break;
            }

LABEL_134:
            if (++v55 != v92 && v55 != v91 && ++v56 != v89)
            {
              continue;
            }

            goto LABEL_137;
          }

          v58 = *(v88 + 32 * v55 + 24);
          while (1)
          {
            v59 = v57;
            v57 = *v57;
            if (v11)
            {
              Parent = mlir::Block::getParent(v11);
              v61 = *(v59[2] + 16);
              if (v61)
              {
                v62 = mlir::Block::getParent(v61);
                if (Parent == v62)
                {
                  goto LABEL_118;
                }
              }

              else
              {
                v62 = 0;
                if (!Parent)
                {
                  goto LABEL_118;
                }
              }

              if (mlir::Region::isProperAncestor(Parent, v62))
              {
LABEL_118:
                (*(*a3 + 40))(a3, v59[2]);
                v63 = v59[1];
                if (v63)
                {
                  v64 = *v59;
                  *v63 = *v59;
                  if (v64)
                  {
                    *(v64 + 8) = v63;
                  }
                }

                v59[3] = v58;
                v59[1] = v58;
                v65 = *v58;
                *v59 = *v58;
                v66 = v58;
                if (!v65)
                {
                  goto LABEL_110;
                }

                goto LABEL_109;
              }
            }

            if (!v10)
            {
              goto LABEL_111;
            }

            v67 = mlir::Block::getParent(v10);
            v68 = *(v59[2] + 16);
            if (v68)
            {
              v69 = mlir::Block::getParent(v68);
              if (v67 == v69)
              {
                goto LABEL_129;
              }
            }

            else
            {
              v69 = 0;
              if (!v67)
              {
                goto LABEL_129;
              }
            }

            if (!mlir::Region::isProperAncestor(v67, v69))
            {
              goto LABEL_111;
            }

LABEL_129:
            (*(*a3 + 40))(a3, v59[2]);
            v66 = *v56;
            v70 = v59[1];
            if (v70)
            {
              v71 = *v59;
              *v70 = *v59;
              if (v71)
              {
                *(v71 + 8) = v70;
              }
            }

            v59[3] = v66;
            v59[1] = v66;
            v65 = *v66;
            *v59 = *v66;
            if (!v65)
            {
              goto LABEL_110;
            }

LABEL_109:
            *(v65 + 8) = v59;
LABEL_110:
            *v66 = v59;
            (*(*a3 + 48))(a3, v59[2]);
LABEL_111:
            if (!v57)
            {
              goto LABEL_134;
            }
          }
        }

LABEL_137:
        v72 = *(v86 + 36);
        v73 = v84;
        if (!v72)
        {
          v73 = 0;
        }

        __src = v73;
        v100 = v72;
        mlir::ResultRange::getTypes(&p_src, &__src);
        __src = v101;
        v100 = 0x600000000;
        v74 = p_src;
        v75 = v96;
        v76 = v98;
        v77 = v98 - v96;
        if ((v98 - v96) >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v78 = 0;
        if (v98 != v96)
        {
          v79 = __src;
          do
          {
            *v79++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v74, v75++) + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v76 != v75);
          v78 = v100;
        }

        LODWORD(v100) = v78 + v77;
        v80 = *(v85 + 36);
        v81 = (v85 - 16);
        if (!v80)
        {
          v81 = 0;
        }

        v94[0] = v81;
        v94[1] = v80;
        mlir::ResultRange::getTypes(&p_src, v94);
        llvm::SmallVectorImpl<mlir::Type>::insert<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&__src, __src + 8 * v100, p_src, v96, v97, v98);
        v82 = *(v85 + 24);
        p_src = *(*(v87 + 72) + 24);
        LOBYTE(v94[0]) = 0;
        mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>((a3 + 1), v82, &__src, &p_src, v94);
      }
    }

    else
    {
      __src = v101;
      HIDWORD(v100) = 6;
    }

    LODWORD(v32) = 0;
    LODWORD(v100) = 0;
    goto LABEL_96;
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v15, a2, v11);
    mlir::TypeRange::TypeRange(v16, *a3, *(a3 + 8));
    mlir::scf::IfOp::build(a1, v15, v16[0], v16[1], *a4, *a5);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(v15, v16, v14);
}

char *llvm::SmallVectorImpl<mlir::Type>::insert<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(uint64_t *a1, uint64_t a2, mlir::detail::OpResultImpl *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a6 - a4;
  v15 = a6 - a4 + v12;
  if (*a1 + 8 * v12 != a2)
  {
    if (v15 > v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    __src = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 < v14)
    {
      v20 = v12 + v14;
      *(a1 + 2) = v20;
      if (v16 == v11)
      {
        v21 = (v10 + v11);
      }

      else
      {
        v28 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v28, __src, v18);
        v29 = __src;
        do
        {
          *v29++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
          --v19;
        }

        while (v19);
      }

      for (; a6 != v7; ++v7)
      {
        *v17++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      return v21;
    }

    v23 = 8 * v14;
    if (v12 + ((8 * v14) >> 3) > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == a4)
    {
      goto LABEL_29;
    }

    v25 = (*a1 + 8 * v12);
    v26 = 8 * a6 - 8 * a4 - 8;
    if (v26 >= 0x38)
    {
      v30 = 8 * v12 + *a1;
      v27 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v30 - v24) >= 0x20)
      {
        v31 = (v26 >> 3) + 1;
        v32 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        v25 = (v25 + v32 * 8);
        v27 = &v24[v32];
        v33 = (8 * a4 + v16 - 8 * a6 + v10 + 16);
        v34 = (v30 + 16);
        v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v27 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v37 = *v27++;
      *v25++ = v37;
    }

    while (v27 != v17);
LABEL_29:
    *(a1 + 2) = v12 + v14;
    v21 = __src;
    if (v24 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v38 = __src;
      do
      {
        *v38++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6 != a4)
  {
    v22 = (v10 + 8 * v12);
    do
    {
      *v22++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (a6 != v7);
    LODWORD(v12) = *(a1 + 2);
    v10 = *a1;
  }

  *(a1 + 2) = v12 + v14;
  return (v10 + v11);
}

void anonymous namespace::CombineNestedIfs::~CombineNestedIfs(_anonymous_namespace_::CombineNestedIfs *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::CombineNestedIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v68[2] = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v4)
  {
    v5 = *v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = (v5 + 32);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = *v7;
  if (v6 == v8 || v6[1] != v8)
  {
    return 0;
  }

  v14 = v4[3];
  v12 = v4 + 3;
  v13 = v14;
  if (v14 && v13 != v12)
  {
    v27 = v13[4];
    v28 = v13 + 3;
    if (v27 == v28 || *(v27 + 8) != v28)
    {
      return 0;
    }
  }

  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  v17 = *(*(v16 + 48) + 16);
  v18 = v17 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v16 : 0;
  if (v17 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v19 = v16 + 64 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 32 * *(v16 + 40);
  v22 = *(v19 + 24);
  v21 = v19 + 24;
  v20 = v22;
  if (v22 && v20 != v21)
  {
    v29 = *(v20 + 32);
    v30 = v20 + 24;
    if (v29 == v30 || *(v29 + 8) != v30)
    {
      return 0;
    }
  }

  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  if ((*(v24 + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 72);
    v26 = *(v24 + 68);
    v65 = v67;
    v66 = 0x600000000;
    if (v26 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v26)
    {
      v31 = v67;
      v32 = v26;
      v33 = (v25 + 24);
      do
      {
        v34 = *v33;
        v33 += 4;
        *v31++ = v34;
        --v32;
      }

      while (v32);
      v35 = v66;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    LODWORD(v26) = 0;
    v35 = 0;
    v65 = v67;
    HIDWORD(v66) = 6;
  }

  v36 = v35 + v26;
  LODWORD(v66) = v36;
  v37 = *(a2 + 40);
  v38 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v62 = v64;
  v63 = 0x600000000;
  v39 = ((v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v37;
  v42 = *(v39 + 24);
  v41 = v39 + 24;
  v40 = v42;
  if (v42)
  {
    v43 = v40 == v41;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if ((*(v44 + 46) & 0x80) != 0)
    {
      v45 = *(v44 + 72);
      v46 = *(v44 + 68);
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v62, v62 + 8 * v63, v45, 0, v45, v46);
    v36 = v66;
  }

  v59 = v61;
  v60 = 0xC00000000;
  if (!v36)
  {
LABEL_60:
    v54 = *(a2 + 24);
    v58 = *(*(a2 + 72) + 24);
    v68[0] = *(*(v18 + 72) + 24);
    v57 = mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 1), v54, &v58, v68) - 16;
    v55 = *(a2 + 36);
    v56 = a2 - 16;
    if (!v55)
    {
      v56 = 0;
    }

    v68[0] = v56;
    v68[1] = v55;
    mlir::ResultRange::getTypes(&v58, v68);
    mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>((a3 + 1), v54, &v58, &v57);
  }

  v47 = 0;
  v48 = v65;
  v49 = 8 * v36;
  while (1)
  {
    while (mlir::Value::getDefiningOp(v48) != v18)
    {
      if (mlir::Value::getParentRegion(v48) == (((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)))
      {
        goto LABEL_63;
      }

      if (v60 >= HIDWORD(v60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v59 + v60) = v47;
      LODWORD(v60) = v60 + 1;
      ++v47;
      v48 = (v48 + 8);
      v49 -= 8;
      if (!v49)
      {
        goto LABEL_60;
      }
    }

    v50 = *(*v48 + 8) & 7;
    if (*v48)
    {
      v51 = v50 == 6;
    }

    else
    {
      v51 = 0;
    }

    if (v51)
    {
      v50 = (*(*v48 + 16) + 6);
    }

    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if (*(*(v52 + 72) + 32 * v50 + 24) != *(v62 + v47))
    {
      break;
    }

    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    *(v65 + v47++) = *(*(v53 + 72) + 32 * v50 + 24);
    v48 = (v48 + 8);
    v49 -= 8;
    if (!v49)
    {
      goto LABEL_60;
    }
  }

LABEL_63:
  result = 0;
  if (v59 != v61)
  {
    free(v59);
    result = 0;
  }

  if (v62 != v64)
  {
    free(v62);
    result = 0;
  }

  if (v65 != v67)
  {
    free(v65);
    return 0;
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::AndIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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

void mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v15, a2, v9);
    NextResultAtOffset = *a3;
    v12 = a3[1];
    v13 = a3[3];
    if (v12)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
    }

    mlir::ValueRange::ValueRange(v17, NextResultAtOffset, v13 - v12);
    mlir::TypeRange::TypeRange(v16, v17[0], v17[1]);
    mlir::scf::IfOp::build(a1, v15, v16[0], v16[1], *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(v15, v17, v16);
}

char *mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::SelectOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(uint64_t *a1, uint64_t a2, mlir::detail::OpResultImpl *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a6 - a4;
  v15 = a6 - a4 + v12;
  if (*a1 + 8 * v12 != a2)
  {
    if (v15 > v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    __src = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 < v14)
    {
      v20 = v12 + v14;
      *(a1 + 2) = v20;
      if (v16 == v11)
      {
        v21 = (v10 + v11);
      }

      else
      {
        v28 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v28, __src, v18);
        v29 = __src;
        do
        {
          *v29++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++);
          --v19;
        }

        while (v19);
      }

      for (; a6 != v7; ++v7)
      {
        *v17++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7);
      }

      return v21;
    }

    v23 = 8 * v14;
    if (v12 + ((8 * v14) >> 3) > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == a4)
    {
      goto LABEL_29;
    }

    v25 = (*a1 + 8 * v12);
    v26 = 8 * a6 - 8 * a4 - 8;
    if (v26 >= 0x38)
    {
      v30 = 8 * v12 + *a1;
      v27 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v30 - v24) >= 0x20)
      {
        v31 = (v26 >> 3) + 1;
        v32 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        v25 = (v25 + v32 * 8);
        v27 = &v24[v32];
        v33 = (8 * a4 + v16 - 8 * a6 + v10 + 16);
        v34 = (v30 + 16);
        v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v27 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v37 = *v27++;
      *v25++ = v37;
    }

    while (v27 != v17);
LABEL_29:
    *(a1 + 2) = v12 + v14;
    v21 = __src;
    if (v24 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v38 = __src;
      do
      {
        *v38++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++);
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6 != a4)
  {
    v22 = (v10 + 8 * v12);
    do
    {
      *v22++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++);
    }

    while (a6 != v7);
    LODWORD(v12) = *(a1 + 2);
    v10 = *a1;
  }

  *(a1 + 2) = v12 + v14;
  return (v10 + v11);
}

void anonymous namespace::ConditionPropagation::~ConditionPropagation(_anonymous_namespace_::ConditionPropagation *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ConditionPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  I1Type = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&I1Type);
  if (DefiningOp)
  {
    {
      v29 = DefiningOp;
      DefiningOp = v29;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return 0;
    }
  }

  I1Type = mlir::Builder::getI1Type(a3 + 1);
  v7 = **(*(a2 + 72) + 24);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v30 = 0;
    v10 = a2 + 64;
    while (1)
    {
      v11 = *v7;
      v12 = *(a2 + 40);
      v13 = *(a2 + 44);
      v14 = *(v7[2] + 16);
      v15 = v14 ? mlir::Block::getParent(v14) : 0;
      v16 = (((v10 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v12);
      if (v15 == v16 || mlir::Region::isProperAncestor(v16, v15))
      {
        break;
      }

      v23 = (((v10 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24);
      v24 = *(v7[2] + 16);
      if (v24)
      {
        Parent = mlir::Block::getParent(v24);
        if (v23 != Parent && !mlir::Region::isProperAncestor(v23, Parent))
        {
          goto LABEL_10;
        }
      }

      else if (!mlir::Region::isProperAncestor(v23, 0))
      {
        goto LABEL_10;
      }

      v18 = v30;
      if (!v30)
      {
        v26 = *(a2 + 24);
        IntegerAttr = mlir::Builder::getIntegerAttr((a3 + 1), I1Type, 0);
        v18 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>((a3 + 1), v26, &I1Type, &IntegerAttr) - 16;
      }

      v19 = v7[2];
      ((*a3)[5])(a3, v19);
      v27 = v7[1];
      if (v27)
      {
        v28 = *v7;
        *v27 = *v7;
        if (v28)
        {
          v28[1] = v27;
        }
      }

      v7[3] = v18;
      v7[1] = v18;
      v22 = *v18;
      *v7 = *v18;
      v30 = v18;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_9:
      *v18 = v7;
      ((*a3)[6])(a3, v19);
      v8 = 1;
LABEL_10:
      v7 = v11;
      if (!v11)
      {
        return v8 & 1;
      }
    }

    if (!v9)
    {
      v17 = *(a2 + 24);
      IntegerAttr = mlir::Builder::getIntegerAttr((a3 + 1), I1Type, 1);
      v9 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>((a3 + 1), v17, &I1Type, &IntegerAttr) - 16;
    }

    v18 = v9;
    v19 = v7[2];
    ((*a3)[5])(a3, v19);
    v20 = v7[1];
    if (v20)
    {
      v21 = *v7;
      *v20 = *v7;
      if (v21)
      {
        v21[1] = v20;
      }
    }

    v7[3] = v9;
    v7[1] = v9;
    v22 = *v9;
    *v7 = *v9;
    if (!v22)
    {
      goto LABEL_9;
    }

LABEL_8:
    *(v22 + 8) = v7;
    goto LABEL_9;
  }

  v8 = 0;
  return v8 & 1;
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t ****a4)
{
  v32[38] = *MEMORY[0x277D85DE8];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v32, v31, v30);
  }

  mlir::OperationState::OperationState(v32, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (!*a4)
  {
    goto LABEL_16;
  }

  v13 = *v12;
  {
    v23 = v11;
    v24 = v12;
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>();
    v12 = v24;
    v11 = v23;
    v14 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_5:
  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 == &v15[2 * v16] || *v17 != v14)
  {
    goto LABEL_16;
  }

  v25 = v17[1];
LABEL_17:
  mlir::arith::ConstantOp::build(a1, v32, v11, v12, v25);
  v26 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v26 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v27;
}

void anonymous namespace::ConvertTrivialIfToSelect::~ConvertTrivialIfToSelect(_anonymous_namespace_::ConvertTrivialIfToSelect *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ConvertTrivialIfToSelect::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  if (*(a2 + 36))
  {
    v23 = *(*(a2 + 72) + 24);
    v5 = a2 + 64;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if ((*(v6 + 46) & 0x80) != 0)
    {
      v7 = *(v6 + 72);
      v8 = *(v6 + 68);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    v22 = a3;
    if ((*(v9 + 46) & 0x80) != 0)
    {
      v10 = *(v9 + 72);
      v11 = *(v9 + 68);
      v26 = v28;
      v27 = 0x600000000;
      if (v8 && v11)
      {
        v12 = v8 - 1;
        v13 = v11 - 1;
        v14 = 24;
        do
        {
          v15 = *(v10 + v14);
          v24 = *(v7 + v14);
          v25[0] = v15;
          v16 = (((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
          if (mlir::Value::getParentRegion(&v24) == v16 || (v17 = (((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24), v17 == mlir::Value::getParentRegion(v25)))
          {
            if (v27 >= HIDWORD(v27))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v26[v27] = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v27) = v27 + 1;
          }

          v18 = v13-- != 0;
          v19 = v18;
          v18 = v12-- != 0;
          if (!v18)
          {
            break;
          }

          v14 += 32;
        }

        while ((v19 & 1) != 0);
        a3 = v22;
        if (v27 != *(a2 + 36))
        {
LABEL_25:
          v20 = *(a2 + 24);
          LOBYTE(v24) = 0;
          mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>((a3 + 1), v20, &v26, &v23, &v24);
        }
      }

      else if (*(a2 + 36))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = v28;
      v27 = 0x600000000;
      if (*(a2 + 36))
      {
        goto LABEL_25;
      }
    }

    if (v26 != v28)
    {
      free(v26);
    }
  }

  return 0;
}

void anonymous namespace::RemoveEmptyElseBranch::~RemoveEmptyElseBranch(_anonymous_namespace_::RemoveEmptyElseBranch *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::RemoveEmptyElseBranch::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  if (!*(a2 + 9))
  {
    v3 = ((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
    v6 = *(v3 + 24);
    v5 = v3 + 24;
    v4 = v6;
    if (v6)
    {
      v7 = v4 == v5;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = *(v4 + 32);
      v9 = v4 + 24;
      if (v8 != v9 && *(v8 + 8) == v9)
      {
        mlir::Operation::cloneWithoutRegions(a2);
      }
    }
  }

  return 0;
}

void anonymous namespace::RemoveStaticCondition::~RemoveStaticCondition(_anonymous_namespace_::RemoveStaticCondition *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::RemoveStaticCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v17 = 0;
  v18 = &v17;
  v20[0] = v5;
  result = mlir::Value::getDefiningOp(v20);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v18, result);
    if (result)
    {
      Value = mlir::BoolAttr::getValue(&v17);
      v8 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
      if (Value)
      {
        mlir::ValueRange::ValueRange(&v18, 0, 0);
        v9 = v18;
        v10 = v19;
        v11 = v8[1];
      }

      else
      {
        if (v8[3] == v8 + 3)
        {
          (*(*a3 + 16))(a3, a2);
          return 1;
        }

        mlir::ValueRange::ValueRange(&v18, 0, 0);
        v9 = v18;
        v10 = v19;
        v11 = v8[4];
      }

      if (v11)
      {
        v12 = (v11 - 8);
      }

      else
      {
        v12 = 0;
      }

      mlir::Block::getTerminator(v12);
      v14 = v13;
      if ((*(v13 + 46) & 0x80) != 0)
      {
        v15 = *(v13 + 72);
        v16 = *(v13 + 68);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      mlir::ValueRange::ValueRange(v20, v15, v16);
      mlir::RewriterBase::inlineBlockBefore(a3, v12, a2, v9, v10);
      (**a3)(a3, a2, v20[0], v20[1]);
      (*(*a3 + 16))(a3, v14);
      return 1;
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::BoolAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = (*v8[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::BoolAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

void anonymous namespace::RemoveUnusedResults::~RemoveUnusedResults(_anonymous_namespace_::RemoveUnusedResults *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::RemoveUnusedResults::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, void *, void *))
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i))
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        if (v19 >= HIDWORD(v19))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v18 + v19) = NextResultAtOffset;
        LODWORD(v19) = v19 + 1;
      }
    }

    v9 = v18;
    if (v19 != *(a2 + 36))
    {
      v15 = &v17;
      v16 = 0x400000000;
      if (v19)
      {
        v10 = 0;
        v11 = 8 * v19;
        do
        {
          if (v10 >= HIDWORD(v16))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v15 + v10) = *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8;
          v10 = v16 + 1;
          LODWORD(v16) = v16 + 1;
          v9 += 8;
          v11 -= 8;
        }

        while (v11);
      }

      v12 = *(a2 + 24);
      v14 = *(*(a2 + 72) + 24);
      mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,4u> &,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 1), v12, &v15, &v14);
    }

    if (v18 != v20)
    {
      free(v18);
    }
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,4u> &,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v13, a2, v9);
    mlir::TypeRange::TypeRange(v14, *a3, *(a3 + 8));
    mlir::scf::IfOp::build(a1, v13, v14[0], v14[1], *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(v13, v14, v12);
}

void anonymous namespace::RemoveUnusedResults::transferBody(uint64_t a1, mlir::Block *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(&v16, 0, 0);
  mlir::RewriterBase::mergeBlocks(a5, a1, a2, v16, v17);
  mlir::Block::getTerminator(a2);
  v11 = v10;
  v16 = v18;
  v17 = 0x400000000;
  if (a4)
  {
    v12 = 0;
    v13 = 8 * a4;
    do
    {
      v14 = *(*a3 + 8) & 7;
      if (*a3)
      {
        v15 = v14 == 6;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v14 = (*(*a3 + 16) + 6);
      }

      if (v12 >= HIDWORD(v17))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v16 + v12) = *(v10[9] + 32 * v14 + 24);
      v12 = v17 + 1;
      LODWORD(v17) = v17 + 1;
      a3 += 8;
      v13 -= 8;
    }

    while (v13);
  }

  (*(*a5 + 40))(a5, v10);
  mlir::ValueRange::ValueRange(&v19, v16, v17);
  mlir::Operation::setOperands(v11, v19, v20);
  (*(*a5 + 48))(a5, v11);
  if (v16 != v18)
  {
    free(v16);
  }
}

void anonymous namespace::ReplaceIfYieldWithConditionOrValue::~ReplaceIfYieldWithConditionOrValue(_anonymous_namespace_::ReplaceIfYieldWithConditionOrValue *this)
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

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ReplaceIfYieldWithConditionOrValue::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!*(a2 + 36))
  {
    return 0;
  }

  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  mlir::Block::getTerminator(v7);
  v9 = v8;
  v10 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24);
  if (v10)
  {
    v11 = (v10 - 8);
  }

  else
  {
    v11 = 0;
  }

  mlir::Block::getTerminator(v11);
  v13 = v12;
  a3[3] = *(a2 + 16);
  a3[4] = a2;
  I1Type = mlir::Builder::getI1Type(a3 + 1);
  if ((*(v9 + 46) & 0x80) == 0)
  {
    v15 = 0;
    v14 = 0;
    v53 = a2;
    v51 = a3;
    if ((*(v13 + 46) & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_65:
    v17 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v14 = *(v9 + 68);
  v15 = *(v9 + 72);
  v53 = a2;
  v51 = a3;
  if ((*(v13 + 46) & 0x80) == 0)
  {
    goto LABEL_65;
  }

LABEL_10:
  v16 = *(v13 + 68);
  v17 = *(v13 + 72);
LABEL_11:
  v18 = 0;
  v19 = *(v53 + 36);
  if (v19)
  {
    v20 = v53 - 16;
  }

  else
  {
    v20 = 0;
  }

  if (v14 && v16 && v19)
  {
    v18 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *(v15 + 32 * v21 + 24);
      v23 = *(v17 + 32 * v21 + 24);
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, v21);
      v58 = v22;
      v59 = v23;
      v60 = NextResultAtOffset;
      if (v22 == v23)
      {
        v30 = *NextResultAtOffset;
        if (*NextResultAtOffset)
        {
          do
          {
            v31 = v30[1];
            if (v31)
            {
              v32 = *v30;
              *v31 = *v30;
              if (v32)
              {
                *(v32 + 8) = v31;
              }
            }

            v30[3] = v22;
            v30[1] = v22;
            v33 = *v22;
            *v30 = *v22;
            if (v33)
            {
              v33[1] = v30;
            }

            *v22 = v30;
            v30 = *NextResultAtOffset;
          }

          while (*NextResultAtOffset);
          v18 = 1;
        }

        goto LABEL_37;
      }

      v56 = 0;
      v57 = 0;
      v55 = &v57;
      v61 = v22;
      DefiningOp = mlir::Value::getDefiningOp(&v61);
      if (!DefiningOp)
      {
        goto LABEL_37;
      }

      if (!mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v55, DefiningOp))
      {
        goto LABEL_37;
      }

      v54 = &v56;
      v61 = v59;
      v26 = mlir::Value::getDefiningOp(&v61);
      if (!v26 || (mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v54, v26) & 1) == 0)
      {
        goto LABEL_37;
      }

      Value = mlir::BoolAttr::getValue(&v57);
      LODWORD(v28) = mlir::BoolAttr::getValue(&v56);
      if (Value || !v28 || !*v60)
      {
        goto LABEL_51;
      }

      v50 = v28;
      v29 = *(mlir::Value::getDefiningOp(&v58) + 48);
      if (*(v29 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v61 = *(v29 + 8);
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v61);
      }

      else
      {
        ReferencedDialect = *(v29 + 24);
      }

      v49 = *(v53 + 24);
      v61 = *(*(v53 + 72) + 24);
      v18 = 1;
      IntegerAttr = mlir::Builder::getIntegerAttr((v51 + 1), I1Type, 1);
      v55 = ((*(*ReferencedDialect + 24))(ReferencedDialect, v51 + 1, IntegerAttr, I1Type, *(v53 + 24)) - 16);
      v28 = mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>((v51 + 1), v49, &v61, &v55);
      v35 = v60;
      v36 = *v60;
      if (*v60)
      {
        break;
      }

      if (!(v50 & 1 | !Value))
      {
LABEL_52:
        v41 = v60;
        v42 = *v60;
        if (*v60)
        {
          v43 = *(*(v53 + 72) + 24);
          do
          {
            v44 = v42[1];
            if (v44)
            {
              v45 = *v42;
              *v44 = *v42;
              if (v45)
              {
                *(v45 + 8) = v44;
              }
            }

            v42[3] = v43;
            v42[1] = v43;
            v46 = *v43;
            *v42 = *v43;
            if (v46)
            {
              *(v46 + 8) = v42;
            }

            *v43 = v42;
            v42 = *v41;
            v18 = 1;
          }

          while (*v41);
        }
      }

LABEL_37:
      if (++v21 == v14 || v21 == v16 || v21 == v19)
      {
        return v18 & 1;
      }
    }

    v37 = v28 - 16;
    LOBYTE(v28) = v50;
    do
    {
      v38 = v36[1];
      if (v38)
      {
        v39 = *v36;
        *v38 = *v36;
        if (v39)
        {
          *(v39 + 8) = v38;
        }
      }

      v36[3] = v37;
      v36[1] = v37;
      v40 = *v37;
      *v36 = *v37;
      if (v40)
      {
        *(v40 + 8) = v36;
      }

      *v37 = v36;
      v36 = *v35;
    }

    while (*v35);
    v18 = 1;
LABEL_51:
    if (!(v28 & 1 | !Value))
    {
      goto LABEL_52;
    }

    goto LABEL_37;
  }

  return v18 & 1;
}

char *mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::XOrIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.reduce", 0xAuLL);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::~ParallelOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ParallelOpSingleOrZeroIterationDimsFolder *this)
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

  JUMPOUT(0x259C63180);
}