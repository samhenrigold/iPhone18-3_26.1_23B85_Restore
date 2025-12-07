void *mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v40 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v40);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v35 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v34[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v40);
    v34[1] = v10;
    if (mlir::hasNonIdentityLayout(*(*(*(v35 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v36 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v11 = *(v36 + 36) ? v36 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::memref::CollapseShapeOp::getReassociationIndices(&v35, &v40);
    v13 = v40;
    v14 = v41;
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v36, &v37);
    mlir::composeReassociationIndices(v13, v14, v37, v38, &v43);
    v15 = v37;
    if (v38)
    {
      v16 = v37 + 32 * v38 - 16;
      v17 = -32 * v38;
      do
      {
        v18 = *(v16 - 2);
        if (v16 != v18)
        {
          free(v18);
        }

        v16 -= 32;
        v17 += 32;
      }

      while (v17);
      v15 = v37;
    }

    if (v15 != &v39)
    {
      free(v15);
    }

    v19 = v40;
    if (v41)
    {
      v20 = v40 + 32 * v41 - 16;
      v21 = -32 * v41;
      do
      {
        v22 = *(v20 - 2);
        if (v20 != v22)
        {
          free(v22);
        }

        v20 -= 32;
        v21 += 32;
      }

      while (v21);
      v19 = v40;
    }

    if (v19 != v42)
    {
      free(v19);
    }

    if (v46 != 1)
    {
      return 0;
    }

    else
    {
      v40 = *(v36 + 16 * ((*(v36 + 44) >> 23) & 1) + 72);
      v23 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v40);
      v25 = v24;
      if ((*(v36 + 46) & 0x80) != 0)
      {
        v26 = *(v36 + 72);
        v27 = *(v36 + 68) - 1;
      }

      else
      {
        v26 = 0;
        v27 = -1;
      }

      mlir::ValueRange::ValueRange(&v37, v26 + 32, v27);
      mlir::getMixedValues(v23, v25, v37, v38, a3 + 1, &v40);
      v28 = v36;
      v37 = *(*(v35 + 72) + 24);
      v29 = mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3 + 1, *(v36 + 24), v34, &v37, &v43, &v40);
      ((*a3)[1])(a3, v28, v29);
      if (v40 != v42)
      {
        free(v40);
      }

      if (v46)
      {
        v30 = v43;
        if (v44)
        {
          v31 = &v43[4 * v44 - 2];
          v32 = -32 * v44;
          do
          {
            v33 = *(v31 - 16);
            if (v31 != v33)
            {
              free(v33);
            }

            v31 -= 32;
            v32 += 32;
          }

          while (v32);
          v30 = v43;
        }

        if (v30 != &v45)
        {
          free(v30);
        }
      }

      return 1;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6);
  ((*a1)[1])(a1, a2, v8);
  return v8;
}

uint64_t std::optional<llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 32 * v3;
      v5 = v2 + v4 - 16;
      v6 = -v4;
      do
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }

        v5 -= 32;
        v6 += 32;
      }

      while (v6);
      v2 = *a1;
    }

    if (v2 != (a1 + 16))
    {
      free(v2);
    }
  }

  return a1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::memref::ExpandShapeOp::build(a1, v21, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void *mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

void mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v67[16] = *MEMORY[0x1E69E9840];
  v56 = a2;
  v65 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id;
  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id ? DefiningOp : 0;
  v55 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = DefiningOp;
  v65 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v65);
  v54[1] = v10;
  v11 = *(a2 + 36) ? a2 - 16 : 0;
  v65 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v53[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v65);
  v53[1] = v12;
  if (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v13 = *(v9 + 36) ? v9 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v54);
  v16 = v15;
  mlir::ShapedType::getShape(v53);
  if (v54[0] == v53[0])
  {
    return 0;
  }

  v18 = v17;
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v55, &v65);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v56, &v62);
  if (v16 <= v18)
  {
    v31 = v62;
    v32 = v63;
    v33 = v65;
    v34 = v66;
    Shape = mlir::ShapedType::getShape(v53);
    v37 = v36;
    v38 = mlir::ShapedType::getShape(v54);
    mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(v31, v32, v33, v34, Shape, v37, v60, v38, v39);
    if (v61 == 1)
    {
      v58[0] = *(v56 + 16 * ((*(v56 + 44) >> 23) & 1) + 72);
      v40 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v58);
      v42 = v41;
      if ((*(v56 + 46) & 0x80) != 0)
      {
        v43 = *(v56 + 72);
        v44 = *(v56 + 68) - 1;
      }

      else
      {
        v43 = 0;
        v44 = -1;
      }

      mlir::ValueRange::ValueRange(v57, v43 + 32, v44);
      mlir::getMixedValues(v40, v42, v57[0], v57[1], a3 + 1, v58);
      v57[0] = *(*(v55 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3, v56, v53, v57, v60, v58);
      if (v58[0] != v59)
      {
        free(v58[0]);
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v60;
  }

  else
  {
    v19 = v65;
    v20 = v66;
    v21 = v62;
    v22 = v63;
    v23 = mlir::ShapedType::getShape(v54);
    v25 = v24;
    v26 = mlir::ShapedType::getShape(v53);
    mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(v19, v20, v21, v22, v23, v25, v58, v26, v27);
    if (v59[32] == 1)
    {
      v60[0] = *(*(v55 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v56, v53, v60, v58);
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v58;
  }

  std::optional<llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>>::~optional(v29);
  v45 = v62;
  if (v63)
  {
    v46 = v62 + 32 * v63 - 16;
    v47 = -32 * v63;
    do
    {
      v48 = *(v46 - 2);
      if (v46 != v48)
      {
        free(v48);
      }

      v46 -= 32;
      v47 += 32;
    }

    while (v47);
    v45 = v62;
  }

  if (v45 != &v64)
  {
    free(v45);
  }

  v49 = v65;
  if (v66)
  {
    v50 = &v65[4 * v66 - 2];
    v51 = -32 * v66;
    do
    {
      v52 = *(v50 - 2);
      if (v50 != v52)
      {
        free(v52);
      }

      v50 -= 4;
      v51 += 32;
    }

    while (v51);
    v49 = v65;
  }

  if (v49 != v67)
  {
    free(v49);
  }

  return v28;
}

void mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, unint64_t a9)
{
  v9 = a5;
  v10 = a8;
  v68[16] = *MEMORY[0x1E69E9840];
  v66 = v68;
  v67 = 0x400000000;
  if (!a2)
  {
    mlir::getReassociationIndicesForCollapse(a5, a6, a8, a9, a7);
    v47 = v66;
    goto LABEL_67;
  }

  v11 = a3;
  v12 = a1;
  v57 = &a1[4 * a2];
  v58 = a3 + 32 * a4;
  v55 = a5 + 16;
  v54 = vnegq_f64(0);
LABEL_4:
  if (v11 != v58)
  {
    v13 = **v12;
    v14 = *(v12 + 2);
    v15 = v9 + 8 * v13;
    v16 = *(v11 + 8);
    v17 = (v10 + 8 * **v11);
    if (v14 != v16)
    {
LABEL_18:
      mlir::getReassociationIndicesForCollapse(v9 + 8 * v13, v14, v17, v16, &v62);
      if ((v65 & 1) == 0)
      {
LABEL_61:
        *a7 = 0;
        *(a7 + 48) = 0;
        v47 = v66;
        v48 = v67;
        if (!v67)
        {
          goto LABEL_67;
        }

        goto LABEL_62;
      }

      v28 = v62;
      if (!v63)
      {
        v10 = a8;
        v9 = a5;
LABEL_52:
        if (v28 != v64)
        {
          goto LABEL_55;
        }

        goto LABEL_3;
      }

      v29 = v62 + 32 * v63;
      while (1)
      {
        v59 = v61;
        v60 = 0x200000000;
        v30 = *(v28 + 2);
        if (v30)
        {
          v31 = 0;
          v32 = *v28;
          v33 = 8 * v30;
          do
          {
            v34 = *v32;
            v35 = **v12;
            if (v31 >= HIDWORD(v60))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v31 + 1, 8);
              v31 = v60;
            }

            *(v59 + v31) = v35 + v34;
            v31 = v60 + 1;
            LODWORD(v60) = v60 + 1;
            ++v32;
            v33 -= 8;
          }

          while (v33);
        }

        v36 = v66;
        if (v67 >= HIDWORD(v67))
        {
          if (v66 <= &v59 && v66 + 32 * v67 > &v59)
          {
            v43 = &v59 - v66;
            llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v66, v67 + 1);
            v36 = v66;
            v37 = (v66 + v43);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v66, v67 + 1);
            v37 = &v59;
            v36 = v66;
          }
        }

        else
        {
          v37 = &v59;
        }

        v38 = &v36[32 * v67];
        v39 = v38 + 2;
        *v38 = v38 + 2;
        v38[1] = 0x200000000;
        v40 = *(v37 + 2);
        if (v38 == v37 || v40 == 0)
        {
          goto LABEL_39;
        }

        if (v40 < 3)
        {
          break;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v38, v38 + 2, *(v37 + 2), 8);
        v42 = *(v37 + 2);
        if (v42)
        {
          v39 = *v38;
LABEL_37:
          memcpy(v39, *v37, 8 * v42);
        }

        *(v38 + 2) = v40;
LABEL_39:
        LODWORD(v67) = v67 + 1;
        if (v59 != v61)
        {
          free(v59);
        }

        v28 += 32;
        if (v28 == v29)
        {
          v10 = a8;
          v9 = a5;
          if ((v65 & 1) == 0)
          {
            goto LABEL_3;
          }

          v28 = v62;
          if (!v63)
          {
            goto LABEL_52;
          }

          v44 = v62 + 32 * v63 - 16;
          v45 = -32 * v63;
          do
          {
            v46 = *(v44 - 2);
            if (v44 != v46)
            {
              free(v46);
            }

            v44 -= 32;
            v45 += 32;
          }

          while (v45);
          v28 = v62;
          if (v62 != v64)
          {
LABEL_55:
            free(v28);
          }

LABEL_3:
          v12 += 4;
          v11 += 32;
          if (v12 == v57)
          {
            goto LABEL_57;
          }

          goto LABEL_4;
        }
      }

      v42 = *(v37 + 2);
      goto LABEL_37;
    }

    if (memcmp((v9 + 8 * v13), v17, 8 * v14))
    {
      goto LABEL_61;
    }

    if (!v14)
    {
LABEL_17:
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v66, v12);
      goto LABEL_18;
    }

    v18 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v18 >= 3)
    {
      v21 = v18 + 1;
      v22 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v20 = (v15 + 8 * v22);
      v23 = (v55 + 8 * v13);
      v24 = 0uLL;
      v25 = v22;
      v26 = 0uLL;
      do
      {
        v24 = vsubq_s64(v24, vceqq_s64(v23[-1], v54));
        v26 = vsubq_s64(v26, vceqq_s64(*v23, v54));
        v23 += 2;
        v25 -= 4;
      }

      while (v25);
      v19 = vaddvq_s64(vaddq_s64(v26, v24));
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
      v20 = (v9 + 8 * v13);
    }

    do
    {
      v27 = *v20++;
      if (v27 == 0x8000000000000000)
      {
        ++v19;
      }
    }

    while (v20 != (v15 + 8 * v14));
LABEL_16:
    if (v19 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_17;
  }

LABEL_57:
  *a7 = a7 + 16;
  *(a7 + 8) = 0x100000000;
  if (v67)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a7, &v66);
  }

  *(a7 + 48) = 1;
  v47 = v66;
  v48 = v67;
  if (v67)
  {
LABEL_62:
    v49 = 4 * v48;
    v50 = &v47[v49 - 2];
    v51 = -(v49 * 8);
    do
    {
      v52 = *(v50 - 16);
      if (v50 != v52)
      {
        free(v52);
      }

      v50 -= 32;
      v51 += 32;
    }

    while (v51);
    v47 = v66;
  }

LABEL_67:
  if (v47 != v68)
  {
    free(v47);
  }
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v27, &v29, v24);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a5;
  v15 = *(a5 + 8);
  v25 = *a4;
  v26 = v13;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, v14, v15);
  v17 = mlir::Attribute::getContext(v27);
  v31 = 261;
  v29 = "reassociation";
  v30 = 13;
  v18 = mlir::StringAttr::get(v17, &v29);
  ZinMirCacheTensors::ZinMirCacheTensors(v24, v18, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(&v28, v24[0], v24[1]);
  v19 = mlir::ValueRange::ValueRange(&v29, &v26, 1uLL);
  mlir::memref::CollapseShapeOp::build(v19, v27, v29, v30, &v25, 1uLL, 0, 0);
  v20 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v21;
}

void *mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v31 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v10 = result;
    v36 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v36);
    v30[1] = v11;
    if (mlir::hasNonIdentityLayout(*(*(*(v10 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v12 = *(a2 + 36) ? a2 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::memref::CollapseShapeOp::getReassociationIndices(&v31, &v36);
    v14 = v36;
    v15 = v37;
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v32, &v33);
    mlir::composeReassociationIndices(v14, v15, v33, v34, &v39);
    v16 = v33;
    if (v34)
    {
      v17 = v33 + 32 * v34 - 16;
      v18 = -32 * v34;
      do
      {
        v19 = *(v17 - 2);
        if (v17 != v19)
        {
          free(v19);
        }

        v17 -= 32;
        v18 += 32;
      }

      while (v18);
      v16 = v33;
    }

    if (v16 != &v35)
    {
      free(v16);
    }

    v20 = v36;
    if (v37)
    {
      v21 = v36 + 32 * v37 - 16;
      v22 = -32 * v37;
      do
      {
        v23 = *(v21 - 2);
        if (v21 != v23)
        {
          free(v23);
        }

        v21 -= 32;
        v22 += 32;
      }

      while (v22);
      v20 = v36;
    }

    if (v20 != &v38)
    {
      free(v20);
    }

    if (v42 != 1)
    {
      return 0;
    }

    else
    {
      v24 = v32;
      v36 = *(*(v31 + 72) + 24);
      v25 = mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3 + 1, *(v32 + 24), v30, &v36, &v39);
      ((*a3)[1])(a3, v24, v25);
      if (v42)
      {
        v26 = v39;
        if (v40)
        {
          v27 = &v39[4 * v40 - 2];
          v28 = -32 * v40;
          do
          {
            v29 = *(v27 - 16);
            if (v27 != v29)
            {
              free(v29);
            }

            v27 -= 32;
            v28 += 32;
          }

          while (v28);
          v26 = v39;
        }

        if (v26 != &v41)
        {
          free(v26);
        }
      }

      return 1;
    }
  }

  return result;
}

void *mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>::~ComposeCollapseOfExpandOp(void *a1)
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

void mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>::~ComposeCollapseOfExpandOp(void *a1)
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

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v54[16] = *MEMORY[0x1E69E9840];
  v42 = a2;
  v52 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v52);
  if (!DefiningOp)
  {
    return 0;
  }

  v5 = *(*(DefiningOp + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
  v7 = v5 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id ? DefiningOp : 0;
  v41 = v7;
  if (!v6)
  {
    return 0;
  }

  v52 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v40[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v52);
  v40[1] = v8;
  v9 = *(v42 + 36) ? v42 - 16 : 0;
  v52 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v39[0] = mlir::BaseMemRefType::operator mlir::ShapedType(&v52);
  v39[1] = v10;
  if (mlir::hasNonIdentityLayout(*(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v41 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v11 = *(v41 + 36) ? v41 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v40);
  v14 = v13;
  mlir::ShapedType::getShape(v39);
  if (v40[0] == v39[0])
  {
    return 0;
  }

  v16 = v15;
  v52 = v54;
  v53 = 0x400000000;
  v49 = v51;
  v50 = 0x400000000;
  if (v14 <= v15)
  {
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v42, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v41, &v46);
  }

  else
  {
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v41, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v42, &v46);
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v49, &v46);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
  v46 = v48;
  v47 = 0x400000000;
  if (v50)
  {
    v19 = 0;
    v20 = v49;
    v21 = v49 + 32 * v50;
    while (1)
    {
      v22 = 0;
      v43 = v45;
      v44 = 0x200000000;
      v23 = 4 * v19;
      while (1)
      {
        if (v19 >= v53)
        {
LABEL_30:
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v46, &v43);
          v25 = 1;
          v26 = v43;
          if (v43 == v45)
          {
            goto LABEL_32;
          }

LABEL_31:
          free(v26);
          goto LABEL_32;
        }

        v24 = *(v52[v23] + 8 * LODWORD(v52[v23 + 1]) - 8);
        if (v24 > *(*v20 + 8 * *(v20 + 2) - 8))
        {
          break;
        }

        if (v22 >= HIDWORD(v44))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v22 + 1, 8);
          v22 = v44;
        }

        *(v43 + v22) = v19;
        v22 = v44 + 1;
        LODWORD(v44) = v44 + 1;
        v23 += 4;
        ++v19;
        if (v24 == *(*v20 + 8 * *(v20 + 2) - 8))
        {
          goto LABEL_30;
        }
      }

      v25 = 0;
      v26 = v43;
      if (v43 != v45)
      {
        goto LABEL_31;
      }

LABEL_32:
      if ((v25 & 1) == 0)
      {
        break;
      }

      v20 += 32;
      if (v20 == v21)
      {
        goto LABEL_37;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_37:
    if (v14 <= v16)
    {
      v43 = *(*(v41 + 72) + 24);
      if (v14 < v16)
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, v42, v39, &v43, &v46);
      }

      else
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(a3, v42, v39, &v43);
      }
    }

    else
    {
      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v42, v39, &v43, &v46);
    }

    v17 = 1;
  }

  v27 = v46;
  if (v47)
  {
    v28 = v46 + 32 * v47 - 16;
    v29 = -32 * v47;
    do
    {
      v30 = *(v28 - 2);
      if (v28 != v30)
      {
        free(v30);
      }

      v28 -= 32;
      v29 += 32;
    }

    while (v29);
    v27 = v46;
  }

  if (v27 != v48)
  {
    free(v27);
  }

  v31 = v49;
  if (v50)
  {
    v32 = v49 + 32 * v50 - 16;
    v33 = -32 * v50;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      v32 -= 32;
      v33 += 32;
    }

    while (v33);
    v31 = v49;
  }

  if (v31 != v51)
  {
    free(v31);
  }

  v35 = v52;
  if (v53)
  {
    v36 = &v52[4 * v53 - 2];
    v37 = -32 * v53;
    do
    {
      v38 = *(v36 - 2);
      if (v36 != v38)
      {
        free(v38);
      }

      v36 -= 4;
      v37 += 32;
    }

    while (v37);
    v35 = v52;
  }

  if (v35 != v54)
  {
    free(v35);
  }

  return v17;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  (*(*a1 + 1))(a1, a2, v7);
  return v7;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::memref::ExpandShapeOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id)
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

void CollapseShapeOpMemRefCastFolder::~CollapseShapeOpMemRefCastFolder(CollapseShapeOpMemRefCastFolder *this)
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

uint64_t CollapseShapeOpMemRefCastFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v32[16] = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 72) + 24);
  v29 = a2;
  v30 = v4;
  result = mlir::Value::getDefiningOp(&v30);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
    {
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      result = mlir::memref::CastOp::canFoldIntoConsumerOp(v6);
      if (result)
      {
        v7 = *(*(*(v6 + 72) + 24) + 8);
        mlir::memref::CollapseShapeOp::getReassociationIndices(&v29, &v30);
        v8 = mlir::memref::CollapseShapeOp::computeCollapsedType(v7 & 0xFFFFFFFFFFFFFFF8, v30, v31);
        v9 = v30;
        if (v31)
        {
          v10 = v30 + 32 * v31 - 16;
          v11 = -32 * v31;
          do
          {
            v12 = *(v10 - 2);
            if (v10 != v12)
            {
              free(v12);
            }

            v10 -= 32;
            v11 += 32;
          }

          while (v11);
          v9 = v30;
        }

        if (v9 != v32)
        {
          free(v9);
        }

        if (*(v29 + 36))
        {
          v13 = v29 - 16;
        }

        else
        {
          v13 = 0;
        }

        if (v8 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          v14 = v29;
          ((*a3)[5])(a3, v29);
          v15 = *(v29 + 72);
          v16 = *(*(v6 + 72) + 24);
          v17 = v15[1];
          if (v17)
          {
            v18 = *v15;
            *v17 = *v15;
            if (v18)
            {
              *(v18 + 8) = v17;
            }
          }

          v15[3] = v16;
          v15[1] = v16;
          v19 = *v16;
          *v15 = *v16;
          if (v19)
          {
            *(v19 + 8) = v15;
          }

          *v16 = v15;
          ((*a3)[6])(a3, v14);
        }

        else
        {
          v20 = *(v29 + 24);
          v27 = *(*(v6 + 72) + 24);
          mlir::memref::CollapseShapeOp::getReassociationIndices(&v29, &v30);
          v28 = mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::detail::TypedValue<mlir::BaseMemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>>(a3 + 1, v20, &v27, &v30) - 16;
          v21 = v30;
          if (v31)
          {
            v22 = v30 + 32 * v31 - 16;
            v23 = -32 * v31;
            do
            {
              v24 = *(v22 - 2);
              if (v22 != v24)
              {
                free(v24);
              }

              v22 -= 32;
              v23 += 32;
            }

            while (v23);
            v21 = v30;
          }

          if (v21 != v32)
          {
            free(v21);
          }

          v25 = v29;
          v30 = (*(v29 - 8) & 0xFFFFFFFFFFFFFFF8);
          v26 = mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a3 + 1), *(v29 + 24), &v30, &v28);
          ((*a3)[1])(a3, v25, v26);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::detail::TypedValue<mlir::BaseMemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::memref::CollapseShapeOp::build(a1, v17, *a3, *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id)
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

uint64_t llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(uint64_t a1, unsigned int a2, mlir::ArrayAttr *this)
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a1;
    v5 = a1 + 32 * a2;
    v25 = vnegq_f64(0);
    while (1)
    {
      __dst = v28;
      v27 = 0x200000000;
      v7 = *(v4 + 8);
      if (&__dst != v4 && v7 != 0)
      {
        break;
      }

LABEL_16:
      Value = mlir::ArrayAttr::getValue(this);
      if (!v27)
      {
        v16 = 1;
        if (__dst == v28)
        {
          goto LABEL_3;
        }

LABEL_28:
        free(__dst);
        goto LABEL_3;
      }

      v12 = (Value + 8 * *__dst);
      v13 = (v27 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v13 >= 3)
      {
        v17 = v13 + 1;
        v18 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v15 = &v12->i64[v18];
        v19 = v12 + 1;
        v20 = 0uLL;
        v21 = v18;
        v22 = 0uLL;
        do
        {
          v20 = vsubq_s64(v20, vceqq_s64(v19[-1], v25));
          v22 = vsubq_s64(v22, vceqq_s64(*v19, v25));
          v19 += 2;
          v21 -= 4;
        }

        while (v21);
        v14 = vaddvq_s64(vaddq_s64(v22, v20));
        if (v17 == v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v15 = v12;
      }

      do
      {
        v23 = *v15++;
        if (v23 == 0x8000000000000000)
        {
          ++v14;
        }
      }

      while (v15 != (v12 + 8 * v27));
LABEL_27:
      v16 = v14 < 2;
      if (__dst != v28)
      {
        goto LABEL_28;
      }

LABEL_3:
      v4 += 32;
      if (v4 == v5 || !v16)
      {
        return v16;
      }
    }

    v9 = v28;
    v10 = *(v4 + 8);
    if (v7 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v28, *(v4 + 8), 8);
      v10 = *(v4 + 8);
      if (!v10)
      {
LABEL_15:
        LODWORD(v27) = v7;
        goto LABEL_16;
      }

      v9 = __dst;
    }

    memcpy(v9, *v4, 8 * v10);
    goto LABEL_15;
  }

  return 1;
}

void *mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::memref::SubViewOp,SubViewReturnTypeCanonicalizer,SubViewCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::memref::SubViewOp,SubViewReturnTypeCanonicalizer,SubViewCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

uint64_t SubViewReturnTypeCanonicalizer::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v55[7] = *MEMORY[0x1E69E9840];
  v47 = a2;
  v9 = mlir::memref::SubViewOp::inferResultType(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return 0;
  }

  v46 = v9;
  mlir::memref::SubViewOp::getDroppedDims(&v47, &v45);
  v10 = v45;
  if (v45)
  {
    if (((v45 >> 1) & ~(-1 << (v45 >> 58))) != 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v14 = v46;
    if (v45)
    {
      return v14;
    }

    goto LABEL_51;
  }

  v11 = *(v45 + 8);
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = *v45;
  v13 = 8 * v11;
  while (!*v12)
  {
    ++v12;
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_27;
    }
  }

LABEL_10:
  mlir::getStridesAndOffset(v46, &v54);
  v51 = v53;
  v52 = 0x600000000;
  v48 = v50;
  v49 = 0x600000000;
  if (a6 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (v10)
    {
      v17 = (v10 >> 1) & ~(-1 << (v10 >> 58));
      do
      {
        if (((v17 >> v16) & 1) == 0)
        {
          v22 = v54[v16];
          v23 = v49;
          if (v49 >= HIDWORD(v49))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v49 + 1, 8);
            v23 = v49;
          }

          *(v48 + v23) = v22;
          LODWORD(v49) = v49 + 1;
          v24 = *(mlir::ArrayAttr::getValue(&v46) + 8 * v16);
          v25 = v52;
          if (v52 >= HIDWORD(v52))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v52 + 1, 8);
            v25 = v52;
          }

          *(v51 + v25) = v24;
          v15 = v52 + 1;
          LODWORD(v52) = v52 + 1;
        }

        ++v16;
      }

      while (a6 != v16);
    }

    else
    {
      do
      {
        if (((*(*v10 + 8 * (v16 >> 6)) >> v16) & 1) == 0)
        {
          v18 = v54[v16];
          v19 = v49;
          if (v49 >= HIDWORD(v49))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v49 + 1, 8);
            v19 = v49;
          }

          *(v48 + v19) = v18;
          LODWORD(v49) = v49 + 1;
          v20 = *(mlir::ArrayAttr::getValue(&v46) + 8 * v16);
          v21 = v52;
          if (v52 >= HIDWORD(v52))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v52 + 1, 8);
            v21 = v52;
          }

          *(v51 + v21) = v20;
          v15 = v52 + 1;
          LODWORD(v52) = v52 + 1;
        }

        ++v16;
      }

      while (a6 != v16);
    }
  }

  v26 = v51;
  v27 = v15;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v46);
  Context = mlir::Attribute::getContext(&v46);
  v30 = mlir::StridedLayoutAttr::get(Context, v55[6], v48, v49);
  v31 = v30;
  if (!v30)
  {
    goto LABEL_43;
  }

  v32 = *v30;
  {
    mlir::memref::ExpandShapeOp::computeExpandedType();
    v33 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    if (v35)
    {
      goto LABEL_33;
    }

LABEL_43:
    v42 = 0;
    goto LABEL_44;
  }

  v33 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  if (!v35)
  {
    goto LABEL_43;
  }

LABEL_33:
  v36 = v34;
  v37 = v35;
  do
  {
    v38 = v37 >> 1;
    v39 = &v36[2 * (v37 >> 1)];
    v41 = *v39;
    v40 = v39 + 2;
    v37 += ~(v37 >> 1);
    if (v41 < v33)
    {
      v36 = v40;
    }

    else
    {
      v37 = v38;
    }
  }

  while (v37);
  if (v36 == &v34[2 * v35] || *v36 != v33)
  {
    goto LABEL_43;
  }

  v42 = v36[1];
LABEL_44:
  MemorySpace = mlir::MemRefType::getMemorySpace(&v46);
  v14 = mlir::MemRefType::get(v26, v27, RHS, v31, v42, MemorySpace);
  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != v55)
  {
    free(v54);
  }

  v10 = v45;
  if ((v45 & 1) == 0)
  {
LABEL_51:
    if (v10)
    {
      if (*v10 != v10 + 16)
      {
        free(*v10);
      }

      MEMORY[0x1AC55A070](v10, 0x1080C40EF38A13ELL);
    }
  }

  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::memref::SubViewOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
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

void anonymous namespace::SubViewOpMemRefCastFolder::~SubViewOpMemRefCastFolder(_anonymous_namespace_::SubViewOpMemRefCastFolder *this)
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

uint64_t anonymous namespace::SubViewOpMemRefCastFolder::matchAndRewrite(uint64_t DefiningOp, uint64_t a2, mlir::MLIRContext **a3)
{
  v130[6] = *MEMORY[0x1E69E9840];
  v110 = a2;
  v4 = *(a2 + 68);
  if (v4)
  {
    v5 = (*(a2 + 72) + 24);
    while (1)
    {
      v6 = *v5;
      ZinIrHalH13g::~ZinIrHalH13g(DefiningOp);
      v128 = v6;
      DefiningOp = mlir::Value::getDefiningOp(&v128);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v7);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v5 += 4;
      if (!--v4)
      {
        a2 = v110;
        break;
      }
    }
  }

  v128 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v128);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v9 = result;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  result = mlir::memref::CastOp::canFoldIntoConsumerOp(v9);
  if (!result)
  {
    return result;
  }

  if (*(v110 + 36))
  {
    v10 = v110 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8);
  v12 = *(*(*(v110 + 72) + 24) + 8);
  v13 = *(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v110, &v122);
  v14 = v122;
  v15 = v123;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v110, &v119);
  v16 = v119;
  v17 = v120;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v110, &v116);
  v115 = v13;
  v114 = mlir::memref::SubViewOp::inferResultType(v13, v14, v15, v16, v17, v116, v117);
  computeMemRefRankReductionMask(&v112, v12 & 0xFFFFFFFFFFFFFFF8, v11 & 0xFFFFFFFFFFFFFFF8, v16, v17);
  v18 = 0;
  if (v113 == 1)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v114);
    v128 = v130;
    v129 = 0x600000000;
    v125 = v127;
    v126 = 0x600000000;
    mlir::ArrayAttr::getValue(&v114);
    v20 = v112;
    if (v112)
    {
      v26 = vcnt_s8(((v112 >> 1) & ~(-1 << (v112 >> 58))));
      v26.i16[0] = vaddlv_u8(v26);
      v27 = v26.i32[0];
      goto LABEL_30;
    }

    v21 = *(v112 + 8);
    if (!v21)
    {
      v27 = 0;
      goto LABEL_30;
    }

    v22 = *v112;
    v23 = (v21 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v23 >= 7)
    {
      v28 = v23 + 1;
      v29 = (v23 + 1) & 0x3FFFFFFFFFFFFFF8;
      v25 = &v22[v29];
      v30 = &v22[4];
      v31 = 0uLL;
      v32 = v29;
      v33 = 0uLL;
      do
      {
        v34 = v30[-2];
        v35 = v30[-1];
        v36 = *v30;
        v37 = v30[1];
        v30 += 4;
        v31 = vaddq_s32(v31, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v34)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v35))))));
        v33 = vaddq_s32(v33, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v36)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v37))))));
        v32 -= 8;
      }

      while (v32);
      v24 = vaddvq_s32(vaddq_s32(v33, v31));
      if (v28 == v29)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v24 = 0;
      v25 = *v112;
    }

    v38 = &v22[v21];
    do
    {
      v39 = *v25++;
      v40 = vcnt_s8(v39);
      v40.i16[0] = vaddlv_u8(v40);
      v24 += v40.i32[0];
    }

    while (v25 != v38);
LABEL_29:
    v27 = v24;
LABEL_30:
    v41 = (v19 - v27);
    if (v41 > HIDWORD(v129))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v130, v41, 8);
    }

    if (v41 > HIDWORD(v126))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v41, 8);
    }

    mlir::ArrayAttr::getValue(&v114);
    v43 = v42;
    Value = mlir::ArrayAttr::getValue(&v114);
    v46 = v45;
    AttrData = mlir::OpaqueAttr::getAttrData(&RawStringData);
    if (v43 && v46 && v48)
    {
      v49 = 8 * v48;
      v50 = 8 * v46;
      v51 = 0;
      if (v20)
      {
        v60 = (v20 >> 1) & ~(-1 << (v20 >> 58));
        v61 = v49 - 8;
        v62 = v50 - 8;
        v63 = v43 - 1;
        do
        {
          if (((v60 >> v51) & 1) == 0)
          {
            v64 = *(Value + 8 * v51);
            v65 = v129;
            if (v129 >= HIDWORD(v129))
            {
              v108 = AttrData;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v130, v129 + 1, 8);
              AttrData = v108;
              v65 = v129;
            }

            *(v128 + v65) = v64;
            LODWORD(v129) = v129 + 1;
            v66 = *(AttrData + 8 * v51);
            v67 = v126;
            if (v126 >= HIDWORD(v126))
            {
              v109 = AttrData;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v126 + 1, 8);
              AttrData = v109;
              v67 = v126;
            }

            *(v125 + v67) = v66;
            LODWORD(v126) = v126 + 1;
          }

          if (v63 == v51)
          {
            break;
          }

          if (!v62)
          {
            break;
          }

          ++v51;
          v68 = v61;
          v61 -= 8;
          v62 -= 8;
        }

        while (v68);
      }

      else
      {
        v52 = v49 - 8;
        v53 = v50 - 8;
        v54 = v43 - 1;
        do
        {
          if (((*(*v20 + 8 * (v51 >> 6)) >> v51) & 1) == 0)
          {
            v55 = *(Value + 8 * v51);
            v56 = v129;
            if (v129 >= HIDWORD(v129))
            {
              v106 = AttrData;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v130, v129 + 1, 8);
              AttrData = v106;
              v56 = v129;
            }

            *(v128 + v56) = v55;
            LODWORD(v129) = v129 + 1;
            v57 = *(AttrData + 8 * v51);
            v58 = v126;
            if (v126 >= HIDWORD(v126))
            {
              v107 = AttrData;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v126 + 1, 8);
              AttrData = v107;
              v58 = v126;
            }

            *(v125 + v58) = v57;
            LODWORD(v126) = v126 + 1;
          }

          if (v54 == v51)
          {
            break;
          }

          if (!v53)
          {
            break;
          }

          ++v51;
          v59 = v52;
          v52 -= 8;
          v53 -= 8;
        }

        while (v59);
      }
    }

    v69 = v128;
    v70 = v129;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v114);
    Context = mlir::Attribute::getContext(&v115);
    v73 = mlir::AffineMapAttr::getValue(&RawStringData);
    v74 = mlir::StridedLayoutAttr::get(Context, v73, v125, v126);
    v75 = v74;
    if (!v74)
    {
      v86 = 0;
LABEL_75:
      MemorySpace = mlir::MemRefType::getMemorySpace(&v114);
      v18 = mlir::MemRefType::get(v69, v70, RHS, v75, v86, MemorySpace);
      if (v125 != v127)
      {
        free(v125);
      }

      if (v128 != v130)
      {
        free(v128);
      }

      if (v113)
      {
        v88 = v112;
        if ((v112 & 1) == 0)
        {
          if (v112)
          {
            if (*v112 != v112 + 16)
            {
              free(*v112);
            }

            MEMORY[0x1AC55A070](v88, 0x1080C40EF38A13ELL);
          }
        }
      }

      goto LABEL_85;
    }

    v76 = *v74;
    {
      v77 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v78 = *(v76 + 8);
      v79 = *(v76 + 16);
      if (v79)
      {
        goto LABEL_62;
      }
    }

    else
    {
      mlir::memref::ExpandShapeOp::computeExpandedType();
      v77 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v78 = *(v76 + 8);
      v79 = *(v76 + 16);
      if (v79)
      {
LABEL_62:
        v80 = v78;
        v81 = v79;
        do
        {
          v82 = v81 >> 1;
          v83 = &v80[2 * (v81 >> 1)];
          v85 = *v83;
          v84 = v83 + 2;
          v81 += ~(v81 >> 1);
          if (v85 < v77)
          {
            v80 = v84;
          }

          else
          {
            v81 = v82;
          }
        }

        while (v81);
        goto LABEL_71;
      }
    }

    v79 = 0;
    v80 = v78;
LABEL_71:
    if (v80 != &v78[2 * v79] && *v80 == v77)
    {
      v86 = v80[1];
    }

    else
    {
      v86 = 0;
    }

    goto LABEL_75;
  }

LABEL_85:
  v115 = v18;
  if (v116 != &v118)
  {
    free(v116);
  }

  if (v119 != &v121)
  {
    free(v119);
  }

  if (v122 != &v124)
  {
    free(v122);
  }

  if (!v18)
  {
    return 0;
  }

  v89 = *(v110 + 24);
  RawStringData = *(*(v9 + 72) + 24);
  v90 = *(v110 + 44);
  v91 = v110 + 16 * ((v90 >> 23) & 1);
  v92 = *(v91 + 88);
  v93 = *(v91 + 92);
  if ((v90 & 0x800000) != 0)
  {
    v94 = (v93 + v92);
    v128 = (*(v110 + 72) + 32 * v92);
    v129 = v94 - v92;
    v95 = (*(v91 + 96) + v94);
    v125 = (*(v110 + 72) + 32 * v94);
    v126 = v95 - v94;
    v96 = *(v110 + 72);
  }

  else
  {
    v96 = 0;
    v105 = (v93 + v92);
    v128 = (32 * v92);
    v129 = v105 - v92;
    v95 = (*(v91 + 96) + v105);
    v125 = (32 * v105);
    v126 = v95 - v105;
  }

  v97 = (v96 + 32 * v95);
  v98 = (*(v91 + 100) + v95) - v95;
  v122 = v97;
  v123 = v98;
  v119 = *(v91 + 64);
  v119 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v119);
  v120 = v99;
  v116 = *(v110 + 16 * ((*(v110 + 44) >> 23) & 1) + 72);
  v116 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v116);
  v117 = v100;
  v112 = *(v110 + 16 * ((*(v110 + 44) >> 23) & 1) + 80);
  v112 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v112);
  v113 = v101;
  v114 = mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::BaseMemRefType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(a3 + 1, v89, &v115, &RawStringData, &v128, &v125, &v122, &v119, &v116, &v112) - 16;
  v102 = v110;
  if (*(v110 + 36))
  {
    v103 = v110 - 16;
  }

  else
  {
    v103 = 0;
  }

  v128 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v103, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v104 = mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a3 + 1), *(v102 + 24), &v128, &v114);
  (*(*a3 + 1))(a3, v102, v104);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::BaseMemRefType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  v21 = *a3;
  v22 = *a4;
  mlir::ValueRange::ValueRange(v30, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v27, *a7, *(a7 + 8));
  mlir::memref::SubViewOp::build(a1, v28, v21, v22, v30[0], v30[1], v29[0], v29[1], v27[0], v27[1], *a8, *(a8 + 8), *a9, *(a9 + 8), *a10, *(a10 + 8));
  v23 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v24;
}

void anonymous namespace::TrivialSubViewOpFolder::~TrivialSubViewOpFolder(_anonymous_namespace_::TrivialSubViewOpFolder *this)
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

uint64_t anonymous namespace::TrivialSubViewOpFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v36 = a2;
  v43 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v43);
  v6 = v5;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v40);
  if (v6 != v8)
  {
    return 0;
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v36, &v43);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v36, &v40);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v36, &v37);
  if (v44)
  {
    v11 = v43;
    v12 = 8 * v44 - 8;
    do
    {
      v13 = *v11++;
      v14 = mlir::getConstantIntValue(v13) == 0;
      v16 = v15 & v14;
      v17 = v16 != 1 || v12 == 0;
      v12 -= 8;
    }

    while (!v17);
    if (!v16)
    {
      goto LABEL_29;
    }
  }

  if (v38)
  {
    v18 = v37;
    v19 = 8 * v38 - 8;
    do
    {
      v20 = *v18++;
      v21 = mlir::getConstantIntValue(v20) == 1;
      v23 = v22 & v21;
      v24 = v23 != 1 || v19 == 0;
      v19 -= 8;
    }

    while (!v24);
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  v35 = *(*(*(v36 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v35);
  if (v41)
  {
    v26 = Value;
    v27 = v40;
    v28 = 8 * v41;
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v27);
      if ((v30 & 1) == 0 || ConstantIntValue != *v26)
      {
        break;
      }

      ++v27;
      ++v26;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

LABEL_28:
  v9 = 1;
LABEL_30:
  if (v37 != &v39)
  {
    free(v37);
  }

  if (v40 != &v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v9)
  {
    if (*(a2 + 36))
    {
      v32 = a2 - 16;
    }

    else
    {
      v32 = 0;
    }

    v31 = *(*(*(a2 + 72) + 24) + 8);
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0) + 8) ^ v31) > 7)
    {
      if (*(a2 + 36))
      {
        v33 = a2 - 16;
      }

      else
      {
        v33 = 0;
      }

      v43 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      v40 = *(*(a2 + 72) + 24);
      v34 = mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a3 + 8), *(a2 + 24), &v43, &v40);
      (*(*a3 + 8))(a3, a2, v34);
      return 1;
    }

    else
    {
      v43 = *(*(a2 + 72) + 24);
      v9 = 1;
      (**a3)(a3, a2, &v43, 1);
    }
  }

  return v9;
}

void anonymous namespace::ViewOpShapeFolder::~ViewOpShapeFolder(_anonymous_namespace_::ViewOpShapeFolder *this)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(v27, v32, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v32, *a6, *(a6 + 8));
  v18 = v32[0];
  v19 = v32[1];
  v25[0] = v16;
  v26 = v17;
  mlir::OperationState::addOperands(v27, v25, 1uLL);
  mlir::OperationState::addOperands(v27, &v26, 1uLL);
  mlir::OperationState::addOperands(v27, v18, v19);
  v20 = v29;
  if (v29 >= v30)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, &v31, v29 + 1, 8);
    v20 = v29;
  }

  *(v28 + 8 * v20) = v15;
  ++v29;
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void anonymous namespace::ViewOpMemrefCastFolder::~ViewOpMemrefCastFolder(_anonymous_namespace_::ViewOpMemrefCastFolder *this)
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

uint64_t anonymous namespace::ViewOpMemrefCastFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v14);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
    {
      v13 = *(*(result + 72) + 24);
      result = mlir::Value::getDefiningOp(&v13);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
        {
          v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
          v7 = *(a2 + 72);
          v11 = *(v7 + 56);
          v12 = v6;
          v8 = *(a2 + 68) - 2;
          v10[0] = v7 + 64;
          v10[1] = v8;
          v9 = mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v12, &v13, &v11, v10);
          (*(*a3 + 8))(a3, a2, v9);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(v27, v32, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v32, *a6, *(a6 + 8));
  v18 = v32[0];
  v19 = v32[1];
  v25[0] = v16;
  v26 = v17;
  mlir::OperationState::addOperands(v27, v25, 1uLL);
  mlir::OperationState::addOperands(v27, &v26, 1uLL);
  mlir::OperationState::addOperands(v27, v18, v19);
  v20 = v29;
  if (v29 >= v30)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, &v31, v29 + 1, 8);
    v20 = v29;
  }

  *(v28 + 8 * v20) = v15;
  ++v29;
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties]";
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

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AssumeAlignmentOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::MemRefType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AtomicRMWOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

unint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(unint64_t *a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  v20[0] = *a2;
  v20[1] = v9;
  v20[2] = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
  v20[3] = 0;
  v21 = v7;
  v22 = v8;
  v10 = *(a1 + 2);
  v11 = *a1;
  v12 = v20;
  if (v10 >= *(a1 + 3))
  {
    if (v11 <= v20 && v11 + 40 * v10 > v20)
    {
      v18 = v20 - v11;
      v19 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v10 + 1, 40);
      a1 = v19;
      v11 = *v19;
      v12 = &v18[*v19];
    }

    else
    {
      v17 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v10 + 1, 40);
      a1 = v17;
      v11 = *v17;
      v12 = v20;
    }
  }

  v13 = v11 + 40 * *(a1 + 2);
  v14 = *v12;
  v15 = *(v12 + 1);
  *(v13 + 32) = *(v12 + 4);
  *v13 = v14;
  *(v13 + 16) = v15;
  LODWORD(v13) = *(a1 + 2) + 1;
  *(a1 + 2) = v13;
  return *a1 + 40 * v13 - 40;
}

BOOL mlir::AsmParser::parseType<mlir::BaseMemRefType>(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 536))(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  v6 = *(*v20 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v18 = "invalid kind of type specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v4, &v18);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::LoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::LoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::LoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::LoadOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::LoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AllocOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::MemoryEffects::Allocate::Allocate(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id;
  }

  return this;
}

unint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(unint64_t *a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  v20[0] = *a2;
  v20[1] = v9;
  v20[2] = v6 & 0xFFFFFFFFFFFFFFF9 | 4;
  v20[3] = 0;
  v21 = v7;
  v22 = v8;
  v10 = *(a1 + 2);
  v11 = *a1;
  v12 = v20;
  if (v10 >= *(a1 + 3))
  {
    if (v11 <= v20 && v11 + 40 * v10 > v20)
    {
      v18 = v20 - v11;
      v19 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v10 + 1, 40);
      a1 = v19;
      v11 = *v19;
      v12 = &v18[*v19];
    }

    else
    {
      v17 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v10 + 1, 40);
      a1 = v17;
      v11 = *v17;
      v12 = v20;
    }
  }

  v13 = v11 + 40 * *(a1 + 2);
  v14 = *v12;
  v15 = *(v12 + 1);
  *(v13 + 32) = *(v12 + 4);
  *v13 = v14;
  *(v13 + 16) = v15;
  LODWORD(v13) = *(a1 + 2) + 1;
  *(a1 + 2) = v13;
  return *a1 + 40 * v13 - 40;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocaOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::SideEffects::AutomaticAllocationScopeResource::AutomaticAllocationScopeResource(void *this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id;
    *this = &unk_1F1A018D8;
    this[1] = v1;
  }

  else
  {
    v3 = this;
    mlir::SideEffects::AutomaticAllocationScopeResource::AutomaticAllocationScopeResource();
    this = v3;
    v2 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id;
    *v3 = &unk_1F1A018D8;
    v3[1] = v2;
  }

  return this;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::MemoryEffects::Free::Free(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Free::Free();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id;
  }

  return this;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Free>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Free]";
  v6 = 75;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GetGlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v22 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, *a5);
  v23 = v22;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v15, a4, *a6);
  v24 = v23;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, v16, a4, *a7);
  v25 = v24;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v25, v17, a4, *a8);
  v26 = v25;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v26, v18, a4, *a9);
  v27 = v26;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v27, v19, a4, *a10);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v27, v20, a4);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReallocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReinterpretCastOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::StoreOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::SubViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(mlir::SideEffects::DefaultResource::~DefaultResource, v3, a3);
}

llvm::raw_ostream *OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return mlir::printDynamicIndexList(v15, v16, v17, v18, v19, v20, 0, 0, a14, a15, 2);
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  if (*(*v0 + 36))
  {
    v2 = *v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 36);
  v3 = a1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
}

void OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, va, v24 + 1, 24);
}

void OUTLINED_FUNCTION_66_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, a4, a1 + 1, 8);
}

void OUTLINED_FUNCTION_75_0(void *a1@<X8>)
{
  v1[3] = a1;
  *v1 = *a1;
  v1[1] = a1;
}

BOOL OUTLINED_FUNCTION_84_0@<W0>(const char *a1@<X2>, uint64_t *a2@<X8>)
{

  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(a2, (v2 & 0xFFFFFFFFFFFFFFF8), a1, 6, 0);
}

void OUTLINED_FUNCTION_101_0(void *a1@<X8>)
{
  v1[3] = a1;
  *v1 = *a1;
  v1[1] = a1;
}

uint64_t OUTLINED_FUNCTION_103_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = *(*(v18 + 72) + 32 * v19 + 24);

  return mlir::Value::getDefiningOp(&a18);
}

void OUTLINED_FUNCTION_108_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a9 = a1;
  a10 = v12;
  a11 = v13;
  a12 = 14;
  a8 = 0x200000002;

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a7, v14, 3uLL, 16);
}

uint64_t OUTLINED_FUNCTION_120_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = *(a1 + 80);

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

void OUTLINED_FUNCTION_121_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, a5, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_124_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = *(a1 + 8);

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

void OUTLINED_FUNCTION_125_0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, a2 + 1, 16);
}

unint64_t OUTLINED_FUNCTION_143@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 14;
  v4 = *v2;

  return mlir::Operation::getAttrDictionary(v4);
}

uint64_t OUTLINED_FUNCTION_144@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = *(a1 + 64);

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, llvm::hashing::detail *a27, unsigned int a28)
{

  return mlir::MemRefType::get(a27, a28, v28, v29, v30, a1);
}

void OUTLINED_FUNCTION_146(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  LOWORD(v9) = 257;

  mlir::OpState::emitOpError(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  a21 = &a23;
  a22 = v24;

  return mlir::ArrayAttr::getValue(&a17);
}

uint64_t OUTLINED_FUNCTION_148(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  va_arg(va1, void);
  va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  LOWORD(v21) = 261;
  v16 = a1;
  v18 = a2;

  return mlir::Diagnostic::operator<<(va1, va);
}

void OUTLINED_FUNCTION_164(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, a1 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t *a19, uint64_t a20)
{
  a19 = &a20;
  a20 = 0;

  return mlir::detail::constant_op_binder<mlir::Attribute>::match(&a19, a1);
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a9 = a1;

  return mlir::ArrayAttr::getValue(&a9);
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = *v28;
  a28 = v29;
  a27 = 0;
  a20 = v31;

  return mlir::Value::getDefiningOp(&a20);
}

double OUTLINED_FUNCTION_185(uint32x4_t a1, uint8x8_t a2)
{
  a2.i32[0] = *v2;
  *&result = vaddw_u16(a1, *&vmovl_u8(a2)).u64[0];
  return result;
}

void OUTLINED_FUNCTION_188(uint64_t a1@<X8>, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, a3, a1 + 1, 8);
}

void OUTLINED_FUNCTION_189(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v26, a2, 8);
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a21 = 0;
  a15 = v22;

  return mlir::detail::constant_op_binder<mlir::Attribute>::match(&a15, v21);
}

unint64_t OUTLINED_FUNCTION_191()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

uint64_t mlir::mps::MPSConstantsConversionBase<mlir::mps::anonymous namespace::ConstantsConversionPass>::MPSConstantsConversionBase(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
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
  *a1 = &unk_1F1A019C0;
  *&v5 = "The type of conversion to apply to the constant attributes.";
  *(&v5 + 1) = 59;
  v3 = 0;
  v4 = &v3;
  *&v6 = v7;
  v7[0] = "none";
  v7[1] = 4;
  v8 = 0;
  v9 = "The constant attribute type is not changed.";
  v10 = 43;
  v11 = "dense";
  v12 = 5;
  v13 = 1;
  v14 = "The constant attribute type is converted to DenseElementsAttr.";
  v15 = 62;
  v16 = "buffer-tensors";
  v17 = 14;
  v19 = "The constant attribute type is converted to MPSBufferTensorAttr with each attribute backed by its own resource blob.";
  v20 = 116;
  v21 = "coalesced-buffer-tensors";
  v22 = 24;
  v18 = 2;
  v23 = 3;
  v24 = "The constant attribute type is converted to MPSBufferTensorAttr with all attributes coalesced and backed by a single resource blob.";
  v25 = 131;
  *(&v6 + 1) = 0x400000004;
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(a1 + 344, (a1 + 152), "conversion-type", 15, &v5, &v4, &v6);
  *(a1 + 344) = &unk_1F1A01A30;
  *(a1 + 944) = &unk_1F1A01AB0;
  if (v6 != v7)
  {
    free(v6);
  }

  *&v6 = "Cast all constants attributes to the same ElementType than the op.";
  *(&v6 + 1) = 66;
  LOBYTE(v4) = 0;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 960, (a1 + 152), "cast-to-op-type", 15, &v6, &v5);
  *(a1 + 960) = &unk_1F1A01D88;
  *(a1 + 1152) = &unk_1F1A01E08;
  *&v6 = "Perform clipping to range of values of the output type before casting.";
  *(&v6 + 1) = 70;
  LOBYTE(v4) = 0;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1168, (a1 + 152), "clip-to-limits", 14, &v6, &v5);
  *(a1 + 1168) = &unk_1F1A01D88;
  *(a1 + 1360) = &unk_1F1A01E08;
  return a1;
}

void mlir::mps::anonymous namespace::ConstantsConversionPass::~ConstantsConversionPass(mlir::mps::_anonymous_namespace_::ConstantsConversionPass *this)
{
  *this = &unk_1F1A019C0;
  *(this + 146) = &unk_1F1A35C60;
  v2 = this + 1328;
  v3 = *(this + 169);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 146) = &unk_1F1A35888;
  v4 = *(this + 158);
  if (v4 != *(this + 157))
  {
    free(v4);
  }

  v5 = *(this + 154);
  if (v5 != this + 1248)
  {
    free(v5);
  }

  *(this + 120) = &unk_1F1A35C60;
  v6 = *(this + 143);
  if (v6 == (this + 1120))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 120) = &unk_1F1A35888;
  v7 = *(this + 132);
  if (v7 != *(this + 131))
  {
    free(v7);
  }

  v8 = *(this + 128);
  if (v8 != this + 1040)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(this + 43);
  *this = &unk_1F1A02168;
  v9 = *(this + 39);
  if (v9)
  {
    *(this + 40) = v9;
    operator delete(v9);
  }

  if (*(this + 73))
  {
    v10 = *(this + 72);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *(*(this + 35) + v11);
        if (v12 != -8 && v12 != 0)
        {
          llvm::deallocate_buffer(v12, (*v12 + 17));
        }

        v11 += 8;
      }

      while (8 * v10 != v11);
    }
  }

  free(*(this + 35));
  v14 = *(this + 29);
  if (v14 != this + 248)
  {
    free(v14);
  }

  v15 = *(this + 23);
  if (v15 != this + 200)
  {
    free(v15);
  }

  v16 = *(this + 16);
  if (v16)
  {
    *(this + 17) = v16;
    operator delete(v16);
  }

  if (*(this + 120) == 1)
  {
    v17 = *(this + 8);
    if (v17 != *(this + 7))
    {
      free(v17);
    }
  }
}

{

  JUMPOUT(0x1AC55A070);
}

void mlir::mps::anonymous namespace::ConstantsConversionPass::runOnOperation(mlir::mps::_anonymous_namespace_::ConstantsConversionPass *this)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  if (*(this + 118) <= 2u)
  {
    Context = mlir::Attribute::getContext((v2 + 3));
    *v36 = 0u;
    *v37 = 0u;
    v38 = v40;
    v39 = 0x600000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0x2800000000;
    v47 = 0;
    __p = 0;
    v49 = 0x2800000000;
    operator new();
  }

  if (*(v2[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id || v2 == 0)
  {
    v60[8] = 257;
    mlir::Operation::emitOpError(v2, &v58, &Context);
    if (Context)
    {
      LODWORD(v55) = 3;
      v56 = "Coalescing buffers is only supported on top level ModuleOp.";
      v57[0] = 59;
      v4 = &v55;
      v5 = v37[0];
      if (LODWORD(v37[1]) >= HIDWORD(v37[1]))
      {
        if (v37[0] <= &v55 && v37[0] + 24 * LODWORD(v37[1]) > &v55)
        {
          v29 = &v55 - v37[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v37, &v38, LODWORD(v37[1]) + 1, 24);
          v5 = v37[0];
          v4 = (v37[0] + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v37, &v38, LODWORD(v37[1]) + 1, 24);
          v4 = &v55;
          v5 = v37[0];
        }
      }

      v6 = v5 + 24 * LODWORD(v37[1]);
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      ++LODWORD(v37[1]);
      if (Context)
      {
        mlir::InFlightDiagnostic::report(&Context);
      }
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v49;
        v10 = __p;
        if (v49 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v49 = v8;
        operator delete(v10);
      }

      v11 = v45;
      if (v45)
      {
        v12 = v46;
        v13 = v45;
        if (v46 != v45)
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
          v13 = v45;
        }

        v46 = v11;
        operator delete(v13);
      }

      if (v37[0] != &v38)
      {
        free(v37[0]);
      }
    }

    goto LABEL_50;
  }

  if (*(this + 1088) == 1)
  {
    Context = mlir::Attribute::getContext((v2 + 3));
    *v36 = 0u;
    *v37 = 0u;
    v38 = v40;
    v39 = 0x600000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0x2800000000;
    v47 = 0;
    __p = 0;
    v49 = 0x2800000000;
    operator new();
  }

  v58 = v60;
  v59 = 0xA00000000;
  v55 = v57;
  v56 = 0xA00000000;
  Context = &v36[1];
  v36[0] = 0xA00000000;
  v52 = &v58;
  v53 = &v55;
  p_Context = &Context;
  v31 = &v52;
  mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_123ConstantsConversionPass31convertToCoalescedBufferTensorsENS1_8ModuleOpEEUlNSB_10ConstantOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v31, 1);
  v16 = v59;
  if (v59 >= 2)
  {
    mlir::mps::getBufferTensorAttrs(v55, v56, Context, LODWORD(v36[0]), &v52);
    v32[0] = mlir::Attribute::getContext((v2 + 3));
    v32[1] = 0;
    v33 = 0;
    v34 = 0;
    v31 = &unk_1F1A02010;
    if (v59 && v53)
    {
      v17 = v58;
      v18 = v52;
      v19 = 8 * v53 - 8;
      v20 = 8 * v59 - 8;
      do
      {
        v21 = *(*v17 + 2);
        ZinIrHalH13g::~ZinIrHalH13g(*v17);
        v33 = v21;
        v34 = v22;
        v24 = *v17++;
        v23 = v24;
        v25 = v24 - 16;
        if (*(v24 + 9))
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v27 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>(v32, *(v23 + 3), &v30, v18);
        (v31[1])(&v31, v23, v27);
        if (!v20)
        {
          break;
        }

        ++v18;
        v28 = v19;
        v19 -= 8;
        v20 -= 8;
      }

      while (v28);
    }

    ZinIrHalH13g::~ZinIrHalH13g(&v31);
    if (v52 != &p_Context)
    {
      free(v52);
    }
  }

  if (Context != &v36[1])
  {
    free(Context);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v16 <= 1)
  {
LABEL_50:
    *(this + 5) |= 4uLL;
  }
}

uint64_t mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 608) = 0;
  *v9 = &unk_1F1A01AF0;
  *(v9 + 600) = &unk_1F1A01B70;
  v14 = (v9 + 600);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v14);
  v12[0] = &unk_1F1A01D40;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F1A01D40;
  v15 = a1;
  std::__function::__value_func<void ()(mlir::mps::ConstantAttributeConversionType const&)>::swap[abi:nn200100](&v14, a1 + 568);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v12 = 0;
  result = llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::parse(a1 + 152, a1, a3, a4, a5, a6, &v12);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v12;
    *(a1 + 12) = a2;
    v10 = *(a1 + 592);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v12);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::getValueExpectedFlagDefault(v11);
    }
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::getValueExpectedFlagDefault(uint64_t a1)
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

void mlir::Pass::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(void *a1)
{
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(a1);

  JUMPOUT(0x1AC55A070);
}

llvm::raw_ostream *llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::printOptionValue(llvm::raw_ostream *result, unint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_1F1A01C18;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v6, (result + 136), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::setDefault(uint64_t result)
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

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::getExtraOptionNames(uint64_t result, uint64_t a2)
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

void *mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::print(uint64_t a1, llvm::raw_ostream *this)
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
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

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

uint64_t mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option((a1 - 600));

  JUMPOUT(0x1AC55A070);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5, uint64_t *a6)
{
  *a1 = &unk_1F1A35888;
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
  *(a1 + 136) = &unk_1F1A01C18;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A01BB0;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_1F1A01C58;
  *(a1 + 568) = &unk_1F1A01CF8;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(a3, a1);
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
      llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::addLiteralOption<int>(a1 + 152, *v21, *(v21 + 8), (v21 + 16), *(v21 + 24), *(v21 + 32));
      v21 += 40;
    }

    while (v21 != v22);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(void *a1)
{
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(a1);

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option((a1 - 600));

  JUMPOUT(0x1AC55A070);
}

void *llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~opt(void *a1)
{
  *a1 = &unk_1F1A01BB0;
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

  a1[19] = &unk_1F1A01CA8;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F1A35888;
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

void llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~opt(void *a1)
{
  *a1 = &unk_1F1A01BB0;
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

  a1[19] = &unk_1F1A01CA8;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F1A35888;
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

  JUMPOUT(0x1AC55A070);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>::~GenericOptionParser(void *result)
{
  *result = &unk_1F1A01CA8;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_1F1A01CA8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

void *llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::~parser(void *result)
{
  *result = &unk_1F1A01CA8;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::~parser(void *a1)
{
  *a1 = &unk_1F1A01CA8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

char **llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(char **result, uint64_t a2)
{
  v3 = *result;
  if (!*result)
  {
    v5 = result[1];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + 2);
    if (!v6)
    {
      return result;
    }

    v7 = *v5;
    v8 = *v5 + 8 * v6;
    while (1)
    {
      v9 = *v7;
      v10 = *(a2 + 88);
      if (*(a2 + 96) != v10)
      {
        goto LABEL_9;
      }

      v11 = *(a2 + 108);
      if (v11)
      {
        v12 = 8 * v11;
        v13 = *(a2 + 88);
        while (*v13 != v9)
        {
          ++v13;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_10;
      }

LABEL_16:
      if (v11 < *(a2 + 104))
      {
        *(a2 + 108) = v11 + 1;
        *(v10 + 8 * v11) = v9;
      }

      else
      {
LABEL_9:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a2 + 88), v9);
      }

LABEL_10:
      if (++v7 == v8)
      {
        return result;
      }
    }
  }

  v4 = *(a2 + 88);
  result = (a2 + 88);
  if (*(a2 + 96) != v4)
  {
LABEL_3:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v3);
  }

  v14 = *(a2 + 108);
  if (!v14)
  {
LABEL_22:
    if (v14 < *(a2 + 104))
    {
      *(a2 + 108) = v14 + 1;
      *(v4 + 8 * v14) = v3;
      return result;
    }

    goto LABEL_3;
  }

  v15 = 8 * v14;
  v16 = *(a2 + 88);
  while (*v16 != v3)
  {
    ++v16;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a5;
  v19[3] = a6;
  v7 = v19;
  v19[4] = &unk_1F1A01C18;
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
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = &v18[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
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
  *(v11 + 32) = &unk_1F1A01C38;
  v13 = *(v7 + 10);
  *(v11 + 44) = v7[44];
  *(v11 + 40) = v13;
  *(v11 + 32) = &unk_1F1A01C18;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
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
      *(v9 + 4) = &unk_1F1A01C38;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_1F1A01C18;
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

uint64_t std::__function::__value_func<void ()(mlir::mps::ConstantAttributeConversionType const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
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
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_3mps31ConstantAttributeConversionTypeENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11initializerIS7_EENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISQ_EEFvRKS7_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A01D40;
  a2[1] = v2;
  return result;
}

void *mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(void *a1)
{
  *a1 = &unk_1F1A01BB0;
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

  a1[19] = &unk_1F1A01CA8;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F1A35888;
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

uint64_t llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::parse(uint64_t a1, void *a2, const void *a3, size_t a4, const void *a5, size_t a6, _DWORD *a7)
{
  v8 = *(*(a1 + 8) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v13 = *(a1 + 16);
    while (1)
    {
      if (*(v13 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v13, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v13 += 48;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    *a7 = *(v13 + 40);
  }

  else
  {
LABEL_14:
    v17 = 1283;
    v16[0] = "Cannot find option named '";
    v16[2] = a3;
    v16[3] = a4;
    v18[0] = v16;
    v18[2] = "'!";
    v19 = 770;
    v15 = llvm::errs(a1);
    return llvm::cl::Option::error(a2, v18, 0, 0, v15);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, _BYTE **a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1, v10, &v13, a5, a6);
  *(v8 + 200) = 0;
  *v8 = &unk_1F1A01E48;
  *(v8 + 192) = &unk_1F1A01EC8;
  v13 = (v8 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v13);
  v11[0] = &unk_1F1A01F70;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_1F1A01F70;
  v14 = a1;
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](&v13, a1 + 160);
  if (v15 == &v13)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  return a1;
}

void *mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_1F1A35C60;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F1A35888;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_1F1A35C60;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F1A35888;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::print(uint64_t a1, llvm::raw_ostream *this)
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
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = *(a1 + 128) == 0;
  if (*(a1 + 128))
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v9)
  {
    v11 = "false";
  }

  else
  {
    v11 = "true";
  }

  v12 = *(this + 4);
  if (v10 <= *(this + 3) - v12)
  {
    result = memcpy(v12, v11, v10);
    *(this + 4) += v10;
  }

  else
  {

    return llvm::raw_ostream::write(this, v11, v10);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 64);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_1F1A35C60;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_1F1A35888;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  *(a1 - 192) = &unk_1F1A35C60;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_1F1A35888;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, _BYTE **a5)
{
  *a1 = &unk_1F1A35888;
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
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F1A01F08;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A35C60;
  *(a1 + 152) = &unk_1F1A35980;
  *(a1 + 160) = &unk_1F1A01F28;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v13, v14, v15);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(a3, a1);
  *(a1 + 32) = *a4;
  v17 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v17;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_1F1A35C60;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F1A35888;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_1F1A35C60;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F1A35888;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_1F1A35C60;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_1F1A35888;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option((a1 - 192));
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
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
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A01F70;
  a2[1] = v2;
  return result;
}

void mlir::mps::anonymous namespace::ConvertConstant::~ConvertConstant(mlir::mps::_anonymous_namespace_::ConvertConstant *this)
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

uint64_t mlir::mps::anonymous namespace::ConvertConstant::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63[9] = *MEMORY[0x1E69E9840];
  v60 = a2;
  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v60);
  v59 = v5;
  Type = mlir::ElementsAttr::getType(&AsAttribute);
  v57 = Type;
  if (*(v60 + 36))
  {
    v7 = v60 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    Type = v57;
  }

  else
  {
    v9 = 0;
  }

  v56[0] = v8;
  v56[1] = v9;
  v55 = Type;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v57);
  if (RHS != mlir::ElementsAttr::isSplat(v56) && *(a1 + 100) == 1)
  {
    Value = mlir::ArrayAttr::getValue(&v57);
    v13 = v12;
    isSplat = mlir::ElementsAttr::isSplat(v56);
    v55 = mlir::RankedTensorType::get(Value, v13, isSplat, 0);
  }

  v15 = mlir::AffineBinaryOpExpr::getRHS(&v55);
  isCompatibleWithDenseStorage = mlir::mps::isCompatibleWithDenseStorage(v15);
  if ((isCompatibleWithDenseStorage & 1) == 0 && mlir::DenseElementsAttr::classof(AsAttribute))
  {
    if ((mlir::ElementsAttr::isSplat(&AsAttribute) & 1) == 0)
    {
      ElementsAttrRawData = mlir::getElementsAttrRawData(AsAttribute);
      v19 = v18;
      NumElements = mlir::ElementsAttr::getNumElements(AsAttribute, v59);
      v61 = mlir::AffineBinaryOpExpr::getRHS(&v57);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v61);
      v22 = 8 / IntOrFloatBitWidth;
      if (v22 * IntOrFloatBitWidth == 8)
      {
        if (NumElements)
        {
          v23 = (NumElements - (NumElements != 0)) / v22 + 1;
        }

        else
        {
          v23 = 0 / v22;
        }

        v61 = v63;
        v62 = xmmword_1A75D9A70;
        if (v23)
        {
          v24 = IntOrFloatBitWidth;
          if (v23 < 0x29)
          {
            v26 = 0;
            v25 = v63;
          }

          else
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v61, v63, v23, 1);
            v25 = v61;
            v26 = v62;
          }

          if (v23 != v26)
          {
            bzero(&v25[v26], v23 - v26);
            v25 = v61;
          }

          v45 = 0;
          *&v62 = v23;
          do
          {
            v47 = v45 * v22;
            if (v19 - v45 * v22 >= v22)
            {
              v48 = v22;
            }

            else
            {
              v48 = v19 - v45 * v22;
            }

            if (v19 == v47)
            {
              LOBYTE(v46) = 0;
            }

            else
            {
              v49 = (ElementsAttrRawData + v47);
              v46 = *(ElementsAttrRawData + v47);
              if (v48 > 1)
              {
                v46 |= v49[1] << v24;
                if (v48 != 2)
                {
                  v46 |= v49[2] << (2 * v24);
                  if (v48 >= 4)
                  {
                    v46 |= v49[3] << (3 * v24);
                    if (v48 != 4)
                    {
                      v46 |= v49[4] << (4 * v24);
                      if (v48 >= 6)
                      {
                        v46 |= v49[5] << (5 * v24);
                        if (v48 != 6)
                        {
                          v46 |= v49[6] << (6 * v24);
                          if (v48 >= 8)
                          {
                            v46 |= v49[7] << (7 * v24);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            *v25++ = v46;
            ++v45;
            --v23;
          }

          while (v23);
          v44 = v61;
          v43 = v62;
        }

        else
        {
          v43 = 0;
          v44 = v63;
        }

        BufferTensorAttr = mlir::mps::getBufferTensorAttr(v57, v44, v43);
        v54[0] = BufferTensorAttr;
        if (BufferTensorAttr)
        {
          BufferTensorAttr = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*BufferTensorAttr + 8);
        }

        v54[1] = BufferTensorAttr;
        v51 = v60;
        v52 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), *(v60 + 24), v56, v54);
        (*(*a3 + 8))(a3, v51, v52);
        if (v61 != v63)
        {
          free(v61);
        }

        return 1;
      }
    }

    return 0;
  }

  if (v57 != v55)
  {
LABEL_21:
    if (!isCompatibleWithDenseStorage)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v28 = *(a1 + 96);
  if (!v28)
  {
    return 0;
  }

  if (v28 == 2)
  {
    if (*(*AsAttribute + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id || (mlir::ElementsAttr::isSplat(&AsAttribute) & 1) != 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if ((isCompatibleWithDenseStorage & 1) == 0 || mlir::DenseElementsAttr::classof(AsAttribute))
  {
    return 0;
  }

LABEL_22:
  if ((mlir::ElementsAttr::isSplat(&AsAttribute) & 1) != 0 || (v27 = *(a1 + 96), v27 == 1))
  {
    isCompatibleWithDenseStorage = 1;
  }

  else
  {
    isCompatibleWithDenseStorage = v27 != 2 && mlir::DenseElementsAttr::classof(AsAttribute);
  }

LABEL_32:
  if (v57 != v55)
  {
    mlir::mps::CPUNDArray::CPUNDArray(&v61, AsAttribute, v59);
    v29 = v55;
    if (v55)
    {
      v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    }

    else
    {
      v30 = 0;
    }

    mlir::mps::CPUNDArray::CPUNDArray(v54, v29, v30, 0);
    if (*(a1 + 101))
    {
      v37 = 14;
    }

    else
    {
      v37 = 13;
    }

    mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v53, v37, 0.0);
    operator new();
  }

  v32 = mlir::getElementsAttrRawData(AsAttribute);
  v33 = v31;
  v61 = 0;
  *&v62 = 0;
  v34 = v57;
  if (isCompatibleWithDenseStorage)
  {
    if (v57)
    {
      v35 = v57;
      v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v57 + 8);
      v34 = v35;
    }

    else
    {
      v36 = 0;
    }

    v38 = mlir::DenseElementsAttr::getFromRawBuffer(v34, v36, v32, v33);
    v39 = v38;
    if (!v38)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v38 = mlir::mps::getBufferTensorAttr(v57, v32, v31);
    v39 = v38;
    if (!v38)
    {
      goto LABEL_52;
    }
  }

  v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v39 + 8);
LABEL_52:
  v61 = v39;
  *&v62 = v38;
  v41 = v60;
  v42 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), *(v60 + 24), v56, &v61);
  (*(*a3 + 8))(a3, v41, v42);
  return 1;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::TensorType::operator mlir::ShapedType();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::DenseElementsAttr::operator mlir::ElementsAttr();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ConstantOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

char ***llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfigSet>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[v3];
    do
    {
      v6 = *--v4;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *v5;
        v8 = *(v5 + 2);
        if (v8)
        {
          v9 = 8 * v8;
          v10 = v7 - 8;
          do
          {
            v11 = *&v10[v9];
            *&v10[v9] = 0;
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }

            v9 -= 8;
          }

          while (v9);
          v7 = *v5;
        }

        if (v7 != (v5 + 2))
        {
          free(v7);
        }

        MEMORY[0x1AC55A070](v5, 0x1080C407559D7D1);
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

ZinIrHalH13g *mlir::detail::walk<mlir::ForwardIterator>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    (a2)(a3, a1);
  }

  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = (result + 24 * v8);
    do
    {
      for (i = *(v9 + 1); i != v9; i = *(i + 1))
      {
        v12 = (i - 8);
        if (!i)
        {
          v12 = 0;
        }

        result = v12[5];
        v13 = (v12 + 4);
        if (result != (v12 + 4))
        {
          do
          {
            v14 = *(result + 1);
            ZinIrHalH13g::~ZinIrHalH13g(result);
            mlir::detail::walk<mlir::ForwardIterator>(v15, a2, a3, a4);
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 = (v9 + 24);
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return (a2)(a3, a1);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_123ConstantsConversionPass31convertToCoalescedBufferTensorsENS1_8ModuleOpEEUlNSB_10ConstantOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      v21[3] = v2;
      v21[4] = v3;
      v4 = *result;
      v21[0] = a2;
      v20[0] = mlir::mps::ConstantOp::getAsAttribute(v21);
      v20[1] = v5;
      result = mlir::ElementsAttr::isSplat(v20);
      if ((result & 1) == 0)
      {
        v6 = *v4;
        v7 = v21[0];
        v8 = *(*v4 + 8);
        if (v8 >= *(*v4 + 12))
        {
          v17 = v21[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(*v4, (v6 + 16), v8 + 1, 8);
          v7 = v17;
          LODWORD(v8) = *(v6 + 8);
        }

        *(*v6 + 8 * v8) = v7;
        ++*(v6 + 8);
        v9 = v4[1];
        Type = mlir::ElementsAttr::getType(v20);
        v11 = *(v9 + 8);
        if (v11 >= *(v9 + 12))
        {
          v18 = Type;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v11 + 1, 8);
          Type = v18;
          LODWORD(v11) = *(v9 + 8);
        }

        *(*v9 + 8 * v11) = Type;
        ++*(v9 + 8);
        v12 = v4[2];
        result = mlir::getElementsAttrRawData(v20[0]);
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          v19 = v13;
          v16 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v12 + 16), v14 + 1, 16);
          v13 = v19;
          result = v16;
          LODWORD(v14) = *(v12 + 8);
        }

        v15 = (*v12 + 16 * v14);
        *v15 = result;
        v15[1] = v13;
        ++*(v12 + 8);
      }
    }
  }

  return result;
}

void mlir::IRRewriter::~IRRewriter(mlir::IRRewriter *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (v12)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
  }

  mlir::mps::ConstantOp::build(a1, v19, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

uint64_t mlir::detail::verifyParallelCombiningOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 1)
  {
    v3 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    if (*v3 != v3 && *(v3[1] + 8) == v3)
    {
      return 1;
    }

    v20[0] = "expected single block op region";
    v21 = 259;
    mlir::Operation::emitError(this, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_38;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_37:
        v26 = v8;
        operator delete(v10);
LABEL_38:
        if (v23 != &v24)
        {
          free(v23);
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
LABEL_36:
      v10 = v25;
      goto LABEL_37;
    }
  }

  else
  {
    v20[0] = "expected single region op";
    v21 = 259;
    mlir::Operation::emitError(this, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_38;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_37;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
      goto LABEL_36;
    }
  }

  return v4;
}

BOOL mlir::parseSourceFile(const llvm::MemoryBuffer ****a1, uint64_t a2, uint64_t ***a3, uint64_t *a4)
{
  v7 = ***a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(v7);
    *a4 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v13, v7);
  if (!mlir::isBytecode(v13))
  {
    mlir::parseAsmSourceFile(*a1, a2, a3, 0, 0);
  }

  return mlir::readBytecodeFile(a1, a2, a3);
}

void std::__shared_ptr_emplace<llvm::SourceMgr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A02070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

llvm::raw_ostream *mlir::PassExecutionAction::print(mlir::PassExecutionAction *this, llvm::raw_ostream *a2)
{
  v4 = (*(**(this + 4) + 16))(*(this + 4));
  v6 = v5;
  v7 = (*(*this + 32))(this);
  if ((*v7 & 6) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(v8 + 48);
  v11[1] = 38;
  v11[2] = v16;
  v11[3] = 3;
  v12 = 1;
  v13[0] = &unk_1F1A02270;
  v13[1] = &mlir::PassExecutionAction::tag;
  v14[0] = &unk_1F1A022B8;
  v14[1] = v4;
  v14[2] = v6;
  v15[0] = &unk_1F1A02300;
  v15[1] = v9;
  v16[0] = v13;
  v16[1] = v14;
  v16[2] = v15;
  return llvm::raw_ostream::operator<<(a2, v11);
}

uint64_t mlir::Pass::initializeOptions(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 1;
  v20 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_1F1A362A8;
  v21 = v22;
  llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
  if ((mlir::detail::PassOptions::parseFromString(a1 + 152, a2, a3, &v14) & 1) == 0)
  {
    v13 = 260;
    v12 = v22;
    v10 = a4(a5, &v12);
  }

  llvm::raw_ostream::~raw_ostream(&v14);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v10;
}

void mlir::Pass::printAsTextualPipeline(void *this, llvm::raw_ostream *a2)
{
  v4 = this[1];
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::Pass::printAsTextualPipeline();
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
LABEL_3:
      v5 = (*(*this + 32))(this);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = *(a2 + 4);
        if (v6 > *(a2 + 3) - v9)
        {
          v10 = a2;
          v11 = v7;
          v12 = v8;
LABEL_17:
          llvm::raw_ostream::write(v10, v11, v12);
          goto LABEL_18;
        }

        memcpy(v9, v7, v6);
        *(a2 + 4) += v8;
      }

      else
      {
        v13 = *(a2 + 4);
        if (*(a2 + 3) - v13 > 7uLL)
        {
          *v13 = 0x3C6E776F6E6B6E75;
          *(a2 + 4) += 8;
          v14 = a2;
        }

        else
        {
          v14 = llvm::raw_ostream::write(a2, "unknown<", 8uLL);
        }

        v16 = (*(*this + 16))(this);
        v17 = v15;
        v18 = *(v14 + 4);
        if (v15 <= *(v14 + 3) - v18)
        {
          if (v15)
          {
            memcpy(v18, v16, v15);
            v18 = (*(v14 + 4) + v17);
            *(v14 + 4) = v18;
          }
        }

        else
        {
          v14 = llvm::raw_ostream::write(v14, v16, v15);
          v18 = *(v14 + 4);
        }

        if (*(v14 + 3) == v18)
        {
          v11 = ">";
          v10 = v14;
          v12 = 1;
          goto LABEL_17;
        }

        *v18 = 62;
        ++*(v14 + 4);
      }

LABEL_18:

      mlir::detail::PassOptions::print((this + 19), a2);
      return;
    }
  }

  v19 = *(this + 88);
  if (v19)
  {
    v20 = this[43];
    mlir::OpPassManager::printAsTextualPipeline(v20, a2);
    if (v19 != 1)
    {
      v21 = v20 + 1;
      v22 = 8 * v19 - 8;
      do
      {
        while (1)
        {
          v23 = *(a2 + 4);
          if (*(a2 + 3) != v23)
          {
            break;
          }

          llvm::raw_ostream::write(a2, ",", 1uLL);
          mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
          v22 -= 8;
          if (!v22)
          {
            return;
          }
        }

        *v23 = 44;
        ++*(a2 + 4);
        mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
        v22 -= 8;
      }

      while (v22);
    }
  }
}

void mlir::detail::OpPassManagerImpl::addPass(_BYTE *a1, uint64_t **a2)
{
  v3 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (a1[23])
    {
      goto LABEL_3;
    }

LABEL_13:
    v6 = *a2;
    goto LABEL_14;
  }

  if (!*(a1 + 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = *(v3 + 1);
  }

  v6 = *a2;
  if ((*a2)[4])
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v5 != v7 || v5 && memcmp(a1, *(v6 + 16), v5))
    {
      if (!*(v3 + 17))
      {
        mlir::OpPassManager::OpPassManager(v42, v8, v7, 0);
      }

      v36 = "Can't add pass '";
      v37 = 259;
      v21 = (*(*v6 + 16))(v6);
      v35 = 261;
      v34[0] = v21;
      v34[1] = v22;
      llvm::operator+(&v36, v34, v38);
      v32 = "' restricted to '";
      v33 = 259;
      llvm::operator+(v38, &v32, v39);
      v31 = 261;
      v30[0] = v8;
      v30[1] = v7;
      llvm::operator+(v39, v30, v40);
      v28 = "' on a PassManager intended to run on '";
      v29 = 259;
      llvm::operator+(v40, &v28, v41);
      v27 = 261;
      v26[0] = mlir::detail::OpPassManagerImpl::getOpAnchorName(v3);
      v26[1] = v23;
      llvm::operator+(v41, v26, v42);
      v24 = "', did you intend to nest?";
      v25 = 259;
      llvm::operator+(v42, &v24, v43);
      llvm::report_fatal_error(v43, 1);
    }
  }

LABEL_14:
  v10 = *(v3 + 6);
  v9 = *(v3 + 7);
  if (v10 >= v9)
  {
    v12 = *(v3 + 5);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
      if (!(v17 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v18 = v14;
    v19 = (8 * v14);
    *a2 = 0;
    v20 = &v19[-v18];
    *v19 = v6;
    v11 = v19 + 1;
    memcpy(v20, v12, v13);
    *(v3 + 5) = v20;
    *(v3 + 6) = v11;
    *(v3 + 7) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *a2 = 0;
    *v10 = v6;
    v11 = v10 + 8;
  }

  *(v3 + 6) = v11;
}

uint64_t *mlir::OpPassManager::addPass(_BYTE **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::detail::OpPassManagerImpl::addPass(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

const char *mlir::detail::OpPassManagerImpl::getOpAnchorName(const char *this)
{
  v1 = this[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (this[23])
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!*(this + 1))
  {
    return "any";
  }

LABEL_3:
  if (v1 < 0)
  {
    return *this;
  }

  return this;
}

BOOL mlir::detail::OpPassManagerImpl::finalizePassList(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  v6 = *(this + 6);
  v4 = (this + 40);
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    v7 = *v5;
    v9 = *(*v5 + 8);
    {
      if (v9 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v58 = v9;
      mlir::Pass::printAsTextualPipeline();
      if (v58 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
LABEL_14:
        if (v8 && (mlir::detail::OpToOpPassAdaptor::tryMergeInto(v7, a2, v8) & 1) != 0)
        {
          v13 = *v5;
          *v5 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v7 = v8;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      v10 = *(v8 + 352);
      if (v10)
      {
        v11 = *(v8 + 344);
        v12 = 8 * v10;
        while (mlir::detail::OpPassManagerImpl::finalizePassList(*v11, a2))
        {
          ++v11;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }
    }

LABEL_3:
    v7 = 0;
LABEL_4:
    ++v5;
  }

  while (v5 != v6);
  if (v7)
  {
    v14 = *(v7 + 352);
    if (v14)
    {
      v15 = *(v7 + 344);
      v16 = 8 * v14;
      while (mlir::detail::OpPassManagerImpl::finalizePassList(*v15, a2))
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      return 0;
    }
  }

LABEL_24:
  llvm::erase_if<std::vector<std::unique_ptr<mlir::Pass>>,std::logical_not<std::unique_ptr<mlir::Pass>>>(v4);
  v17 = *(this + 23);
  if (v17 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_39;
    }
  }

  else if (!*(this + 23))
  {
    goto LABEL_39;
  }

  if ((*(this + 32) & 1) == 0)
  {
    if (v17 >= 0)
    {
      v19 = this;
    }

    else
    {
      v19 = *this;
    }

    if (v17 >= 0)
    {
      v20 = *(this + 23);
    }

    else
    {
      v20 = *(this + 1);
    }

    mlir::OperationName::OperationName(&v63, v19, v20, a2);
    v21 = v63;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 3) = v21;
  }

LABEL_39:
  if ((*(this + 8) & 1) == 0)
  {
    return 1;
  }

  v22 = *(*(this + 3) + 16);
  if (v22 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 3);
  }

  v24 = *(this + 5);
  v25 = *(this + 6);
  result = 1;
  if (v24 != v25 && v22 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if ((*(**v24 + 72))())
    {
      v27 = v24 + 1;
      while (v27 != v25)
      {
        v28 = *v27++;
        if (((*(*v28 + 72))(v28, v23) & 1) == 0)
        {
          v24 = v27 - 1;
          goto LABEL_50;
        }
      }

      return 1;
    }

LABEL_50:
    v29 = mlir::UnknownLoc::get(a2, v26);
    mlir::emitError(v29, &v63);
    if (v63)
    {
      LODWORD(v59) = 3;
      v60 = "unable to schedule pass '";
      v61 = 25;
      v30 = &v59;
      v31 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v59 && v65 + 24 * v66 > &v59)
        {
          v55 = &v59 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v31 = v65;
          v30 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v30 = &v59;
          v31 = v65;
        }
      }

      v32 = &v31[24 * v66];
      v33 = *v30;
      *(v32 + 2) = v30[2];
      *v32 = v33;
      ++v66;
    }

    v34 = (*(**v24 + 16))();
    if (v63)
    {
      v62 = 261;
      v59 = v34;
      v60 = v35;
      mlir::Diagnostic::operator<<(v64, &v59);
      if (v63)
      {
        LODWORD(v59) = 3;
        v60 = "' on a PassManager intended to run on '";
        v61 = 39;
        v36 = &v59;
        v37 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v59 && v65 + 24 * v66 > &v59)
          {
            v56 = &v59 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v37 = v65;
            v36 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v36 = &v59;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
      }
    }

    v40 = *(this + 23);
    if (v40 < 0)
    {
      if (!*(this + 1))
      {
        goto LABEL_67;
      }

LABEL_59:
      v41 = *this;
      if (v40 < 0)
      {
        v40 = *(this + 1);
      }

      else
      {
        v41 = this;
      }

      if (v63)
      {
LABEL_68:
        v62 = 261;
        v59 = v41;
        v60 = v40;
        mlir::Diagnostic::operator<<(v64, &v59);
        if (v63)
        {
          LODWORD(v59) = 3;
          v60 = "'!";
          v61 = 2;
          v42 = &v59;
          v43 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v59 && v65 + 24 * v66 > &v59)
            {
              v57 = &v59 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v43 = v65;
              v42 = (v65 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v42 = &v59;
              v43 = v65;
            }
          }

          v44 = &v43[24 * v66];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v66;
        }
      }
    }

    else
    {
      if (*(this + 23))
      {
        goto LABEL_59;
      }

LABEL_67:
      v41 = "any";
      v40 = 3;
      if (v63)
      {
        goto LABEL_68;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
    v46 = result;
    if (v63)
    {
      mlir::InFlightDiagnostic::report(&v63);
      result = v46;
    }

    if (v74)
    {
      if (v73 != &v74)
      {
        free(v73);
        result = v46;
      }

      v47 = __p;
      if (__p)
      {
        v48 = v72;
        v49 = __p;
        if (v72 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v72 = v47;
        operator delete(v49);
        result = v46;
      }

      v50 = v69;
      if (v69)
      {
        v51 = v70;
        v52 = v69;
        if (v70 != v69)
        {
          do
          {
            v54 = *--v51;
            v53 = v54;
            *v51 = 0;
            if (v54)
            {
              MEMORY[0x1AC55A040](v53, 0x1000C8077774924);
            }
          }

          while (v51 != v50);
          v52 = v69;
        }

        v70 = v50;
        operator delete(v52);
        result = v46;
      }

      if (v65 != v68)
      {
        free(v65);
        return v46;
      }
    }
  }

  return result;
}

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::detail::OpToOpPassAdaptor *this, mlir::MLIRContext *a2, mlir::detail::OpToOpPassAdaptor *a3)
{
  v5 = *(this + 88);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = *(this + 43);
    while (1)
    {
      v8 = *(*v7 + 23);
      if ((v8 & 0x8000000000000000) != 0)
      {
        v8 = (*v7)[1];
      }

      if (!v8)
      {
        break;
      }

      ++v7;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v7 = *(this + 43);
  }

  if (v7 != (*(this + 43) + 8 * v5))
  {
    v9 = *(a3 + 88);
    if (v9)
    {
      v10 = *(a3 + 43);
      for (i = 8 * v9; i; i -= 8)
      {
        v12 = *v10;
        v13 = *(*v10 + 23);
        if (v13 < 0)
        {
          if (!*(v12 + 8))
          {
            goto LABEL_26;
          }
        }

        else if (!*(*v10 + 23))
        {
          goto LABEL_26;
        }

        if ((*(v12 + 32) & 1) == 0)
        {
          if (v13 >= 0)
          {
            v14 = *v10;
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(*v10 + 23);
          }

          else
          {
            v15 = *(v12 + 8);
          }

          mlir::OperationName::OperationName(&v69, v14, v15, a2);
          if ((*(v12 + 32) & 1) == 0)
          {
            *(v12 + 32) = 1;
          }

          *(v12 + 24) = v69;
        }

LABEL_26:
        if (*(v12 + 32) & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v7, a2, *(v12 + 24)))
        {
          return 0;
        }

        ++v10;
      }
    }
  }

LABEL_29:
  v16 = *(a3 + 88);
  if (v16)
  {
    v17 = 8 * v16;
    v18 = *(a3 + 43);
    while (1)
    {
      v19 = *(*v18 + 23);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = (*v18)[1];
      }

      if (!v19)
      {
        break;
      }

      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v18 = *(a3 + 43);
  }

  if (v18 == (*(a3 + 43) + 8 * v16))
  {
LABEL_57:
    v27 = *(this + 88);
    if (!v27)
    {
      goto LABEL_127;
    }

    v28 = *(this + 43);
    v68 = &v28[v27];
    while (1)
    {
      v29 = *v28;
      v30 = *(*v28 + 23);
      if (v30 < 0)
      {
        if (!*(v29 + 8))
        {
LABEL_102:
          v31 = "any";
          v32 = 3;
          v33 = *(a3 + 43);
          v34 = *(a3 + 88);
          if (v34)
          {
            goto LABEL_69;
          }

          goto LABEL_103;
        }
      }

      else if (!*(*v28 + 23))
      {
        goto LABEL_102;
      }

      if (v30 >= 0)
      {
        v31 = *v28;
      }

      else
      {
        v31 = *v29;
      }

      if (v30 >= 0)
      {
        v32 = *(*v28 + 23);
      }

      else
      {
        v32 = *(v29 + 8);
      }

      v33 = *(a3 + 43);
      v34 = *(a3 + 88);
      if (v34)
      {
LABEL_69:
        v35 = 8 * v34;
        v36 = v33;
        if (v32 == 3)
        {
          while (1)
          {
            v41 = *v36;
            v45 = (*v36)[23];
            if (v45 < 0)
            {
              if (!*(v41 + 1))
              {
LABEL_85:
                v41 = "any";
                goto LABEL_86;
              }
            }

            else if (!(*v36)[23])
            {
              goto LABEL_85;
            }

            v46 = *(v41 + 1);
            if (v45 >= 0)
            {
              v46 = (*v36)[23];
            }

            if (v46 != 3)
            {
              goto LABEL_90;
            }

            if (v45 < 0)
            {
              v41 = *v41;
            }

LABEL_86:
            v42 = *v41;
            v43 = *(v41 + 2);
            if (v42 == *v31 && v43 == v31[2])
            {
              goto LABEL_104;
            }

LABEL_90:
            ++v36;
            v35 -= 8;
            if (!v35)
            {
              goto LABEL_59;
            }
          }
        }

        while (2)
        {
          v37 = *v36;
          v38 = (*v36)[23];
          if (v38 < 0)
          {
            if (!*(v37 + 1))
            {
              goto LABEL_71;
            }
          }

          else if (!(*v36)[23])
          {
LABEL_71:
            ++v36;
            v35 -= 8;
            if (!v35)
            {
              goto LABEL_59;
            }

            continue;
          }

          break;
        }

        v39 = *(v37 + 1);
        if (v38 >= 0)
        {
          v39 = (*v36)[23];
        }

        if (v39 == v32)
        {
          if (!v32)
          {
            goto LABEL_104;
          }

          v40 = v38 >= 0 ? *v36 : *v37;
          if (!memcmp(v40, v31, v32))
          {
            goto LABEL_104;
          }
        }

        goto LABEL_71;
      }

LABEL_103:
      v36 = v33;
LABEL_104:
      if (v36 == &v33[v34] || !v36)
      {
LABEL_59:
        llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(a3 + 43, v28++);
        if (v28 == v68)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v48 = *(v29 + 40);
        v47 = *(v29 + 48);
        if (v48 != v47)
        {
          v49 = *v36;
          v50 = *(v49 + 6);
          do
          {
            v52 = *(v49 + 7);
            if (v50 < v52)
            {
              v51 = *v48;
              *v48 = 0;
              *v50 = v51;
              v50 += 8;
            }

            else
            {
              v53 = *(v49 + 5);
              v54 = v50 - v53;
              v55 = (v50 - v53) >> 3;
              v56 = v55 + 1;
              if ((v55 + 1) >> 61)
              {
                std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
              }

              v57 = v52 - v53;
              if (v57 >> 2 > v56)
              {
                v56 = v57 >> 2;
              }

              if (v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v58 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                if (!(v58 >> 61))
                {
                  operator new();
                }

                std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
              }

              v59 = (v50 - v53) >> 3;
              v60 = (8 * v55);
              v61 = *v48;
              *v48 = 0;
              v62 = (8 * v55 - 8 * v59);
              *v60 = v61;
              v50 = (v60 + 1);
              memcpy(v62, v53, v54);
              *(v49 + 5) = v62;
              *(v49 + 6) = v50;
              *(v49 + 7) = 0;
              if (v53)
              {
                operator delete(v53);
              }
            }

            *(v49 + 6) = v50;
            ++v48;
          }

          while (v48 != v47);
          v48 = *(v29 + 40);
          v47 = *(v29 + 48);
        }

        while (v47 != v48)
        {
          v64 = *--v47;
          v63 = v64;
          *v47 = 0;
          if (v64)
          {
            (*(*v63 + 8))(v63);
          }
        }

        *(v29 + 48) = v48;
        if (++v28 == v68)
        {
          goto LABEL_127;
        }
      }
    }
  }

  v20 = *(this + 88);
  if (v20)
  {
    v21 = *(this + 43);
    v22 = 8 * v20;
    while (1)
    {
      v23 = *v21;
      v24 = *(*v21 + 23);
      if (v24 < 0)
      {
        if (!*(v23 + 8))
        {
          goto LABEL_54;
        }
      }

      else if (!*(*v21 + 23))
      {
        goto LABEL_54;
      }

      if ((*(v23 + 32) & 1) == 0)
      {
        if (v24 >= 0)
        {
          v25 = *v21;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(*v21 + 23);
        }

        else
        {
          v26 = *(v23 + 8);
        }

        mlir::OperationName::OperationName(&v69, v25, v26, a2);
        if ((*(v23 + 32) & 1) == 0)
        {
          *(v23 + 32) = 1;
        }

        *(v23 + 24) = v69;
      }

LABEL_54:
      if (*(v23 + 32) & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v18, a2, *(v23 + 24)))
      {
        return 0;
      }

      ++v21;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_127:
  llvm::SmallVectorImpl<mlir::OpPassManager>::clear(this + 344);
  v65 = *(a3 + 88);
  if (v65 >= 2)
  {
    qsort(*(a3 + 43), v65, 8uLL, mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke);
  }

  return 1;
}