char *mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::Value &,llvm::ArrayRef<long long> &,llvm::ArrayRef<long long> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, llvm::hashing::detail **a5, llvm::hashing::detail **a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v32, v34, v33);
  }

  mlir::OperationState::OperationState(v32, a2, v19);
  v21 = *a3;
  v22 = *a4;
  v24 = *a5;
  v23 = a5[1];
  v25 = *a6;
  v26 = a6[1];
  v30 = v25;
  mlir::ValueRange::ValueRange(v34, *a7, *(a7 + 8));
  mlir::ValueRange::ValueRange(v33, *a8, *(a8 + 8));
  mlir::tensor::PadOp::build(a1, v32, v21, v22, v24, v23, v30, v26, v34[0], v34[1], v33[0], v33[1], *a9, *a10, *(a10 + 8));
  v27 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v27 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v28;
}

char *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::tensor::PadOp &>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

void anonymous namespace::FoldConsecutiveConstantPadding::~FoldConsecutiveConstantPadding(_anonymous_namespace_::FoldConsecutiveConstantPadding *this)
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

  operator delete(this);
}

uint64_t anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = a2;
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v5 = "skipping unfoldable pad";
LABEL_11:
    v44[0] = v5;
    v45[8] = 259;
    v41 = v44;
    v10 = *(a3 + 16);
    if (v10)
    {
      if (mlir::RewriterBase::Listener::classof(v10))
      {
        (*(*v10 + 88))(v10, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v41);
      }
    }

    return 0;
  }

  v44[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v44);
  if (!DefiningOp || ((v7 = *(*(DefiningOp + 48) + 16), v8 = v7 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, v7 != &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id) ? (v9 = 0) : (v9 = DefiningOp), (v34 = v9, !v8) || *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64)))
  {
    v5 = "producer is not a foldable tensor.pad op";
    goto LABEL_11;
  }

  ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v35);
  v13 = mlir::tensor::PadOp::getConstantPaddingValue(&v34);
  if (!ConstantPaddingValue || !v13 || ConstantPaddingValue != v13)
  {
    v5 = "cannot fold PadOps with different or non-constant padding values";
    goto LABEL_11;
  }

  v33 = *(a2 + 24);
  v15 = *(a3 + 8);
  AffineDimExpr = mlir::getAffineDimExpr(0, v15, v14);
  v30[0] = a3;
  v30[1] = &v33;
  v30[2] = &AffineDimExpr;
  v30[3] = &v31;
  v31 = mlir::getAffineDimExpr(1, v15, v16);
  mlir::tensor::PadOp::getMixedHighPad(&v41, &v35);
  v17 = v41;
  v18 = v42;
  mlir::tensor::PadOp::getMixedHighPad(&NextResultAtOffset, &v34);
  if (NextResultAtOffset != v40)
  {
    free(NextResultAtOffset);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  mlir::tensor::PadOp::getMixedLowPad(&NextResultAtOffset, &v35);
  v19 = NextResultAtOffset;
  v20 = v39;
  mlir::tensor::PadOp::getMixedLowPad(&v36, &v34);
  if (v36 != &v37)
  {
    free(v36);
  }

  if (NextResultAtOffset != v40)
  {
    free(NextResultAtOffset);
  }

  v21 = *(v35 + 3);
  if (*(v35 + 9))
  {
    v22 = v35 - 16;
  }

  else
  {
    v22 = 0;
  }

  v36 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = *(*(v34 + 72) + 24);
  v28 = *(v35 + 2 * ((*(v35 + 11) >> 23) & 1) + 8) != 0;
  mlir::getPrunedAttributeList(v35, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &NextResultAtOffset, v23);
  v24 = mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v21, &v36, &v29, &v41, v44, &v28, &NextResultAtOffset);
  if (NextResultAtOffset != v40)
  {
    free(NextResultAtOffset);
  }

  v25 = (&v24[16 * ((*(v24 + 11) >> 23) & 1) + 71 + ((*(v24 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24 + 10);
  mlir::RewriterBase::inlineRegionBefore(a3, (((v35 + 16 * ((*(v35 + 11) >> 23) & 1) + ((*(v35 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v35 + 10)), v25, *(v25 + 8));
  v26 = v35;
  if (*(v24 + 9))
  {
    v27 = (v24 - 16);
  }

  else
  {
    v27 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
  (**a3)(a3, v26, &NextResultAtOffset, 1);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  return 1;
}

void *anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(mlir::tensor::PadOp,mlir::PatternRewriter &)const::{lambda(llvm::ArrayRef<mlir::OpFoldResult>,llvm::ArrayRef<mlir::OpFoldResult>)#1}::operator()(void *result, uint64_t *a2, void *a3, uint64_t a4, void *a5)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = result + 2;
  *result = result + 2;
  result[1] = 0x600000000;
  if (a4)
  {
    v9 = result;
    v10 = 8 * a4;
    do
    {
      v11 = *a2;
      v12 = *a2[1];
      v13 = mlir::AffineExpr::operator+(a2[2], *a2[3]);
      v16[0] = *a3;
      v16[1] = *a5;
      result = mlir::affine::makeComposedFoldedAffineApply((v11 + 8), v12, v13, v16, 2);
      v14 = *(v9 + 2);
      if (v14 >= *(v9 + 3))
      {
        v15 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v5, v14 + 1, 8);
        result = v15;
        v14 = *(v9 + 2);
      }

      *(*v9 + 8 * v14) = result;
      ++*(v9 + 2);
      ++a3;
      ++a5;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void *anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

char *mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::ParallelInsertSliceOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3)
{
  v96[6] = *MEMORY[0x1E69E9840];
  v81 = a2;
  v4 = *(a2 + 68);
  if (v4)
  {
    v5 = (*(a2 + 72) + 24);
    do
    {
      v6 = *v5;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v94 = v6;
      DefiningOp = mlir::Value::getDefiningOp(&v94);
      if (DefiningOp && mlir::arith::ConstantIndexOp::classof(DefiningOp, v8))
      {
        return 0;
      }

      v5 += 4;
      --v4;
    }

    while (v4);
    a2 = v81;
  }

  v94 = *(*(a2 + 72) + 24);
  v9 = mlir::Value::getDefiningOp(&v94);
  if (v9 && *(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v10 = v9, mlir::tensor::preservesStaticInformation(*(v9 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v11 = *(*(v10 + 72) + 24) & 0xFFFFFFFFFFFFFF00;
    v12 = *(*(v10 + 72) + 24);
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  v14 = v11 | v12;
  v94 = *(*(v81 + 72) + 32 * *(v81 + 104) + 24);
  v15 = mlir::Value::getDefiningOp(&v94);
  if (v15 && *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v16 = v15, (mlir::tensor::preservesStaticInformation(*(v15 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0))
  {
    v17 = *(*(v16 + 72) + 24);
    if (!v13)
    {
      v14 = *(*(v81 + 72) + 24);
    }

    v80 = v14;
  }

  else
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v80 = v14;
    v17 = *(*(v81 + 72) + 32 * *(v81 + 104) + 24);
  }

  result = 0;
  v79 = v17;
  v19 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = 0;
  }

  v78 = v19;
  v20 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v19 && v21)
  {
    v94 = *(v81 + 16 * ((*(v81 + 44) >> 23) & 1) + 72);
    v23 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v94);
    v24 = v22;
    v94 = v96;
    v95 = 0x600000000;
    v25 = (8 * v22) >> 3;
    if (v25 < 7)
    {
      v26 = 0;
      v27 = v96;
      v28 = 8 * v22;
      if (!v22)
      {
        goto LABEL_35;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v25, 8);
      v26 = v95;
      v27 = v94;
      v28 = 8 * v24;
      if (!v24)
      {
LABEL_35:
        v29 = v26 + (v28 >> 3);
        LODWORD(v95) = v26 + (v28 >> 3);
        Value = mlir::ArrayAttr::getValue(&v78);
        mlir::computeRankReductionMask(v27, v29, Value, v31, 1, &v90);
        if (v93 != 1)
        {
          result = 0;
LABEL_37:
          if (v94 != v96)
          {
            v32 = result;
            free(v94);
            return v32;
          }

          return result;
        }

        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v81, &__src);
        __dst = v89;
        v88 = 0x600000000;
        v33 = v85;
        v34 = __src;
        v77 = a3;
        if (v85)
        {
          if (__src == v86)
          {
            v35 = v85;
            if (v85 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v89, v85, 8), v35 = v85, v34 = __src, v85))
            {
              memcpy(__dst, v34, 8 * v35);
              v34 = __src;
            }

            LODWORD(v88) = v33;
          }

          else
          {
            __dst = __src;
            v88 = v85;
            __src = v86;
            HIDWORD(v85) = 0;
            v34 = v86;
          }

          LODWORD(v85) = 0;
        }

        if (v34 != v86)
        {
          free(v34);
        }

        if (v95)
        {
          v36 = 0;
          v37 = 0;
          v38 = &v93;
          v39 = v94;
          v40 = &v94[2 * v95];
          v41 = &v91;
          while (1)
          {
            if ((v93 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:nn200100]();
            }

            if (v90)
            {
              v43 = 4;
              v42 = v41;
            }

            else
            {
              v42 = v91;
              v43 = v92;
              if (!v92)
              {
                goto LABEL_61;
              }
            }

            v44 = v43 - 1;
            v45 = (v43 - 1) & (37 * v37);
            v46 = *(v42 + v45);
            if (v46 != v37)
            {
              break;
            }

LABEL_59:
            v47 = (v42 + 4 * v45);
            if (v90)
            {
              if (v47 == v38)
              {
                goto LABEL_61;
              }
            }

            else if (v47 == (v91 + 4 * v92))
            {
              goto LABEL_61;
            }

LABEL_52:
            ++v37;
            v39 += 2;
            if (v39 == v40)
            {
              goto LABEL_68;
            }
          }

          v58 = 1;
          while (v46 != -1)
          {
            v59 = v45 + v58++;
            v45 = v59 & v44;
            v46 = *(v42 + v45);
            if (v46 == v37)
            {
              goto LABEL_59;
            }
          }

LABEL_61:
          if (*(mlir::ArrayAttr::getValue(&v78) + 8 * v36) != 0x8000000000000000)
          {
            v48 = v40;
            v49 = v36;
            v50 = v36;
            v51 = v41;
            v52 = v38;
            v53 = v77[1];
            v54 = *(mlir::ArrayAttr::getValue(&v78) + 8 * v49);
            v55 = v53;
            v38 = v52;
            v41 = v51;
            AsIndexOpFoldResult = mlir::getAsIndexOpFoldResult(v55, v54);
            *(__dst + v37) = AsIndexOpFoldResult;
            v36 = v50 + 1;
            v57 = *(mlir::ArrayAttr::getValue(&v78) + 8 * v49);
            v40 = v48;
            *v39 = v57;
          }

          goto LABEL_52;
        }

LABEL_68:
        v60 = v78;
        __src = *(v81 + 16 * ((*(v81 + 44) >> 23) & 1) + 64);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v61 = v94;
        v62 = v95;
        __src = *(v81 + 16 * ((*(v81 + 44) >> 23) & 1) + 80);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v82[0] = v60;
        __src = v21;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&__src);
        Values = mlir::SparseElementsAttr::getValues(&__src);
        __src = mlir::RankedTensorType::get(v61, v62, RHS, Values);
        v65 = mlir::TensorType::operator mlir::ShapedType(&__src);
        v67 = v66;
        v68 = mlir::TensorType::operator mlir::ShapedType(v82);
        if (mlir::isRankReducedType(v65, v67, v68))
        {
          result = 0;
          v69 = __dst;
          if (__dst == v89)
          {
LABEL_71:
            if ((v93 & 1) != 0 && (v90 & 1) == 0)
            {
              llvm::deallocate_buffer(v91, (4 * v92));
            }

            goto LABEL_37;
          }
        }

        else
        {
          v71 = *(v81 + 24);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v81, &__src);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v81, v82);
          v72 = mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v77 + 1, v71, &v80, &v79, &__src, &__dst, v82);
          if (v82[0] != &v83)
          {
            free(v82[0]);
          }

          if (__src != v86)
          {
            free(__src);
          }

          v73 = v81;
          v74 = *(v72 + 9);
          if (v74)
          {
            v75 = (v72 - 16);
          }

          else
          {
            v75 = 0;
          }

          mlir::ValueRange::ValueRange(&__src, v75, v74);
          (**v77)(v77, v73, __src, v85);
          result = 1;
          v69 = __dst;
          if (__dst == v89)
          {
            goto LABEL_71;
          }
        }

        v70 = result;
        free(v69);
        result = v70;
        goto LABEL_71;
      }
    }

    memcpy(&v27[2 * v26], v23, v28);
    v26 = v95;
    v27 = v94;
    goto LABEL_35;
  }

  return result;
}

void *anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59[6] = *MEMORY[0x1E69E9840];
  v45 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v46 = a2;
  mlir::ArrayAttr::getValue(&v45);
  v6 = v5;
  v57 = (*(*(*(a2 + 72) + 32 * *(a2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v57);
  if (v6 != v7)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v45);
  v10 = v8;
  v57 = v59;
  v58 = 0x600000000;
  v11 = (8 * v8) >> 3;
  if (v11 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v11, 8);
    v12 = v58;
    v13 = 8 * v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v13 = 8 * v8;
  if (v8)
  {
LABEL_7:
    memcpy(&v57[8 * v12], Value, v13);
    v12 = v58;
  }

LABEL_8:
  LODWORD(v58) = v12 + (v13 >> 3);
  mlir::ArrayAttr::getValue(&v45);
  if (v20 >= 1)
  {
    if (v36)
    {
LABEL_33:
      result = 0;
      goto LABEL_34;
    }
  }

  v54 = v56;
  v55 = 0x600000000;
  v21 = v58;
  if (v58)
  {
    if (v58 < 7)
    {
      v23 = v56;
      v22 = v58;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v56, v58, 8);
      v22 = v58;
      if (!v58)
      {
LABEL_15:
        LODWORD(v55) = v21;
        goto LABEL_16;
      }

      v23 = v54;
    }

    memcpy(v23, v57, 8 * v22);
    goto LABEL_15;
  }

LABEL_16:
  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v54);
  if (v54 != v56)
  {
    free(v54);
  }

  if (!hasValidSizesOffsets)
  {
    goto LABEL_33;
  }

  v25 = v57;
  v26 = v58;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v45);
  Values = mlir::SparseElementsAttr::getValues(&v45);
  v29 = mlir::RankedTensorType::get(v25, v26, RHS, Values);
  v44 = v29;
  if (v45 == v29)
  {
    goto LABEL_33;
  }

  result = mlir::tensor::preservesStaticInformation(v45, v29);
  if (!result || (mlir::ValueRange::ValueRange(v52, &v45, 1uLL), mlir::ValueRange::ValueRange(&v49, &v44, 1uLL), result = mlir::tensor::CastOp::areCastCompatible(v52[0], v52[1], v49, v50), !result))
  {
LABEL_34:
    v37 = v57;
    if (v57 == v59)
    {
      return result;
    }

    goto LABEL_35;
  }

  v30 = (a3 + 24);
  ParentOp = *(v46 + 16);
  v40 = *(a3 + 24);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  v32 = *(ParentOp + 2);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  *(a3 + 24) = v32;
  *(a3 + 32) = v33;
  v34 = *(v46 + 24);
  v52[0] = *(*(v46 + 72) + 24);
  v43 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v34, &v44, v52) - 16;
  v35 = v46;
  v42 = *(*(v46 + 72) + 32 * *(v46 + 104) + 24);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v46, v52);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v46, &v49);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v46, v47);
  mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(a3, v35, &v43, &v42, v52, &v49, v47);
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52[0] != &v53)
  {
    free(v52[0]);
  }

  if (v40)
  {
    *v30 = v40;
  }

  else
  {
    *v30 = 0;
    *(a3 + 32) = 0;
  }

  result = 1;
  v37 = v57;
  if (v57 != v59)
  {
LABEL_35:
    v38 = result;
    free(v37);
    return v38;
  }

  return result;
}

char *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

uint64_t llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::PackOp>(mlir::tensor::PackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = *a1;
    v7 = *v2;
    v8 = 8 * v3 - 8;
    v9 = 8 * v1 - 8;
    while (1)
    {
      v10 = *v6;
      ConstantIntValue = mlir::getConstantIntValue(*v7);
      if (v12)
      {
        if (v10 != 0x8000000000000000 && ConstantIntValue != v10)
        {
          return 0;
        }
      }

      else if (v10 != 0x8000000000000000)
      {
        return 0;
      }

      result = 1;
      if (v9)
      {
        ++v6;
        ++v7;
        v14 = v8;
        v8 -= 8;
        v9 -= 8;
        if (v14)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

void mlir::RewritePatternSet::addImpl<FoldTensorCastProducerOp,mlir::MLIRContext *>(void *a1, const void *a2, uint64_t a3, mlir::StringAttr **a4)
{
  mlir::RewritePattern::create<FoldTensorCastProducerOp,mlir::MLIRContext *>(a4, &v23);
  v7 = v23;
  v8 = v23[22];
  v9 = v8 + ((16 * a3) >> 4);
  if (v9 > v23[23])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v23 + 20), v23 + 24, v9, 16);
    LODWORD(v8) = v7[22];
  }

  if (a3)
  {
    memcpy((*(v7 + 10) + 16 * v8), a2, 16 * a3);
    LODWORD(v8) = v7[22];
  }

  v7[22] = v8 + a3;
  v11 = a1[2];
  v10 = a1[3];
  if (v11 >= v10)
  {
    v12 = a1[1];
    v13 = v11 - v12;
    v14 = (v11 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v16 = v10 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v18 = operator new(8 * v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v18[8 * v14];
    v20 = v23;
    v23 = 0;
    *v19 = v20;
    v21 = v19 + 1;
    memcpy(v18, v12, v13);
    a1[1] = v18;
    a1[2] = v21;
    a1[3] = &v18[8 * v17];
    if (v12)
    {
      operator delete(v12);
      v22 = v23;
      a1[2] = v21;
      v23 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }
  }

  else
  {
    *v11 = v23;
    a1[2] = v11 + 8;
  }
}

unint64_t mlir::RewritePattern::create<FoldTensorCastProducerOp,mlir::MLIRContext *>@<X0>(mlir::StringAttr **a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x60uLL);
  v5 = *a1;
  mlir::PatternBenefit::PatternBenefit(&v15, 1);
  v6 = v15;
  {
    v14 = v6;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
    v6 = v14;
  }

  result = mlir::Pattern::Pattern((v4 + 1), mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id, v6, v5, 0, 0);
  *v4 = &unk_1F5B0A618;
  *a2 = v4;
  if (!v4[9])
  {
    v15 = "StringRef llvm::getTypeName() [DesiredTypeName = FoldTensorCastProducerOp]";
    v16 = 74;
    result = llvm::StringRef::find(&v15, "DesiredTypeName = ", 0x12uLL, 0);
    if (v16 >= result)
    {
      v8 = result;
    }

    else
    {
      v8 = v16;
    }

    v9 = &v15[v8];
    v10 = v16 - v8;
    if (v16 - v8 >= 0x12)
    {
      v11 = 18;
    }

    else
    {
      v11 = v16 - v8;
    }

    v12 = &v9[v11];
    v13 = v10 - v11;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v4[8] = v12;
    v4[9] = v13;
  }

  return result;
}

void FoldTensorCastProducerOp::~FoldTensorCastProducerOp(FoldTensorCastProducerOp *this)
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

  operator delete(this);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::rewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 48);

  return v3();
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 56);

  return v3();
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 64);

  return v3();
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::RankedTensorType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
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
            operator delete[](v14);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties]";
  v6 = 116;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIxEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::parse(*a1, a3);
  *a2 = v4;
  return v4 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::GenerateOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 12);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::PackOpGenericAdaptorBase::Properties]";
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

void *mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::PadOpGenericAdaptorBase::Properties]";
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::PadOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 12);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[3])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties]";
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

void *mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t OUTLINED_FUNCTION_20_10@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 1869901417;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_35_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0x200000002;

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a14, v15, 3uLL, 16);
}

uint64_t *OUTLINED_FUNCTION_43_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(*v19 + 36);
  v22 = *v19 - 16;
  if (!v21)
  {
    v22 = 0;
  }

  a18 = v22;
  a19 = v21;

  return mlir::OperandRange::getTypes(&a10, &a18);
}

void OUTLINED_FUNCTION_61_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v6, a1 + 1, 16);
}

void OUTLINED_FUNCTION_81_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

void OUTLINED_FUNCTION_82_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_88_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = *(a1 + 80);

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

BOOL OUTLINED_FUNCTION_91_4@<W0>(const void **a1@<X2>, mlir::Block **a2@<X8>)
{

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(a2, (v2 & 0xFFFFFFFFFFFFFFF8), a1, 6, 0);
}

uint64_t OUTLINED_FUNCTION_99_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 7) = 1936026729;
  *a2 = *"inner_tiles";
  *(result + 32) += 11;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_3@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 6;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = a1;

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

uint64_t OUTLINED_FUNCTION_125_2()
{
  v2 = (*v0 + 24);

  return mlir::Attribute::getContext(v2);
}

void OUTLINED_FUNCTION_126_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  *(v31 - 152) = a2;
  *(v31 - 144) = v30;
  *(v31 - 140) = a30;
}

llvm::raw_ostream *OUTLINED_FUNCTION_130_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(v2, va1, va);
}

uint64_t *OUTLINED_FUNCTION_131_1@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va1, va);
}

llvm::raw_ostream *OUTLINED_FUNCTION_132_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return mlir::printDynamicIndexList(v11, v12, a3, v13, v14, v15, 0, 0, a9, a10, a11);
}

uint64_t *OUTLINED_FUNCTION_138_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return mlir::detail::DenseArrayAttrImpl<long long>::print(va, v13);
}

uint64_t *OUTLINED_FUNCTION_148_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = a18;
  v24 = a19;

  return mlir::tensor::PadOp::getMixedPadImpl(v19, v20, v21, v23, v24, &a10);
}

void OUTLINED_FUNCTION_149_2(const void **a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v4 = a1;
  LOWORD(v9) = 259;

  mlir::OpState::emitOpError(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_162_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = a1;

  return mlir::ArrayAttr::getValue(&a13);
}

uint64_t OUTLINED_FUNCTION_164_1@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_188_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 6) = v2;
  *(result + 32) += 14;
  return result;
}

uint64_t OUTLINED_FUNCTION_190@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 7) = v2;
  *(result + 32) += 15;
  return result;
}

uint64_t OUTLINED_FUNCTION_192@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 12;
  return result;
}

void OUTLINED_FUNCTION_195(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  mlir::Block::getTerminator(v3);
}

void OUTLINED_FUNCTION_196()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 - 152, v0, v1, 8);
}

void OUTLINED_FUNCTION_197(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v19, v20, 8);
}

uint64_t OUTLINED_FUNCTION_198@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return mlir::ArrayAttr::getValue(&a2);
}

uint64_t mlir::createCanonicalizerPass@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x970uLL);
  bzero(v2, 0x970uLL);
  *v2 = &unk_1F5B0A7F8;
  *(v2 + 2352) = 0;
  *(v2 + 589) = 2;
  v2[295] = 10;
  v2[296] = -1;
  v2[297] = 0;
  *(v2 + 596) = 0;
  v2[299] = 0;
  v2[301] = 0;
  v2[300] = 0;
  *a1 = v2;
  return result;
}

uint64_t mlir::impl::CanonicalizerBase<anonymous namespace::Canonicalizer>::CanonicalizerBase(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F5B0A898;
  *&v6 = "Seed the worklist in general top-down order";
  *(&v6 + 1) = 43;
  LOBYTE(v4) = 1;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "top-down", 8, &v6, &v5);
  *(a1 + 344) = &unk_1F5AFB130;
  *(a1 + 536) = &unk_1F5AFB1B0;
  *&v5 = "Perform control flow optimizations to the region tree";
  *(&v5 + 1) = 53;
  v3 = 1;
  v4 = &v3;
  v7[0] = "disabled";
  v7[1] = 8;
  v8 = 0;
  v9 = "Don't run any control-flow simplification.";
  v10 = 42;
  v11 = "normal";
  v12 = 6;
  v13 = 1;
  v14 = "Perform simple control-flow simplifications (e.g. dead args elimination).";
  v15 = 73;
  v16 = "aggressive";
  v17 = 10;
  v18 = 2;
  v19 = "Perform aggressive control-flow simplification (e.g. block merging).";
  v20 = 68;
  *&v6 = v7;
  *(&v6 + 1) = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1 + 552, (a1 + 152), "region-simplify", 15, &v5, &v4, &v6);
  *(a1 + 552) = &unk_1F5B0A908;
  *(a1 + 1152) = &unk_1F5B0A988;
  if (v6 != v7)
  {
    free(v6);
  }

  *&v6 = "Max. iterations between applying patterns / simplifying regions";
  *(&v6 + 1) = 63;
  LODWORD(v4) = 10;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1168, (a1 + 152), "max-iterations", 14, &v6, &v5);
  *(a1 + 1168) = &unk_1F5B0CAD0;
  *(a1 + 1368) = &unk_1F5B0CB50;
  *&v6 = "Max. number of pattern rewrites within an iteration";
  *(&v6 + 1) = 51;
  LODWORD(v4) = -1;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1384, (a1 + 152), "max-num-rewrites", 16, &v6, &v5);
  *(a1 + 1384) = &unk_1F5B0CAD0;
  *(a1 + 1584) = &unk_1F5B0CB50;
  *&v6 = "Test only: Fail pass on non-convergence to detect cyclic pattern";
  *(&v6 + 1) = 64;
  LOBYTE(v4) = 0;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1600, (a1 + 152), "test-convergence", 16, &v6, &v5);
  *(a1 + 1600) = &unk_1F5AFB130;
  *(a1 + 1792) = &unk_1F5AFB1B0;
  *&v6 = "Labels of patterns that should be filtered out during application";
  *(&v6 + 1) = 65;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>(a1 + 1808, (a1 + 152), "disable-patterns", 16, &v6);
  *(a1 + 1808) = &unk_1F5B00838;
  *(a1 + 2056) = &unk_1F5B008B8;
  *&v6 = "Labels of patterns that should be used during application, all other patterns are filtered out";
  *(&v6 + 1) = 94;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>(a1 + 2080, (a1 + 152), "enable-patterns", 15, &v6);
  *(a1 + 2080) = &unk_1F5B00838;
  *(a1 + 2328) = &unk_1F5B008B8;
  return a1;
}

void anonymous namespace::Canonicalizer::~Canonicalizer(_anonymous_namespace_::Canonicalizer *this)
{
  *this = &unk_1F5B0A7F8;
  v2 = *(this + 301);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5B0A898;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 260);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 226);
  *(this + 200) = &unk_1F5B3E720;
  v3 = *(this + 223);
  if (v3 == (this + 1760))
  {
    (*(*v3 + 32))(v3);
    *(this + 200) = &unk_1F5B3E1D8;
    v4 = *(this + 212);
    if (v4 != *(this + 211))
    {
LABEL_8:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 200) = &unk_1F5B3E1D8;
    v4 = *(this + 212);
    if (v4 != *(this + 211))
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 208);
  if (v5 != this + 1680)
  {
    free(v5);
  }

  *(this + 173) = &unk_1F5B0CC50;
  v6 = *(this + 197);
  if (v6 == (this + 1552))
  {
    (*(*v6 + 32))(v6);
    *(this + 173) = &unk_1F5B3E1D8;
    v7 = *(this + 185);
    if (v7 != *(this + 184))
    {
LABEL_15:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 173) = &unk_1F5B3E1D8;
    v7 = *(this + 185);
    if (v7 != *(this + 184))
    {
      goto LABEL_15;
    }
  }

  v8 = *(this + 181);
  if (v8 != this + 1464)
  {
    free(v8);
  }

  *(this + 146) = &unk_1F5B0CC50;
  v9 = *(this + 170);
  if (v9 == (this + 1336))
  {
    (*(*v9 + 32))(v9);
    *(this + 146) = &unk_1F5B3E1D8;
    v10 = *(this + 158);
    if (v10 != *(this + 157))
    {
LABEL_22:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(this + 146) = &unk_1F5B3E1D8;
    v10 = *(this + 158);
    if (v10 != *(this + 157))
    {
      goto LABEL_22;
    }
  }

  v11 = *(this + 154);
  if (v11 != this + 1248)
  {
    free(v11);
  }

  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(this + 69);
  *(this + 43) = &unk_1F5B3E720;
  v15 = *(this + 66);
  if (v15 == (this + 504))
  {
    (*(*v15 + 32))(v15);
    *(this + 43) = &unk_1F5B3E1D8;
    v16 = *(this + 55);
    if (v16 != *(this + 54))
    {
LABEL_29:
      free(v16);
    }
  }

  else
  {
    if (v15)
    {
      (*(*v15 + 40))(v15);
    }

    *(this + 43) = &unk_1F5B3E1D8;
    v16 = *(this + 55);
    if (v16 != *(this + 54))
    {
      goto LABEL_29;
    }
  }

  v17 = *(this + 51);
  if (v17 != this + 424)
  {
    free(v17);
  }

  mlir::Pass::~Pass(this, v12, v13, v14);
}

{

  operator delete(v1);
}

__n128 anonymous namespace::Canonicalizer::runOnOperation(uint64_t this)
{
  v1 = *(this + 40) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(this + 2400);
  v6 = *(this + 2352);
  v7 = *(this + 2368);
  result = *(this + 2384);
  v4 = *(v1 + 44);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((v1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40));
    v9 = 0;
    v8[0] = v6;
    v8[1] = v7;
    v8[2] = result;
    mlir::applyPatternsAndFoldGreedily(v5, v2, v8, &v9);
  }

  return result;
}

void anonymous namespace::Canonicalizer::initialize(_anonymous_namespace_::Canonicalizer *this, mlir::MLIRContext *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  *(this + 2352) = *(this + 472);
  *(this + 589) = *(this + 170);
  *(this + 295) = *(this + 162);
  *(this + 296) = *(this + 189);
  v19 = a2;
  *__p = 0u;
  v21 = 0u;
  v22 = v24;
  v23 = 0x600000000;
  v24[6] = 0;
  v24[7] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x2800000000;
  v29 = 0;
  v30 = 0;
  v31 = 0x2800000000;
  mlir::MLIRContext::getLoadedDialects(a2, &v17);
  v4 = v17;
  v5 = v18;
  if (v17 != v18)
  {
    do
    {
      v6 = *v4;
      v4 += 8;
      (*(*v6 + 16))(v6, &v19);
    }

    while (v4 != v5);
    v4 = v17;
  }

  if (v4)
  {
    v18 = v4;
    operator delete(v4);
  }

  RegisteredOperations = mlir::MLIRContext::getRegisteredOperations(a2);
  if (v8)
  {
    v9 = RegisteredOperations;
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      (*(*v11 + 24))(v11, &v19, a2);
      v10 -= 8;
    }

    while (v10);
  }

  v12 = operator new(0x28uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_1F5B0AE70;
  *(this + 300) = mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v12 + 3, &v19, *(this + 242), 0xAAAAAAAAAAAAAAABLL * ((*(this + 243) - *(this + 242)) >> 3), *(this + 276), 0xAAAAAAAAAAAAAAABLL * ((*(this + 277) - *(this + 276)) >> 3));
  v16 = *(this + 301);
  *(this + 301) = v12;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  mlir::PDLPatternModule::~PDLPatternModule((&v21 + 8), v13, v14, v15);
}

uint64_t mlir::impl::CanonicalizerBase<anonymous namespace::Canonicalizer>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x970uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B0A898;
  *&v11 = "Seed the worklist in general top-down order";
  *(&v11 + 1) = 43;
  LOBYTE(v9) = 1;
  *&v10 = &v9;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 344), v4 + 152, "top-down", 8, &v11, &v10);
  *(v4 + 43) = &unk_1F5AFB130;
  *(v4 + 67) = &unk_1F5AFB1B0;
  *&v10 = "Perform control flow optimizations to the region tree";
  *(&v10 + 1) = 53;
  v8 = 1;
  v9 = &v8;
  v12[0] = "disabled";
  v12[1] = 8;
  v13 = 0;
  v14 = "Don't run any control-flow simplification.";
  v15 = 42;
  v16 = "normal";
  v17 = 6;
  v18 = 1;
  v19 = "Perform simple control-flow simplifications (e.g. dead args elimination).";
  v20 = 73;
  v21 = "aggressive";
  v22 = 10;
  v23 = 2;
  v24 = "Perform aggressive control-flow simplification (e.g. block merging).";
  v25 = 68;
  *&v11 = v12;
  *(&v11 + 1) = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>((v4 + 552), v4 + 152, "region-simplify", 15, &v10, &v9, &v11);
  *(v4 + 69) = &unk_1F5B0A908;
  *(v4 + 144) = &unk_1F5B0A988;
  if (v11 != v12)
  {
    free(v11);
  }

  *&v11 = "Max. iterations between applying patterns / simplifying regions";
  *(&v11 + 1) = 63;
  LODWORD(v9) = 10;
  *&v10 = &v9;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 1168), v4 + 152, "max-iterations", 14, &v11, &v10);
  *(v4 + 146) = &unk_1F5B0CAD0;
  *(v4 + 171) = &unk_1F5B0CB50;
  *&v11 = "Max. number of pattern rewrites within an iteration";
  *(&v11 + 1) = 51;
  LODWORD(v9) = -1;
  *&v10 = &v9;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 1384), v4 + 152, "max-num-rewrites", 16, &v11, &v10);
  *(v4 + 173) = &unk_1F5B0CAD0;
  *(v4 + 198) = &unk_1F5B0CB50;
  *&v11 = "Test only: Fail pass on non-convergence to detect cyclic pattern";
  *(&v11 + 1) = 64;
  LOBYTE(v9) = 0;
  *&v10 = &v9;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 1600), v4 + 152, "test-convergence", 16, &v11, &v10);
  *(v4 + 200) = &unk_1F5AFB130;
  *(v4 + 224) = &unk_1F5AFB1B0;
  *&v11 = "Labels of patterns that should be filtered out during application";
  *(&v11 + 1) = 65;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>((v4 + 1808), v4 + 152, "disable-patterns", 16, &v11);
  *(v4 + 226) = &unk_1F5B00838;
  *(v4 + 257) = &unk_1F5B008B8;
  *&v11 = "Labels of patterns that should be used during application, all other patterns are filtered out";
  *(&v11 + 1) = 94;
  result = mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>((v4 + 2080), v4 + 152, "enable-patterns", 15, &v11);
  *(v4 + 260) = &unk_1F5B00838;
  *(v4 + 291) = &unk_1F5B008B8;
  *v4 = &unk_1F5B0A7F8;
  *(v4 + 147) = *(a1 + 2352);
  *(v4 + 148) = *(a1 + 2368);
  *(v4 + 149) = *(a1 + 2384);
  *(v4 + 300) = *(a1 + 2400);
  v7 = *(a1 + 2408);
  *(v4 + 301) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v24[0] = a3;
  v24[1] = a4;
  v27 = a2;
  v28 = 0;
  v9 = llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1, v24, &v27, a5, a6, a7);
  v10 = v9 + 600;
  *(v9 + 608) = 0;
  *v9 = &unk_1F5B0AA60;
  *(v9 + 600) = &unk_1F5B0AAE0;
  v12 = *(a2 + 21);
  v11 = *(a2 + 22);
  if (v12 >= v11)
  {
    v14 = *(a2 + 20);
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v18 = v11 - v14;
    if (v18 >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v20 = operator new(8 * v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[8 * v16];
    *v21 = v10;
    v13 = v21 + 1;
    memcpy(v20, v14, v15);
    *(a2 + 20) = v20;
    *(a2 + 21) = v13;
    *(a2 + 22) = &v20[8 * v19];
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v12 = v10;
    v13 = v12 + 8;
  }

  *(a2 + 21) = v13;
  v25[0] = &unk_1F5B0AD70;
  v25[1] = a1;
  v29 = &v27;
  v26 = v25;
  v27 = &unk_1F5B0AD70;
  v28 = a1;
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::swap[abi:nn200100](&v27, a1 + 568);
  if (v29 != &v27)
  {
    if (v29)
    {
      (*(*v29 + 5))();
    }

    v22 = v26;
    if (v26 != v25)
    {
      goto LABEL_19;
    }

LABEL_22:
    (*(*v22 + 32))(v22);
    return a1;
  }

  (*(*v29 + 4))(v29);
  v22 = v26;
  if (v26 == v25)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v23 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    v13 = 0;
    v14 = (v12 + 8);
    if (a4)
    {
      v15 = (v12 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 == a4)
        {
          a1 = memcmp(*(v14 - 1), a3, a4);
          if (!a1)
          {
            break;
          }
        }

        ++v13;
        v14 = v15;
        if (v11 == v13)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v14;
        v14 += 6;
        if (!v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = *(v12 + 48 * v13 + 40);
    v23 = v18;
  }

  else
  {
LABEL_17:
    v25 = 1283;
    v24[0] = "Cannot find option named '";
    v24[2] = a3;
    v24[3] = a4;
    v26[0] = v24;
    v26[2] = "'!";
    v27 = 770;
    v19 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v26, 0, 0, v19))
    {
      return 1;
    }

    v18 = 0;
  }

  *(v7 + 128) = v18;
  *(v7 + 12) = a2;
  v21 = *(v7 + 592);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v23);
    return 0;
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(v22);
  }
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  operator delete(v1);
}

llvm::raw_ostream *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::printOptionValue(llvm::raw_ostream *result, unint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_1F5B0AB88;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v6, (result + 136), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          v9 = v6;
          v10 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 16);
          v6 = v9;
          result = v10;
          v7 = *(a2 + 8);
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
    goto LABEL_8;
  }

  v7 = llvm::raw_ostream::write(this, v4, v5);
  v6 = *(v7 + 4);
  if (v6 < *(v7 + 3))
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::raw_ostream::write(v7, 61);
LABEL_8:
    ;
  }

  v10 = *(i - 44);
  v11 = *(i - 36);
  result = *(this + 4);
  if (v11 <= *(this + 3) - result)
  {
    if (v11)
    {
      v13 = *(i - 36);
      result = memcpy(result, v10, v11);
      *(this + 4) += v13;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v10, v11);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option((a1 - 600));

  operator delete(v1);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5, uint64_t *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v18 = *(a1 + 72);
  if (v18 >= *(a1 + 76))
  {
    v24 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v18 + 1, 8);
    GeneralCategory = v24;
    LODWORD(v18) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v18) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5B0AB88;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B0AB20;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_1F5B0AC10;
  *(a1 + 568) = &unk_1F5B0ACE0;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v19 = **a5;
  *(a1 + 128) = v19;
  *(a1 + 148) = 1;
  *(a1 + 144) = v19;
  v20 = *(a6 + 2);
  if (v20)
  {
    v21 = *a6;
    v22 = v21 + 40 * v20;
    do
    {
      llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::addLiteralOption<int>(a1 + 152, *v21, *(v21 + 8), (v21 + 16), *(v21 + 24), *(v21 + 32));
      v21 += 40;
    }

    while (v21 != v22);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option((a1 - 600));

  operator delete(v1);
}

void *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(void *a1)
{
  *a1 = &unk_1F5B0AB20;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5B0AC90;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(char *__p)
{
  *__p = &unk_1F5B0AB20;
  v2 = __p + 568;
  v3 = *(__p + 74);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(__p + 19) = &unk_1F5B0AC90;
  v4 = *(__p + 21);
  if (v4 != __p + 184)
  {
    free(v4);
  }

  *__p = &unk_1F5B3E1D8;
  v5 = *(__p + 12);
  if (v5 != *(__p + 11))
  {
    free(v5);
  }

  v6 = *(__p + 8);
  if (v6 != __p + 80)
  {
    free(v6);
  }

  operator delete(__p);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *result)
{
  *result = &unk_1F5B0AC90;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_1F5B0AC90;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *result)
{
  *result = &unk_1F5B0AC90;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *a1)
{
  *a1 = &unk_1F5B0AC90;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *std::__function::__func<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1},std::allocator<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1}>,void ()(mlir::GreedySimplifyRegionLevel const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0ACE0;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1},std::allocator<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1}>,void ()(mlir::GreedySimplifyRegionLevel const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0980C4ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0980C4ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0980C4ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0980C4ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a5;
  v19[3] = a6;
  v7 = v19;
  v19[4] = &unk_1F5B0AB88;
  v21 = 1;
  v20 = v6;
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    if (v8 <= v19 && v8 + 48 * v10 > v19)
    {
      v18 = v19 - v8;
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = &v18[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = v19;
    }

    a3 = v17;
    a2 = v16;
    a1 = v15;
  }

  v11 = v8 + 48 * *(a1 + 24);
  v12 = *(v7 + 1);
  *v11 = *v7;
  *(v11 + 16) = v12;
  *(v11 + 32) = &unk_1F5B0ABF0;
  v13 = *(v7 + 10);
  *(v11 + 44) = v7[44];
  *(v11 + 40) = v13;
  *(v11 + 32) = &unk_1F5B0AB88;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_1F5B0ABF0;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_1F5B0AB88;
      v9 += 48;
      v5 += 48;
      v8 += 48;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0AD70;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0AD70;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  *a1 = &unk_1F5B0AB20;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5B0AC90;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v23[0] = a3;
  v23[1] = a4;
  v26 = a2;
  v27 = 0;
  v8 = llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v23, &v26, a5, a6);
  v9 = v8 + 200;
  *(v8 + 208) = 0;
  *v8 = &unk_1F5B0CB90;
  *(v8 + 200) = &unk_1F5B0CC10;
  v11 = *(a2 + 21);
  v10 = *(a2 + 22);
  if (v11 >= v10)
  {
    v13 = *(a2 + 20);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v19 = operator new(8 * v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v19[8 * v15];
    *v20 = v9;
    v12 = v20 + 1;
    memcpy(v19, v13, v14);
    *(a2 + 20) = v19;
    *(a2 + 21) = v12;
    *(a2 + 22) = &v19[8 * v18];
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 8;
  }

  *(a2 + 21) = v12;
  v24[0] = &unk_1F5B0ADF0;
  v24[1] = a1;
  v28 = &v26;
  v25 = v24;
  v26 = &unk_1F5B0ADF0;
  v27 = a1;
  std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](&v26, a1 + 168);
  if (v28 != &v26)
  {
    if (v28)
    {
      (*(*v28 + 5))();
    }

    v21 = v25;
    if (v25 != v24)
    {
      goto LABEL_19;
    }

LABEL_22:
    (*(*v21 + 32))(v21);
    return a1;
  }

  (*(*v28 + 4))(v28);
  v21 = v25;
  if (v25 == v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  return a1;
}

void *mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_1F5B0CC50;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(char *__p)
{
  *__p = &unk_1F5B0CC50;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(void *a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = a1[16];

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 72);
  *(result + 208) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F5B0CC50;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_1F5B3E1D8;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_1F5B3E1D8;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 200);
  *(a1 - 200) = &unk_1F5B0CC50;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    *(a1 - 200) = &unk_1F5B3E1D8;
    v5 = *(a1 - 104);
    if (v5 != *(a1 - 112))
    {
LABEL_5:
      free(v5);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 - 200) = &unk_1F5B3E1D8;
    v5 = *(a1 - 104);
    if (v5 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v6 = *(a1 - 136);
  if (v6 != (a1 - 120))
  {
    free(v6);
  }

  operator delete(v2);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 184);
  v5 = *(a1 - 176);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 - 72);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 72) = *(a2 - 72);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v16 = *(a1 + 72);
  if (v16 >= *(a1 + 76))
  {
    v19 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v16 + 1, 8);
    GeneralCategory = v19;
    LODWORD(v16) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v16) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F5B0CCB8;
  *a1 = &unk_1F5B0CC50;
  *(a1 + 160) = &unk_1F5B3E3E0;
  *(a1 + 168) = &unk_1F5B0CCD8;
  *(a1 + 192) = a1 + 168;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v13, v14, v15);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v17 = **a5;
  *(a1 + 128) = v17;
  *(a1 + 152) = 1;
  *(a1 + 144) = v17;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_1F5B0CC50;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(char *__p)
{
  *__p = &unk_1F5B0CC50;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F5B0CC50;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_1F5B3E1D8;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_1F5B3E1D8;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 200);
  *(a1 - 200) = &unk_1F5B0CC50;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    *(a1 - 200) = &unk_1F5B3E1D8;
    v5 = *(a1 - 104);
    if (v5 != *(a1 - 112))
    {
LABEL_5:
      free(v5);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 - 200) = &unk_1F5B3E1D8;
    v5 = *(a1 - 104);
    if (v5 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v6 = *(a1 - 136);
  if (v6 != (a1 - 120))
  {
    free(v6);
  }

  operator delete(v2);
}

uint64_t std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0ADF0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0ADF0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B0AE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void anonymous namespace::CSEDriver::simplify(uint64_t **this, mlir::Operation *a2, BOOL *a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 24);
  v12[3] = v13;
  v12[4] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0;
  v14[0] = 0;
  v14[1] = 1;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = *(a2 + 11);
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = (((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v8 = 24 * (v6 & 0x7FFFFF);
    do
    {
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  v9 = this[1];
  v10 = this[2];
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(**this + 16))(*this, v11, a3, a4);
  }

  if (a3)
  {
    *a3 = this[1] != this[2];
  }

  llvm::deallocate_buffer(v15, (16 * v17));
}

void sub_1DFEB29C4(int a1, int a2, int a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v39)
  {
    llvm::deallocate_buffer(*v38, 0x1000);
  }

  if (v41)
  {
    llvm::deallocate_buffer(*v40, *(v40 + 8));
  }

  if (v40 != v37)
  {
    free(v40);
  }

  if (v38 != v36)
  {
    free(v38);
  }
}

mlir::Pass::Statistic *mlir::createCSEPass@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x160uLL);
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[14] = 0u;
  v2[15] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[18] = 0u;
  v2[19] = 0u;
  *(v2 + 120) = 0;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[9] = 0u;
  v2[10] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  *(v2 + 22) = 0;
  *(v2 + 23) = v2 + 200;
  *(v2 + 49) = 4;
  *(v2 + 29) = v2 + 248;
  *(v2 + 61) = 4;
  *(v2 + 35) = 0;
  *(v2 + 36) = 0;
  *(v2 + 37) = 0x1000000000;
  v2[19] = 0u;
  v2[20] = 0u;
  v2[20] = 0u;
  v2[21] = 0u;
  *(v2 + 42) = 0;
  *v2 = &unk_1F5B0AF60;
  mlir::Pass::Statistic::Statistic((v2 + 344), v2, "num-cse'd", "Number of operations CSE'd");
  result = mlir::Pass::Statistic::Statistic((v2 + 345), v2, "num-dce'd", "Number of operations DCE'd");
  *v2 = &unk_1F5B0AEC0;
  *a1 = v2;
  return result;
}

void anonymous namespace::CSEDriver::simplifyRegion(uint64_t a1, void *a2, mlir::Region *a3)
{
  if (*a3 != a3)
  {
    v43 = v3;
    v44 = v4;
    DominanceInfo = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(*(a1 + 32), a3, 0);
    if (*a3 != a3 && (v9 = *(a3 + 1), *(v9 + 8) == a3))
    {
      v38 = a2[16];
      __p[0] = a2;
      __p[1] = v38;
      a2[16] = __p;
      *&v41 = 0;
    }

    else if ((DominanceInfo & 4) != 0)
    {
      v41 = 0u;
      v42 = 0u;
      *__p = 0u;
      v10 = *((mlir::detail::DominanceInfoBase<false>::getDominanceInfo(*(a1 + 32), a3, 1) & 0xFFFFFFFFFFFFFFF8) + 112);
      v11 = operator new(0x30uLL);
      v12 = a2[16];
      *v11 = a2;
      v11[1] = v12;
      a2[16] = v11;
      v11[2] = 0;
      v11[3] = v10;
      v11[4] = *(v10 + 24);
      *(v11 + 40) = 0;
      v39 = v11;
      if (v39)
      {
        operator delete(v13);
      }

      v14 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        do
        {
          v15 = v14 - 1;
          v16 = v42;
          v17 = __p[1];
          v18 = v42 + v14 - 1;
          v19 = v18 >> 9;
          v20 = *(__p[1] + (v18 >> 9));
          v21 = v18 & 0x1FF;
          v22 = *(v20 + 8 * v21);
          if ((*(v22 + 40) & 1) == 0)
          {
            *(v22 + 40) = 1;
            v22 = *(v20 + 8 * v21);
          }

          v23 = *(v22 + 32);
          if (v23 == (*(*(v22 + 24) + 24) + 8 * *(*(v22 + 24) + 32)))
          {
            v28 = v17[v19];
            v29 = *(v28 + 8 * v21);
            *(v28 + 8 * v21) = 0;
            if (v29)
            {
              operator delete(v30);
            }

            v31 = v41;
            v32 = ((v41 - v17) << 6) - 1;
            *(&v42 + 1) = v14 - 1;
            if (v41 == v17)
            {
              v32 = 0;
            }

            if ((v32 - (v14 + v16) - 1023) <= 0xFFFFFFFFFFFFFBFFLL)
            {
              operator delete(*(v41 - 8));
              *&v41 = v31 - 8;
            }
          }

          else
          {
            v24 = *v23;
            *(v22 + 32) = v23 + 1;
            v25 = operator new(0x30uLL);
            v26 = a2[16];
            *v25 = a2;
            v25[1] = v26;
            a2[16] = v25;
            v25[2] = 0;
            v25[3] = v24;
            v25[4] = *(v24 + 24);
            *(v25 + 40) = 0;
            v39 = v25;
            if (v39)
            {
              operator delete(v27);
            }

            v15 = *(&v42 + 1);
          }

          v14 = v15;
        }

        while (v15);
      }

      v33 = __p[1];
      v34 = v41;
      v35 = v41 - __p[1];
      if (v41 - __p[1] >= 0x11)
      {
        do
        {
          v36 = *v33++;
          operator delete(v36);
          v35 -= 8;
        }

        while (v35 > 0x10);
      }

      while (v33 != v34)
      {
        v37 = *v33++;
        operator delete(v37);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }
}

void anonymous namespace::CSEDriver::simplifyBlock(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 40);
  v76 = a3 + 32;
  if (v5 != a3 + 32)
  {
    v6 = a2;
    while (1)
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v9 = v8;
      if ((*(v8 + 44) & 0x7FFFFF) != 0)
      {
        {
          v10 = *(v8 + 48);
          if (v10[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v10 = *(v9 + 48);
          if (v10[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
LABEL_10:
            v83 = 0;
            v84 = 0;
            v85[0] = 0;
            v85[1] = &v86;
            v85[2] = 0x400000000;
            v89 = 0;
            v90[0] = 0;
            v88 = v90;
            v90[1] = 1;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = 0;
            v11 = *(v9 + 44);
            if ((v11 & 0x7FFFFF) != 0)
            {
              v12 = (v9 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64);
              v13 = 24 * (v11 & 0x7FFFFF);
              do
              {
                v12 = (v12 + 24);
                v13 -= 24;
              }

              while (v13);
              llvm::deallocate_buffer(v91, (16 * v93));
            }

            llvm::deallocate_buffer(0, 0);
          }
        }

        if ((*(*v10 + 4))(v10, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          goto LABEL_10;
        }

        v14 = *(v9 + 44);
        if ((v14 & 0x7FFFFF) != 0)
        {
          v15 = (v9 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64);
          v16 = 24 * (v14 & 0x7FFFFF);
          do
          {
            v15 = (v15 + 24);
            v16 -= 24;
          }

          while (v16);
        }
      }

      v79 = v9;
      {
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v18 = v79;
        if (mlir::isOpTriviallyDead(v79, v17))
        {
          v21 = *(a1 + 16);
          v20 = *(a1 + 24);
          if (v21 < v20)
          {
            *v21 = v18;
            v7 = v21 + 8;
          }

          else
          {
            v22 = *(a1 + 8);
            v23 = v21 - v22;
            v24 = (v21 - v22) >> 3;
            v25 = v24 + 1;
            if ((v24 + 1) >> 61)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v26 = v20 - v22;
            if (v26 >> 2 > v25)
            {
              v25 = v26 >> 2;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              v27 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              if (v27 >> 61)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v28 = operator new(8 * v27);
            }

            else
            {
              v28 = 0;
            }

            v36 = &v28[8 * v24];
            *v36 = v18;
            v7 = v36 + 1;
            memcpy(v28, v22, v23);
            *(a1 + 8) = v28;
            *(a1 + 16) = v7;
            *(a1 + 24) = &v28[8 * v27];
            if (v22)
            {
              operator delete(v22);
            }

            v6 = a2;
          }

          *(a1 + 16) = v7;
          ++*(a1 + 72);
          goto LABEL_5;
        }

        v29 = *(v18 + 11);
        v30 = v29 & 0x7FFFFF;
        if ((v29 & 0x7FFFFF) != 0)
        {
          v31 = (((v18 + 16 * ((v29 >> 23) & 1) + ((v29 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10));
          v32 = 24 * v30;
          do
          {
            if (v31 != *v31)
            {
              v33 = v31[1];
              if (v31 == v33 || v31 != *(v33 + 8))
              {
                goto LABEL_5;
              }
            }

            v31 += 3;
            v32 -= 24;
          }

          while (v32);
        }

        if (mlir::isMemoryEffectFree(v18, v19))
        {
          if (v34)
          {
            ++*(a1 + 64);
          }

          else
          {
            v37 = v6[16];
            v39 = *(v37 + 16);
            v40 = v6;
            v41 = *v38;
            Slow = *v40;
            if (*v40)
            {
              *v40 = *Slow;
            }

            else
            {
              v40[11] += 32;
              v50 = v40[1];
              if (v50 && (Slow = ((v50 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 4) <= v40[2]))
              {
                v40[1] = Slow + 4;
              }

              else
              {
                v63 = v38;
                Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v40 + 1), 32, 32, 3);
                v38 = v63;
              }
            }

            Slow[2] = v18;
            Slow[3] = v18;
            *Slow = v39;
            Slow[1] = v41;
            *v38 = Slow;
            *(v37 + 16) = Slow;
            v6 = a2;
          }

          goto LABEL_5;
        }

        if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v18))
        {
          v77 = 0;
          v78 = 0;
          goto LABEL_5;
        }

        v35 = v18 ? mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v18) : 0;
        v77 = v18;
        v78 = v35;
        if (v18)
        {
          if (mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>(&v77))
          {
            break;
          }
        }
      }

LABEL_5:
      v5 = *(v5 + 8);
      if (v5 == v76)
      {
        goto LABEL_104;
      }
    }

    if (!v43)
    {
      goto LABEL_58;
    }

    v44 = v43[2];
    if (v44 != *(v18 + 2))
    {
      goto LABEL_58;
    }

    v82 = v43;
    if (v43[1] == v44 + 32)
    {
      v55 = 0;
    }

    else
    {
      v53 = v43;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v55 = v54;
      v43 = v53;
    }

    v56 = v43;
    v83 = v43;
    v84 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::try_emplace<std::pair<mlir::Operation *,decltype(nullptr)>>((a1 + 40), &v82, &v83, &v80);
    if (v81 == 1)
    {
      if (*(v80 + 16))
      {
        goto LABEL_58;
      }

      v55 = *(v80 + 8);
    }

    if (!v55)
    {
LABEL_75:
      v57 = v80;
      *(v80 + 8) = v18;
      *(v57 + 16) = 0;
      goto LABEL_5;
    }

    while (1)
    {
      if (v55 == v18)
      {
        goto LABEL_75;
      }

      mlir::getEffectsRecursively(v55, &v83);
      if ((v87 & 1) == 0)
      {
        {
          goto LABEL_98;
        }

        goto LABEL_94;
      }

      if (v84)
      {
        v58 = v83;
        for (i = 40 * v84; i; i -= 40)
        {
          v60 = **v58;
          {
            if (v60 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
            {
              goto LABEL_93;
            }
          }

          else
          {
            mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>();
            if (v60 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
            {
LABEL_93:
              v6 = a2;
              {
                goto LABEL_94;
              }

LABEL_98:
              {
                mlir::MemoryEffects::Write::Write(&mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance);
              }

LABEL_94:
              v62 = v80;
              *(v80 + 8) = v55;
              *(v62 + 16) = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
              if (v87 == 1 && v83 != v85)
              {
                free(v83);
              }

LABEL_58:
              v45 = v6[16];
              v47 = *(v45 + 16);
              v48 = *v46;
              v49 = *v6;
              if (*v6)
              {
                *v6 = *v49;
              }

              else
              {
                v6[11] += 32;
                v51 = v6[1];
                if (v51 && (v49 = ((v51 + 7) & 0xFFFFFFFFFFFFFFF8), (v49 + 4) <= v6[2]))
                {
                  v6[1] = v49 + 4;
                }

                else
                {
                  v64 = v46;
                  v49 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v6 + 1), 32, 32, 3);
                  v46 = v64;
                }
              }

              v52 = v79;
              v49[2] = v79;
              v49[3] = v52;
              *v49 = v47;
              v49[1] = v48;
              *v46 = v49;
              *(v45 + 16) = v49;
              goto LABEL_5;
            }
          }

          v58 += 5;
        }
      }

      if (*(v55 + 1) == *(v55 + 2) + 32)
      {
        v55 = 0;
        v6 = a2;
        if (v87 == 1)
        {
LABEL_91:
          if (v83 != v85)
          {
            free(v83);
          }
        }
      }

      else
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v55 = v61;
        v6 = a2;
        if (v87 == 1)
        {
          goto LABEL_91;
        }
      }

      if (!v55)
      {
        goto LABEL_75;
      }
    }
  }

LABEL_104:
  v65 = *(a1 + 48);
  if (v65 || *(a1 + 52))
  {
    v66 = *(a1 + 56);
    if (v66 > 4 * v65 && v66 >= 0x41)
    {
      llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::shrink_and_clear(a1 + 40);
      return;
    }

    if (!v66)
    {
      goto LABEL_117;
    }

    v67 = *(a1 + 40);
    v68 = 24 * v66 - 24;
    if (v68 > 0x17)
    {
      v70 = v68 / 0x18 + 1;
      v69 = (v67 + 24 * (v70 & 0x1FFFFFFFFFFFFFFELL));
      v71 = *(a1 + 40);
      v72 = v70 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v71 = -4096;
        v71[3] = -4096;
        v71 += 6;
        v72 -= 2;
      }

      while (v72);
      if (v70 == (v70 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_117;
      }
    }

    else
    {
      v69 = *(a1 + 40);
    }

    v73 = (v67 + 24 * v66);
    do
    {
      *v69 = -4096;
      v69 += 3;
    }

    while (v69 != v73);
LABEL_117:
    *(a1 + 48) = 0;
  }
}

int32x2_t **llvm::ScopedHashTableScope<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::~ScopedHashTableScope(int32x2_t **a1)
{
  v2 = *a1;
  (*a1)[16] = a1[1];
  v3 = a1[2];
  if (v3)
  {
    do
    {
      if (v3[1])
      {
      }

      else
      {
        v5 = v2[15].i32[0];
        if (v5)
        {
          v6 = v2[13];
          v7 = v5 - 1;
          v13 = v7 & mlir::OperationEquivalence::computeHash(*&v3[2], llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v14 = (*&v6 + 16 * v13);
          v15 = v3[2];
          v16 = *v14;
          if (v15 == *v14)
          {
LABEL_16:
            *v14 = -8192;
            v2[14] = vadd_s32(v2[14], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (1)
            {
              if (v16 != -4096 && v16 != -8192 && v15 != -8192 && v15 != -4096)
              {
                mlir::OperationEquivalence::isEquivalentTo(v15, v16, 1, v8, v9, v10, v11, v12);
              }

              if (v16 == -4096)
              {
                break;
              }

              v18 = v13 + v17++;
              v13 = v18 & v7;
              v14 = (*&v6 + 16 * (v18 & v7));
              v15 = v3[2];
              v16 = *v14;
              if (v15 == *v14)
              {
                goto LABEL_16;
              }
            }
          }
        }
      }

      v4 = *v3;
      a1[2] = *v3;
      v2 = *a1;
      *v3 = **a1;
      *v2 = v3;
      v3 = v4;
    }

    while (v4);
  }

  return a1;
}

void std::deque<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>::emplace_back<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v4) << 6) - 1;
  }

  v8 = *(a1 + 32);
  if (v7 != *(a1 + 40) + v8)
  {
    goto LABEL_22;
  }

  v9 = v8 >= 0x200;
  v10 = v8 - 512;
  if (v9)
  {
    *(a1 + 32) = v10;
    v71 = *v4;
    *(a1 + 8) = v4 + 8;
LABEL_8:
    goto LABEL_22;
  }

  v11 = *a1;
  v12 = *(a1 + 24);
  v13 = &v12[-*a1];
  if (v6 < v13)
  {
    v14 = operator new(0x1000uLL);
    if (v12 != v5)
    {
      *v5 = v14;
      *(a1 + 16) = v5 + 8;
      goto LABEL_22;
    }

    if (v4 != v11)
    {
      v28 = v4;
LABEL_62:
      *(v28 - 1) = v14;
      v71 = v14;
      *(a1 + 8) = v28;
      goto LABEL_8;
    }

    v54 = (v12 - v4) >> 2;
    if (v5 == v4)
    {
      v54 = 1;
    }

    if (!(v54 >> 61))
    {
      v55 = v14;
      v56 = (v54 + 3) >> 2;
      v57 = 8 * v54;
      v58 = operator new(8 * v54);
      v28 = &v58[8 * v56];
      v59 = v28;
      v14 = v55;
      if (v5 != v4)
      {
        v59 = &v28[v6];
        v60 = v5 - v4 - 8;
        v61 = &v58[8 * v56];
        v62 = v4;
        if (v60 < 0x38)
        {
          goto LABEL_66;
        }

        v63 = &v58[8 * v56];
        v61 = v63;
        v62 = v4;
        if ((v63 - v4) < 0x20)
        {
          goto LABEL_66;
        }

        v64 = (v60 >> 3) + 1;
        v65 = 8 * (v64 & 0x3FFFFFFFFFFFFFFCLL);
        v61 = &v28[v65];
        v62 = &v4[v65];
        v66 = (v4 + 16);
        v67 = v63 + 16;
        v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v69 = *v66;
          *(v67 - 1) = *(v66 - 1);
          *v67 = v69;
          v66 += 2;
          v67 += 2;
          v68 -= 4;
        }

        while (v68);
        if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_66:
          do
          {
            v70 = *v62;
            v62 += 8;
            *v61 = v70;
            v61 += 8;
          }

          while (v61 != v59);
        }
      }

      *a1 = v58;
      *(a1 + 8) = v28;
      *(a1 + 16) = v59;
      *(a1 + 24) = &v58[v57];
      if (v4)
      {
        operator delete(v11);
        v14 = v55;
        v28 = *(a1 + 8);
      }

      goto LABEL_62;
    }

LABEL_63:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v15 = v13 >> 2;
  if (v12 == v11)
  {
    v15 = 1;
  }

  if (v15 >> 61)
  {
    goto LABEL_63;
  }

  v16 = 8 * v15;
  v17 = operator new(8 * v15);
  v18 = &v17[v6];
  v19 = &v17[v16];
  v20 = operator new(0x1000uLL);
  if (v6 != v16)
  {
    goto LABEL_18;
  }

  if (v6 < 1)
  {
    if (v5 == v4)
    {
      v29 = 1;
    }

    else
    {
      v29 = v6 >> 2;
    }

    if (v29 >> 61)
    {
      goto LABEL_63;
    }

    v30 = v20;
    v31 = 8 * v29;
    v32 = operator new(8 * v29);
    v18 = &v32[8 * (v29 >> 2)];
    v19 = &v32[v31];
    operator delete(v17);
    v33 = *(a1 + 8);
    v5 = *(a1 + 16);
    v17 = v32;
    *v18 = v30;
    v21 = v18 + 8;
    if (v5 == v33)
    {
      goto LABEL_19;
    }

LABEL_33:
    while (v18 != v17)
    {
      v34 = v18;
LABEL_32:
      v35 = *(v5 - 1);
      v5 -= 8;
      *(v34 - 1) = v35;
      v22 = v34 - 8;
      v18 = v22;
      if (v5 == *(a1 + 8))
      {
        goto LABEL_20;
      }
    }

    if (v21 < v19)
    {
      v34 = &v18[8 * ((((v19 - v21) >> 3) + 1 + ((((v19 - v21) >> 3) + 1) >> 63)) >> 1)];
      v37 = v21 - v18;
      v36 = v21 == v18;
      v21 += 8 * ((((v19 - v21) >> 3) + 1 + ((((v19 - v21) >> 3) + 1) >> 63)) >> 1);
      if (!v36)
      {
        memmove(v34, v18, v37);
      }

      goto LABEL_32;
    }

    v38 = (v19 - v18) >> 2;
    if (v19 == v18)
    {
      v38 = 1;
    }

    if (v38 >> 61)
    {
      goto LABEL_63;
    }

    v39 = (v38 + 3) >> 2;
    v40 = 8 * v38;
    v41 = operator new(8 * v38);
    v42 = v41;
    v34 = &v41[8 * v39];
    v43 = v21 - v18;
    v36 = v21 == v18;
    v21 = v34;
    if (!v36)
    {
      v21 = &v34[v43];
      v44 = v43 - 8;
      if (v44 >= 0x18 && (&v41[8 * v39] - v18) >= 0x20)
      {
        v48 = (v44 >> 3) + 1;
        v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFFCLL);
        v45 = &v34[v49];
        v46 = &v18[v49];
        v50 = (v18 + 16);
        v51 = &v41[8 * v39 + 16];
        v52 = v48 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v53 = *v50;
          *(v51 - 1) = *(v50 - 1);
          *v51 = v53;
          v50 += 2;
          v51 += 32;
          v52 -= 4;
        }

        while (v52);
        if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v45 = &v41[8 * v39];
        v46 = v18;
      }

      do
      {
        v47 = *v46;
        v46 += 8;
        *v45 = v47;
        v45 += 8;
      }

      while (v45 != v21);
    }

LABEL_45:
    v19 = &v41[v40];
    operator delete(v17);
    v17 = v42;
    goto LABEL_32;
  }

  v18 -= ((v6 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_18:
  *v18 = v20;
  v21 = v18 + 8;
  if (v5 != v4)
  {
    goto LABEL_33;
  }

LABEL_19:
  v22 = v18;
LABEL_20:
  v23 = *a1;
  *a1 = v17;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v19;
  if (v23)
  {
    operator delete(v23);
  }

LABEL_22:
  v24 = *(a1 + 40);
  v25 = *(a1 + 32) + v24;
  v26 = *(*(a1 + 8) + ((v25 >> 6) & 0x3FFFFFFFFFFFFF8));
  v27 = *a2;
  *a2 = 0;
  *(v26 + 8 * (v25 & 0x1FF)) = v27;
  *(a1 + 40) = v24 + 1;
}

BOOL mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>(uint64_t a1)
{
  v12[20] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorOperands(a1, &v10);
  if (v11)
  {
    v1 = v10;
    v2 = 40 * v11 - 40;
    v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    do
    {
      v4 = **v1;
      {
        v8 = v2;
        v9 = v1;
        mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>();
        v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
        v2 = v8;
        v1 = v9;
      }

      v6 = v4 == v3[14];
      v5 = v6;
      v6 = !v6 || v2 == 0;
      v2 -= 40;
      v1 += 5;
    }

    while (!v6);
  }

  else
  {
    v5 = 0;
  }

  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

uint64_t llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::lookup(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = *(a1 + 104);
    v6 = v3 - 1;
    LODWORD(v12) = v6 & mlir::OperationEquivalence::computeHash(a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v13 = (v5 + 16 * v12);
    v14 = *v13;
    if (*v13 == a2)
    {
      goto LABEL_15;
    }

    if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v12 + v15++;
        v12 = v16 & v6;
        v14 = *(v5 + 16 * v12);
        if (v14 == a2)
        {
          v13 = (v5 + 16 * v12);
          goto LABEL_15;
        }
      }
    }

    else
    {
      v17 = 1;
      while (1)
      {
        if ((v14 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          mlir::OperationEquivalence::isEquivalentTo(a2, v14, 1, v7, v8, v9, v10, v11);
        }

        if (v14 == -4096)
        {
          break;
        }

        v18 = v12 + v17++;
        LODWORD(v12) = v18 & v6;
        v13 = (v5 + 16 * (v18 & v6));
        v14 = *v13;
        if (*v13 == a2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v13 = (*(a1 + 104) + 16 * *(a1 + 120));
LABEL_15:
  if (v13 == (*(a1 + 104) + 16 * *(a1 + 120)))
  {
    return 0;
  }

  else
  {
    return *(v13[1] + 24);
  }
}

void anonymous namespace::CSEDriver::replaceUsesAndDelete(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v66 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = *(*a1 + 16);
    if (v8 && mlir::RewriterBase::Listener::classof(*(*a1 + 16)))
    {
      (*(*v8 + 48))(v8, v6, v5);
    }

    v9 = *v7;
    v10 = *(v6 + 36);
    if (v10)
    {
      v11 = v6 - 16;
    }

    else
    {
      v11 = 0;
    }

    mlir::ValueRange::ValueRange(&v64, v11, v10);
    v12 = *(v5 + 36);
    if (v12)
    {
      v13 = v5 - 16;
    }

    else
    {
      v13 = 0;
    }

    mlir::ValueRange::ValueRange(&v62, v13, v12);
    mlir::RewriterBase::replaceAllUsesWith(v9, v64, v65, v62, v63);
    v15 = v7[2];
    v14 = v7[3];
    if (v15 < v14)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

  v61 = a2;
  v18 = *(*a1 + 16);
  if (v18 && mlir::RewriterBase::Listener::classof(*(*a1 + 16)))
  {
    v19 = *(a3 + 36);
    v20 = (a3 - 16);
    if (!v19)
    {
      v20 = 0;
    }

    v59 = v20;
    v60 = *(a3 + 36);
    if (v19)
    {
      for (i = 0; i != v60; ++i)
      {
        v22 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v59, i);
        v23 = *(a2 + 120);
        if (v22)
        {
          v24 = v23 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          if (!v23)
          {
            goto LABEL_38;
          }

LABEL_26:
          v25 = v22[2];
          v26 = *(a2 + 104);
          v27 = v23 - 1;
          v33 = (v23 - 1) & mlir::OperationEquivalence::computeHash(v25, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v34 = *(v26 + 16 * v33);
          if (v34 == v25)
          {
            continue;
          }

          if ((v25 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v35 = 1;
            do
            {
              if (v34 == -4096)
              {
                goto LABEL_38;
              }

              v36 = v33 + v35++;
              v33 = v36 & v27;
              v34 = *(v26 + 16 * (v36 & v27));
            }

            while (v34 != v25);
            continue;
          }

          v37 = 1;
          while (1)
          {
            if ((v34 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              mlir::OperationEquivalence::isEquivalentTo(v25, v34, 1, v28, v29, v30, v31, v32);
            }

            if (v34 == -4096)
            {
              break;
            }

            v38 = v33 + v37++;
            v33 = v38 & v27;
            v34 = *(v26 + 16 * (v38 & v27));
            if (v34 == v25)
            {
              goto LABEL_20;
            }
          }

LABEL_38:
          while (1)
          {
            v22 = *v22;
            if (!v22)
            {
              break;
            }

            v23 = *(a2 + 120);
            if (v23)
            {
              goto LABEL_26;
            }
          }
        }

        (*(*v18 + 48))(v18, a3, a4);
LABEL_20:
        ;
      }
    }
  }

  v7 = a1;
  v39 = *a1;
  v6 = a3;
  v40 = *(a3 + 36);
  if (v40)
  {
    v41 = a3 - 16;
  }

  else
  {
    v41 = 0;
  }

  mlir::ValueRange::ValueRange(&v64, v41, v40);
  v5 = a4;
  v42 = *(a4 + 36);
  if (v42)
  {
    v43 = a4 - 16;
  }

  else
  {
    v43 = 0;
  }

  mlir::ValueRange::ValueRange(&v62, v43, v42);
  v44 = *(a3 + 36);
  if (v44)
  {
    v45 = a3 - 16;
  }

  else
  {
    v45 = 0;
  }

  if (!v44)
  {
LABEL_54:
    v15 = a1[2];
    v14 = a1[3];
    if (v15 < v14)
    {
LABEL_12:
      *v15 = v6;
      v16 = v15 + 1;
LABEL_67:
      v7[2] = v16;
      goto LABEL_68;
    }

LABEL_55:
    v47 = v7[1];
    v48 = v15 - v47;
    v49 = (v15 - v47) >> 3;
    v50 = v49 + 1;
    if ((v49 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v51 = v14 - v47;
    if (v51 >> 2 > v50)
    {
      v50 = v51 >> 2;
    }

    if (v51 >= 0x7FFFFFFFFFFFFFF8)
    {
      v52 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v52 = v50;
    }

    if (v52)
    {
      if (v52 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v53 = operator new(8 * v52);
    }

    else
    {
      v53 = 0;
    }

    v54 = &v53[8 * v49];
    *v54 = v6;
    v16 = v54 + 1;
    memcpy(v53, v47, v48);
    v7[1] = v53;
    v7[2] = v16;
    v7[3] = &v53[8 * v52];
    if (v47)
    {
      operator delete(v47);
    }

    goto LABEL_67;
  }

  v46 = 0;
  while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v45, v46))
  {
    if (v44 == ++v46)
    {
      goto LABEL_54;
    }
  }

LABEL_68:
  if (*(**(v5 + 24) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    v55 = *(v6 + 24);
    if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      *(v5 + 24) = v55;
    }
  }

  ++v7[8];
}

unint64_t mlir::OperationEquivalence::directHashValue(unint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::try_emplace<std::pair<mlir::Operation *,decltype(nullptr)>>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 24 * v8);
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
      v9 = (v6 + 24 * (v16 & v7));
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
        v9[1] = *a3;
        v9[2] = 0;
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
    llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::grow(result, v5);
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

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<anonymous namespace::CSEDriver::replaceUsesAndDelete(llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>> &,mlir::Operation *,mlir::Operation *,BOOL)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 120);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  v4 = *(*a1 + 104);
  v5 = v2 - 1;
  v11 = v5 & mlir::OperationEquivalence::computeHash(v3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v12 = *(v4 + 16 * v11);
  if (v12 == v3)
  {
    return 0;
  }

  if ((v3 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v13 = 1;
    do
    {
      result = v12 == -4096;
      if (v12 == -4096)
      {
        break;
      }

      result = 0;
      v15 = v11 + v13++;
      v11 = v15 & v5;
      v12 = *(v4 + 16 * (v15 & v5));
    }

    while (v12 != v3);
  }

  else
  {
    v16 = 1;
    while (1)
    {
      if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        mlir::OperationEquivalence::isEquivalentTo(v3, v12, 1, v6, v7, v8, v9, v10);
      }

      if (v12 == -4096)
      {
        break;
      }

      result = 0;
      v17 = v11 + v16++;
      v11 = v17 & v5;
      v12 = *(v4 + 16 * (v17 & v5));
      if (v12 == v3)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::operator[](uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    v19 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v4 = a1;
  v5 = *a1;
  v6 = v3 - 1;
  v12 = (v3 - 1) & mlir::OperationEquivalence::computeHash(*a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v13 = (v5 + 16 * v12);
  v14 = *a2;
  v15 = *v13;
  if (*a2 != *v13)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      if (v15 != -4096 && v15 != -8192 && v14 != -8192 && v14 != -4096)
      {
        mlir::OperationEquivalence::isEquivalentTo(v14, v15, 1, v7, v8, v9, v10, v11);
      }

      a1 = v4;
      if (v15 == -4096)
      {
        break;
      }

      if (v15 == -8192 && v16 == 0)
      {
        v16 = v13;
      }

      v18 = v12 + v17++;
      v12 = v18 & v6;
      v13 = (v5 + 16 * (v18 & v6));
      v14 = *a2;
      v15 = *v13;
      if (*a2 == *v13)
      {
        return v13 + 1;
      }
    }

    if (v16)
    {
      v13 = v16;
    }

    v19 = *(v4 + 4);
LABEL_15:
    v24 = v13;
    v20 = *(a1 + 2);
    if (4 * v20 + 4 >= 3 * v19)
    {
      v19 *= 2;
    }

    else if (v19 + ~v20 - *(a1 + 3) > v19 >> 3)
    {
      *(a1 + 2) = v20 + 1;
      if (*v13 == -4096)
      {
LABEL_19:
        *v13 = *a2;
        v13[1] = 0;
        return v13 + 1;
      }

LABEL_18:
      --*(a1 + 3);
      goto LABEL_19;
    }

    v22 = a1;
    a1 = v22;
    v23 = *(v22 + 2);
    v13 = v24;
    *(a1 + 2) = v23 + 1;
    if (*v13 == -4096)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return v13 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::LookupBucketFor<mlir::Operation *>(uint64_t result, int a2, uint64_t *a3, uint64_t **a4)
{
  if (a2)
  {
    v6 = result;
    v7 = a2 - 1;
    v13 = (a2 - 1) & mlir::OperationEquivalence::computeHash(*a3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v14 = (v6 + 16 * v13);
    result = *a3;
    v15 = *v14;
    if (*a3 != *v14)
    {
      v16 = 0;
      v17 = 1;
      while (1)
      {
        if (v15 != -4096 && result != -8192 && result != -4096 && v15 != -8192)
        {
          mlir::OperationEquivalence::isEquivalentTo(result, v15, 1, v8, v9, v10, v11, v12);
        }

        if (v15 == -4096)
        {
          break;
        }

        if (v15 == -8192 && v16 == 0)
        {
          v16 = v14;
        }

        v18 = v13 + v17++;
        v13 = v18 & v7;
        v14 = (v6 + 16 * (v18 & v7));
        result = *a3;
        v15 = *v14;
        if (*a3 == *v14)
        {
          goto LABEL_15;
        }
      }

      if (v16)
      {
        v14 = v16;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  *a4 = v14;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::grow(uint64_t a1, int a2)
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
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    v38 = v3;
    if (v3)
    {
      v16 = (v4 + 16 * v3);
      v17 = v4;
      do
      {
        while ((*v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v17 += 2;
          if (v17 == v16)
          {
            goto LABEL_33;
          }
        }

        v25 = *a1;
        v26 = *(a1 + 16) - 1;
        v21 = v26 & mlir::OperationEquivalence::computeHash(*v17, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
        v22 = (v25 + 16 * v21);
        v23 = *v17;
        v24 = *v22;
        if (*v17 != *v22)
        {
          v18 = 0;
          v20 = 1;
          while (1)
          {
            if (v24 != -4096 && v24 != -8192 && v23 != -8192 && v23 != -4096)
            {
              mlir::OperationEquivalence::isEquivalentTo(v23, v24, 1, v27, v28, v29, v30, v31);
            }

            if (v24 == -4096)
            {
              break;
            }

            if (v24 == -8192 && v18 == 0)
            {
              v18 = v22;
            }

            v19 = v21 + v20++;
            v21 = v19 & v26;
            v22 = (v25 + 16 * (v19 & v26));
            v23 = *v17;
            v24 = *v22;
            if (*v17 == *v22)
            {
              goto LABEL_32;
            }
          }

          if (v18)
          {
            v22 = v18;
          }
        }

LABEL_32:
        v32 = *v17;
        v17 += 2;
        *v22 = v32;
        ++*(a1 + 8);
      }

      while (v17 != v16);
    }

LABEL_33:

    llvm::deallocate_buffer(v4, (16 * v38));
  }

  *(a1 + 8) = 0;
  v33 = *(a1 + 16);
  if (v33)
  {
    if (((v33 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_41;
    }

    v34 = ((v33 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v34 & 0x1FFFFFFFFFFFFFFELL)];
    v35 = result + 2;
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v35 - 2) = -4096;
      *v35 = -4096;
      v35 += 4;
      v36 -= 2;
    }

    while (v36);
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_41:
      v37 = &result[2 * v33];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v37);
    }
  }

  return result;
}

void anonymous namespace::CSE::~CSE(_anonymous_namespace_::CSE *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  mlir::Pass::~Pass(this, a2, a3, a4);

  operator delete(v4);
}

void anonymous namespace::CSE::runOnOperation(_anonymous_namespace_::CSE *this)
{
  v12[1] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v12[2], 0, 24);
  v12[0] = &unk_1F5AFAFF0;
  v2 = *(this + 6);
  v8[0] = v2;
  v3 = v2[9];
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v8[0] = v12;
  memset(&v8[1], 0, 24);
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>((v2 + 3), v4);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v7 = 0;
}

void sub_1DFEB4E1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, llvm *a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  if (a12)
  {
    mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>((v24 + 56));
    mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>((v24 + 56));
  }

  else
  {
    mlir::detail::PreservedAnalyses::preserveAll((v24 + 56));
  }

  llvm::deallocate_buffer(a18, (24 * a20));
}

void sub_1DFEB4E70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
}

mlir::Pass::Statistic *mlir::impl::CSEBase<anonymous namespace::CSE>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x160uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
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
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B0AF60;
  mlir::Pass::Statistic::Statistic((v4 + 344), v4, "num-cse'd", "Number of operations CSE'd");
  result = mlir::Pass::Statistic::Statistic((v4 + 345), v4, "num-dce'd", "Number of operations DCE'd");
  *v4 = &unk_1F5B0AEC0;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2)
{
  {
    v4 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    v7 = *(a1 + 24);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v4 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    v7 = *(a1 + 24);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = ((v4 >> 4) ^ (v4 >> 9)) & (v7 - 1);
  v9 = *(v5 + 16 * v8);
  if (v4 != v9)
  {
    v43 = 1;
    while (v9 != -4096)
    {
      v44 = v8 + v43++;
      v8 = v44 & (v7 - 1);
      v9 = *(v5 + 16 * v8);
      if (v4 == v9)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_5;
  }

LABEL_4:
  if (v8 == v7)
  {
LABEL_5:
    v10 = (a1 + 32);
    goto LABEL_6;
  }

  v10 = (a1 + 32);
  v23 = *(v5 + 16 * v8 + 8);
  if (*(a1 + 40) != v23)
  {
    v24 = *(a1 + 32) + 16 * v23;
    return *(v24 + 8) + 8;
  }

LABEL_6:
  if (a2)
  {
    v50 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
    v51 = 69;
    v11 = llvm::StringRef::find(&v50, "DesiredTypeName = ", 0x12uLL, 0);
    if (v51 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v51;
    }

    v13 = &v50[v12];
    v14 = v51 - v12;
    if (v51 - v12 >= 0x12)
    {
      v15 = 18;
    }

    else
    {
      v15 = v51 - v12;
    }

    v16 = &v13[v15];
    v17 = v14 - v15;
    if (v17 >= v17 - 1)
    {
      v18 = v17 - 1;
    }

    else
    {
      v18 = v17;
    }

    if (v18 >= 6)
    {
      if (*v16 == 1919511661 && *(v16 + 4) == 14906)
      {
        v16 += 6;
        v18 -= 6;
      }

      else if (v18 >= 0x17)
      {
        v20 = *v16 == 0x6F6D796E6F6E6128 && *(v16 + 8) == 0x73656D616E207375;
        if (v20 && *(v16 + 15) == 0x3A3A296563617073)
        {
          v16 += 23;
          v18 -= 23;
        }
      }
    }

    mlir::PassInstrumentor::runBeforeAnalysis(a2, v16, v18, v4, *a1);
  }

  v25 = operator new(0x20uLL);
  v25[1] = 0;
  v25[2] = 0;
  *v25 = &unk_1F5B0AFD0;
  *(v25 + 6) = 0;
  v45 = v4;
  v46 = v25;
  v48 = v4;
  v49 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(v6, &v48, &v49, &v50);
  if (v52 != 1)
  {
    v24 = &(*v10)[16 * *(v50 + 2)];
    v46 = 0;
    goto LABEL_43;
  }

  v26 = *(a1 + 40);
  *(v50 + 2) = v26;
  v47 = &v46;
  v48 = &v45;
  if (v26 < *(a1 + 44))
  {
    v27 = *(a1 + 32);
    v28 = (v27 + 16 * v26);
    *v28 = v4;
    v46 = 0;
    v28[1] = v25;
    v29 = v26 + 1;
    *(a1 + 40) = v29;
    v24 = v27 + 16 * v29 - 16;
    v25 = v46;
    v46 = 0;
    if (!v25)
    {
      goto LABEL_40;
    }

LABEL_43:
    (*(*v25 + 8))(v25);
    if (!a2)
    {
      return *(v24 + 8) + 8;
    }

    goto LABEL_44;
  }

  llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(v10, &std::piecewise_construct, &v48, &v47);
  v24 = *(a1 + 32) + 16 * *(a1 + 40) - 16;
  v25 = v46;
  v46 = 0;
  if (v25)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (!a2)
  {
    return *(v24 + 8) + 8;
  }

LABEL_44:
  v50 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
  v51 = 69;
  v30 = llvm::StringRef::find(&v50, "DesiredTypeName = ", 0x12uLL, 0);
  if (v51 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v51;
  }

  v32 = &v50[v31];
  v33 = v51 - v31;
  if (v51 - v31 >= 0x12)
  {
    v34 = 18;
  }

  else
  {
    v34 = v51 - v31;
  }

  v35 = &v32[v34];
  v36 = v33 - v34;
  if (v36 >= v36 - 1)
  {
    v37 = v36 - 1;
  }

  else
  {
    v37 = v36;
  }

  if (v37 >= 6)
  {
    if (*v35 == 1919511661 && *(v35 + 4) == 14906)
    {
      v35 += 6;
      v37 -= 6;
    }

    else if (v37 >= 0x17 && *v35 == 0x6F6D796E6F6E6128 && *(v35 + 8) == 0x73656D616E207375 && *(v35 + 15) == 0x3A3A296563617073)
    {
      v35 += 23;
      v37 -= 23;
    }
  }

  mlir::PassInstrumentor::runAfterAnalysis(a2, v35, v37, v4, *a1);
  return *(v24 + 8) + 8;
}

const char *llvm::getTypeName<mlir::DominanceInfo>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
  v6 = 69;
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

char *llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(char **a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v35 = 0;
  v7 = (a1 + 2);
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 16, &v35);
  v9 = *(a1 + 2);
  v10 = 16 * v9;
  v11 = &v8[16 * v9];
  v12 = **a3;
  v13 = **a4;
  **a4 = 0;
  *v11 = v12;
  *(v11 + 1) = v13;
  v14 = *a1;
  if (!v9)
  {
    goto LABEL_10;
  }

  v15 = (v9 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v15 < 0xB || (v14 + 8 < &v8[v10] ? (v25 = v8 + 8 >= &v14[v10]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v14 < &v8[v10 - 8] ? (v27 = v8 >= &v14[v10 - 8]) : (v27 = 1), !v27 || (v26 & 1) != 0))
  {
    v16 = v8;
    v17 = *a1;
    do
    {
LABEL_4:
      v18 = *v17;
      v19 = *(v17 + 1);
      *(v17 + 1) = 0;
      *v16 = v18;
      *(v16 + 1) = v19;
      v16 += 16;
      v17 += 16;
    }

    while (v17 != &v14[v10]);
    goto LABEL_5;
  }

  v28 = v15 + 1;
  v29 = (v15 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v16 = &v8[16 * v29];
  v17 = &v14[16 * v29];
  v30 = v29;
  v31 = v8;
  v32 = *a1;
  do
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    *(v32 + 1) = 0;
    *(v32 + 3) = 0;
    *v31 = v33;
    *(v31 + 1) = v34;
    v31 += 32;
    v32 += 32;
    v30 -= 2;
  }

  while (v30);
  if (v28 != v29)
  {
    goto LABEL_4;
  }

LABEL_5:
  v20 = v14 - 8;
  do
  {
    v21 = *&v20[v10];
    *&v20[v10] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v10 -= 16;
  }

  while (v10);
  v14 = *a1;
LABEL_10:
  v22 = v35;
  if (v14 != v7)
  {
    free(v14);
  }

  *a1 = v8;
  v23 = *(a1 + 2) + 1;
  *(a1 + 2) = v23;
  *(a1 + 3) = v22;
  return &v8[16 * v23 - 16];
}

void mlir::detail::AnalysisModel<mlir::DominanceInfo>::~AnalysisModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0AFD0;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase((a1 + 1), a2, a3, a4);
}

{
  *a1 = &unk_1F5B0AFD0;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase((a1 + 1), a2, a3, a4);
}

void sub_1DFEB56B0()
{

  operator delete(v0);
}

BOOL mlir::detail::AnalysisModel<mlir::DominanceInfo>::invalidate(uint64_t a1, const void ***a2)
{
  v3 = mlir::detail::PreservedAnalyses::isPreserved<mlir::DominanceInfo>(a2);
  if (!v3)
  {
    mlir::detail::PreservedAnalyses::unpreserve<mlir::DominanceInfo>(a2);
  }

  return !v3;
}

void mlir::detail::PreservedAnalyses::unpreserve<mlir::DominanceInfo>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      if (v4)
      {
        *v4 = -2;
        ++*(this + 6);
      }

      return;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != v2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    *(this + 5) = v8;
    *i = v3[v8];
  }
}

BOOL mlir::detail::PreservedAnalyses::isPreserved<mlir::DominanceInfo>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

llvm::SmallPtrSetImplBase *mlir::detail::PreservedAnalyses::preserveAll(llvm::SmallPtrSetImplBase *this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v2 = *this;
    if (*(this + 1) != *this)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(this, v1);
    }
  }

  else
  {
    v6 = this;
    mlir::detail::PreservedAnalyses::isAll();
    this = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (*(v6 + 1) != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(this + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(this + 4))
    {
      *(this + 5) = v3 + 1;
      v2[v3] = v1;
      return this;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return this;
}

char **mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>(char **result)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *result;
    if (result[1] != *result)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v1);
    }
  }

  else
  {
    v6 = result;
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    result = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(result + 4))
    {
      *(result + 5) = v3 + 1;
      *&v2[8 * v3] = v1;
      return result;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

char **mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>(char **result)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *result;
    if (result[1] != *result)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v1);
    }
  }

  else
  {
    v6 = result;
    mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>();
    result = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(result + 4))
    {
      *(result + 5) = v3 + 1;
      *&v2[8 * v3] = v1;
      return result;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::PostDominanceInfo>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PostDominanceInfo]";
  v6 = 73;
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

_BYTE *mlir::createInlinerPass@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = operator new(0x540uLL);
  v7 = *(a2 + 24);
  if (v7)
  {
    if (v7 == a2)
    {
      v17 = v16;
      (*(*v7 + 24))(v7, v16);
    }

    else
    {
      v17 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v14 = *a1;
  v15 = *(a1 + 8);
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  if (DWORD1(v15))
  {
    v8 = v14;
    if (v15)
    {
      v9 = 0;
      do
      {
        v10 = *(v14 + v9);
        if (v10 != -8 && v10 != 0)
        {
          v12 = *v10;
          mlir::OpPassManager::~OpPassManager((v10 + 1));
          llvm::deallocate_buffer(v10, (v12 + 17));
        }

        v9 += 8;
      }

      while (8 * v15 != v9);
    }
  }

  else
  {
    v8 = v14;
  }

  free(v8);
  result = v17;
  if (v17 == v16)
  {
    result = (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    result = (*(*v17 + 40))();
  }

  *a3 = v6;
  return result;
}

uint64_t anonymous namespace::InlinerPass::InlinerPass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F5B0B0D0;
  *&v33 = "The optimizer pipeline used for callables that do not have a dedicated optimizer pipeline in opPipelineList";
  *(&v33 + 1) = 107;
  v32 = "canonicalize";
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [13]>>(a1 + 344, (a1 + 152), "default-pipeline", 16, &v33, &v32);
  *(a1 + 344) = &unk_1F5AFC930;
  *(a1 + 576) = &unk_1F5AFC9B0;
  *(&v33 + 1) = 87;
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::ListOption<llvm::cl::desc>(a1 + 592, (a1 + 152), "op-pipelines", 12, &v33);
  *(a1 + 592) = &unk_1F5B0B1C0;
  *(a1 + 840) = &unk_1F5B0B240;
  *&v33 = "Maximum number of iterations when inlining within an SCC";
  *(&v33 + 1) = 56;
  v31 = 4;
  v32 = &v31;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 864, (a1 + 152), "max-iterations", 14, &v33, &v32);
  *(a1 + 864) = &unk_1F5AFEE68;
  *(a1 + 1056) = &unk_1F5AFEEE8;
  *&v33 = "If the ratio between the number of the operations in the callee and the number of the operations in the caller exceeds this value (in percentage), then the callee is not inlined even if it is legal to inline it";
  *(&v33 + 1) = 210;
  v31 = -1;
  v32 = &v31;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<unsigned int>>(a1 + 1072, (a1 + 152), "inlining-threshold", 18, &v33, &v32);
  *(a1 + 1072) = &unk_1F5AFEE68;
  *(a1 + 1264) = &unk_1F5AFEEE8;
  *a1 = &unk_1F5B0B030;
  v6 = *(a2 + 24);
  if (!v6)
  {
    v34 = 0;
    v7 = *(a1 + 992);
    goto LABEL_5;
  }

  if (v6 != a2)
  {
    v34 = *(a2 + 24);
    *(a2 + 24) = 0;
    v7 = *(a1 + 992);
    goto LABEL_7;
  }

  v34 = &v33;
  (*(*v6 + 24))(v6, &v33);
  v6 = v34;
  v7 = *(a1 + 992);
  if (!v34)
  {
LABEL_5:
    *(a1 + 1320) = 0;
    *(a1 + 1328) = 0x1000000000;
    *(a1 + 1304) = 0u;
LABEL_9:
    *(a1 + 1336) = v7;
    goto LABEL_10;
  }

LABEL_7:
  if (v6 != &v33)
  {
    *(a1 + 1304) = v6;
    v34 = 0;
    *(a1 + 1312) = 0u;
    *(a1 + 1328) = 0x1000000000;
    goto LABEL_9;
  }

  *(a1 + 1304) = a1 + 1280;
  (*(*v6 + 24))(v6);
  v30 = v34;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0x1000000000;
  *(a1 + 1336) = v7;
  if (v30 == &v33)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))(v30);
  }

LABEL_10:
  v8 = *(a3 + 12);
  if (v8)
  {
    v9 = *a3;
    v10 = *(a3 + 8);
    v11 = *a3;
    if (v10)
    {
      v11 = *a3;
      if (!*v9 || *v9 == -8)
      {
        do
        {
          v14 = v11[1];
          ++v11;
          v13 = v14;
          if (v14)
          {
            v15 = v13 == -8;
          }

          else
          {
            v15 = 1;
          }
        }

        while (v15);
      }
    }

    v16 = &v9[v10];
    if (v11 != v16)
    {
      v17 = *v11;
      v18 = *(a1 + 728);
      do
      {
        if (v18 >= *(a1 + 736))
        {
          v18 = std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>((a1 + 720), (v17 + 8));
        }

        else
        {
          v18 = mlir::OpPassManager::OpPassManager(v18, (v17 + 8)) + 1;
        }

        *(a1 + 728) = v18;
        do
        {
          v19 = v11[1];
          ++v11;
          v17 = v19;
          if (v19)
          {
            v20 = v17 == -8;
          }

          else
          {
            v20 = 1;
          }
        }

        while (v20);
      }

      while (v11 != v16);
      v9 = *a3;
      LODWORD(v10) = *(a3 + 8);
      v8 = *(a3 + 12);
    }

    v21 = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v22 = *(a1 + 1312);
    *(a1 + 1312) = v9;
    v23 = *(a1 + 1320);
    *(a1 + 1320) = v10;
    v24 = *(a1 + 1324);
    *(a1 + 1324) = v8;
    *(a1 + 1328) = v21;
    if (v24 && v23)
    {
      v25 = v22;
      do
      {
        v26 = *v25;
        if (*v25 != -8 && v26 != 0)
        {
          v28 = *v26;
          mlir::OpPassManager::~OpPassManager((v26 + 1));
          llvm::deallocate_buffer(v26, (v28 + 17));
        }

        ++v25;
        --v23;
      }

      while (v23);
    }

    free(v22);
  }

  return a1;
}

void anonymous namespace::InlinerPass::~InlinerPass(_anonymous_namespace_::InlinerPass *this)
{
  *this = &unk_1F5B0B030;
  v2 = this + 1280;
  if (*(this + 331))
  {
    v3 = *(this + 330);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 164) + v4);
        if (v5 != -8 && v5 != 0)
        {
          v7 = *v5;
          mlir::OpPassManager::~OpPassManager((v5 + 1));
          llvm::deallocate_buffer(v5, (v7 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 164));
  v8 = *(this + 163);
  if (v8 == v2)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  *this = &unk_1F5B0B0D0;
  *(this + 134) = &unk_1F5B3E5A8;
  v9 = *(this + 157);
  if (v9 == (this + 1232))
  {
    (*(*v9 + 32))(v9);
    *(this + 134) = &unk_1F5B3E1D8;
    v10 = *(this + 146);
    if (v10 != *(this + 145))
    {
LABEL_18:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(this + 134) = &unk_1F5B3E1D8;
    v10 = *(this + 146);
    if (v10 != *(this + 145))
    {
      goto LABEL_18;
    }
  }

  v11 = *(this + 142);
  if (v11 != this + 1152)
  {
    free(v11);
  }

  *(this + 108) = &unk_1F5B3E5A8;
  v12 = *(this + 131);
  if (v12 == (this + 1024))
  {
    (*(*v12 + 32))(v12);
    *(this + 108) = &unk_1F5B3E1D8;
    v13 = *(this + 120);
    if (v13 != *(this + 119))
    {
LABEL_25:
      free(v13);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    *(this + 108) = &unk_1F5B3E1D8;
    v13 = *(this + 120);
    if (v13 != *(this + 119))
    {
      goto LABEL_25;
    }
  }

  v14 = *(this + 116);
  if (v14 != this + 944)
  {
    free(v14);
  }

  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(this + 74);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this, v15, v16, v17);
}

{

  operator delete(v1);
}

uint64_t anonymous namespace::InlinerPass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((mlir::Pass::initializeOptions(a1, a2, a3, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v6 = (a1 + 472);
  if (*(a1 + 495) < 0)
  {
    v9 = *(a1 + 480);
    if (v9)
    {
      std::string::__init_copy_ctor_external(&v39, *v6, v9);
      v7 = a1 + 1280;
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_16:
    if (*(a1 + 352))
    {
      v13 = *(a1 + 1304);
      *(a1 + 1304) = 0;
      if (v13 == a1 + 1280)
      {
        (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      *(a1 + 1304) = 0;
    }

    goto LABEL_32;
  }

  if (!*(a1 + 495))
  {
    goto LABEL_16;
  }

  *&v39.__r_.__value_.__l.__data_ = *v6;
  v39.__r_.__value_.__r.__words[2] = *(a1 + 488);
  v7 = a1 + 1280;
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    v38 = v39;
    goto LABEL_10;
  }

LABEL_9:
  std::string::__init_copy_ctor_external(&v38, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
LABEL_10:
  v10 = operator new(0x20uLL);
  *v10 = &unk_1F5B0B550;
  *(v10 + 8) = v38;
  memset(&v38, 0, sizeof(v38));
  v41 = v10;
  v11 = *(a1 + 1304);
  *(a1 + 1304) = 0;
  if (v11 != v7)
  {
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v12 = v41;
    if (v41)
    {
      goto LABEL_14;
    }

LABEL_21:
    *(a1 + 1304) = 0;
    goto LABEL_22;
  }

  (*(*v11 + 32))(v11);
  v12 = v41;
  if (!v41)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v12 == v40)
  {
    *(a1 + 1304) = v7;
    (*(*v12 + 24))(v12, v7);
    if (v41 == v40)
    {
      (*(*v41 + 32))(v41);
    }

    else if (v41)
    {
      (*(*v41 + 40))();
    }
  }

  else
  {
    *(a1 + 1304) = v12;
    v41 = 0;
  }

LABEL_22:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_26:
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_32:
  *&v39.__r_.__value_.__l.__data_ = 0uLL;
  v39.__r_.__value_.__r.__words[2] = 0x1000000000;
  v14 = *(a1 + 720);
  v15 = *(a1 + 728);
  if (v14 == v15)
  {
    v16 = 0;
    v17 = 0;
    size = 0;
  }

  else
  {
    do
    {
      mlir::OpPassManager::OpPassManager(&v37, v14);
      v19 = mlir::OpPassManager::begin(&v37);
      if (v19 != mlir::MemRefType::getMemorySpace(&v37))
      {
        OpAnchorName = mlir::OpPassManager::getOpAnchorName(&v37);
        v22 = v21;
        v25 = llvm::StringMapImpl::hash(OpAnchorName, v21, v23, v24);
        llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager&>(&v39, OpAnchorName, v22, v25, &v37);
      }

      mlir::OpPassManager::~OpPassManager(&v37);
      ++v14;
    }

    while (v14 != v15);
    size = v39.__r_.__value_.__l.__size_;
    v17 = v39.__r_.__value_.__r.__words[0];
    v16 = v39.__r_.__value_.__r.__words[2];
  }

  memset(&v39, 0, 20);
  v26 = *(a1 + 1312);
  *(a1 + 1312) = v17;
  v27 = *(a1 + 1320);
  v28 = *(a1 + 1324);
  *(a1 + 1320) = size;
  *(a1 + 1328) = v16;
  if (v28 && v27)
  {
    v29 = v26;
    do
    {
      v30 = *v29;
      if (*v29 != -8 && v30 != 0)
      {
        v32 = *v30;
        mlir::OpPassManager::~OpPassManager((v30 + 1));
        llvm::deallocate_buffer(v30, (v32 + 17));
      }

      ++v29;
      --v27;
    }

    while (v27);
  }

  free(v26);
  *(a1 + 1336) = *(a1 + 992);
  if (HIDWORD(v39.__r_.__value_.__r.__words[1]) && LODWORD(v39.__r_.__value_.__r.__words[1]))
  {
    v33 = 0;
    do
    {
      v34 = *(v39.__r_.__value_.__r.__words[0] + v33);
      if (v34 != -8 && v34 != 0)
      {
        v36 = *v34;
        mlir::OpPassManager::~OpPassManager((v34 + 1));
        llvm::deallocate_buffer(v34, (v36 + 17));
      }

      v33 += 8;
    }

    while (8 * LODWORD(v39.__r_.__value_.__r.__words[1]) != v33);
  }

  free(v39.__r_.__value_.__l.__data_);
  return 1;
}

void anonymous namespace::InlinerPass::runOnOperation(_anonymous_namespace_::InlinerPass *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(this + 6);
  v29[0] = v2;
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v6 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>(v2 + 24, v4, *(v2 + 24));
  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  {
  }

  if ((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v8 = *(this + 6);
    v28[0] = &unk_1F5B0B610;
    v28[3] = v28;
    v29[0] = v7;
    v27[0] = &unk_1F5B0B6C0;
    v27[1] = this;
    v27[3] = v27;
    v29[1] = v6;
    v29[2] = this;
    v30 = v8;
    v32[2] = &v31;
    v32[3] = this + 1280;
    v31 = &unk_1F5B0B610;
    v33[3] = v33;
    v33[0] = &unk_1F5B0B6C0;
    v33[1] = this;
    mlir::Inliner::doInlining(v29);
  }

  v23 = 257;
  mlir::Operation::emitOpError(v7, v22, v29);
  if (v29[0])
  {
    v24 = 3;
    v25 = " was scheduled to run under the inliner, but does not define a symbol table";
    v26 = 75;
    v9 = &v24;
    v10 = v30;
    if (v31 >= HIDWORD(v31))
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v21 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 24);
        v10 = v30;
        v9 = (v30 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 24);
        v9 = &v24;
        v10 = v30;
      }
    }

    v11 = &v10[24 * v31];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    LODWORD(v31) = v31 + 1;
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v37;
      v15 = __p;
      if (v37 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v37 = v13;
      operator delete(v15);
    }

    v16 = v34;
    if (v34)
    {
      v17 = v35;
      v18 = v34;
      if (v35 != v34)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v34;
      }

      v35 = v16;
      operator delete(v18);
    }

    if (v30 != v32)
    {
      free(v30);
    }
  }

  *(this + 5) |= 4uLL;
}

llvm::StringMapImpl *mlir::impl::InlinerBase<anonymous namespace::InlinerPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x540uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B0B0D0;
  *&v10 = "The optimizer pipeline used for callables that do not have a dedicated optimizer pipeline in opPipelineList";
  *(&v10 + 1) = 107;
  v9 = "canonicalize";
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [13]>>((v4 + 344), v4 + 152, "default-pipeline", 16, &v10, &v9);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *(&v10 + 1) = 87;
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::ListOption<llvm::cl::desc>((v4 + 592), v4 + 152, "op-pipelines", 12, &v10);
  *(v4 + 74) = &unk_1F5B0B1C0;
  *(v4 + 105) = &unk_1F5B0B240;
  *&v10 = "Maximum number of iterations when inlining within an SCC";
  *(&v10 + 1) = 56;
  v8 = 4;
  v9 = &v8;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 864), v4 + 152, "max-iterations", 14, &v10, &v9);
  *(v4 + 108) = &unk_1F5AFEE68;
  *(v4 + 132) = &unk_1F5AFEEE8;
  *&v10 = "If the ratio between the number of the operations in the callee and the number of the operations in the caller exceeds this value (in percentage), then the callee is not inlined even if it is legal to inline it";
  *(&v10 + 1) = 210;
  v8 = -1;
  v9 = &v8;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<unsigned int>>((v4 + 1072), v4 + 152, "inlining-threshold", 18, &v10, &v9);
  *(v4 + 134) = &unk_1F5AFEE68;
  *(v4 + 158) = &unk_1F5AFEEE8;
  *v4 = &unk_1F5B0B030;
  v6 = *(a1 + 1304);
  if (v6)
  {
    if (v6 == a1 + 1280)
    {
      *(v4 + 163) = v4 + 1280;
      (*(*v6 + 24))(v6);
    }

    else
    {
      *(v4 + 163) = (*(*v6 + 16))(v6);
    }
  }

  else
  {
    *(v4 + 163) = 0;
  }

  result = llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap((v4 + 1312), (a1 + 1312));
  *(v4 + 334) = *(a1 + 1336);
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [13]>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, const char **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v23[0] = a3;
  v23[1] = a4;
  v26 = a2;
  v27 = 0;
  v8 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [13]>>(a1, v23, &v26, a5, a6);
  v9 = v8 + 232;
  *(v8 + 240) = 0;
  *v8 = &unk_1F5AFC9F0;
  *(v8 + 232) = &unk_1F5AFCA70;
  v11 = *(a2 + 21);
  v10 = *(a2 + 22);
  if (v11 >= v10)
  {
    v13 = *(a2 + 20);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v19 = operator new(8 * v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v19[8 * v15];
    *v20 = v9;
    v12 = v20 + 1;
    memcpy(v19, v13, v14);
    *(a2 + 20) = v19;
    *(a2 + 21) = v12;
    *(a2 + 22) = &v19[8 * v18];
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 8;
  }

  *(a2 + 21) = v12;
  v24[0] = &unk_1F5B0B140;
  v24[1] = a1;
  v28 = &v26;
  v25 = v24;
  v26 = &unk_1F5B0B140;
  v27 = a1;
  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](&v26, a1 + 200);
  if (v28 != &v26)
  {
    if (v28)
    {
      (*(*v28 + 5))();
    }

    v21 = v25;
    if (v25 != v24)
    {
      goto LABEL_19;
    }

LABEL_22:
    (*(*v21 + 32))(v21);
    return a1;
  }

  (*(*v28 + 4))(v28);
  v21 = v25;
  if (v25 == v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  return a1;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [13]>>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, const char **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v16 = *(a1 + 72);
  if (v16 >= *(a1 + 76))
  {
    v18 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v16 + 1, 8);
    GeneralCategory = v18;
    LODWORD(v16) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v16) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 152) = &unk_1F5B3E2B0;
  *(a1 + 160) = 0;
  *a1 = &unk_1F5B3E658;
  *(a1 + 192) = &unk_1F5B3E560;
  *(a1 + 200) = &unk_1F5AFCAD0;
  *(a1 + 224) = a1 + 200;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v13, v14, v15);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::initializer<char [13]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a5, a1);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void llvm::cl::initializer<char [13]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(const char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = strlen(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    p_dst = operator new(v7);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_9;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
LABEL_9:
    memmove(p_dst, v3, v5);
  }

  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  std::string::operator=((a2 + 128), &__dst);
  *(a2 + 184) = 1;
  std::string::operator=((a2 + 160), &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA13_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0B140;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA13_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0B140;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA13_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::ListOption<llvm::cl::desc>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v22[0] = a3;
  v22[1] = a4;
  v21[0] = a2;
  v21[1] = 0;
  v7 = llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v22, v21, a5);
  v8 = v7 + 248;
  *(v7 + 256) = 0;
  *v7 = &unk_1F5B0B318;
  *(v7 + 248) = &unk_1F5B0B398;
  *(v7 + 264) = &unk_1F5B01CF0;
  v10 = *(a2 + 21);
  v9 = *(a2 + 22);
  if (v10 >= v9)
  {
    v12 = *(a2 + 20);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v18 = operator new(8 * v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v18[8 * v14];
    *v19 = v8;
    v11 = v19 + 1;
    memcpy(v18, v12, v13);
    *(a2 + 20) = v18;
    *(a2 + 21) = v11;
    *(a2 + 22) = &v18[8 * v17];
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v10 = v8;
    v11 = v10 + 8;
  }

  *(a2 + 21) = v11;
  return a1;
}