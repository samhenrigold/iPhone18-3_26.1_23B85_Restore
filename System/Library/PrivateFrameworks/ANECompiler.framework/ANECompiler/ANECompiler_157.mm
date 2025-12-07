BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
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
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::AtomicYieldOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::memref::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::memref::ExtractAlignedPointerAsIndexOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::AssumeAlignmentOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::AssumeAlignmentOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReallocOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::AssumeAlignmentOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ReallocOp>,mlir::OpTrait::OneResult<mlir::memref::ReallocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ReallocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ReallocOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::ReallocOp>,mlir::OpTrait::OpInvariants<mlir::memref::ReallocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::ReallocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ReallocOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::ReallocOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::ReallocOp>::writeProperties;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::ReallocOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v44;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  v37 = v1;
  v45 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v37;
  a1 = v45;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v38 = v1;
  v46 = a1;
  v31 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v31;
  v1 = v38;
  a1 = v46;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v39 = v1;
  v47 = a1;
  v32 = v2;
  v26 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v26;
  v2 = v32;
  v1 = v39;
  a1 = v47;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = v1;
  v48 = a1;
  v33 = v2;
  v22 = v4;
  v27 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v22;
  v3 = v27;
  v2 = v33;
  v1 = v40;
  a1 = v48;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

LABEL_40:
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_41;
  }

LABEL_39:
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
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_40;
  }

LABEL_8:
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_41:
  v43 = v1;
  v51 = a1;
  v36 = v2;
  v25 = v4;
  v30 = v3;
  v18 = v6;
  v21 = v5;
  v16 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v16;
  v6 = v18;
  v5 = v21;
  v4 = v25;
  v3 = v30;
  v2 = v36;
  v1 = v43;
  a1 = v51;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::ReallocOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::memref::ReallocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::memref::ReallocOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::ReallocOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::ReinterpretCastOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::ReinterpretCastOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::ReinterpretCastOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::memref::ReinterpretCastOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] != a2[1])
  {
    return 0;
  }

  if (a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OneResult<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OpInvariants<mlir::memref::ReinterpretCastOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::ReinterpretCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ReinterpretCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::writeProperties;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getAsmResultNames;
  v3[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getAsmBlockArgumentNames;
  v3[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getAsmBlockNames;
  v3[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDefaultDialect;
  {
    v11 = v3;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v4 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getSpeculatability;
  {
    v12 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v6 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v8 = v7;
  *v7 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getEffects;
  {
    v13 = v7;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v8 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v8);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>(a1);
  v9 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v9 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getViewSource;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CastOp>,mlir::OpTrait::OneResult<mlir::memref::CastOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CastOp>,mlir::OpTrait::OneOperand<mlir::memref::CastOp>,mlir::OpTrait::OpInvariants<mlir::memref::CastOp>,mlir::CastOpInterface::Trait<mlir::memref::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::memref::CastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::CastOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0xD0uLL, 0x80040B342C78EuLL);
  v3 = v2;
  *v2 = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getOffsetSizeAndStrideStartOperandIndex;
  v2[1] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getArrayAttrMaxRanks;
  v2[2] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getOffsets;
  v2[3] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getSizes;
  v2[4] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStrides;
  v2[5] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStaticOffsets;
  v2[6] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStaticSizes;
  v2[7] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStaticStrides;
  v2[8] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getMixedOffsets;
  v2[9] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getMixedSizes;
  v2[10] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getMixedStrides;
  v2[11] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::isDynamicOffset;
  v2[12] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::isDynamicSize;
  v2[13] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::isDynamicStride;
  v2[14] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStaticOffset;
  v2[15] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStaticSize;
  v2[16] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getStaticStride;
  v2[17] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getIndexOfDynamicOffset;
  v2[18] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getIndexOfDynamicSize;
  v2[19] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getIndexOfDynamicStride;
  v2[20] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDynamicOffset;
  v2[21] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDynamicSize;
  v2[22] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDynamicStride;
  v2[23] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::isSameAs;
  v2[24] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::hasUnitStride;
  v2[25] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::hasZeroOffset;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getArrayAttrMaxRanks(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 36))
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v5);
  return (v3 << 32) | 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a2;
  StaticOffsets = mlir::memref::ReinterpretCastOp::getStaticOffsets(&v7);
  return mlir::detail::getNumDynamicEntriesUpToIdx(StaticOffsets, v5, a3) + 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getIndexOfDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = a2;
  StaticSizes = mlir::memref::ReinterpretCastOp::getStaticSizes(&v8);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticSizes, v5, a3);
  return (NumDynamicEntriesUpToIdx + (mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v8, 1u) >> 32) + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getIndexOfDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a2;
  StaticStrides = mlir::memref::ReinterpretCastOp::getStaticStrides(&v9);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticStrides, v5, a3);
  v7 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v9, 1u) >> 32;
  return (v7 + (mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v9, 2u) >> 32) + NumDynamicEntriesUpToIdx + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = a2;
  StaticOffsets = mlir::memref::ReinterpretCastOp::getStaticOffsets(&v8);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticOffsets, v5, a3);
  return *(*(v8 + 72) + 32 * (NumDynamicEntriesUpToIdx + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a2;
  StaticSizes = mlir::memref::ReinterpretCastOp::getStaticSizes(&v9);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticSizes, v5, a3);
  ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v9, 1u);
  return *(*(v9 + 72) + 32 * (NumDynamicEntriesUpToIdx + HIDWORD(ODSOperandIndexAndLength) + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = a2;
  StaticStrides = mlir::memref::ReinterpretCastOp::getStaticStrides(&v10);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticStrides, v5, a3);
  v7 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v10, 1u) >> 32;
  ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v10, 2u);
  return *(*(v10 + 72) + 32 * (v7 + HIDWORD(ODSOperandIndexAndLength) + NumDynamicEntriesUpToIdx + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::isSameAs(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    InterfaceFor = v11;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v6, InterfaceFor, a3, a4, a5, a6);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v10, &v11);
  v2 = v11;
  if (!v12)
  {
    v7 = 1;
    if (v11 == v13)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v3 = 8 * v12 - 8;
  do
  {
    v4 = *v2++;
    v5 = mlir::getConstantIntValue(v4) == 1;
    v7 = v6 & v5;
    v8 = v7 != 1 || v3 == 0;
    v3 -= 8;
  }

  while (!v8);
  v2 = v11;
  if (v11 != v13)
  {
LABEL_9:
    free(v2);
  }

  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v10, &v11);
  v2 = v11;
  if (!v12)
  {
    v7 = 1;
    if (v11 == v13)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v3 = 8 * v12 - 8;
  do
  {
    v4 = *v2++;
    v5 = mlir::getConstantIntValue(v4) == 0;
    v7 = v6 & v5;
    v8 = v7 != 1 || v3 == 0;
    v3 -= 8;
  }

  while (!v8);
  v2 = v11;
  if (v11 != v13)
  {
LABEL_9:
    free(v2);
  }

  return v7;
}

uint64_t mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[401];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface]";
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

uint64_t mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>::getViewSource(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v4, 0);
  return *(*(v4 + 72) + 32 * ODSOperandIndexAndLength + 24);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::memref::ReinterpretCastOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  v121 = v1;
  v136 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v121;
  a1 = v136;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  v122 = v1;
  v137 = a1;
  v108 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v108;
  v1 = v122;
  a1 = v137;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  v123 = v1;
  v138 = a1;
  v96 = v3;
  v109 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v96;
  v2 = v109;
  v1 = v123;
  a1 = v138;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  v124 = v1;
  v139 = a1;
  v97 = v3;
  v110 = v2;
  v85 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v85;
  v3 = v97;
  v2 = v110;
  v1 = v124;
  a1 = v139;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  v125 = v1;
  v140 = a1;
  v98 = v3;
  v111 = v2;
  v75 = v5;
  v86 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v75;
  v4 = v86;
  v3 = v98;
  v2 = v111;
  v1 = v125;
  a1 = v140;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  v126 = v1;
  v141 = a1;
  v99 = v3;
  v112 = v2;
  v76 = v5;
  v87 = v4;
  v66 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v66;
  v5 = v76;
  v4 = v87;
  v3 = v99;
  v2 = v112;
  v1 = v126;
  a1 = v141;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  v127 = v1;
  v142 = a1;
  v100 = v3;
  v113 = v2;
  v77 = v5;
  v88 = v4;
  v67 = v6;
  v58 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v7 = v58;
  v6 = v67;
  v5 = v77;
  v4 = v88;
  v3 = v100;
  v2 = v113;
  v1 = v127;
  a1 = v142;
  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  v128 = v1;
  v143 = a1;
  v101 = v3;
  v114 = v2;
  v78 = v5;
  v89 = v4;
  v68 = v6;
  v51 = v8;
  v59 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v51;
  v7 = v59;
  v6 = v68;
  v5 = v78;
  v4 = v89;
  v3 = v101;
  v2 = v114;
  v1 = v128;
  a1 = v143;
  v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

LABEL_75:
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>();
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
    v14 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_76;
  }

LABEL_74:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  v13 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_75;
  }

LABEL_15:
  v14 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_76:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::ReinterpretCastOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::memref::ReinterpretCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OneResult<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OpInvariants<mlir::memref::ReinterpretCastOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::ReinterpretCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ReinterpretCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::memref::ReinterpretCastOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OneResult<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::OpInvariants<mlir::memref::ReinterpretCastOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::ReinterpretCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ReinterpretCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ReinterpretCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) != 0 && mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13) && (v6 = a1, (mlir::memref::ReinterpretCastOp::verifyInvariantsImpl(&v6)))
  {
    return mlir::op_definition_impl::verifyTrait<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(a1);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::op_definition_impl::verifyTrait<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1;
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    a1 = v2;
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ReshapeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ReshapeOp>,mlir::OpTrait::OneResult<mlir::memref::ReshapeOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::ReshapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ReshapeOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::memref::ReshapeOp>,mlir::OpTrait::OpInvariants<mlir::memref::ReshapeOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ReshapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ReshapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ReshapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ReshapeOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ReshapeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReshapeOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReshapeOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReshapeOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ReshapeOp>::getDefaultDialect;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::ReshapeOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::ReshapeOp>::getEffects;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::ReshapeOp>::getViewSource;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CastOp>,mlir::OpTrait::OneResult<mlir::memref::CastOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CastOp>,mlir::OpTrait::OneOperand<mlir::memref::CastOp>,mlir::OpTrait::OpInvariants<mlir::memref::CastOp>,mlir::CastOpInterface::Trait<mlir::memref::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::memref::CastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::CastOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::ReshapeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::memref::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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
  if (!mlir::memref::ReshapeOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::ReshapeOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::LoadOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::LoadOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::StoreOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::LoadOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::StoreOp>,mlir::OpTrait::ZeroResults<mlir::memref::StoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::StoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::StoreOp>,mlir::OpTrait::OpInvariants<mlir::memref::StoreOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::StoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::StoreOp>,mlir::PromotableMemOpInterface::Trait<mlir::memref::StoreOp>,mlir::DestructurableAccessorOpInterface::Trait<mlir::memref::StoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::StoreOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::writeProperties;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>>(a1);
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::canRewire;
  v4[1] = mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::rewire;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::LoadOp>,mlir::OpTrait::OneResult<mlir::memref::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::LoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::LoadOp>,mlir::OpTrait::OpInvariants<mlir::memref::LoadOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::LoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::LoadOp>,mlir::PromotableMemOpInterface::Trait<mlir::memref::LoadOp>,mlir::DestructurableAccessorOpInterface::Trait<mlir::memref::LoadOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::LoadOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v5 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::loadsFrom;
  v2[1] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::storesTo;
  v2[2] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::getStored;
  v2[3] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::canUsesBeRemoved;
  v2[4] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::StoreOp>::removeBlockingUses;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v7, a2);
  v8 = a3;
  v9 = a4;
  mlir::memref::StoreOp::fold();
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
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
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAccessorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAccessorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::StoreOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::memref::StoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::memref::StoreOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::StoreOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::TransposeOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::TransposeOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::TransposeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::TransposeOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::TransposeOp>,mlir::OpTrait::OneResult<mlir::memref::TransposeOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::TransposeOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::TransposeOp>,mlir::OpTrait::OneOperand<mlir::memref::TransposeOp>,mlir::OpTrait::OpInvariants<mlir::memref::TransposeOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::TransposeOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::TransposeOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::TransposeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::TransposeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::TransposeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::writeProperties;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::getAsmResultNames;
  v3[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::getAsmBlockArgumentNames;
  v3[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::getAsmBlockNames;
  v3[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::getDefaultDialect;
  {
    v9 = v3;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v4 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::TransposeOp>::getSpeculatability;
  {
    v10 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v6 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v7 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::TransposeOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::memref::TransposeOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::TransposeOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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
  if (!mlir::memref::TransposeOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::memref::TransposeOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ViewOp>,mlir::OpTrait::OneResult<mlir::memref::ViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ViewOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::ViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::ViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getDefaultDialect;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getViewSource;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CastOp>,mlir::OpTrait::OneResult<mlir::memref::CastOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CastOp>,mlir::OpTrait::OneOperand<mlir::memref::CastOp>,mlir::OpTrait::OpInvariants<mlir::memref::CastOp>,mlir::CastOpInterface::Trait<mlir::memref::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::memref::CastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::CastOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::ViewOp>::getSpeculatability;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::ViewOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::memref::ViewOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::ViewOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::printAssembly()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v2);
  v1 = v3;
  if (v3 >= 8)
  {
    if ((v3 & 4) != 0)
    {
      result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16))();
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v2[0], v2[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::ReinterpretCastOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::ReinterpretCastOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::ReinterpretCastOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] != a2[1])
  {
    return 0;
  }

  if (a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::SubViewOp>,mlir::OpTrait::OneResult<mlir::memref::SubViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::SubViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::SubViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::SubViewOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::SubViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::SubViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::SubViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::writeProperties;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getAsmResultNames;
  v3[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getAsmBlockArgumentNames;
  v3[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getAsmBlockNames;
  v3[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDefaultDialect;
  {
    v11 = v3;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v4 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getViewSource;
  {
    v12 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CastOp>,mlir::OpTrait::OneResult<mlir::memref::CastOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CastOp>,mlir::OpTrait::OneOperand<mlir::memref::CastOp>,mlir::OpTrait::OpInvariants<mlir::memref::CastOp>,mlir::CastOpInterface::Trait<mlir::memref::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::memref::CastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::CastOp>>();
    v6 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id, v6);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>>(a1);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v8 = v7;
  *v7 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::SubViewOp>::getSpeculatability;
  {
    v13 = v7;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v8 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v9 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0xD0uLL, 0x80040B342C78EuLL);
  v3 = v2;
  *v2 = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getOffsetSizeAndStrideStartOperandIndex;
  v2[1] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getArrayAttrMaxRanks;
  v2[2] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getOffsets;
  v2[3] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getSizes;
  v2[4] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStrides;
  v2[5] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticOffsets;
  v2[6] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticSizes;
  v2[7] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticStrides;
  v2[8] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getMixedOffsets;
  v2[9] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getMixedSizes;
  v2[10] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getMixedStrides;
  v2[11] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isDynamicOffset;
  v2[12] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isDynamicSize;
  v2[13] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isDynamicStride;
  v2[14] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticOffset;
  v2[15] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticSize;
  v2[16] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticStride;
  v2[17] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicOffset;
  v2[18] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicSize;
  v2[19] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicStride;
  v2[20] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicOffset;
  v2[21] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicSize;
  v2[22] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicStride;
  v2[23] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isSameAs;
  v2[24] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasUnitStride;
  v2[25] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasZeroOffset;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

unint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getArrayAttrMaxRanks(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v5, 0);
  v6 = *(*(*(v5 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v6);
  return v3 | (v3 << 32);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a2;
  StaticOffsets = mlir::memref::ReinterpretCastOp::getStaticOffsets(&v7);
  return mlir::detail::getNumDynamicEntriesUpToIdx(StaticOffsets, v5, a3) + 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = a2;
  StaticSizes = mlir::memref::ReinterpretCastOp::getStaticSizes(&v8);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticSizes, v5, a3);
  return (NumDynamicEntriesUpToIdx + (mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v8, 1u) >> 32) + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a2;
  StaticStrides = mlir::memref::ReinterpretCastOp::getStaticStrides(&v9);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticStrides, v5, a3);
  v7 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v9, 1u) >> 32;
  return (v7 + (mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v9, 2u) >> 32) + NumDynamicEntriesUpToIdx + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = a2;
  StaticOffsets = mlir::memref::ReinterpretCastOp::getStaticOffsets(&v8);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticOffsets, v5, a3);
  return *(*(v8 + 72) + 32 * (NumDynamicEntriesUpToIdx + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a2;
  StaticSizes = mlir::memref::ReinterpretCastOp::getStaticSizes(&v9);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticSizes, v5, a3);
  ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v9, 1u);
  return *(*(v9 + 72) + 32 * (NumDynamicEntriesUpToIdx + HIDWORD(ODSOperandIndexAndLength) + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = a2;
  StaticStrides = mlir::memref::ReinterpretCastOp::getStaticStrides(&v10);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(StaticStrides, v5, a3);
  v7 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v10, 1u) >> 32;
  ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v10, 2u);
  return *(*(v10 + 72) + 32 * (v7 + HIDWORD(ODSOperandIndexAndLength) + NumDynamicEntriesUpToIdx + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isSameAs(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    InterfaceFor = v11;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v6, InterfaceFor, a3, a4, a5, a6);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v10, &v11);
  v2 = v11;
  if (!v12)
  {
    v7 = 1;
    if (v11 == v13)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v3 = 8 * v12 - 8;
  do
  {
    v4 = *v2++;
    v5 = mlir::getConstantIntValue(v4) == 1;
    v7 = v6 & v5;
    v8 = v7 != 1 || v3 == 0;
    v3 -= 8;
  }

  while (!v8);
  v2 = v11;
  if (v11 != v13)
  {
LABEL_9:
    free(v2);
  }

  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v10, &v11);
  v2 = v11;
  if (!v12)
  {
    v7 = 1;
    if (v11 == v13)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v3 = 8 * v12 - 8;
  do
  {
    v4 = *v2++;
    v5 = mlir::getConstantIntValue(v4) == 0;
    v7 = v6 & v5;
    v8 = v7 != 1 || v3 == 0;
    v3 -= 8;
  }

  while (!v8);
  v2 = v11;
  if (v11 != v13)
  {
LABEL_9:
    free(v2);
  }

  return v7;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::memref::SubViewOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v64;
  v4 = v74;
  v3 = v85;
  v2 = v97;
  v1 = v110;
  a1 = v124;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::SubViewOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::SubViewOp>,mlir::OpTrait::OneResult<mlir::memref::SubViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::SubViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::SubViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::SubViewOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::SubViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::SubViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::SubViewOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::memref::SubViewOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::SubViewOp>,mlir::OpTrait::OneResult<mlir::memref::SubViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::SubViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::SubViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::SubViewOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::SubViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::SubViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::SubViewOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) != 0 && mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13) && (v6 = a1, (mlir::memref::SubViewOp::verifyInvariantsImpl(&v6)))
  {
    return mlir::op_definition_impl::verifyTrait<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(a1);
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::MemRefInlinerInterface::~MemRefInlinerInterface(_anonymous_namespace_::MemRefInlinerInterface *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::MemRefInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

const char *llvm::getTypeName<mlir::bufferization::AllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::AllocationOpInterface]";
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

const char *llvm::getTypeName<mlir::RuntimeVerifiableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RuntimeVerifiableOpInterface]";
  v6 = 84;
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

const char *llvm::getTypeName<mlir::DestructurableTypeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableTypeInterface]";
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

double mlir::memref::AllocaOp::getPromotableSlots@<D0>(mlir::memref::AllocaOp *this@<X0>, void *a2@<X8>)
{
  v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v13);
  if (*(*RHS + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v14[0] = mlir::Attribute::getContext(&RHS), memset(&v14[1], 0, 24), mlir::Builder::getZeroAttr(v14, RHS, v4)))
  {
    if (mlir::BaseMemRefType::hasRank(&v13))
    {
      Value = mlir::ArrayAttr::getValue(&v13);
      if (v6)
      {
        v7 = 8 * v6;
        while (*Value != 0x8000000000000000)
        {
          ++Value;
          v7 -= 8;
          if (!v7)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v8 = mlir::ArrayAttr::getValue(&v13);
        if (mlir::ShapedType::getNumElements(v8, v9) == 1)
        {
          v10 = *this - 16;
          v11 = mlir::AffineBinaryOpExpr::getRHS(&v13);
          a2[2] = v10;
          *a2 = a2 + 2;
          a2[3] = v11;
          *&result = 0x300000001;
          a2[1] = 0x300000001;
          return result;
        }
      }
    }
  }

  *a2 = a2 + 2;
  *&result = 0x300000000;
  a2[1] = 0x300000000;
  return result;
}

uint64_t mlir::memref::AllocaOp::getDefaultValue(uint64_t a1, uint64_t a2, mlir::IndexType **a3, __n128 a4)
{
  v5 = *(a2 + 8);
  v6 = *(*a1 + 24);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9[0] = v5;
    return mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(a3, v6, v9) - 16;
  }

  else
  {
    v10 = v5;
    v9[0] = mlir::Builder::getZeroAttr(a3, v5, a4);
    v9[1] = v7;
    return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr>(a3, v6, &v10, v9) - 16;
  }
}

void mlir::memref::AllocaOp::handlePromotionComplete(mlir::Operation **a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = a3;
  if (!*a3)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v8);
    mlir::Operation::erase(DefiningOp, v7);
  }

  mlir::Operation::erase(*a1, a2);
  *a4 = 0;
  a4[16] = 0;
}

double mlir::memref::AllocaOp::getDestructurableSlots@<D0>(mlir::memref::AllocaOp *this@<X0>, void *a2@<X8>)
{
  v9[0] = llvm::DefaultDoCastIfPossible<mlir::DestructurableTypeInterface,mlir::MemRefType,llvm::CastInfo<mlir::DestructurableTypeInterface,mlir::MemRefType,void>>::doCastIfPossible((*(*this - 8) & 0xFFFFFFFFFFFFFFF8));
  v9[1] = v4;
  if (v9[0])
  {
    mlir::DestinationStyleOpInterface::getDpsInitsMutable(&__src, v9);
    if (v8 == 1)
    {
      if (*(*this + 36))
      {
        v5 = *this - 16;
      }

      else
      {
        v5 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
      llvm::deallocate_buffer(0, 0);
    }
  }

  *a2 = a2 + 2;
  *&result = 0x100000000;
  a2[1] = 0x100000000;
  return result;
}

void sub_1A6C61740(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  *(v9 + 48) = v12;
  if (v12)
  {
    v13 = (16 * v12);
    buffer = llvm::allocate_buffer(16 * v12, 8uLL);
    *(v9 + 32) = buffer;
    *(v9 + 40) = a9;
    memcpy(buffer, v10, 16 * *(v9 + 48));
  }

  else
  {
    v13 = 0;
    *v11 = 0;
    v11[1] = 0;
  }

  ++*(v9 + 8);
  llvm::deallocate_buffer(v10, v13);
}

void sub_1A6C6179C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, llvm *a11, uint64_t a12, int a13, int a14, char a15)
{
  if (a15)
  {
    llvm::deallocate_buffer(a11, (16 * a13));
  }

  JUMPOUT(0x1A6C616E0);
}

void mlir::memref::AllocaOp::destructure(ZinIrHalH13g **a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = *(v10 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(v10);
  v13 = *(v12 + 8);
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  v14 = (*(*a1 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = *v14;
  {
    mlir::memref::AllocaOp::destructure();
    v16 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_4:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_14;
  }

  v25 = v19[1];
LABEL_15:
  v42[0] = v14;
  v42[1] = v25;
  v26 = a2[1];
  v27 = 16;
  if (v26 == *a2)
  {
    v27 = 20;
  }

  v28 = *(a2 + v27);
  if (v28)
  {
    v29 = 8 * v28;
    for (i = a2[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v29 -= 8;
      if (!v29)
      {
        return;
      }
    }
  }

  else
  {
    i = a2[1];
  }

  v31 = (v26 + 8 * v28);
  while (i != v31)
  {
    v41 = *i;
    v32 = mlir::FunctionOpInterface::setFunctionTypeAttr(v42, v41);
    v40 = mlir::MemRefType::get(0, 0, v32, 0, 0, 0);
    InterfaceFor = mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(a3, *(*a1 + 3), &v40);
    v34 = InterfaceFor;
    if (InterfaceFor)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
    }

    v35 = *(a4 + 8);
    if (v35 >= *(a4 + 12))
    {
      v37 = InterfaceFor;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v35 + 1, 16);
      InterfaceFor = v37;
      v35 = *(a4 + 8);
    }

    v36 = (*a4 + 16 * v35);
    *v36 = v34;
    v36[1] = InterfaceFor;
    ++*(a4 + 8);
    *&v39 = v34 - 16;
    *(&v39 + 1) = v32;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>(a5, &v41, &v39, v38);
    do
    {
      ++i;
    }

    while (i != v31 && *i >= 0xFFFFFFFFFFFFFFFELL);
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::AllocaOp::build(a1, v15, *a3, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id)
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 24 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 24 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

void mlir::memref::AllocaOp::handleDestructuringComplete(mlir::Operation **a1@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  mlir::Operation::erase(*a1, a2);
  *a3 = 0;
  a3[16] = 0;
}

BOOL mlir::memref::LoadOp::canUsesBeRemoved(uint64_t *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 20) - *(a3 + 24) != 1)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  v4 = 16;
  if (v3 == *a3)
  {
    v4 = 20;
  }

  v5 = *(a3 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v3 + 8 * v5;
    while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 += 8;
      v6 -= 8;
      if (!v6)
      {
        v3 = v7;
        break;
      }
    }
  }

  v8 = *(*v3 + 24);
  if (v8 != *a2)
  {
    return 0;
  }

  v10 = *a1;
  if (*(*(*a1 + 72) + 24) != v8)
  {
    return 0;
  }

  v11 = *(v10 + 36);
  v12 = v10 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a2[1] == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::LoadOp::removeBlockingUses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  while (1)
  {
    v8 = *NextResultAtOffset;
    if (!*NextResultAtOffset)
    {
      break;
    }

    v9 = v8[1];
    if (v9)
    {
      v10 = *v8;
      *v9 = *v8;
      if (v10)
      {
        *(v10 + 8) = v9;
      }
    }

    v8[3] = a5;
    v11 = *a5;
    *v8 = *a5;
    v8[1] = a5;
    if (v11)
    {
      *(v11 + 8) = v8;
    }

    *a5 = v8;
  }

  return 1;
}

uint64_t mlir::memref::LoadOp::canRewire(mlir::memref::LoadOp *a1, void *a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (*a2 != *(*(*a1 + 72) + 24))
  {
    return 0;
  }

  Context = mlir::Attribute::getContext((*a1 + 24));
  ODSOperandIndexAndLength = mlir::memref::LoadOp::getODSOperandIndexAndLength(a1, 1u);
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v8 = *(*a1 + 72);
  }

  else
  {
    v8 = 0;
  }

  mlir::ValueRange::ValueRange(v13, v8 + 32 * ODSOperandIndexAndLength, (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength);
  result = getAttributeIndexFromIndexOperands(Context, v13[0], v13[1], *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v9 = *a3;
    if (*(a3 + 8) != *a3)
    {
      goto LABEL_7;
    }

    v10 = *(a3 + 20);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = *a3;
      while (*v12 != result)
      {
        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      return 1;
    }

LABEL_14:
    if (v10 < *(a3 + 16))
    {
      *(a3 + 20) = v10 + 1;
      v9[v10] = result;
    }

    else
    {
LABEL_7:
      llvm::SmallPtrSetImplBase::insert_imp_big(a3, result);
    }

    return 1;
  }

  return result;
}

uint64_t getAttributeIndexFromIndexOperands(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v28 = a4;
  v32 = v34;
  v33 = 0x600000000;
  Value = mlir::ArrayAttr::getValue(&v28);
  v29 = a2;
  v30 = 0;
  v31 = Value;
  if (!a3 || (v9 = v8) == 0)
  {
    v19 = v33;
LABEL_17:
    v21 = mlir::ArrayAttr::get(a1, v32, v19);
    v22 = v32;
    if (v32 == v34)
    {
      return v21;
    }

LABEL_18:
    free(v22);
    return v21;
  }

  v10 = 0;
  v11 = Value + 8 * v9;
  while (1)
  {
    v12 = mlir::ValueRange::dereference_iterator(&v29, v10);
    v13 = v31;
    v26 = &v27;
    v27 = 0;
    v24 = v12;
    DefiningOp = mlir::Value::getDefiningOp(&v24);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v26, DefiningOp) & 1) == 0)
    {
      break;
    }

    mlir::IntegerAttr::getValue(&v27, &v24);
    v15 = v25;
    if (v25 >= 0x41)
    {
      if (v15 - llvm::APInt::countLeadingZerosSlowCase(&v24) > 0x40)
      {
        if (v24)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
        }

        break;
      }

      v16 = *v24;
      MEMORY[0x1AC55A040]();
      if (v16 >= *v13)
      {
        break;
      }
    }

    else if (v24 >= *v13)
    {
      break;
    }

    v17 = v27;
    v18 = v33;
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v33 + 1, 8);
      v18 = v33;
    }

    *(v32 + v18) = v17;
    v19 = v33 + 1;
    LODWORD(v33) = v33 + 1;
    v10 = v30 + 1;
    v20 = v31 + 1;
    v30 = v10;
    ++v31;
    if (v10 == a3 || v20 == v11)
    {
      goto LABEL_17;
    }
  }

  v21 = 0;
  v22 = v32;
  if (v32 != v34)
  {
    goto LABEL_18;
  }

  return v21;
}

BOOL mlir::memref::StoreOp::canUsesBeRemoved(mlir::memref::StoreOp *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 20) - *(a3 + 24) != 1)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  v4 = 16;
  if (v3 == *a3)
  {
    v4 = 20;
  }

  v5 = *(a3 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v3 + 8 * v5;
    while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 += 8;
      v6 -= 8;
      if (!v6)
      {
        v3 = v7;
        break;
      }
    }
  }

  v8 = *(*v3 + 24);
  return v8 == *a2 && *(*(*a1 + 72) + 56) == v8 && *(*(*a1 + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 0) + 24) != *a2 && a2[1] == (*(*(*(*a1 + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::StoreOp::canRewire(mlir::memref::StoreOp *a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (*a2 != *(*(*a1 + 72) + 56) || *(*(*a1 + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 0) + 24) == *a2)
  {
    return 0;
  }

  Context = mlir::Attribute::getContext((*a1 + 24));
  ODSOperandIndexAndLength = mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 2u);
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v9 = *(*a1 + 72);
  }

  else
  {
    v9 = 0;
  }

  mlir::ValueRange::ValueRange(v21, v9 + 32 * ODSOperandIndexAndLength, (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength);
  result = getAttributeIndexFromIndexOperands(Context, v21[0], v21[1], *(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v10 = *(a2 + 32);
    if (v10)
    {
      v11 = *(a2 + 16);
      v12 = v10 - 1;
      v13 = v12 & ((result >> 4) ^ (result >> 9));
      v14 = *(v11 + 16 * v13);
      if (v14 == result)
      {
LABEL_10:
        v15 = *a3;
        if (*(a3 + 8) != *a3)
        {
          goto LABEL_11;
        }

        v16 = *(a3 + 20);
        if (v16)
        {
          v17 = 8 * v16;
          v18 = *a3;
          while (*v18 != result)
          {
            ++v18;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_17;
            }
          }

          return 1;
        }

LABEL_17:
        if (v16 < *(a3 + 16))
        {
          *(a3 + 20) = v16 + 1;
          v15[v16] = result;
        }

        else
        {
LABEL_11:
          llvm::SmallPtrSetImplBase::insert_imp_big(a3, result);
        }

        return 1;
      }

      v19 = 1;
      while (v14 != -4096)
      {
        v20 = v13 + v19++;
        v13 = v20 & v12;
        v14 = *(v11 + 16 * (v20 & v12));
        if (v14 == result)
        {
          goto LABEL_10;
        }
      }
    }

    return 0;
  }

  return result;
}

void *llvm::DefaultDoCastIfPossible<mlir::DestructurableTypeInterface,mlir::MemRefType,llvm::CastInfo<mlir::DestructurableTypeInterface,mlir::MemRefType,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::memref::AllocaOp::destructure();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::memref::AllocaOp::destructure();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

uint64_t mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocaOp>,mlir::OpTrait::OneResult<mlir::memref::AllocaOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocaOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocaOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocaOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocaOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocaOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocaOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocaOp>,mlir::PromotableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::DestructurableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocaOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocaOp>,mlir::OpTrait::OneResult<mlir::memref::AllocaOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocaOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocaOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocaOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocaOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocaOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocaOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocaOp>,mlir::PromotableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::DestructurableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocaOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[335];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void *llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[3] = -4096;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = *(a1 + 16) - 1;
              v28 = v27 & ((v26 >> 4) ^ (v26 >> 9));
              v25 = *a1 + 24 * v28;
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -4096)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -8192;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = *a1 + 24 * (v33 & v27);
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -4096;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[3] = -4096;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

unint64_t *OUTLINED_FUNCTION_1_27@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3)
{

  return mlir::ValueRange::ValueRange(&a3, a2 + 32 * a1, (HIDWORD(a1) + a1) - a1);
}

uint64_t OUTLINED_FUNCTION_5_10@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;

  return getAttributeIndexFromIndexOperands(v3, a2, a3, v5);
}

uint64_t mlir::memref::getTensorTypeFromMemRefType(uint64_t a1)
{
  v14 = a1;
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v13 = v2;
  if (v2)
  {
    Value = mlir::ArrayAttr::getValue(&v13);
    v5 = v4;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v13);
    return mlir::RankedTensorType::get(Value, v5, RHS, 0);
  }

  else
  {
    v8 = v1 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
    if (v1 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;
    if (v8)
    {
      v12 = mlir::AffineMapAttr::getValue(&v13);
      return mlir::UnrankedTensorType::get(v12);
    }

    else
    {
      Context = mlir::Attribute::getContext(&v14);
      return mlir::NoneType::get(Context, v11);
    }
  }
}

unint64_t mlir::memref::getMixedSize(mlir::IndexType **a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4)
{
  v4 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a3;
  v12 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v17;
  v16 = 0x600000000;
  if (*(mlir::ArrayAttr::getValue(&v12) + 8 * a4) != 0x8000000000000000)
  {
    Value = mlir::ArrayAttr::getValue(&v12);
    v8 = mlir::Builder::getIndexAttr(a1, *(Value + 8 * v4)) & 0xFFFFFFFFFFFFFFFBLL;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

LABEL_7:
    free(v9);
    return v8;
  }

  v18[0] = v19;
  v18[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::memref::DimOp,mlir::Value &,long long &>(a1, v18, a2, &v14, &v13);
  v7 = *v18[0];
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v8 = v7 | 4;
  v9 = v15;
  if (v15 != v17)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t mlir::memref::AllocOp::verify(mlir::memref::AllocOp *this)
{
  v80 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v64 = v1;
  v63 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v63)
  {
    v61[0] = "result must be a memref";
    v62 = 259;
    mlir::OpState::emitOpError(&v64, v61, &RawStringData);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v79 == 1)
    {
      if (v78 != &v79)
      {
        free(v78);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v77;
        v11 = __p;
        if (v77 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v77 = v9;
        operator delete(v11);
      }

      v12 = v74;
      if (!v74)
      {
        goto LABEL_75;
      }

      v13 = v75;
      v14 = v74;
      if (v75 == v74)
      {
        goto LABEL_74;
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
      goto LABEL_73;
    }

    return v8;
  }

  v2 = *(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 72);
  Value = mlir::ArrayAttr::getValue(&v63);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_28;
  }

  v5 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 >= 3)
  {
    v17 = v5 + 1;
    v18 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v7 = (Value + 8 * v18);
    v19 = (Value + 16);
    v20 = 0uLL;
    v21 = vnegq_f64(0);
    v22 = v18;
    v23 = 0uLL;
    do
    {
      v20 = vsubq_s64(v20, vceqq_s64(v19[-1], v21));
      v23 = vsubq_s64(v23, vceqq_s64(*v19, v21));
      v19 += 2;
      v22 -= 4;
    }

    while (v22);
    v6 = vaddvq_s64(vaddq_s64(v23, v20));
    if (v17 == v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = 0;
    v7 = Value;
  }

  do
  {
    v24 = *v7++;
    if (v24 == 0x8000000000000000)
    {
      ++v6;
    }
  }

  while (v7 != (Value + 8 * v4));
LABEL_28:
  if (v6 == v2)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v63);
    v69 = v25;
    if (mlir::ElementsAttr::isSplat(&RawStringData))
    {
      NumSymbols = 0;
    }

    else
    {
      RawStringData = mlir::DenseElementsAttr::getRawStringData(&v63);
      v69 = v33;
      v61[0] = mlir::FunctionOpInterface::getFunctionType(&RawStringData);
      NumSymbols = mlir::AffineMap::getNumSymbols(v61);
    }

    v34 = &v64[2 * ((*(v64 + 11) >> 23) & 1)];
    if (((*(v34 + 19) + *(v34 + 18)) - *(v34 + 18)) == NumSymbols)
    {
      return 1;
    }

    v61[0] = "symbol operand count does not equal memref symbol count: expected ";
    v62 = 259;
    mlir::OpState::emitOpError(&v64, v61, &RawStringData);
    if (RawStringData)
    {
      v65 = 5;
      v66 = NumSymbols;
      v35 = &v65;
      v36 = v70;
      if (v71 >= v72)
      {
        if (v70 <= &v65 && v70 + 24 * v71 > &v65)
        {
          v58 = &v65 - v70;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
          v36 = v70;
          v35 = (v70 + v58);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
          v35 = &v65;
          v36 = v70;
        }
      }

      v37 = &v36[24 * v71];
      v38 = *v35;
      *(v37 + 2) = *(v35 + 2);
      *v37 = v38;
      v39 = ++v71;
      if (RawStringData)
      {
        v65 = 3;
        v66 = ", got ";
        v67 = 6;
        v40 = &v65;
        v41 = v70;
        if (v39 >= v72)
        {
          if (v70 <= &v65 && v70 + 24 * v39 > &v65)
          {
            v59 = &v65 - v70;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v39 + 1, 24);
            v41 = v70;
            v40 = (v70 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v39 + 1, 24);
            v40 = &v65;
            v41 = v70;
          }
        }

        v42 = &v41[24 * v71];
        v43 = *v40;
        *(v42 + 2) = *(v40 + 2);
        *v42 = v43;
        v44 = ++v71;
        if (RawStringData)
        {
          v45 = LODWORD(v64[2 * ((*(v64 + 11) >> 23) & 1) + 9]);
          v46 = ((v45 + HIDWORD(v64[2 * ((*(v64 + 11) >> 23) & 1) + 9])) - v45);
          v65 = 5;
          v66 = v46;
          v47 = &v65;
          v48 = v70;
          if (v44 >= v72)
          {
            if (v70 <= &v65 && v70 + 24 * v44 > &v65)
            {
              v60 = &v65 - v70;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v44 + 1, 24);
              v48 = v70;
              v47 = (v70 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v44 + 1, 24);
              v47 = &v65;
              v48 = v70;
            }
          }

          v49 = &v48[24 * v71];
          v50 = *v47;
          *(v49 + 2) = *(v47 + 2);
          *v49 = v50;
          ++v71;
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v79 == 1)
    {
      if (v78 != &v79)
      {
        free(v78);
      }

      v51 = __p;
      if (__p)
      {
        v52 = v77;
        v53 = __p;
        if (v77 != __p)
        {
          do
          {
            v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
          }

          while (v52 != v51);
          v53 = __p;
        }

        v77 = v51;
        operator delete(v53);
      }

      v12 = v74;
      if (!v74)
      {
        goto LABEL_75;
      }

      v54 = v75;
      v14 = v74;
      if (v75 == v74)
      {
LABEL_74:
        v75 = v12;
        operator delete(v14);
LABEL_75:
        if (v70 != v73)
        {
          free(v70);
        }

        return v8;
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

      while (v54 != v12);
LABEL_73:
      v14 = v74;
      goto LABEL_74;
    }
  }

  else
  {
    v61[0] = "dimension operand count does not equal memref dynamic dimension count";
    v62 = 259;
    mlir::OpState::emitOpError(&v64, v61, &RawStringData);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v79 == 1)
    {
      if (v78 != &v79)
      {
        free(v78);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v77;
        v29 = __p;
        if (v77 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v77 = v27;
        operator delete(v29);
      }

      v12 = v74;
      if (!v74)
      {
        goto LABEL_75;
      }

      v30 = v75;
      v14 = v74;
      if (v75 == v74)
      {
        goto LABEL_74;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
        }
      }

      while (v30 != v12);
      goto LABEL_73;
    }
  }

  return v8;
}

uint64_t mlir::memref::AllocaOp::verify(uint64_t **this)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(*this))
  {
    v68[0] = "requires an ancestor op with AutomaticAllocationScope trait";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, &RawStringData);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v84;
        v12 = __p;
        if (v84 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v84 = v10;
        operator delete(v12);
      }

      v13 = v81;
      if (!v81)
      {
        goto LABEL_92;
      }

      v14 = v82;
      v15 = v81;
      if (v82 == v81)
      {
        goto LABEL_91;
      }

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
      goto LABEL_90;
    }

    return v9;
  }

  v2 = *this;
  v71 = v2;
  v70 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!v70)
  {
    v68[0] = "result must be a memref";
    v69 = 259;
    mlir::OpState::emitOpError(&v71, v68, &RawStringData);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v84;
        v20 = __p;
        if (v84 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v84 = v18;
        operator delete(v20);
      }

      v13 = v81;
      if (!v81)
      {
        goto LABEL_92;
      }

      v21 = v82;
      v15 = v81;
      if (v82 == v81)
      {
        goto LABEL_91;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v13);
      goto LABEL_90;
    }

    return v9;
  }

  v3 = LODWORD(v2[2 * ((*(v2 + 11) >> 23) & 1) + 9]);
  Value = mlir::ArrayAttr::getValue(&v70);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_45;
  }

  v6 = (v5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v6 >= 3)
  {
    v24 = v6 + 1;
    v25 = (v6 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v8 = (Value + 8 * v25);
    v26 = (Value + 16);
    v27 = 0uLL;
    v28 = vnegq_f64(0);
    v29 = v25;
    v30 = 0uLL;
    do
    {
      v27 = vsubq_s64(v27, vceqq_s64(v26[-1], v28));
      v30 = vsubq_s64(v30, vceqq_s64(*v26, v28));
      v26 += 2;
      v29 -= 4;
    }

    while (v29);
    v7 = vaddvq_s64(vaddq_s64(v30, v27));
    if (v24 == v25)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v7 = 0;
    v8 = Value;
  }

  do
  {
    v31 = *v8++;
    if (v31 == 0x8000000000000000)
    {
      ++v7;
    }
  }

  while (v8 != (Value + 8 * v5));
LABEL_45:
  if (v7 == v3)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v70);
    v76 = v32;
    if (mlir::ElementsAttr::isSplat(&RawStringData))
    {
      NumSymbols = 0;
    }

    else
    {
      RawStringData = mlir::DenseElementsAttr::getRawStringData(&v70);
      v76 = v40;
      v68[0] = mlir::FunctionOpInterface::getFunctionType(&RawStringData);
      NumSymbols = mlir::AffineMap::getNumSymbols(v68);
    }

    v41 = &v71[2 * ((*(v71 + 11) >> 23) & 1)];
    if (((*(v41 + 19) + *(v41 + 18)) - *(v41 + 18)) == NumSymbols)
    {
      return 1;
    }

    v68[0] = "symbol operand count does not equal memref symbol count: expected ";
    v69 = 259;
    mlir::OpState::emitOpError(&v71, v68, &RawStringData);
    if (RawStringData)
    {
      v72 = 5;
      v73 = NumSymbols;
      v42 = &v72;
      v43 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v43 = v77;
          v42 = (v77 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v42 = &v72;
          v43 = v77;
        }
      }

      v44 = &v43[24 * v78];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      v46 = ++v78;
      if (RawStringData)
      {
        v72 = 3;
        v73 = ", got ";
        v74 = 6;
        v47 = &v72;
        v48 = v77;
        if (v46 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v46 > &v72)
          {
            v66 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v46 + 1, 24);
            v48 = v77;
            v47 = (v77 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v46 + 1, 24);
            v47 = &v72;
            v48 = v77;
          }
        }

        v49 = &v48[24 * v78];
        v50 = *v47;
        *(v49 + 2) = *(v47 + 2);
        *v49 = v50;
        v51 = ++v78;
        if (RawStringData)
        {
          v52 = LODWORD(v71[2 * ((*(v71 + 11) >> 23) & 1) + 9]);
          v53 = ((v52 + HIDWORD(v71[2 * ((*(v71 + 11) >> 23) & 1) + 9])) - v52);
          v72 = 5;
          v73 = v53;
          v54 = &v72;
          v55 = v77;
          if (v51 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v51 > &v72)
            {
              v67 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v51 + 1, 24);
              v55 = v77;
              v54 = (v77 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v51 + 1, 24);
              v54 = &v72;
              v55 = v77;
            }
          }

          v56 = &v55[24 * v78];
          v57 = *v54;
          *(v56 + 2) = *(v54 + 2);
          *v56 = v57;
          ++v78;
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v58 = __p;
      if (__p)
      {
        v59 = v84;
        v60 = __p;
        if (v84 != __p)
        {
          do
          {
            v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
          }

          while (v59 != v58);
          v60 = __p;
        }

        v84 = v58;
        operator delete(v60);
      }

      v13 = v81;
      if (!v81)
      {
        goto LABEL_92;
      }

      v61 = v82;
      v15 = v81;
      if (v82 == v81)
      {
LABEL_91:
        v82 = v13;
        operator delete(v15);
LABEL_92:
        if (v77 != v80)
        {
          free(v77);
        }

        return v9;
      }

      do
      {
        v63 = *--v61;
        v62 = v63;
        *v61 = 0;
        if (v63)
        {
          MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
        }
      }

      while (v61 != v13);
LABEL_90:
      v15 = v81;
      goto LABEL_91;
    }
  }

  else
  {
    v68[0] = "dimension operand count does not equal memref dynamic dimension count";
    v69 = 259;
    mlir::OpState::emitOpError(&v71, v68, &RawStringData);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v84;
        v36 = __p;
        if (v84 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v84 = v34;
        operator delete(v36);
      }

      v13 = v81;
      if (!v81)
      {
        goto LABEL_92;
      }

      v37 = v82;
      v15 = v81;
      if (v82 == v81)
      {
        goto LABEL_91;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
        }
      }

      while (v37 != v13);
      goto LABEL_90;
    }
  }

  return v9;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
        mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::memref::ReallocOp::verify(uint64_t **this)
{
  v124 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v108 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v107 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v108);
  v113 = v3;
  if (mlir::ElementsAttr::isSplat(&RawStringData))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v107);
    v113 = v4;
    if (mlir::ElementsAttr::isSplat(&RawStringData))
    {
      MemorySpace = mlir::MemRefType::getMemorySpace(&v108);
      if (MemorySpace == mlir::MemRefType::getMemorySpace(&v107))
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v108);
        if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v107))
        {
          Value = mlir::ArrayAttr::getValue(&v107);
          if (!v8)
          {
            goto LABEL_106;
          }

          v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v9 >= 3)
          {
            v74 = v9 + 1;
            v75 = (v9 + 1) & 0x3FFFFFFFFFFFFFFCLL;
            v11 = (Value + 8 * v75);
            v76 = (Value + 16);
            v77 = 0uLL;
            v78 = vnegq_f64(0);
            v79 = v75;
            v80 = 0uLL;
            do
            {
              v77 = vsubq_s64(v77, vceqq_s64(v76[-1], v78));
              v80 = vsubq_s64(v80, vceqq_s64(*v76, v78));
              v76 += 2;
              v79 -= 4;
            }

            while (v79);
            v10 = vaddvq_s64(vaddq_s64(v80, v77));
            if (v74 == v75)
            {
              goto LABEL_103;
            }
          }

          else
          {
            v10 = 0;
            v11 = Value;
          }

          do
          {
            v81 = *v11++;
            if (v81 == 0x8000000000000000)
            {
              ++v10;
            }
          }

          while (v11 != (Value + 8 * v8));
LABEL_103:
          if (v10 && (*(*this + 17) == 1 || !*((*this)[9] + 56)))
          {
            v87 = "missing dimension operand for result type ";
LABEL_120:
            v105[0] = v87;
            v106 = 259;
            mlir::OpState::emitError(this, v105, &RawStringData);
            mlir::InFlightDiagnostic::operator<<<mlir::Type &>(&RawStringData, &v107);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v96);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&RawStringData);
            return v16;
          }

LABEL_106:
          v82 = mlir::ArrayAttr::getValue(&v107);
          if (!v83)
          {
LABEL_117:
            if (*(*this + 17) != 1 && *((*this)[9] + 56))
            {
              v87 = "unnecessary dimension operand for result type ";
              goto LABEL_120;
            }

            return 1;
          }

          v84 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v84 >= 3)
          {
            v88 = v84 + 1;
            v89 = (v84 + 1) & 0x3FFFFFFFFFFFFFFCLL;
            v86 = (v82 + 8 * v89);
            v90 = (v82 + 16);
            v91 = 0uLL;
            v92 = vnegq_f64(0);
            v93 = v89;
            v94 = 0uLL;
            do
            {
              v91 = vsubq_s64(v91, vceqq_s64(v90[-1], v92));
              v94 = vsubq_s64(v94, vceqq_s64(*v90, v92));
              v90 += 2;
              v93 -= 4;
            }

            while (v93);
            v85 = vaddvq_s64(vaddq_s64(v94, v91));
            if (v88 == v89)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v85 = 0;
            v86 = v82;
          }

          do
          {
            v95 = *v86++;
            if (v95 == 0x8000000000000000)
            {
              ++v85;
            }
          }

          while (v86 != (v82 + 8 * v83));
LABEL_116:
          if (v85)
          {
            return 1;
          }

          goto LABEL_117;
        }

        v105[0] = "different element types specified for source memref type ";
        v106 = 259;
        mlir::OpState::emitError(this, v105, &RawStringData);
        if (RawStringData)
        {
          v54 = &v109;
          mlir::DiagnosticArgument::DiagnosticArgument(&v109, v108);
          v55 = v114;
          if (v115 >= v116)
          {
            if (v114 <= &v109 && v114 + 24 * v115 > &v109)
            {
              v101 = &v109 - v114;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
              v55 = v114;
              v54 = (v114 + v101);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
              v54 = &v109;
              v55 = v114;
            }
          }

          v56 = &v55[24 * v115];
          v57 = *v54;
          *(v56 + 2) = *(v54 + 2);
          *v56 = v57;
          v58 = ++v115;
          if (RawStringData)
          {
            v109 = 3;
            v110 = " and result memref type ";
            v111 = 24;
            v59 = &v109;
            v60 = v114;
            if (v58 >= v116)
            {
              if (v114 <= &v109 && v114 + 24 * v58 > &v109)
              {
                v103 = &v109 - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v58 + 1, 24);
                v60 = v114;
                v59 = (v114 + v103);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v58 + 1, 24);
                v59 = &v109;
                v60 = v114;
              }
            }

            v61 = &v60[24 * v115];
            v62 = *v59;
            *(v61 + 2) = *(v59 + 2);
            *v61 = v62;
            ++v115;
            if (RawStringData)
            {
              v63 = &v109;
              mlir::DiagnosticArgument::DiagnosticArgument(&v109, v107);
              v64 = v114;
              if (v115 >= v116)
              {
                if (v114 <= &v109 && v114 + 24 * v115 > &v109)
                {
                  v104 = &v109 - v114;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
                  v64 = v114;
                  v63 = (v114 + v104);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
                  v63 = &v109;
                  v64 = v114;
                }
              }

              v65 = &v64[24 * v115];
              v66 = *v63;
              *(v65 + 2) = *(v63 + 2);
              *v65 = v66;
              ++v115;
            }
          }
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }

        if (v123 == 1)
        {
          if (v122 != &v123)
          {
            free(v122);
          }

          v67 = __p;
          if (__p)
          {
            v68 = v121;
            v69 = __p;
            if (v121 != __p)
            {
              do
              {
                v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
              }

              while (v68 != v67);
              v69 = __p;
            }

            v121 = v67;
            operator delete(v69);
          }

          v20 = v118;
          if (!v118)
          {
            goto LABEL_94;
          }

          v70 = v119;
          v22 = v118;
          if (v119 == v118)
          {
LABEL_93:
            v119 = v20;
            operator delete(v22);
LABEL_94:
            if (v114 != v117)
            {
              free(v114);
            }

            return v16;
          }

          do
          {
            v72 = *--v70;
            v71 = v72;
            *v70 = 0;
            if (v72)
            {
              MEMORY[0x1AC55A040](v71, 0x1000C8077774924);
            }
          }

          while (v70 != v20);
LABEL_92:
          v22 = v118;
          goto LABEL_93;
        }
      }

      else
      {
        v105[0] = "different memory spaces specified for source memref type ";
        v106 = 259;
        mlir::OpState::emitError(this, v105, &RawStringData);
        if (RawStringData)
        {
          v35 = &v109;
          mlir::DiagnosticArgument::DiagnosticArgument(&v109, v108);
          v36 = v114;
          if (v115 >= v116)
          {
            if (v114 <= &v109 && v114 + 24 * v115 > &v109)
            {
              v99 = &v109 - v114;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
              v36 = v114;
              v35 = (v114 + v99);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
              v35 = &v109;
              v36 = v114;
            }
          }

          v37 = &v36[24 * v115];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          v39 = ++v115;
          if (RawStringData)
          {
            v109 = 3;
            v110 = " and result memref type ";
            v111 = 24;
            v40 = &v109;
            v41 = v114;
            if (v39 >= v116)
            {
              if (v114 <= &v109 && v114 + 24 * v39 > &v109)
              {
                v100 = &v109 - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v39 + 1, 24);
                v41 = v114;
                v40 = (v114 + v100);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v39 + 1, 24);
                v40 = &v109;
                v41 = v114;
              }
            }

            v42 = &v41[24 * v115];
            v43 = *v40;
            *(v42 + 2) = *(v40 + 2);
            *v42 = v43;
            ++v115;
            if (RawStringData)
            {
              v44 = &v109;
              mlir::DiagnosticArgument::DiagnosticArgument(&v109, v107);
              v45 = v114;
              if (v115 >= v116)
              {
                if (v114 <= &v109 && v114 + 24 * v115 > &v109)
                {
                  v102 = &v109 - v114;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
                  v45 = v114;
                  v44 = (v114 + v102);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
                  v44 = &v109;
                  v45 = v114;
                }
              }

              v46 = &v45[24 * v115];
              v47 = *v44;
              *(v46 + 2) = *(v44 + 2);
              *v46 = v47;
              ++v115;
            }
          }
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }

        if (v123 == 1)
        {
          if (v122 != &v123)
          {
            free(v122);
          }

          v48 = __p;
          if (__p)
          {
            v49 = v121;
            v50 = __p;
            if (v121 != __p)
            {
              do
              {
                v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
              }

              while (v49 != v48);
              v50 = __p;
            }

            v121 = v48;
            operator delete(v50);
          }

          v20 = v118;
          if (!v118)
          {
            goto LABEL_94;
          }

          v51 = v119;
          v22 = v118;
          if (v119 == v118)
          {
            goto LABEL_93;
          }

          do
          {
            v53 = *--v51;
            v52 = v53;
            *v51 = 0;
            if (v53)
            {
              MEMORY[0x1AC55A040](v52, 0x1000C8077774924);
            }
          }

          while (v51 != v20);
          goto LABEL_92;
        }
      }
    }

    else
    {
      v105[0] = "unsupported layout for result memref type ";
      v106 = 259;
      mlir::OpState::emitError(this, v105, &RawStringData);
      if (RawStringData)
      {
        v25 = &v109;
        mlir::DiagnosticArgument::DiagnosticArgument(&v109, v107);
        v26 = v114;
        if (v115 >= v116)
        {
          if (v114 <= &v109 && v114 + 24 * v115 > &v109)
          {
            v98 = &v109 - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v26 = v114;
            v25 = (v114 + v98);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v25 = &v109;
            v26 = v114;
          }
        }

        v27 = &v26[24 * v115];
        v28 = *v25;
        *(v27 + 2) = *(v25 + 2);
        *v27 = v28;
        ++v115;
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
      if (RawStringData)
      {
        mlir::InFlightDiagnostic::report(&RawStringData);
      }

      if (v123 == 1)
      {
        if (v122 != &v123)
        {
          free(v122);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v121;
          v31 = __p;
          if (v121 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v121 = v29;
          operator delete(v31);
        }

        v20 = v118;
        if (!v118)
        {
          goto LABEL_94;
        }

        v32 = v119;
        v22 = v118;
        if (v119 == v118)
        {
          goto LABEL_93;
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

        while (v32 != v20);
        goto LABEL_92;
      }
    }
  }

  else
  {
    v105[0] = "unsupported layout for source memref type ";
    v106 = 259;
    mlir::OpState::emitError(this, v105, &RawStringData);
    if (RawStringData)
    {
      v12 = &v109;
      mlir::DiagnosticArgument::DiagnosticArgument(&v109, v108);
      v13 = v114;
      if (v115 >= v116)
      {
        if (v114 <= &v109 && v114 + 24 * v115 > &v109)
        {
          v97 = &v109 - v114;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
          v13 = v114;
          v12 = (v114 + v97);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
          v12 = &v109;
          v13 = v114;
        }
      }

      v14 = &v13[24 * v115];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v115;
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v123 == 1)
    {
      if (v122 != &v123)
      {
        free(v122);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v121;
        v19 = __p;
        if (v121 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v121 = v17;
        operator delete(v19);
      }

      v20 = v118;
      if (!v118)
      {
        goto LABEL_94;
      }

      v21 = v119;
      v22 = v118;
      if (v119 == v118)
      {
        goto LABEL_93;
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
      goto LABEL_92;
    }
  }

  return v16;
}

uint64_t mlir::memref::AllocaScopeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
    v6 = *(*this + 9);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
    v6 = *(*this + 9);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = v7[4];
  if ((v7[3] - v8) > 4)
  {
    *(v8 + 4) = 40;
    *v8 = 540945696;
    v7[4] += 5;
  }

  else
  {
    llvm::raw_ostream::write(v7, " -> (", 5uLL);
  }

  v9 = *(*this + 9);
  v10 = *this - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v29[0] = v10;
  v29[1] = v9;
  mlir::OperandRange::getTypes(&AttrDictionary, v29);
  v11 = v27;
  v12 = v28;
  if (v27 != v28)
  {
    v13 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v27);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v11 + 1; v12 != i; ++i)
    {
      v24 = (*(*a2 + 16))(a2);
      v25 = v24[4];
      if (v24[3] - v25 <= 1uLL)
      {
        llvm::raw_ostream::write(v24, ", ", 2uLL);
      }

      else
      {
        *v25 = 8236;
        v24[4] += 2;
      }

      v23 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, i);
      (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++v16[4];
  }

LABEL_15:
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, v6 != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v21, 0, 0);
}

__n128 mlir::memref::AllocaScopeOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v12 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v6 = &v12;
    mlir::ValueRange::ValueRange(v13, 0, 0);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 < *(a3 + 12))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v4 = *(*a1 + 36);
  if (v4)
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  v12 = 0;
  v6 = &v12;
  mlir::ValueRange::ValueRange(v13, v5, v4);
  v7 = *(a3 + 8);
  v8 = *a3;
  if (v7 >= *(a3 + 12))
  {
LABEL_9:
    if (v8 <= &v12 && v8 + 24 * v7 > &v12)
    {
      v11 = &v13[-1] - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v7 + 1, 24);
      v8 = *a3;
      v6 = &v11[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v7 + 1, 24);
      v8 = *a3;
      v6 = &v12;
    }
  }

LABEL_8:
  v9 = (v8 + 24 * *(a3 + 8));
  result = *v6;
  v9[1].n128_u64[0] = v6[1].n128_u64[0];
  *v9 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::memref::AssumeAlignmentOp::verify(uint64_t **this)
{
  v25 = *MEMORY[0x1E69E9840];
  v13[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(v13, &v15);
  if (v16 > 0x40)
  {
    v11 = *v15;
    MEMORY[0x1AC55A040]();
    if ((v11 ^ (v11 - 1)) <= v11 - 1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if ((v15 ^ (v15 - 1)) > v15 - 1)
  {
    return 1;
  }

LABEL_3:
  v13[0] = "alignment must be power of 2";
  v14 = 259;
  mlir::OpState::emitOpError(this, v13, &v15);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v22;
      v5 = __p;
      if (v22 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v22 = v3;
      operator delete(v5);
    }

    v6 = v19;
    if (v19)
    {
      v7 = v20;
      v8 = v19;
      if (v20 != v19)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v19;
      }

      v20 = v6;
      operator delete(v8);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v2;
}

uint64_t mlir::memref::CastOp::canFoldIntoConsumerOp(uint64_t a1)
{
  v36[4] = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v1 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = 0;
  }

  v30 = v1;
  v2 = *(a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v29 = v2;
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(&v30);
  if (RHS != mlir::AffineBinaryOpExpr::getRHS(&v29))
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v30);
  v6 = v5;
  mlir::ArrayAttr::getValue(&v29);
  if (v6 != v7)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v34 = v36;
  v35 = 0x400000000;
  v31 = v33;
  v32 = 0x400000000;
  if (mlir::getStridesAndOffset(v30, &v34, &v28) & 1) != 0 && (mlir::getStridesAndOffset(v29, &v31, &v27))
  {
    Value = mlir::ArrayAttr::getValue(&v30);
    v10 = v9;
    v11 = mlir::ArrayAttr::getValue(&v29);
    if (v10 && v12)
    {
      v13 = 8 * v12 - 8;
      v14 = 8 * v10 - 8;
      while (*Value != 0x8000000000000000 || *v11 == 0x8000000000000000)
      {
        if (v14)
        {
          ++Value;
          ++v11;
          v16 = v13;
          v13 -= 8;
          v14 -= 8;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
LABEL_23:
      if (v28 != 0x8000000000000000 || v27 == 0x8000000000000000)
      {
        result = 1;
        if (v35 && v32)
        {
          v19 = v34;
          v20 = v31;
          v21 = 8 * v32 - 8;
          v22 = 8 * v35 - 8;
          do
          {
            v23 = *v19 != 0x8000000000000000 || *v20 == 0x8000000000000000;
            result = v23;
            if (!v23)
            {
              break;
            }

            result = 1;
            if (!v22)
            {
              break;
            }

            ++v19;
            ++v20;
            v24 = v21;
            v21 -= 8;
            v22 -= 8;
          }

          while (v24);
        }

        goto LABEL_45;
      }
    }
  }

  result = 0;
LABEL_45:
  if (v31 != v33)
  {
    v25 = result;
    free(v31);
    result = v25;
  }

  if (v34 != v36)
  {
    v26 = result;
    free(v34);
    return v26;
  }

  return result;
}

BOOL mlir::memref::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v49[4] = *MEMORY[0x1E69E9840];
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v43 = v9;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v42 = v10;
    v11 = *(*v7 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v41 = v12;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v40 = v13;
    if (v9)
    {
      if (v10)
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v43);
        if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v42))
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v43);
          if (RawStringData == mlir::DenseElementsAttr::getRawStringData(&v42))
          {
            goto LABEL_19;
          }

          v38 = 0;
          v39 = 0;
          v47 = v49;
          v48 = 0x400000000;
          v44 = v46;
          v45 = 0x400000000;
          if ((mlir::getStridesAndOffset(v43, &v47, &v39) & 1) != 0 && (mlir::getStridesAndOffset(v42, &v44, &v38) & 1) != 0 && v48 == v45 && (v39 == 0x8000000000000000 || v38 == 0x8000000000000000 || v39 == v38))
          {
            v29 = v47;
            if (v48)
            {
              v30 = 8 * v48;
              v31 = v44;
              v32 = v47;
              while (*v32 == 0x8000000000000000 || *v31 == 0x8000000000000000 || *v32 == *v31)
              {
                ++v32;
                ++v31;
                v30 -= 8;
                if (!v30)
                {
                  goto LABEL_67;
                }
              }

              v34 = 0;
            }

            else
            {
LABEL_67:
              v34 = 1;
            }

            if (v44 != v46)
            {
              free(v44);
              v29 = v47;
            }

            if (v29 != v49)
            {
              free(v29);
            }

            if (v34)
            {
LABEL_19:
              MemorySpace = mlir::MemRefType::getMemorySpace(&v43);
              if (MemorySpace == mlir::MemRefType::getMemorySpace(&v42))
              {
                mlir::ArrayAttr::getValue(&v43);
                v18 = v17;
                mlir::ArrayAttr::getValue(&v42);
                if (v18 == v19)
                {
                  mlir::ArrayAttr::getValue(&v43);
                  if (!v20)
                  {
                    return 1;
                  }

                  v21 = 0;
                  v22 = 8 * v20;
                  while (1)
                  {
                    v23 = *(mlir::ArrayAttr::getValue(&v43) + v21);
                    Value = mlir::ArrayAttr::getValue(&v42);
                    if (v23 != 0x8000000000000000)
                    {
                      v25 = *(Value + v21);
                      if (v25 != 0x8000000000000000 && v23 != v25)
                      {
                        break;
                      }
                    }

                    v21 += 8;
                    result = 1;
                    if (v22 == v21)
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v44 != v46)
            {
              free(v44);
            }

            if (v47 != v49)
            {
              free(v47);
            }
          }
        }

        return 0;
      }

      if (v13)
      {
        v27 = v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }

      v28 = mlir::AffineBinaryOpExpr::getRHS(&v43);
      if (v42)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      if (v10)
      {
        if (v13)
        {
          return 0;
        }
      }

      else
      {
        if (v13)
        {
          v35 = v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          return 0;
        }
      }

      v28 = mlir::AffineMapAttr::getValue(&v41);
      if (v42)
      {
LABEL_39:
        if (v28 != mlir::AffineBinaryOpExpr::getRHS(&v42))
        {
          return 0;
        }

        goto LABEL_60;
      }
    }

    if (v28 != mlir::AffineMapAttr::getValue(&v40))
    {
      return 0;
    }

LABEL_60:
    if (v43)
    {
      LHS = mlir::MemRefType::getMemorySpace(&v43);
      if (v42)
      {
LABEL_62:
        v37 = mlir::MemRefType::getMemorySpace(&v42);
        return LHS == v37;
      }
    }

    else
    {
      LHS = mlir::AffineBinaryOpExpr::getLHS(&v41);
      if (v42)
      {
        goto LABEL_62;
      }
    }

    v37 = mlir::AffineBinaryOpExpr::getLHS(&v40);
    return LHS == v37;
  }

  return result;
}

uint64_t mlir::memref::DimOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "dim", 3);
}

void mlir::memref::DimOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v18, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (HIDWORD(v21))
      {
        v9 = 0;
LABEL_6:
        bzero(__src + 8 * v9, 8 - 8 * v9);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v22, 1uLL, 8);
      v9 = v21;
      if (v21 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v21) = 1;
  }

  v17 = v6;
  IndexType = mlir::Builder::getIndexType(&v17, v8);
  v11 = __src;
  *__src = IndexType;
  v12 = v21;
  v13 = *(a2 + 72);
  v14 = v13 + v21;
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
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::memref::DimOp::getSpeculatability(mlir::memref::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v4 = 0;
  }

  v8 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = ConstantIntValue;
  mlir::ArrayAttr::getValue(&v8);
  return v6 > v5;
}

void mlir::memref::SubViewOp::getDroppedDims(mlir::memref::SubViewOp *this@<X0>, void *a2@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = *(*(*(*this + 72) + 24) + 8);
  if (*(*this + 36))
  {
    v5 = *this - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(this, &v8);
  computeMemRefRankReductionMask(&v7, v4 & 0xFFFFFFFFFFFFFFF8, v6 & 0xFFFFFFFFFFFFFFF8, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  if ((v7 & 1) == 0)
  {
    operator new();
  }

  *a2 = v7;
}

void computeMemRefRankReductionMask(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80[6] = *MEMORY[0x1E69E9840];
  v73 = a3;
  v74 = a2;
  mlir::ArrayAttr::getValue(&v74);
  if (v8 > 0x39)
  {
    operator new();
  }

  v9 = (v8 << 58) | 1;
  mlir::ArrayAttr::getValue(&v74);
  v11 = v10;
  mlir::ArrayAttr::getValue(&v73);
  if (v11 == v12)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    v13 = 0;
    v14 = 8 * a5;
    do
    {
      v15 = *(a4 + 8 * v13);
      if ((v15 & 4) == 0)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v16)
        {
          v78 = v16;
          if (mlir::IntegerAttr::getInt(&v78) == 1)
          {
            if (v9)
            {
              v9 = v9 & 0xFC00000000000001 | (2 * (((1 << v13) | (v9 >> 1)) & ~(-1 << (v9 >> 58))));
            }

            else
            {
              *(*v9 + 8 * (v13 >> 6)) |= 1 << v13;
            }
          }
        }
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  if (v9)
  {
    v22 = vcnt_s8(((v9 >> 1) & ~(-1 << (v9 >> 58))));
    v22.i16[0] = vaddlv_u8(v22);
    v23 = v22.u32[0];
    goto LABEL_26;
  }

  v17 = *(v9 + 8);
  if (!v17)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v18 = *v9;
  v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v19 >= 7)
  {
    v24 = v19 + 1;
    v25 = (v19 + 1) & 0x3FFFFFFFFFFFFFF8;
    v21 = &v18[v25];
    v26 = &v18[4];
    v27 = 0uLL;
    v28 = v25;
    v29 = 0uLL;
    do
    {
      v30 = v26[-2];
      v31 = v26[-1];
      v32 = *v26;
      v33 = v26[1];
      v26 += 4;
      v27 = vaddq_s32(v27, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v30)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v31))))));
      v29 = vaddq_s32(v29, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v32)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v33))))));
      v28 -= 8;
    }

    while (v28);
    v20 = vaddvq_s32(vaddq_s32(v29, v27));
    if (v24 == v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = 0;
    v21 = *v9;
  }

  v34 = &v18[v17];
  do
  {
    v35 = *v21++;
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    v20 += v36.i32[0];
  }

  while (v21 != v34);
LABEL_25:
  v23 = v20;
LABEL_26:
  mlir::ArrayAttr::getValue(&v73);
  v38 = v37 + v23;
  mlir::ArrayAttr::getValue(&v74);
  if (v38 == v39)
  {
LABEL_27:
    *a1 = v9;
    a1[8] = 1;
    return;
  }

  v78 = v80;
  v79 = 0x600000000;
  v75 = v77;
  v76 = 0x600000000;
  v71 = 0;
  v72 = 0;
  if (mlir::getStridesAndOffset(v74, &v78, &v72) & 1) != 0 && (mlir::getStridesAndOffset(v73, &v75, &v71))
  {
    v70[0] = 0;
    v70[1] = 0;
    v69 = v70;
    if (v79)
    {
      operator new();
    }

    v68[0] = 0;
    v68[1] = 0;
    v67 = v68;
    if (v76)
    {
      operator new();
    }

    if (v9)
    {
      v41 = v9 >> 58;
      if (!(v9 >> 58))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v41 = *(v9 + 64);
      if (!*(v9 + 64))
      {
LABEL_55:
        if (v9)
        {
          v49 = vcnt_s8(((v9 >> 1) & ~(-1 << (v9 >> 58))));
          v49.i16[0] = vaddlv_u8(v49);
          v50 = v49.u32[0];
          v44 = a1;
          goto LABEL_67;
        }

        v43 = *(v9 + 8);
        v44 = a1;
        if (!v43)
        {
          v50 = 0;
          goto LABEL_67;
        }

        v45 = *v9;
        v46 = (v43 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v46 >= 7)
        {
          v51 = v46 + 1;
          v52 = (v46 + 1) & 0x3FFFFFFFFFFFFFF8;
          v48 = &v45[v52];
          v53 = &v45[4];
          v54 = 0uLL;
          v55 = v52;
          v56 = 0uLL;
          do
          {
            v57 = v53[-2];
            v58 = v53[-1];
            v59 = *v53;
            v60 = v53[1];
            v53 += 4;
            v54 = vaddq_s32(v54, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v57)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v58))))));
            v56 = vaddq_s32(v56, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v59)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v60))))));
            v55 -= 8;
          }

          while (v55);
          v47 = vaddvq_s32(vaddq_s32(v56, v54));
          if (v51 == v52)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v47 = 0;
          v48 = *v9;
        }

        v61 = &v45[v43];
        do
        {
          v62 = *v48++;
          v63 = vcnt_s8(v62);
          v63.i16[0] = vaddlv_u8(v63);
          v47 += v63.i32[0];
        }

        while (v48 != v61);
LABEL_66:
        v50 = v47;
LABEL_67:
        mlir::ArrayAttr::getValue(&v73);
        v65 = v64 + v50;
        mlir::ArrayAttr::getValue(&v74);
        if (v65 == v66)
        {
          *v44 = v9;
          v9 = 1;
          v44[8] = 1;
        }

        else
        {
          *v44 = 0;
          v44[8] = 0;
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v67, v68[0]);
        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v69, v70[0]);
        v40 = v75;
        if (v75 == v77)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v42 = 0;
    while (1)
    {
      if (v9)
      {
        if (((v9 >> 1) & ~(-1 << (v9 >> 58)) & (1 << v42)) != 0)
        {
LABEL_54:
          operator new();
        }
      }

      else if ((*(*v9 + 8 * (v42 >> 6)) & (1 << v42)) != 0)
      {
        goto LABEL_54;
      }

      if (++v42 == v41)
      {
        goto LABEL_55;
      }
    }
  }

  *a1 = 0;
  a1[8] = 0;
  v40 = v75;
  if (v75 != v77)
  {
LABEL_34:
    free(v40);
  }

LABEL_35:
  if (v78 != v80)
  {
    free(v78);
  }

  if ((v9 & 1) == 0 && v9)
  {
    if (*v9 != v9 + 16)
    {
      free(*v9);
    }

    MEMORY[0x1AC55A070](v9, 0x1080C40EF38A13ELL);
  }
}

mlir::IndexType **mlir::memref::DimOp::fold(void *a1, uint64_t a2)
{
  v2 = *(*(a2 + 40) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = 0;
  }

  v31 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v3 = 0;
  }

  v30 = v3;
  if (!v3)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v31);
  if (Int < 0)
  {
    return 0;
  }

  v6 = Int;
  mlir::ArrayAttr::getValue(&v30);
  if (v6 >= v7)
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v31);
  if (*(mlir::ArrayAttr::getValue(&v30) + 8 * v8) != 0x8000000000000000)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    Value = mlir::ArrayAttr::getValue(&v30);
    v11 = mlir::IntegerAttr::getInt(&v31);
    return (mlir::Builder::getIndexAttr(&Context, *(Value + 8 * v11)) & 0xFFFFFFFFFFFFFFFBLL);
  }

  mlir::IntegerAttr::getValue(&v31, &Context);
  if (v29 > 0x40)
  {
    v9 = *Context;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v9 = Context;
  }

  Context = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (!DefiningOp)
  {
    goto LABEL_23;
  }

  v14 = *(*(DefiningOp + 48) + 16);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id)
  {
    mlir::memref::DimOp::fold();
    return Context;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
  {
    mlir::memref::DimOp::fold();
    return Context;
  }

  v15 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
  v16 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id ? DefiningOp : 0;
  Context = v16;
  if (!v15)
  {
LABEL_23:
    Context = llvm::dyn_cast_or_null<mlir::OffsetSizeAndStrideOpInterface,mlir::Operation>(DefiningOp);
    v29 = v17;
    if (Context)
    {
      return (mlir::OffsetSizeAndStrideOpInterface::getDynamicSize(&Context, v9) | 4);
    }

    mlir::memref::foldMemRefCast();
    if (v24)
    {
      if (*(*a1 + 36))
      {
        v25 = *a1 - 16;
      }

      else
      {
        v25 = 0;
      }

      return (mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) | 4);
    }

    return 0;
  }

  mlir::memref::SubViewOp::getDroppedDims(&Context, &v27);
  v26 = *(*(Context[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v26);
  v19 = v18;
  if (v18)
  {
    if ((v27 & 1) == 0)
    {
      v20 = 0;
      i = 0;
      while (1)
      {
        if (((*(*v27 + 8 * (i >> 6)) >> i) & 1) == 0)
        {
          if (v20 == v9)
          {
            goto LABEL_38;
          }

          ++v20;
        }

        if (v19 == ++i)
        {
          goto LABEL_37;
        }
      }
    }

    v22 = 0;
    for (i = 0; v19 != i; ++i)
    {
      if (((v27 >> 1) & ~(-1 << (v27 >> 58)) & (1 << i)) == 0)
      {
        if (v22 == v9)
        {
          goto LABEL_38;
        }

        ++v22;
      }
    }
  }

LABEL_37:
  LODWORD(i) = 0;
LABEL_38:
  v23 = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getDynamicSize(&Context, i) | 4;
  llvm::SmallBitVector::~SmallBitVector(&v27);
  return v23;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getDynamicSize(uint64_t a1, unsigned int a2)
{
  v7 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v7);
  return *(*(*a1 + 72) + 32 * (mlir::detail::getNumDynamicEntriesUpToIdx(v4, v5, a2) + *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 92) + 1) + 24);
}