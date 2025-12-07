const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::ParallelCombiningOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ParallelCombiningOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ParallelCombiningOpInterface::Trait<Empty>]";
  v6 = 98;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::scf::InParallelOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroResults<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroOperands<mlir::scf::InParallelOp>,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>,mlir::OpTrait::NoTerminator<mlir::scf::InParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::InParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::InParallelOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::IsTerminator<mlir::scf::InParallelOp>,mlir::ParallelCombiningOpInterface::Trait<mlir::scf::InParallelOp>,mlir::RegionKindInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::scf::InParallelOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  return mlir::scf::InParallelOp::verify(&v4) & 1;
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroResults<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroOperands<mlir::scf::InParallelOp>,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>,mlir::OpTrait::NoTerminator<mlir::scf::InParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::InParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::InParallelOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::IsTerminator<mlir::scf::InParallelOp>,mlir::ParallelCombiningOpInterface::Trait<mlir::scf::InParallelOp>,mlir::RegionKindInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::scf::InParallelOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>::verifyTrait(a1) && mlir::OpTrait::SingleBlock<mlir::ModuleOp>::verifyTrait(a1) && mlir::op_definition_impl::verifyTrait<mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>>(a1) && (mlir::OpTrait::impl::verifyIsTerminator(a1, v6))
  {
    return mlir::detail::verifyParallelCombiningOpInterface(a1, v7) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "scf.forall";
    v35 = 10;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "scf.forall";
    v35 = 10;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
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

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
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
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
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
  v6 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 5 && *result == 1702060387 && *(result + 4) == 115)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
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

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "cases", 5uLL, v5);
  }
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
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
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ExecuteRegionOp>>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
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

BOOL mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1)
{
  if ((mlir::OpTrait::impl::verifyAtLeastNRegions(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1))
  {
    return 0;
  }

  v5 = a1;
  if ((mlir::scf::IndexSwitchOp::verifyInvariantsImpl(&v5) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::scf::IndexSwitchOp::verify(&v5);
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

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *MEMORY[0x1E69E9840];
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
  v6 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  Context = mlir::Attribute::getContext((a2 + 24));
  if (a4 == 19)
  {
    if (*a3 != 0x53646E617265706FLL || a3[1] != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
    {
      return 0;
    }
  }

  else
  {
    if (a4 != 21)
    {
      return 0;
    }

    v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    if (!v8 || *(a3 + 13) != 0x73657A69735F746ELL)
    {
      return 0;
    }
  }

  return mlir::detail::DenseArrayAttrImpl<int>::get(Context, (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), 4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::scf::ParallelOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v6);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::scf::ParallelOp::getPropertiesAsAttr(Context, v4);
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
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
    Context = mlir::Attribute::getContext((a2 + 24));
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 64), 4);
    (*(*a3 + 16))(a3, v7);
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
    mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
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
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ExecuteRegionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::scf::ForallOp::getSuccessorRegions(&v6, a2, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::scf::ForallOp::getSuccessorRegions(&v5, a2, a4).n128_u64[0];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
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

  if (!mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13))
  {
    return 0;
  }

  if (!mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1))
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
  if (mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::verifyRegionTrait(a1) & 1) != 0 && (mlir::detail::verifyLoopLikeOpInterface(a1, v2))
  {
    return mlir::detail::verifyTypesAlongControlFlowEdges(a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::verifyRegionTrait(uint64_t a1)
{
  v31[25] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 44) & 0x7FFFFF;
  if (v1)
  {
    v3 = 0;
    v4 = a1 + 64;
    v5 = 24 * v1;
    while (1)
    {
      v6 = (((v4 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + v3);
      if (v6 != *v6)
      {
        v7 = v6[1];
        v8 = v7 ? v7 - 8 : 0;
        ZinIrHalH13g::~ZinIrHalH13g(*(v8 + 32));
        v10 = *(v9 + 48);
        if (*(v10 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
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

    v19 = 1283;
    v18[0] = "expects regions to end with '";
    v18[2] = "scf.reduce";
    v18[3] = 10;
    v20[0] = v18;
    v20[2] = "', found '";
    v21 = 770;
    v30 = *(v10 + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v30);
    v13 = v21;
    if (v21 == 1)
    {
      v22 = AttrData;
      v23 = v12;
      v26 = 261;
      v14 = 5;
    }

    else
    {
      if (!v21)
      {
        v14 = 0;
        v26 = 256;
        v15 = 1;
        goto LABEL_18;
      }

      v17 = v20[0];
      v14 = 2;
      if (HIBYTE(v21) != 1)
      {
        v13 = 2;
        v17 = v20;
      }

      v22 = v17;
      v23 = v20[1];
      v24 = AttrData;
      v25 = v12;
      LOBYTE(v26) = v13;
      HIBYTE(v26) = 5;
      AttrData = &v22;
    }

    v27[0] = AttrData;
    v27[1] = v12;
    v27[2] = "'";
    v15 = 3;
LABEL_18:
    v28 = v14;
    v29 = v15;
    mlir::Operation::emitOpError(a1, v27, &v30);
    mlir::Diagnostic::attachNote(v31, 0, 0);
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *MEMORY[0x1E69E9840];
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
  v6 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    while (mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, v7, "reductions", 10, v6))
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

BOOL mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "scf.parallel";
    v35 = 12;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "scf.parallel";
    v35 = 12;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
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

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
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
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *MEMORY[0x1E69E9840];
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
  v6 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::memref::AtomicYieldOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0 || !mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>::verifyTrait(a1) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a1;
  return mlir::scf::ReduceReturnOp::verify(&v8) & 1;
}

BOOL mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "scf.reduce";
    v35 = 10;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "scf.reduce";
    v35 = 10;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
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

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
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
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *MEMORY[0x1E69E9840];
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
  v6 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
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
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ExecuteRegionOp>>();
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
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
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
    mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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

uint64_t mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1)
{
  if ((mlir::OpTrait::impl::verifyNRegions(a1, 2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1))
  {
    return 0;
  }

  v4 = a1;
  if (!mlir::scf::WhileOp::verifyInvariantsImpl(&v4))
  {
    return 0;
  }

  v4 = a1;
  return mlir::scf::WhileOp::verify(&v4) & 1;
}

uint64_t mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyTypesAlongControlFlowEdges(a1, a2))
  {
    return mlir::detail::verifyLoopLikeOpInterface(a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
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
  v10 = *MEMORY[0x1E69E9840];
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
  v6 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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

BOOL mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::scf::YieldOp>::verifyTrait(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
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

  v33 = 257;
  mlir::Operation::emitOpError(a1, &v32, &v41);
  if (!v41)
  {
    goto LABEL_22;
  }

  LODWORD(v35) = 3;
  *(&v35 + 1) = "expects parent op ";
  *&v36 = 18;
  v7 = &v35;
  v8 = v43;
  if (v44 >= v45)
  {
    if (v43 <= &v35 && v43 + 24 * v44 > &v35)
    {
      v29 = &v35 - v43;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
      v8 = v43;
      v7 = (v43 + v29);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
      v7 = &v35;
      v8 = v43;
    }
  }

  v9 = &v8[24 * v44];
  v10 = *v7;
  *(v9 + 2) = *(v7 + 2);
  *v9 = v10;
  v11 = ++v44;
  if (v41)
  {
    LODWORD(v35) = 3;
    *(&v35 + 1) = "to be one of '";
    *&v36 = 14;
    v12 = &v35;
    v13 = v43;
    if (v11 >= v45)
    {
      if (v43 <= &v35 && v43 + 24 * v11 > &v35)
      {
        v30 = &v35 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
        v13 = v43;
        v12 = (v43 + v30);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
        v12 = &v35;
        v13 = v43;
      }
    }

    v14 = &v13[24 * v44];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v44;
    v37 = xmmword_1E77C4EE0;
    v38 = *&off_1E77C4EF0;
    v39 = xmmword_1E77C4F00;
    v35 = xmmword_1E77C4EC0;
    v36 = *&off_1E77C4ED0;
    if (v41)
    {
      v34[0] = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v35, &v40, v42, v42, v34);
      if (v41)
      {
        LODWORD(v34[0]) = 3;
        v34[1] = "'";
        v34[2] = 1;
        v16 = v34;
        v17 = v43;
        if (v44 >= v45)
        {
          if (v43 <= v34 && v43 + 24 * v44 > v34)
          {
            v31 = v34 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v17 = v43;
            v16 = (v43 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v16 = v34;
            v17 = v43;
          }
        }

        v18 = &v17[24 * v44];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v44;
      }
    }
  }

  else
  {
LABEL_22:
    v37 = xmmword_1E77C4EE0;
    v38 = *&off_1E77C4EF0;
    v39 = xmmword_1E77C4F00;
    v35 = xmmword_1E77C4EC0;
    v36 = *&off_1E77C4ED0;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
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

    v20 = __p;
    if (__p)
    {
      v21 = v50;
      v22 = __p;
      if (v50 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v50 = v20;
      operator delete(v22);
    }

    v23 = v47;
    if (v47)
    {
      v24 = v48;
      v25 = v47;
      if (v48 != v47)
      {
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
        v25 = v47;
      }

      v48 = v23;
      operator delete(v25);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v6;
}

void anonymous namespace::SCFInlinerInterface::~SCFInlinerInterface(_anonymous_namespace_::SCFInlinerInterface *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
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

  JUMPOUT(0x1AC55A070);
}

uint64_t SingleBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
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

  JUMPOUT(0x1AC55A070);
}

uint64_t MultiBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t ***a2, mlir::RewriterBase *a3)
{
  v8 = *MEMORY[0x1E69E9840];
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v16[5] = *MEMORY[0x1E69E9840];
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::cf::BranchOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  v14 = v4;
  v7 = &v14;
  mlir::ValueRange::ValueRange(v15, v5, v6);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *(a1 + 12))
  {
    if (v9 <= &v14 && v9 + 24 * v8 > &v14)
    {
      v13 = &v15[-1] - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + 1, 24);
      v9 = *a1;
      v7 = &v13[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + 1, 24);
      v9 = *a1;
      v7 = &v14;
    }
  }

  v10 = v9 + 24 * *(a1 + 8);
  v11 = *v7;
  *(v10 + 16) = *(v7 + 2);
  *v10 = v11;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 24 * v10 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(uint64_t a1, uint64_t *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = a2[1];
  v12 = 0;
  v5 = &v12;
  mlir::ValueRange::ValueRange(v13, v4, v3);
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= &v12 && v7 + 24 * v6 > &v12)
    {
      v11 = &v13[-1] - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 24);
      v7 = *a1;
      v5 = &v11[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 24);
      v7 = *a1;
      v5 = &v12;
    }
  }

  v8 = v7 + 24 * *(a1 + 8);
  v9 = *v5;
  *(v8 + 16) = *(v5 + 2);
  *v8 = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 24 * v8 - 24;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
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
      v25 = a6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
      a6 = v25;
      v13 = *(a1 + 2);
      v10 = *a1;
    }

    if (a6 != v6)
    {
      v26 = (v10 + 8 * v13);
      if (v14 < 0x14)
      {
        goto LABEL_20;
      }

      v27 = a3 + 32 * v6;
      if (v26 < a3 + 32 * a6 && v27 + 24 < v10 + 8 * (a6 + v13 - v6))
      {
        goto LABEL_20;
      }

      v29 = &v26[v14 & 0xFFFFFFFFFFFFFFFCLL];
      v6 += v14 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = (v27 + 88);
      v31 = v26 + 2;
      v32 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v33 = v30 + 4;
        *&v34 = *(v30 - 8);
        *(&v34 + 1) = *(v30 - 4);
        v35 = *v30;
        v30 += 16;
        *&v36 = v35;
        *(&v36 + 1) = *v33;
        *(v31 - 1) = v34;
        *v31 = v36;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      v26 = v29;
      if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_20:
        v37 = a6 - v6;
        v38 = (a3 + 32 * v6 + 24);
        do
        {
          v39 = *v38;
          v38 += 4;
          *v26++ = v39;
          --v37;
        }

        while (v37);
      }

      LODWORD(v13) = *(a1 + 2);
      v10 = *a1;
    }

    *(a1 + 2) = v13 + v14;
    return (v10 + v11);
  }

  v96 = a3;
  v97 = a6;
  if (v15 > v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
    v10 = *a1;
    v13 = *(a1 + 2);
  }

  v17 = (v10 + v11);
  v18 = 8 * v13;
  v19 = (v10 + 8 * v13);
  v20 = v11;
  v21 = 8 * v13 - v11;
  v22 = v21 >> 3;
  v95 = v20;
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
        v56 = (v96 + 32 * v6 + 24);
        v6 += v22;
        do
        {
          v57 = *v56;
          v56 += 4;
          *v24++ = v57;
          --v22;
        }

        while (v22);
        goto LABEL_36;
      }

      v47 = v96 + 32 * v6;
      v17 = v23;
      v18 = 8 * v13;
      if (v23 < v47 + 4 * v21)
      {
        v24 = v23;
        if (v47 + 24 < (v10 + v21 + a2 - v9))
        {
          goto LABEL_34;
        }
      }

      v6 += v22 & 0xFFFFFFFFFFFFFFFCLL;
      v48 = (v95 + v10 + 16);
      v49 = (v47 + 88);
      v50 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = (v23 + 8 * (v22 & 0xFFFFFFFFFFFFFFFCLL));
      do
      {
        v51 = v49 + 4;
        *&v52 = *(v49 - 8);
        *(&v52 + 1) = *(v49 - 4);
        v53 = *v49;
        v49 += 16;
        *&v54 = v53;
        *(&v54 + 1) = *v51;
        *(v48 - 1) = v52;
        *v48 = v54;
        v48 += 2;
        v50 -= 4;
      }

      while (v50);
      v55 = v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL);
      v22 = (v21 >> 3) & 3;
      if (!v55)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v58 = v97 - v6;
    if (v97 != v6)
    {
      if (v58 < 0x14)
      {
        goto LABEL_43;
      }

      v59 = v96 + 32 * v6;
      if (v19 < v96 + 32 * v97 && v59 + 24 < v10 + 8 * (v97 + v13 - v6))
      {
        goto LABEL_43;
      }

      v19 += 8 * (v58 & 0xFFFFFFFFFFFFFFFCLL);
      v6 += v58 & 0xFFFFFFFFFFFFFFFCLL;
      v60 = (v59 + 88);
      v61 = (v18 + v10 + 16);
      v62 = v58 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v63 = v60 + 4;
        *&v64 = *(v60 - 8);
        *(&v64 + 1) = *(v60 - 4);
        v65 = *v60;
        v60 += 16;
        *&v66 = v65;
        *(&v66 + 1) = *v63;
        *(v61 - 1) = v64;
        *v61 = v66;
        v61 += 2;
        v62 -= 4;
      }

      while (v62);
      if (v58 != (v58 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_43:
        v67 = v97 - v6;
        v68 = (v96 + 32 * v6 + 24);
        do
        {
          v69 = *v68;
          v68 += 4;
          *v19 = v69;
          v19 += 8;
          --v67;
        }

        while (v67);
      }
    }

    return v17;
  }

  v40 = 8 * v14;
  v41 = v13 + ((8 * v14) >> 3);
  if (v41 > *(a1 + 3))
  {
    v13 = v17;
    v42 = v18;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v41, 8);
    v18 = v42;
    v17 = v13;
    LODWORD(v13) = *(a1 + 2);
  }

  v43 = &v19[-v40];
  if (v97 != v6)
  {
    v44 = (*a1 + 8 * v13);
    v45 = 8 * v97 - 8 * v6 - 8;
    if (v45 < 0x38)
    {
      v46 = &v19[-v40];
      do
      {
LABEL_50:
        v77 = *v46;
        v46 += 8;
        *v44++ = v77;
      }

      while (v46 != v19);
      goto LABEL_51;
    }

    v70 = 8 * v13 + *a1;
    v46 = &v19[-v40];
    if ((v70 - v43) < 0x20)
    {
      goto LABEL_50;
    }

    v71 = (v45 >> 3) + 1;
    v72 = 8 * (v71 & 0x3FFFFFFFFFFFFFFCLL);
    v44 = (v44 + v72);
    v46 = &v43[v72];
    v73 = (8 * v6 + v18 - 8 * v97 + v10 + 16);
    v74 = (v70 + 16);
    v75 = v71 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v76 = *v73;
      *(v74 - 1) = *(v73 - 1);
      *v74 = v76;
      v73 += 2;
      v74 += 2;
      v75 -= 4;
    }

    while (v75);
    if (v71 != (v71 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  *(a1 + 2) = v13 + v14;
  v78 = v43 - v17;
  if (v43 != v17)
  {
    v79 = &v19[-v78];
    v80 = v17;
    memmove(v79, v17, v78);
    v17 = v80;
  }

  if (v97 != v6)
  {
    if (v14 >= 0x16)
    {
      v82 = v96;
      v83 = v96 + 32 * v6;
      if (v17 >= v96 + 32 * v97 || (v81 = v17, v83 + 24 >= (v10 + a2 + 8 * v97 - (v9 + 8 * v6))))
      {
        v81 = &v17[8 * (v14 & 0xFFFFFFFFFFFFFFFCLL)];
        v6 += v14 & 0xFFFFFFFFFFFFFFFCLL;
        v84 = (v83 + 88);
        v85 = (v95 + v10 + 16);
        v86 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v87 = v84 + 4;
          *&v88 = *(v84 - 8);
          *(&v88 + 1) = *(v84 - 4);
          v89 = *v84;
          v84 += 16;
          *&v90 = v89;
          *(&v90 + 1) = *v87;
          *(v85 - 1) = v88;
          *v85 = v90;
          v85 += 2;
          v86 -= 4;
        }

        while (v86);
        if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v17;
        }
      }
    }

    else
    {
      v81 = v17;
      v82 = v96;
    }

    v91 = v97 - v6;
    v92 = (v82 + 32 * v6 + 24);
    do
    {
      v93 = *v92;
      v92 += 4;
      *v81 = v93;
      v81 += 8;
      --v91;
    }

    while (v91);
  }

  return v17;
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

  JUMPOUT(0x1AC55A070);
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v48 = a2;
  v5 = *(a2 + 72);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  if (v6 == v7)
  {
    v20 = *(a2 + 68);
    goto LABEL_36;
  }

  v51 = 0;
  v52 = 0;
  v45 = &v52;
  v56 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v56);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v45, DefiningOp))
    {
      v49 = &v51;
      v56 = v7;
      v9 = mlir::Value::getDefiningOp(&v56);
      if (v9)
      {
        if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v49, v9))
        {
          mlir::IntegerAttr::getValue(&v52, &v56);
          mlir::IntegerAttr::getValue(&v51, &v45);
          LODWORD(v62) = v46;
          if (v46 > 0x40)
          {
            llvm::APInt::initSlowCase(&v61, &v45);
          }

          v61 = v45;
          llvm::APInt::operator-=(&v61, &v56);
          v27 = v62;
          LODWORD(v62) = 0;
          if (v27 > 0x40)
          {
            v16 = *v61;
            if (v61)
            {
              MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
              if (v62 >= 0x41)
              {
                if (v61)
                {
                  MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
                }
              }
            }
          }

          else if (v27)
          {
            v16 = (v61 << -v27) >> -v27;
          }

          else
          {
            v16 = 0;
          }

          if (v46 >= 0x41 && v45)
          {
            MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
          }

          if (v57 >= 0x41 && v56)
          {
            MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
          }

          goto LABEL_27;
        }
      }
    }
  }

  v46 = 1;
  v45 = 0;
  v49 = v6;
  v50 = &v45;
  v55 = v7;
  v10 = mlir::Value::getDefiningOp(&v55);
  if (v10 && (v59 = v10, *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id) && (*(v10 + 46) & 0x80) != 0 && *(v10 + 68) == 2 && (LOBYTE(v53) = 1, v56 = &v53, v57 = &v59, mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v49, &v56), (v53 & 1) != 0) || (v59 = &v45, v60 = v6, v53 = v7, (v11 = mlir::Value::getDefiningOp(&v53)) != 0) && (v55 = v11, *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id) && (*(v11 + 46) & 0x80) != 0 && *(v11 + 68) == 2 && (v54 = 1, v56 = &v54, v57 = &v55, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> & &)#1},0ul,1ul>(&v59, &v56), (v54 & 1) != 0))
  {
    if (v46 > 0x40)
    {
      v12 = *v45;
    }

    else if (v46)
    {
      v12 = (v45 << -v46) >> -v46;
    }

    else
    {
      v12 = 0;
    }

    v15 = v12 & 0xFFFFFFFFFFFFFF00;
    v13 = v12;
    v14 = 1;
    if (v46 < 0x41)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v45)
    {
      MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
    }

    goto LABEL_25;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v46 >= 0x41)
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
    mlir::ValueRange::ValueRange(&v56, v5 + 96, v21);
    (**a3)(a3, a2, v56, v57);
    return 1;
  }

  v61 = 0;
  v17 = *(*(a2 + 72) + 88);
  v45 = &v61;
  v56 = v17;
  v18 = mlir::Value::getDefiningOp(&v56);
  if (!v18 || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v45, v18) & 1) == 0)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v61, &v56);
  v46 = v57;
  v45 = v56;
  v47 = 1;
  LODWORD(v50) = v57;
  if (v57 > 0x40)
  {
    llvm::APInt::initSlowCase(&v49, &v45);
  }

  v49 = v45;
  if (v57)
  {
    v22 = (v45 << -v57) >> -v57;
  }

  else
  {
    v22 = 0;
  }

  if (v22 >= v16)
  {
    v56 = v58;
    v57 = 0x400000000;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v28 = *(a2 + 68) - 2;
      if (v28 <= 4)
      {
        v29 = 0;
        v30 = *(*(a2 + 72) + 24);
        goto LABEL_73;
      }
    }

    else
    {
      v28 = -2;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v28, 8);
    v29 = v57;
    v30 = *(*(a2 + 72) + 24);
    if (v57 >= HIDWORD(v57))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 8);
      v29 = v57;
    }

LABEL_73:
    *(v56 + v29) = v30;
    v31 = v57 + 1;
    LODWORD(v57) = v57 + 1;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v32 = *(a2 + 72);
      v33 = *(a2 + 68) - 3;
    }

    else
    {
      v32 = 0;
      v33 = -3;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v56, v56 + 8 * v31, v32 + 96, 0, v32 + 96, v33);
    v34 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    mlir::ValueRange::ValueRange(&v59, v56, v57);
    v35 = v59;
    v36 = v60;
    v37 = *(v34 + 8);
    if (v37)
    {
      v38 = (v37 - 8);
    }

    else
    {
      v38 = 0;
    }

    mlir::Block::getTerminator(v38);
    v40 = v39;
    if ((*(v39 + 46) & 0x80) != 0)
    {
      v41 = *(v39 + 72);
      v42 = *(v39 + 68);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    mlir::ValueRange::ValueRange(&v61, v41, v42);
    mlir::RewriterBase::inlineBlockBefore(a3, v38, a2, v35, v36);
    (**a3)(a3, a2, v61, v62);
    (*(*a3 + 16))(a3, v40);
    if (v56 != v58)
    {
      free(v56);
    }

    result = 1;
    if (v50 < 0x41)
    {
      goto LABEL_85;
    }

    goto LABEL_83;
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
    result = v56;
    if (v50 < 0x41)
    {
      goto LABEL_85;
    }

LABEL_83:
    if (v49)
    {
      v43 = result;
      MEMORY[0x1AC55A040](v49, 0x1000C8000313F17);
      result = v43;
    }

    goto LABEL_85;
  }

  result = 0;
  if (v50 >= 0x41)
  {
    goto LABEL_83;
  }

LABEL_85:
  if ((v47 & 1) != 0 && v46 >= 0x41)
  {
    if (v45)
    {
      v44 = result;
      MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
      return v44;
    }
  }

  return result;
}

mlir::Block *llvm::any_of<mlir::ValueRange,anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::Value)#1}>(uint64_t a1, uint64_t a2, mlir::Operation **a3)
{
  v13 = *MEMORY[0x1E69E9840];
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

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::function_ref<mlir::Value ()(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)>::callback_fn<anonymous namespace::ForOpTensorCastFolder::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)#1}>(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  return mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
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
  v2[40] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v2, a2, "scf.forall.in_parallel", 22);
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

  JUMPOUT(0x1AC55A070);
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

  JUMPOUT(0x1AC55A070);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::try_emplace<unsigned int const&>@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 2;
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
  v10 = (37 * *a2) & (v7 - 1);
  v11 = &v8[2 * v10];
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v5 = *(result + 1);
      v13 = result[4];
    }

    *a4 = v11;
    *(a4 + 8) = &v5[2 * v13];
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -2;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = &v8[2 * (v19 & v9)];
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
    v14 = 2;
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
    llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -1)
  {
    --result[1];
  }

  *v11 = *a2;
  v11[1] = *a3;
  if (*result)
  {
    v15 = 2;
  }

  else
  {
    v5 = *(result + 1);
    v15 = result[4];
  }

  *a4 = v11;
  *(a4 + 8) = &v5[2 * v15];
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

char *llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(char *result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  v7 = *result;
  if ((*result & 1) == 0)
  {
    v9 = result + 8;
    v8 = *(result + 1);
    v10 = *(result + 4);
    if (v2 > 2)
    {
      buffer = llvm::allocate_buffer(8 * v2, 4uLL);
      *(v3 + 1) = buffer;
      *(v3 + 2) = v2;
      v23 = *v3;
      v11 = (v8 + 8 * v10);
      *v3 = *v3 & 1;
      if ((v23 & 1) == 0)
      {
        v24 = &buffer[2 * v2];
        v25 = 8 * v2 - 8;
        if (v25 < 8)
        {
          v27 = buffer;
          do
          {
LABEL_26:
            *v27 = -1;
            v27 += 8;
          }

          while (v27 != v24);
LABEL_27:
          if (!v10)
          {
LABEL_49:

            llvm::deallocate_buffer(v8, (8 * v10));
          }

          v30 = v8;
          while (1)
          {
            v36 = *v30;
            if (*v30 <= 0xFFFFFFFD)
            {
              break;
            }

LABEL_35:
            v30 = (v30 + 8);
            if (v30 == v11)
            {
              goto LABEL_49;
            }
          }

          if (*v3)
          {
            v32 = 1;
            v31 = v3 + 8;
            v33 = (37 * v36) & 1;
            v34 = &v9[8 * v33];
            v35 = *v34;
            if (v36 == *v34)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v31 = *(v3 + 1);
            v32 = *(v3 + 4) - 1;
            v33 = v32 & (37 * v36);
            v34 = &v31[8 * v33];
            v35 = *v34;
            if (v36 == *v34)
            {
LABEL_34:
              *v34 = v36;
              *(v34 + 1) = *(v30 + 1);
              *v3 += 2;
              goto LABEL_35;
            }
          }

          v37 = 0;
          v38 = 1;
          while (v35 != -1)
          {
            if (v37)
            {
              v39 = 0;
            }

            else
            {
              v39 = v35 == -2;
            }

            if (v39)
            {
              v37 = v34;
            }

            v40 = v33 + v38++;
            v33 = v40 & v32;
            v34 = &v31[8 * (v40 & v32)];
            v35 = *v34;
            if (v36 == *v34)
            {
              goto LABEL_34;
            }
          }

          if (v37)
          {
            v34 = v37;
          }

          goto LABEL_34;
        }

LABEL_20:
        v26 = (v25 >> 3) + 1;
        v27 = &buffer[2 * (v26 & 0x3FFFFFFFFFFFFFFELL)];
        v28 = buffer + 2;
        v29 = v26 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          *(v28 - 2) = -1;
          *v28 = -1;
          v28 += 4;
          v29 -= 2;
        }

        while (v29);
        if (v26 == (v26 & 0x3FFFFFFFFFFFFFFELL))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v11 = (v8 + 8 * v10);
      *result = 1;
    }

    v24 = v3 + 24;
    buffer = v3 + 8;
    v25 = 8;
    goto LABEL_20;
  }

  v12 = result + 8;
  v13 = v55;
  if (*(result + 2) <= 0xFFFFFFFD)
  {
    v41 = *(result + 3);
    v55[0] = *(result + 2);
    v55[1] = v41;
    v13 = v56;
    v14 = *(result + 4);
    if (v14 > 0xFFFFFFFD)
    {
LABEL_10:
      if (v2 < 3)
      {
        goto LABEL_11;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v14 = *(result + 4);
    if (v14 > 0xFFFFFFFD)
    {
      goto LABEL_10;
    }
  }

  v42 = *(result + 5);
  *v13 = v14;
  v13[1] = v42;
  v13 += 2;
  if (v2 < 3)
  {
LABEL_11:
    *result = v7 & 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_55:
    v16 = (v3 + 24);
    v15 = v3 + 8;
    v17 = 8;
    goto LABEL_14;
  }

LABEL_54:
  *result = v7 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v2, 4uLL);
  *(v3 + 1) = result;
  *(v3 + 2) = v2;
  v43 = *v3;
  v14 = v2;
  *v3 = *v3 & 1;
  if (v43)
  {
    goto LABEL_55;
  }

LABEL_12:
  if (!v14)
  {
    goto LABEL_58;
  }

  v15 = *v12;
  v16 = *v12 + 8 * v14;
  v17 = 8 * v14 - 8;
  if (v17 < 8)
  {
    v19 = *v12;
    do
    {
LABEL_57:
      *v19 = -1;
      v19 += 8;
    }

    while (v19 != v16);
    goto LABEL_58;
  }

LABEL_14:
  v18 = (v17 >> 3) + 1;
  v19 = &v15[8 * (v18 & 0x3FFFFFFFFFFFFFFELL)];
  v20 = v15 + 8;
  v21 = v18 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    *(v20 - 2) = -1;
    *v20 = -1;
    v20 += 4;
    v21 -= 2;
  }

  while (v21);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_57;
  }

LABEL_58:
  if (v55 != v13)
  {
    v44 = v55;
    while (1)
    {
      v50 = *v44;
      if (*v44 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_66:
      v44 += 2;
      if (v44 == v13)
      {
        return result;
      }
    }

    if (*v3)
    {
      v46 = 1;
      v45 = v3 + 8;
      v47 = (37 * v50) & 1;
      v48 = &v12[8 * v47];
      v49 = *v48;
      if (v50 == *v48)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v45 = *(v3 + 1);
      v46 = *(v3 + 4) - 1;
      v47 = v46 & (37 * v50);
      v48 = &v45[8 * v47];
      v49 = *v48;
      if (v50 == *v48)
      {
LABEL_65:
        *v48 = v50;
        *(v48 + 1) = v44[1];
        *v3 += 2;
        goto LABEL_66;
      }
    }

    v51 = 0;
    v52 = 1;
    while (v49 != -1)
    {
      if (v51)
      {
        v53 = 0;
      }

      else
      {
        v53 = v49 == -2;
      }

      if (v53)
      {
        v51 = v48;
      }

      v54 = v47 + v52++;
      v47 = v54 & v46;
      v48 = &v45[8 * (v54 & v46)];
      v49 = *v48;
      if (v50 == *v48)
      {
        goto LABEL_65;
      }
    }

    if (v51)
    {
      v48 = v51;
    }

    goto LABEL_65;
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>::callback_fn<anonymous namespace::FoldTensorCastOfOutputIntoForallOp::matchAndRewrite(mlir::scf::ForallOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder,mlir::Location,mlir::ValueRange)#1}>(uint64_t **a1, _OWORD *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v39[0] = *a2;
  v39[1] = v7;
  v46 = a4;
  v47 = a5;
  v8 = *(**a1 + 36);
  if (a5 <= v8)
  {
    v9 = a4;
    v8 = a5;
  }

  else
  {
    v9 = mlir::ValueRange::offset_base(&v46, a5 - v8);
  }

  __src = v45;
  v44 = 0x600000000;
  if (v8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v45, v8, 8);
    v10 = v44;
    v11 = __src;
    v41[0] = v9;
    v41[1] = 0;
LABEL_7:
    v12 = 0;
    v13 = &v11[8 * v10];
    do
    {
      *v13++ = mlir::ValueRange::dereference_iterator(v41, v12);
      v12 = v41[1] + 1;
      v41[1] = v12;
    }

    while (v12 != v8);
    LODWORD(v44) = v44 + v8;
    v14 = a1[1];
    v15 = *(v14 + 8);
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v41[0] = v9;
  v41[1] = 0;
  v11 = v45;
  if (v8)
  {
    goto LABEL_7;
  }

  LODWORD(v44) = 0;
  v14 = a1[1];
  v15 = *(v14 + 8);
  if (v15)
  {
LABEL_10:
    v16 = v14[3];
    v17 = 24 * v15;
    do
    {
      v18 = *(v16 + 16);
      v19 = *v16;
      v16 += 24;
      *v41 = v19;
      v42[0] = v18;
      v20 = (__src + 8 * v19);
      *v20 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v39, a3, v42, v20) - 16;
      v17 -= 24;
    }

    while (v17);
  }

LABEL_12:
  v41[0] = *(**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v41);
  v22 = v46;
  if (v47 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v47;
  }

  v41[0] = v42;
  v41[1] = 0x600000000;
  if (v23 < 7)
  {
    v24 = 0;
    v48 = v46;
    v49 = 0;
    v25 = v42;
    if (!v23)
    {
      v28 = 0;
      v29 = 6;
      goto LABEL_21;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v41, v42, v23, 8);
    v24 = LODWORD(v41[1]);
    v25 = v41[0];
    v48 = v22;
    v49 = 0;
  }

  v26 = 0;
  v27 = &v25[v24];
  do
  {
    *v27++ = mlir::ValueRange::dereference_iterator(&v48, v26);
    v26 = v49 + 1;
    v49 = v26;
  }

  while (v26 != v23);
  v28 = v41[1];
  v29 = HIDWORD(v41[1]);
LABEL_21:
  v30 = (v28 + v23);
  LODWORD(v41[1]) = v30;
  v31 = __src;
  v32 = v44;
  v33 = v44 + v30;
  if (v33 > v29)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v41, v42, v33, 8);
    LODWORD(v30) = v41[1];
  }

  if (v32)
  {
    memcpy(v41[0] + 8 * v30, v31, 8 * v32);
    LODWORD(v30) = v41[1];
  }

  LODWORD(v41[1]) = v30 + v32;
  v34 = **a1;
  v35 = a1[2];
  v36 = *(((v34 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40) + 8);
  if (v36)
  {
    v37 = v36 - 8;
  }

  else
  {
    v37 = 0;
  }

  v40 = mlir::ValueRange::dereference_iterator(&v46, 0);
  ParentBlock = mlir::Value::getParentBlock(&v40);
  mlir::ValueRange::ValueRange(&v48, v41[0], LODWORD(v41[1]));
  mlir::RewriterBase::mergeBlocks(v35, v37, ParentBlock, v48, v49);
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (__src != v45)
  {
    free(__src);
  }
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

  JUMPOUT(0x1AC55A070);
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

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::ForallOpIterArgsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = a2;
  v71 = 0;
  *v70 = 0u;
  v72 = &v74;
  v90 = v92;
  v91 = 0x600000000;
  v87 = v89;
  v88 = 0x600000000;
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = (a2 - 16);
  }

  else
  {
    v4 = 0;
  }

  v68 = v4;
  if (!v3)
  {
    v29 = v87;
    if (v87 != v89)
    {
LABEL_29:
      free(v29);
    }

LABEL_30:
    if (v90 != v92)
    {
      free(v90);
    }

    if (v72 != &v74)
    {
      free(v72);
    }

    llvm::deallocate_buffer(v70[0], (8 * v71));
  }

  v7 = 0;
  v69 = a2 + 64;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, v7);
    v84 = NextResultAtOffset;
    if (NextResultAtOffset && (*(NextResultAtOffset + 8) & 7) == 6)
    {
      v10 = *(NextResultAtOffset + 16) + 6;
    }

    else
    {
      v10 = *(NextResultAtOffset + 8) & 7;
    }

    v11 = *(a2 + 44);
    v12 = (v69 + 16 * ((v11 >> 23) & 1));
    v13 = (*(a2 + 72) + 32 * (v12[9] + v12[8] + v12[10] + v10));
    v14 = *(((v12 + ((v11 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    OperandNumber = mlir::OpOperand::getOperandNumber(v13);
    v16 = v69 + 16 * ((*(a2 + 44) >> 23) & 1);
    v18 = *(v16 + 32);
    v17 = *(v16 + 36);
    v19 = *(v16 + 40);
    __src = *(v16 + 8);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
    if (!*v84)
    {
      goto LABEL_23;
    }

    v21 = v14 - 8;
    if (!v14)
    {
      v21 = 0;
    }

    mlir::scf::ForallOp::getCombiningOps(&v74, *(*(v21 + 48) + 8 * (OperandNumber - (v18 + v17 + v19) + v20)), &__src);
    v22 = v94;
    if (__src != v95)
    {
      free(__src);
    }

    if (v22)
    {
      v23 = v84;
      v24 = v91;
      if (v91 >= HIDWORD(v91))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v91 + 1, 8);
        v24 = v91;
      }

      *(v90 + v24) = v23;
      LODWORD(v91) = v91 + 1;
      v25 = *(v13 + 3);
      v26 = v88;
      if (v88 >= HIDWORD(v88))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v88 + 1, 8);
        v26 = v88;
      }

      *(v87 + v26) = v25;
      v8 = &v88;
    }

    else
    {
LABEL_23:
      llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::try_emplace<llvm::detail::DenseSetEmpty&>(v70, &v84, &__src);
      if (v95[0] != 1)
      {
        goto LABEL_8;
      }

      v27 = v84;
      v28 = v73;
      if (v73 >= HIDWORD(v73))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, &v74, v73 + 1, 8);
        v28 = v73;
      }

      *(v72 + v28) = v27;
      v8 = &v73;
    }

    ++*v8;
LABEL_8:
    if (v3 == ++v7)
    {
      if (!v73)
      {
        v29 = v87;
        if (v87 != v89)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      v30 = v72;
      v31 = v72 + 8 * v73;
      do
      {
        if (*v30)
        {
          v32 = (*(*v30 + 8) & 7) == 6;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          v33 = *(*v30 + 16) + 6;
        }

        else
        {
          v33 = *(*v30 + 8) & 7;
        }

        v34 = *(a2 + 44);
        v35 = (v69 + 16 * ((v34 >> 23) & 1));
        v36 = (*(a2 + 72) + 32 * (v35[9] + v35[8] + v35[10] + v33));
        v37 = *(((v35 + ((v34 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
        if (v37)
        {
          v38 = v37 - 8;
        }

        else
        {
          v38 = 0;
        }

        v39 = mlir::OpOperand::getOperandNumber(v36);
        v40 = v69 + 16 * ((*(a2 + 44) >> 23) & 1);
        v41 = *(v40 + 32);
        v42 = *(v40 + 36);
        v43 = *(v40 + 40);
        __src = *(v40 + 8);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        mlir::scf::ForallOp::getCombiningOps(&v74, *(*(v38 + 48) + 8 * (v39 - (v41 + v42 + v43) + v44)), &__src);
        v45 = __src;
        if (v94)
        {
          v46 = 8 * v94;
          do
          {
            v47 = *v45++;
            (*(*a3 + 2))(a3, v47);
            v46 -= 8;
          }

          while (v46);
          v45 = __src;
        }

        if (v45 != v95)
        {
          free(v45);
        }

        v30 += 8;
      }

      while (v30 != v31);
      v48 = *(a2 + 24);
      mlir::scf::ForallOp::getLoopLowerBounds(&__src, &v74);
      v84 = v86;
      v85 = 0x600000000;
      v49 = v94;
      if (v94)
      {
        if (v94 < 7)
        {
          v51 = v86;
          v50 = v94;
LABEL_59:
          memcpy(v51, __src, 8 * v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v94, 8);
          v50 = v94;
          if (v94)
          {
            v51 = v84;
            goto LABEL_59;
          }
        }

        LODWORD(v85) = v49;
      }

      if (v96 == 1 && __src != v95)
      {
        free(__src);
      }

      mlir::scf::ForallOp::getLoopUpperBounds(&__src, &v74);
      v81 = v83;
      v82 = 0x600000000;
      v52 = v94;
      if (v94)
      {
        if (v94 < 7)
        {
          v54 = v83;
          v53 = v94;
LABEL_69:
          memcpy(v54, __src, 8 * v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v94, 8);
          v53 = v94;
          if (v94)
          {
            v54 = v81;
            goto LABEL_69;
          }
        }

        LODWORD(v82) = v52;
      }

      if (v96 == 1 && __src != v95)
      {
        free(__src);
      }

      mlir::scf::ForallOp::getLoopSteps(&__src, &v74);
      v78 = v80;
      v79 = 0x600000000;
      v55 = v94;
      if (v94)
      {
        if (v94 < 7)
        {
          v57 = v80;
          v56 = v94;
LABEL_79:
          memcpy(v57, __src, 8 * v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v94, 8);
          v56 = v94;
          if (v94)
          {
            v57 = v78;
            goto LABEL_79;
          }
        }

        LODWORD(v79) = v55;
      }

      if (v96 == 1 && __src != v95)
      {
        free(__src);
      }

      v58 = *(v69 + 16 * ((*(a2 + 44) >> 23) & 1));
      v75 = v48;
      Context = mlir::Attribute::getContext(&v75);
      v60 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id, Context);
      if (v61)
      {
        mlir::OperationState::OperationState(&__src, v48, v60);
        v62 = v84;
        v67 = v85;
        v63 = v81;
        v64 = v82;
        v65 = v78;
        v66 = v79;
        mlir::ValueRange::ValueRange(v97, v87, v88);
      }

      v98 = 1283;
      v97[2] = "scf.forall";
      v97[3] = 10;
      v77 = 259;
      llvm::operator+(v97, v76, &__src);
      llvm::report_fatal_error(&__src, 1);
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
  LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v6 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 2);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = (result + 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL));
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v17 = (result + 8 * v11);
        do
        {
          v10->i64[0] = -4096;
          v10 = (v10 + 8);
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0x9DDFEA08EB382D69 * ((8 * *v18 - 0xAE502812AA7333) ^ HIDWORD(*v18));
          v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v28 >> 47) ^ v28);
          LODWORD(v28) = -348639895 * ((v29 >> 47) ^ v29);
          v30 = *(a1 + 16) - 1;
          v31 = v30 & v28;
          v26 = (*a1 + 8 * v31);
          v32 = *v26;
          if (v27 != *v26)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v26;
              }

              v36 = v31 + v34++;
              v31 = v36 & v30;
              v26 = (*a1 + 8 * (v36 & v30));
              v32 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v33)
            {
              v26 = v33;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 < 3)
    {
      goto LABEL_19;
    }

    v21 = v20 + 1;
    v10 = (result + 8 * (v21 & 0x3FFFFFFFFFFFFFFCLL));
    v22 = result + 1;
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22[-1] = v23;
      *v22 = v23;
      v22 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v25 = (result + 8 * v19);
      do
      {
        v10->i64[0] = -4096;
        v10 = (v10 + 8);
      }

      while (v10 != v25);
    }
  }

  return result;
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v113[6] = *MEMORY[0x1E69E9840];
  v79 = a2;
  v5 = a2 + 64;
  if (!*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) || (__src = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)), LOBYTE(v93) = 1, mlir::ArrayAttr::getValue(&__src), !v6))
  {
    v69 = *(a2 + 24);
    v111 = v113;
    v112 = 0x600000000;
    v108 = v110;
    v109 = 0x600000000;
    v105 = v107;
    v106 = 0x600000000;
    v71[0] = 0;
    v71[1] = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    mlir::scf::ForallOp::getLoopLowerBounds(&__src, &v79);
    __dst = v91;
    v90 = 0x600000000;
    v8 = v93;
    if (!v93)
    {
LABEL_10:
      if (v96 == 1 && __src != &v94)
      {
        free(__src);
      }

      mlir::scf::ForallOp::getLoopUpperBounds(&__src, &v79);
      v86 = v88;
      v87 = 0x600000000;
      v11 = v93;
      if (!v93)
      {
LABEL_19:
        if (v96 == 1 && __src != &v94)
        {
          free(__src);
        }

        mlir::scf::ForallOp::getLoopSteps(&__src, &v79);
        v83 = v85;
        v84 = 0x600000000;
        v14 = v93;
        if (!v93)
        {
LABEL_28:
          v68 = a2;
          if (v96 == 1 && __src != &v94)
          {
            free(__src);
          }

          mlir::scf::ForallOp::getLoopInductionVars(&v79, &__src);
          v80 = v82;
          v81 = 0x600000000;
          v17 = v93;
          if (!v93)
          {
LABEL_37:
            if (v96 == 1 && __src != &v94)
            {
              free(__src);
            }

            __src = &v94;
            v93 = 0x600000000;
            v20 = v90;
            if (v90)
            {
              if (__dst == v91)
              {
                v21 = v90;
                if (v90 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v94, v90, 8), (v21 = v90) != 0))
                {
                  memcpy(__src, __dst, 8 * v21);
                }

                LODWORD(v93) = v20;
              }

              else
              {
                __src = __dst;
                v93 = v90;
                __dst = v91;
                HIDWORD(v90) = 0;
              }

              LODWORD(v90) = 0;
            }

            v96 = v98;
            v97 = 0x600000000;
            v22 = v87;
            if (!v87)
            {
LABEL_58:
              v99 = v101;
              v100 = 0x600000000;
              v24 = v84;
              if (!v84)
              {
                goto LABEL_68;
              }

              if (v83 != v85)
              {
                v99 = v83;
                v100 = v84;
                v83 = v85;
                HIDWORD(v84) = 0;
LABEL_67:
                LODWORD(v84) = 0;
LABEL_68:
                v102 = v104;
                v103 = 0x600000000;
                v26 = v81;
                v27 = v80;
                if (!v81)
                {
LABEL_78:
                  if (v27 != v82)
                  {
                    free(v27);
                  }

                  if (v83 != v85)
                  {
                    free(v83);
                  }

                  if (v86 != v88)
                  {
                    free(v86);
                  }

                  v70 = a3;
                  if (__dst != v91)
                  {
                    free(__dst);
                  }

                  v29 = 0;
                  v67 = v5;
                  if (!v93 || !v97 || !v100 || !v103)
                  {
LABEL_110:
                    if (v102 != v104)
                    {
                      free(v102);
                    }

                    if (v99 != v101)
                    {
                      free(v99);
                    }

                    if (v96 != v98)
                    {
                      free(v96);
                    }

                    if (__src != &v94)
                    {
                      free(__src);
                    }

                    if ((v29 & 1) == 0)
                    {
                      v56 = v112;
                      if (v112)
                      {
                        __src = *(v67 + 16 * ((*(v68 + 44) >> 23) & 1) + 8);
                        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
                        if (v56 != v57)
                        {
                          v59 = *(v68 + 44);
                          v60 = (v67 + 16 * ((v59 >> 23) & 1));
                          v61 = v60[8];
                          v62 = v60[9];
                          v64 = v60[10];
                          v63 = v60[11];
                          if ((v59 & 0x800000) != 0)
                          {
                            v65 = *(v68 + 72);
                          }

                          else
                          {
                            v65 = 0;
                          }

                          v66 = (v62 + v61 + v64);
                          __src = (v65 + 32 * v66);
                          v93 = (v63 + v66) - v66;
                          __dst = 0;
                          mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(v70 + 1, v69, &v111, &v108, &v105, &__src);
                        }

                        __src = "no dimensions have 0 or 1 iterations";
                        LOWORD(v95) = 259;
                        __dst = &__src;
                        v58 = v70[2];
                        if (v58 && instruction::util::IsTasklet(v70[2]))
                        {
                          (*(*v58 + 88))(v58, *(v68 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ForallOp &>(mlir::scf::ForallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__dst);
                        }
                      }

                      else
                      {
                        mlir::scf::promote(v70, v68);
                      }
                    }

                    llvm::deallocate_buffer(v76, (16 * v78));
                  }

                  v30 = __src;
                  v31 = v96;
                  v32 = v99;
                  v33 = v102;
                  v34 = 8 * v103 - 8;
                  v35 = 8 * v100 - 8;
                  v36 = 8 * v97 - 8;
                  v37 = 8 * v93 - 8;
                  while (1)
                  {
                    v38 = mlir::constantTripCount(*v30, *v31, *v32);
                    if (v39)
                    {
                      if (v38 == 1)
                      {
                        v46 = *v33;
                        ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp(v70 + 1, v69, *v30);
                        __dst = v46;
                        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v71, &__dst) = ConstantIndexOp;
                        v29 = 0;
                        if (!v37)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_103;
                      }

                      if (!v38)
                      {
                        v49 = *(v68 + 44);
                        v50 = (v67 + 16 * ((v49 >> 23) & 1));
                        v51 = v50[8];
                        v52 = v50[9];
                        v54 = v50[10];
                        v53 = v50[11];
                        if ((v49 & 0x800000) != 0)
                        {
                          v55 = *(v68 + 72);
                        }

                        else
                        {
                          v55 = 0;
                        }

                        mlir::ValueRange::ValueRange(&__dst, v55 + 32 * (v52 + v51 + v54), (v53 + v52 + v51 + v54) - (v52 + v51 + v54));
                        (**v70)(v70, v68, __dst, v90);
                        v29 = 1;
                        goto LABEL_110;
                      }
                    }

                    v40 = *v30;
                    v41 = v112;
                    if (v112 >= HIDWORD(v112))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v112 + 1, 8);
                      v41 = v112;
                    }

                    v111[v41] = v40;
                    LODWORD(v112) = v112 + 1;
                    v42 = *v31;
                    v43 = v109;
                    if (v109 >= HIDWORD(v109))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v109 + 1, 8);
                      v43 = v109;
                    }

                    *&v108[8 * v43] = v42;
                    LODWORD(v109) = v109 + 1;
                    v44 = *v32;
                    v45 = v106;
                    if (v106 >= HIDWORD(v106))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v107, v106 + 1, 8);
                      v45 = v106;
                    }

                    *(v105 + v45) = v44;
                    LODWORD(v106) = v106 + 1;
                    v29 = 0;
                    if (!v37)
                    {
                      goto LABEL_110;
                    }

LABEL_103:
                    if (v36)
                    {
                      if (v35)
                      {
                        ++v30;
                        ++v31;
                        ++v32;
                        ++v33;
                        v48 = v34;
                        v34 -= 8;
                        v35 -= 8;
                        v36 -= 8;
                        v37 -= 8;
                        if (v48)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_110;
                  }
                }

                if (v80 != v82)
                {
                  v102 = v80;
                  v103 = v81;
                  v80 = v82;
                  HIDWORD(v81) = 0;
                  v27 = v82;
LABEL_77:
                  LODWORD(v81) = 0;
                  goto LABEL_78;
                }

                if (v81 < 7)
                {
                  v28 = v81;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v104, v81, 8);
                  v28 = v81;
                  v27 = v80;
                  if (!v81)
                  {
                    goto LABEL_76;
                  }
                }

                memcpy(v102, v27, 8 * v28);
                v27 = v80;
LABEL_76:
                LODWORD(v103) = v26;
                goto LABEL_77;
              }

              if (v84 < 7)
              {
                v25 = v84;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99, v101, v84, 8);
                v25 = v84;
                if (!v84)
                {
                  goto LABEL_66;
                }
              }

              memcpy(v99, v83, 8 * v25);
LABEL_66:
              LODWORD(v100) = v24;
              goto LABEL_67;
            }

            if (v86 != v88)
            {
              v96 = v86;
              v97 = v87;
              v86 = v88;
              HIDWORD(v87) = 0;
LABEL_57:
              LODWORD(v87) = 0;
              goto LABEL_58;
            }

            if (v87 < 7)
            {
              v23 = v87;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v98, v87, 8);
              v23 = v87;
              if (!v87)
              {
                goto LABEL_56;
              }
            }

            memcpy(v96, v86, 8 * v23);
LABEL_56:
            LODWORD(v97) = v22;
            goto LABEL_57;
          }

          v18 = v82;
          v19 = v93;
          if (v93 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v93, 8);
            v19 = v93;
            if (!v93)
            {
LABEL_36:
              LODWORD(v81) = v17;
              goto LABEL_37;
            }

            v18 = v80;
          }

          memcpy(v18, __src, 8 * v19);
          goto LABEL_36;
        }

        v15 = v85;
        v16 = v93;
        if (v93 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v85, v93, 8);
          v16 = v93;
          if (!v93)
          {
LABEL_27:
            LODWORD(v84) = v14;
            goto LABEL_28;
          }

          v15 = v83;
        }

        memcpy(v15, __src, 8 * v16);
        goto LABEL_27;
      }

      v12 = v88;
      v13 = v93;
      if (v93 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v93, 8);
        v13 = v93;
        if (!v93)
        {
LABEL_18:
          LODWORD(v87) = v11;
          goto LABEL_19;
        }

        v12 = v86;
      }

      memcpy(v12, __src, 8 * v13);
      goto LABEL_18;
    }

    v9 = v91;
    v10 = v93;
    if (v93 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v91, v93, 8);
      v10 = v93;
      if (!v93)
      {
LABEL_9:
        LODWORD(v90) = v8;
        goto LABEL_10;
      }

      v9 = __dst;
    }

    memcpy(v9, __src, 8 * v10);
    goto LABEL_9;
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
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
    mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
    mlir::scf::ForallOp::build(a1, v24, v15, v16, v17, v18, v19, v20, v25[0], v25[1], 0, 0, 0, v21);
  }

  mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(v24, v25, v23);
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(uint64_t a1, uint64_t *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v3 = &v10;
  mlir::ValueRange::ValueRange(v11, 0, 0);
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v10 && v5 + 24 * v4 > &v10)
    {
      v9 = &v11[-1] - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 24);
      v5 = *a1;
      v3 = &v9[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 24);
      v5 = *a1;
      v3 = &v10;
    }
  }

  v6 = v5 + 24 * *(a1 + 8);
  v7 = *v3;
  *(v6 + 16) = *(v3 + 2);
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 24 * v6 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  LODWORD(v7) = *a2;
  HIDWORD(v7) = *a3;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 12);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  v4 = *a1 + 12 * v3;
  *v4 = v7;
  *(v4 + 8) = 1;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 12 * v4 - 12;
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::CombineIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v124[6] = *MEMORY[0x1E69E9840];
  ZinIrHalH13g::~ZinIrHalH13g(*(*(a2 + 16) + 40));
  if (v5 == a2)
  {
    return 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(*a2);
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
    v122 = *(*(a2 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v122);
    if (!DefiningOp)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = (32 * *(a2 + 40) + ((a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13 - 8;
  v53 = *v13 == 0;
  v17 = v13[3];
  v16 = v13 + 3;
  v15 = v17;
  if (v53)
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

  v122 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v122);
  if (DefiningOp)
  {
LABEL_18:
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v19 = *(DefiningOp + 72);
      if (*(v19 + 24) == *(*(v9 + 72) + 24))
      {
        v113 = *(v19 + 56);
        v50 = mlir::Value::getDefiningOp(&v113);
        if (v50)
        {
          v51 = v50;
          LODWORD(v123) = 1;
          v122 = 0;
          v114[0] = &v122;
          __src = 0;
          p_src = &__src;
          v56 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_src, v50) && ((v52 = *(*(*(v51 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v52 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v53 = v52 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v53 = 1), !v53 ? (v54 = v52 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v54 = 1), !v54 ? (v55 = v52 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v55 = 1), v55 && mlir::detail::constant_int_value_binder::match(v114, __src)) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v122);
          if (v123 >= 0x41 && v122)
          {
            MEMORY[0x1AC55A040](v122, 0x1000C8000313F17);
          }

          if (v56)
          {
            v61 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
            v62 = *v61 - 8;
            v53 = *v61 == 0;
            v65 = v61[3];
            v64 = v61 + 3;
            v63 = v65;
            if (v53)
            {
              v10 = 0;
            }

            else
            {
              v10 = v62;
            }

            v66 = (v63 - 1);
            if (!v63)
            {
              v66 = 0;
            }

            if (v63 != v64)
            {
              v11 = v66;
            }
          }
        }
      }
    }
  }

LABEL_20:
  v122 = *(*(v9 + 72) + 24);
  v20 = mlir::Value::getDefiningOp(&v122);
  if (v20)
  {
    if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v21 = *(v20 + 72);
      if (*(v21 + 24) == *(*(a2 + 72) + 24))
      {
        v113 = *(v21 + 56);
        v57 = mlir::Value::getDefiningOp(&v113);
        if (v57)
        {
          v58 = v57;
          LODWORD(v123) = 1;
          v122 = 0;
          v114[0] = &v122;
          __src = 0;
          p_src = &__src;
          v60 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_src, v57) && ((v59 = *(*(*(v58 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v59 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v59 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v59 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v59 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) && mlir::detail::constant_int_value_binder::match(v114, __src) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v122);
          if (v123 >= 0x41 && v122)
          {
            MEMORY[0x1AC55A040](v122, 0x1000C8000313F17);
          }

          if (v60)
          {
            v67 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
            v10 = *v67 ? *v67 - 8 : 0;
            v68 = v67[3];
            if (v68 != v67 + 3)
            {
              if (v68)
              {
                v11 = (v68 - 1);
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
    v122 = v124;
    v123 = 0x600000000;
    v22 = *(v9 + 44);
    v23 = (v22 >> 23) & 1;
    v24 = (v22 >> 21) & 0x7F8;
    v25 = 32 * *(v9 + 40);
    v26 = v25 + v24 + v9 + 64 + 16 * v23;
    v27 = *(v26 + 24);
    v107 = v9;
    if (v27 == v26 + 24)
    {
      goto LABEL_115;
    }

    v28 = v27 - 8;
    if (!v27)
    {
      v28 = 0;
    }

    ZinIrHalH13g::~ZinIrHalH13g(*(v28 + 32));
    if ((*(v29 + 46) & 0x80) != 0)
    {
      v30 = *(v29 + 72);
      v31 = *(v29 + 68);
      __src = v121;
      v120 = 0x600000000;
      if (v31 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v121, v31, 8);
        v32 = __src + 8 * v120;
        if (v31 >= 0xD && (v32 >= v30 + 32 * v31 || v30 + 24 >= __src + 8 * v120 + 8 * v31))
        {
          v35 = v31 & 3;
          if ((v31 & 3) == 0)
          {
            v35 = 4;
          }

          v36 = v31 - v35;
          v37 = &v32[8 * v36];
          v38 = (v30 + 88);
          v39 = (v32 + 16);
          v40 = v36;
          do
          {
            v41 = v38 - 8;
            v42 = vld4q_f64(v41);
            v43 = vld4q_f64(v38);
            *(v39 - 1) = v42;
            *v39 = v43;
            v38 += 16;
            v39 += 2;
            v40 -= 4;
          }

          while (v40);
          v32 = v37;
LABEL_45:
          v44 = v31 - v36;
          v45 = (v30 + 32 * v36 + 24);
          do
          {
            v46 = *v45;
            v45 += 4;
            *v32 = v46;
            v32 += 8;
            --v44;
          }

          while (v44);
          v47 = __src;
          v48 = (v120 + v31);
          LODWORD(v120) = v48;
          if (__src != v121)
          {
            if (v122 != v124)
            {
              free(v122);
              v47 = __src;
              LODWORD(v48) = v120;
            }

            v122 = v47;
            v123 = __PAIR64__(HIDWORD(v120), v48);
            __src = v121;
            HIDWORD(v120) = 0;
            goto LABEL_112;
          }

          v49 = v123;
          if (v123 >= v48)
          {
            if (v48)
            {
              memmove(v122, __src, 8 * v48);
            }

            goto LABEL_111;
          }

          if (HIDWORD(v123) >= v48)
          {
            if (v123)
            {
              memmove(v122, __src, 8 * v123);
              goto LABEL_107;
            }
          }

          else
          {
            LODWORD(v123) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v48, 8);
          }

          v49 = 0;
LABEL_107:
          if (v120 != v49)
          {
            memcpy(&v122[8 * v49], __src + 8 * v49, 8 * (v120 - v49));
          }

          goto LABEL_111;
        }

LABEL_44:
        v36 = 0;
        goto LABEL_45;
      }

      if (v31)
      {
        v32 = v121;
        goto LABEL_44;
      }
    }

    else
    {
      __src = v121;
      HIDWORD(v120) = 6;
    }

    LODWORD(v48) = 0;
    LODWORD(v120) = 0;
LABEL_111:
    LODWORD(v123) = v48;
LABEL_112:
    LODWORD(v120) = 0;
    if (__src != v121)
    {
      free(__src);
    }

    v69 = *(v9 + 44);
    v23 = (v69 >> 23) & 1;
    v24 = (v69 >> 21) & 0x7F8;
    v25 = 32 * *(v9 + 40);
LABEL_115:
    v112 = *(v8 + 36);
    v70 = *(((v9 + 64 + 16 * v23 + v24) & 0xFFFFFFFFFFFFFFF8) + v25);
    if (v70)
    {
      v71 = v70 - 8;
    }

    else
    {
      v71 = 0;
    }

    ZinIrHalH13g::~ZinIrHalH13g(*(v71 + 32));
    v106 = v8;
    if ((*(v72 + 46) & 0x80) != 0)
    {
      v108 = *(v72 + 72);
      v111 = *(v72 + 68);
      v105 = (v8 - 16);
      if (v112)
      {
        v73 = (v8 - 16);
      }

      else
      {
        v73 = 0;
      }

      v110 = v73;
      if (!v112)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v108 = 0;
      v105 = (v8 - 16);
      if (v112)
      {
        v104 = (v8 - 16);
      }

      else
      {
        v104 = 0;
      }

      v110 = v104;
      v111 = 0;
      if (!v112)
      {
        goto LABEL_156;
      }
    }

    if (v111 && v123)
    {
      v74 = 0;
      v75 = v122;
      v109 = &v122[8 * v123];
      while (1)
      {
        v76 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v110, v74);
        if (v76)
        {
          break;
        }

LABEL_153:
        if (++v74 != v112 && v74 != v111 && ++v75 != v109)
        {
          continue;
        }

        goto LABEL_156;
      }

      v77 = *(v108 + 32 * v74 + 24);
      while (1)
      {
        v78 = v76;
        v76 = *v76;
        if (v11)
        {
          Parent = mlir::Block::getParent(v11);
          v80 = *(v78[2] + 16);
          if (v80)
          {
            v81 = mlir::Block::getParent(v80);
            if (Parent == v81)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v81 = 0;
            if (!Parent)
            {
              goto LABEL_137;
            }
          }

          if (mlir::Region::isProperAncestor(Parent, v81))
          {
LABEL_137:
            (*(*a3 + 40))(a3, v78[2]);
            v82 = v78[1];
            if (v82)
            {
              v83 = *v78;
              *v82 = *v78;
              if (v83)
              {
                *(v83 + 8) = v82;
              }
            }

            v78[3] = v77;
            v78[1] = v77;
            v84 = *v77;
            *v78 = *v77;
            v85 = v77;
            if (!v84)
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }
        }

        if (!v10)
        {
          goto LABEL_130;
        }

        v86 = mlir::Block::getParent(v10);
        v87 = *(v78[2] + 16);
        if (v87)
        {
          v88 = mlir::Block::getParent(v87);
          if (v86 == v88)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v88 = 0;
          if (!v86)
          {
            goto LABEL_148;
          }
        }

        if (!mlir::Region::isProperAncestor(v86, v88))
        {
          goto LABEL_130;
        }

LABEL_148:
        (*(*a3 + 40))(a3, v78[2]);
        v85 = *v75;
        v89 = v78[1];
        if (v89)
        {
          v90 = *v78;
          *v89 = *v78;
          if (v90)
          {
            *(v90 + 8) = v89;
          }
        }

        v78[3] = v85;
        v78[1] = v85;
        v84 = *v85;
        *v78 = *v85;
        if (!v84)
        {
          goto LABEL_129;
        }

LABEL_128:
        *(v84 + 8) = v78;
LABEL_129:
        *v85 = v78;
        (*(*a3 + 48))(a3, v78[2]);
LABEL_130:
        if (!v76)
        {
          goto LABEL_153;
        }
      }
    }

LABEL_156:
    v91 = *(v106 + 36);
    v92 = v105;
    if (!v91)
    {
      v92 = 0;
    }

    __src = v92;
    v120 = v91;
    mlir::OperandRange::getTypes(&p_src, &__src);
    __src = v121;
    v120 = 0x600000000;
    v93 = p_src;
    v94 = v116;
    v95 = v118;
    v96 = v118 - v116;
    if ((v118 - v116) < 7)
    {
      v97 = 0;
      v98 = 0;
      v99 = a2;
      if (v118 == v116)
      {
        goto LABEL_165;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v121, v118 - v116, 8);
      v97 = v120;
      v98 = v120;
      v99 = a2;
      if (v95 == v94)
      {
LABEL_165:
        LODWORD(v120) = v98 + v96;
        v101 = *(v99 + 36);
        v102 = (v99 - 16);
        if (!v101)
        {
          v102 = 0;
        }

        v114[0] = v102;
        v114[1] = v101;
        mlir::OperandRange::getTypes(&p_src, v114);
        llvm::SmallVectorImpl<mlir::Type>::insert<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&__src, __src + 8 * v120, p_src, v116, v117, v118);
        v103 = *(v99 + 24);
        p_src = *(*(v107 + 72) + 24);
        LOBYTE(v114[0]) = 0;
        mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>((a3 + 1), v103, &__src, &p_src, v114);
      }
    }

    v100 = (__src + 8 * v97);
    do
    {
      *v100++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v93, v94++) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v95 != v94);
    v98 = v120;
    goto LABEL_165;
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v15, a2, v11);
    mlir::ValueRange::ValueRange(v16, *a3, *(a3 + 8));
    mlir::scf::IfOp::build(a1, v15, v16[0], v16[1], *a4, *a5);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v15, v16, v14);
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
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
      v10 = *a1;
      v12 = *(a1 + 2);
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
        v29 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v29, __src, v18);
        v30 = __src;
        do
        {
          *v30++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
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
    v24 = v12 + ((8 * v14) >> 3);
    if (v24 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v24, 8);
      LODWORD(v12) = *(a1 + 2);
    }

    v25 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == v7)
    {
      goto LABEL_29;
    }

    v26 = (*a1 + 8 * v12);
    v27 = 8 * a6 - 8 * v7 - 8;
    if (v27 >= 0x38)
    {
      v31 = 8 * v12 + *a1;
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v31 - v25) >= 0x20)
      {
        v32 = (v27 >> 3) + 1;
        v33 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        v26 = (v26 + v33 * 8);
        v28 = &v25[v33];
        v34 = (8 * v7 + v16 - 8 * a6 + v10 + 16);
        v35 = (v31 + 16);
        v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v37 = *v34;
          *(v35 - 1) = *(v34 - 1);
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v38 = *v28++;
      *v26++ = v38;
    }

    while (v28 != v17);
LABEL_29:
    *(a1 + 2) = v12 + v14;
    v21 = __src;
    if (v25 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v39 = __src;
      do
      {
        *v39++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
    v12 = *(a1 + 2);
    v10 = *a1;
  }

  if (a6 != v7)
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::CombineNestedIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v92[2] = *MEMORY[0x1E69E9840];
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
  if (v6 == v8 || *(v6 + 1) != v8)
  {
    return 0;
  }

  v14 = v4[3];
  v12 = v4 + 3;
  v13 = v14;
  if (v14 && v13 != v12)
  {
    v33 = v13[4];
    v34 = v13 + 3;
    if (v33 == v34 || *(v33 + 8) != v34)
    {
      return 0;
    }
  }

  ZinIrHalH13g::~ZinIrHalH13g(v6);
  v17 = *(*(v16 + 48) + 16);
  v18 = v17 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v16 : 0;
  if (v17 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v19 = v16;
  v20 = v16 + 64;
  v21 = v16 + 64 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 32 * *(v16 + 40);
  v24 = *(v21 + 24);
  v23 = v21 + 24;
  v22 = v24;
  if (v24 && v22 != v23)
  {
    v35 = *(v22 + 32);
    v36 = v22 + 24;
    if (v35 == v36 || *(v35 + 8) != v36)
    {
      return 0;
    }
  }

  v26 = *(((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (v26)
  {
    v27 = v26 - 8;
  }

  else
  {
    v27 = 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(*(v27 + 32));
  if ((*(v28 + 46) & 0x80) != 0)
  {
    v29 = *(v28 + 72);
    v30 = *(v28 + 68);
    v89 = v91;
    v90 = 0x600000000;
    if (v30 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v30, 8);
      v31 = v90;
      v32 = v89;
      goto LABEL_37;
    }

    if (v30)
    {
      v31 = 0;
      v32 = v91;
LABEL_37:
      v37 = &v32[8 * v31];
      if (v30 >= 0xD && ((v38 = &v32[8 * v31 + 8 * v30], v37 < v29 + 32 * v30) ? (v39 = v29 + 24 >= v38) : (v39 = 1), v39))
      {
        v40 = v30 & 3;
        if ((v30 & 3) == 0)
        {
          v40 = 4;
        }

        v41 = v30 - v40;
        v42 = &v37[v41];
        v43 = (v29 + 88);
        v44 = (v37 + 2);
        v45 = v41;
        do
        {
          v46 = v43 - 8;
          v47 = vld4q_f64(v46);
          v48 = vld4q_f64(v43);
          *(v44 - 1) = v47;
          *v44 = v48;
          v43 += 16;
          v44 += 2;
          v45 -= 4;
        }

        while (v45);
        v37 = v42;
      }

      else
      {
        v41 = 0;
      }

      v49 = v30 - v41;
      v50 = (v29 + 32 * v41 + 24);
      do
      {
        v51 = *v50;
        v50 += 4;
        *v37++ = v51;
        --v49;
      }

      while (v49);
      v52 = v90;
      goto LABEL_52;
    }

    v52 = 0;
  }

  else
  {
    LODWORD(v30) = 0;
    v52 = 0;
    v89 = v91;
    HIDWORD(v90) = 6;
  }

LABEL_52:
  v53 = v52 + v30;
  LODWORD(v90) = v53;
  v54 = *(a2 + 40);
  v55 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v86 = v88;
  v87 = 0x600000000;
  v56 = ((v55 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v54;
  v59 = *(v56 + 24);
  v58 = v56 + 24;
  v57 = v59;
  if (v59)
  {
    v60 = v57 == v58;
  }

  else
  {
    v60 = 1;
  }

  if (!v60)
  {
    ZinIrHalH13g::~ZinIrHalH13g(*(v57 + 24));
    if ((*(v61 + 46) & 0x80) != 0)
    {
      v62 = *(v61 + 72);
      v63 = *(v61 + 68);
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v86 + 8 * v87, v62, 0, v62, v63);
    v53 = v90;
  }

  v83 = v85;
  v84 = 0xC00000000;
  if (!v53)
  {
LABEL_84:
    v78 = *(a2 + 24);
    v82 = *(*(a2 + 72) + 24);
    v92[0] = *(*(v18 + 72) + 24);
    v81 = mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 1), v78, &v82, v92) - 16;
    v79 = *(a2 + 36);
    v80 = a2 - 16;
    if (!v79)
    {
      v80 = 0;
    }

    v92[0] = v80;
    v92[1] = v79;
    mlir::OperandRange::getTypes(&v82, v92);
    mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>((a3 + 1), v78, &v82, &v81);
  }

  v64 = 0;
  v65 = v89;
  v66 = 8 * v53;
  while (1)
  {
    while (mlir::Value::getDefiningOp(v65) != v18)
    {
      if (mlir::Value::getParentRegion(v65) == (((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)))
      {
        goto LABEL_87;
      }

      v67 = v84;
      if (v84 >= HIDWORD(v84))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v85, v84 + 1, 4);
        v67 = v84;
      }

      *(v83 + v67) = v64;
      LODWORD(v84) = v84 + 1;
      ++v64;
      v65 = (v65 + 8);
      v66 -= 8;
      if (!v66)
      {
        goto LABEL_84;
      }
    }

    v68 = *(*v65 + 8) & 7;
    if (*v65)
    {
      v69 = v68 == 6;
    }

    else
    {
      v69 = 0;
    }

    if (v69)
    {
      v68 = (*(*v65 + 16) + 6);
    }

    v70 = v20 + 16 * ((*(v19 + 44) >> 23) & 1) + ((*(v19 + 44) >> 21) & 0x7F8) + 32 * *(v19 + 40);
    v71 = *(v70 + 24);
    v72 = v71 == v70 + 24 || v71 == 0;
    v73 = v72 ? 0 : v71 - 8;
    ZinIrHalH13g::~ZinIrHalH13g(*(v73 + 32));
    if (*(*(v74 + 72) + 32 * v68 + 24) != *(v86 + v64))
    {
      break;
    }

    v75 = *(32 * *(v19 + 40) + v20 + 16 * ((*(v19 + 44) >> 23) & 1) + ((*(v19 + 44) >> 21) & 0x7F8));
    if (v75)
    {
      v76 = v75 - 8;
    }

    else
    {
      v76 = 0;
    }

    ZinIrHalH13g::~ZinIrHalH13g(*(v76 + 32));
    v89[v64++] = *(*(v77 + 72) + 32 * v68 + 24);
    v65 = (v65 + 8);
    v66 -= 8;
    if (!v66)
    {
      goto LABEL_84;
    }
  }

LABEL_87:
  result = 0;
  if (v83 != v85)
  {
    free(v83);
    result = 0;
  }

  if (v86 != v88)
  {
    free(v86);
    result = 0;
  }

  if (v89 != v91)
  {
    free(v89);
    return 0;
  }

  return result;
}