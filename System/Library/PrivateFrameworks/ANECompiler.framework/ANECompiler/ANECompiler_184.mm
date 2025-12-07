uint64_t mlir::tensor::ParallelInsertSliceOp::verify(uint64_t **this)
{
  v41 = *MEMORY[0x1E69E9840];
  ParentOp = (*this)[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
  {
    v3 = (*this)[9];
    v4 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v5 = (*(*(v3 + 32 * *(*this + 26) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v31 = (*this)[10];
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31);
    v31 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
    v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31);
    v8 = v7;
    v31 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31);
    v29[0] = v4;
    v31 = v5;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v31);
    Values = mlir::SparseElementsAttr::getValues(&v31);
    v11 = mlir::RankedTensorType::get(v6, v8, RHS, Values);
    v31 = v11;
    v12 = mlir::TensorType::operator mlir::ShapedType(&v31);
    v14 = v13;
    v15 = mlir::TensorType::operator mlir::ShapedType(v29);
    isRankReducedType = mlir::isRankReducedType(v12, v14, v15);
    return produceSliceErrorMsg(isRankReducedType, *this, v11);
  }

  v29[0] = "expected ParallelCombiningOpInterface parent, got:";
  v30 = 259;
  mlir::OpState::emitError(this, v29, &v31);
  v18 = (*this)[2];
  if (v18)
  {
    v19 = mlir::Block::getParentOp(v18);
    if (v31)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    if (v31)
    {
LABEL_7:
      mlir::Diagnostic::operator<<(&v32, v19);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v20 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v20;
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
      result = v20;
    }

    v21 = __p;
    if (__p)
    {
      v22 = v38;
      v23 = __p;
      if (v38 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v38 = v21;
      operator delete(v23);
      result = v20;
    }

    v24 = v35;
    if (v35)
    {
      v25 = v36;
      v26 = v35;
      if (v36 != v35)
      {
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
        v26 = v35;
      }

      v36 = v24;
      operator delete(v26);
      result = v20;
    }

    if (v33 != &v34)
    {
      free(v33);
      return v20;
    }
  }

  return result;
}

uint64_t mlir::tensor::ScatterOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "scatter", 7);
}

BOOL mlir::tensor::ScatterOp::verify(uint64_t **this)
{
  v81 = *MEMORY[0x1E69E9840];
  v70[0] = *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(v70);
  v3 = v2;
  v70[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v70);
  v6 = v5;
  v7 = *this;
  v70[0] = *(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(v70);
  if (!verifyGatherOrScatterDims(v7, v4, v6, Value, v9, v3, "scatter", 7, "dest", 4))
  {
    return 0;
  }

  if ((*this)[2 * ((*(*this + 11) >> 23) & 1) + 9])
  {
    v10 = mlir::tensor::GatherOp::inferResultType(*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, *(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 0);
    v11 = 1;
    v12 = mlir::tensor::GatherOp::inferResultType(*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, *(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 1);
    v13 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v13 != v10 && v13 != v12)
    {
      v15 = v12;
      v65[0] = "source type mismatch: expected ";
      v66 = 259;
      mlir::OpState::emitOpError(this, v65, v70);
      if (v70[0])
      {
        v16 = &v67;
        mlir::DiagnosticArgument::DiagnosticArgument(&v67, v10);
        v17 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v67 && v71 + 24 * v72 > &v67)
          {
            v59 = &v67 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v17 = v71;
            v16 = (v71 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v16 = &v67;
            v17 = v71;
          }
        }

        v18 = &v17[24 * v72];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v72;
        if (v70[0])
        {
          v67 = 3;
          v68 = " or its rank-reduced variant ";
          v69 = 29;
          v21 = &v67;
          v22 = v71;
          if (v20 >= v73)
          {
            if (v71 <= &v67 && v71 + 24 * v20 > &v67)
            {
              v60 = &v67 - v71;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v20 + 1, 24);
              v22 = v71;
              v21 = (v71 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v20 + 1, 24);
              v21 = &v67;
              v22 = v71;
            }
          }

          v23 = &v22[24 * v72];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v72;
          if (v70[0])
          {
            v25 = &v67;
            mlir::DiagnosticArgument::DiagnosticArgument(&v67, v15);
            v26 = v71;
            if (v72 >= v73)
            {
              if (v71 <= &v67 && v71 + 24 * v72 > &v67)
              {
                v61 = &v67 - v71;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                v26 = v71;
                v25 = (v71 + v61);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                v25 = &v67;
                v26 = v71;
              }
            }

            v27 = &v26[24 * v72];
            v28 = *v25;
            *(v27 + 2) = *(v25 + 2);
            *v27 = v28;
            v29 = ++v72;
            if (v70[0])
            {
              v67 = 3;
              v68 = " (got: ";
              v69 = 7;
              v30 = &v67;
              v31 = v71;
              if (v29 >= v73)
              {
                if (v71 <= &v67 && v71 + 24 * v29 > &v67)
                {
                  v62 = &v67 - v71;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v29 + 1, 24);
                  v31 = v71;
                  v30 = (v71 + v62);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v29 + 1, 24);
                  v30 = &v67;
                  v31 = v71;
                }
              }

              v32 = &v31[24 * v72];
              v33 = *v30;
              *(v32 + 2) = *(v30 + 2);
              *v32 = v33;
              ++v72;
              if (v70[0])
              {
                v34 = *(*((*this)[9] + 24) + 8);
                v35 = &v67;
                mlir::DiagnosticArgument::DiagnosticArgument(&v67, v34 & 0xFFFFFFFFFFFFFFF8);
                v36 = v71;
                if (v72 >= v73)
                {
                  if (v71 <= &v67 && v71 + 24 * v72 > &v67)
                  {
                    v63 = &v67 - v71;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v36 = v71;
                    v35 = (v71 + v63);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v35 = &v67;
                    v36 = v71;
                  }
                }

                v37 = &v36[24 * v72];
                v38 = *v35;
                *(v37 + 2) = *(v35 + 2);
                *v37 = v38;
                v39 = ++v72;
                if (v70[0])
                {
                  v67 = 3;
                  v68 = ")";
                  v69 = 1;
                  v40 = &v67;
                  v41 = v71;
                  if (v39 >= v73)
                  {
                    if (v71 <= &v67 && v71 + 24 * v39 > &v67)
                    {
                      v64 = &v67 - v71;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v39 + 1, 24);
                      v41 = v71;
                      v40 = (v71 + v64);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v39 + 1, 24);
                      v40 = &v67;
                      v41 = v71;
                    }
                  }

                  v42 = &v41[24 * v72];
                  v43 = *v40;
                  *(v42 + 2) = *(v40 + 2);
                  *v42 = v43;
                  ++v72;
                }
              }
            }
          }
        }
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
      if (v70[0])
      {
        mlir::InFlightDiagnostic::report(v70);
      }

      if (v80 == 1)
      {
        if (v79 != &v80)
        {
          free(v79);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v78;
          v46 = __p;
          if (v78 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v78 = v44;
          operator delete(v46);
        }

        v47 = v75;
        if (!v75)
        {
          goto LABEL_56;
        }

        v48 = v76;
        v49 = v75;
        if (v76 == v75)
        {
LABEL_55:
          v76 = v47;
          operator delete(v49);
LABEL_56:
          if (v71 != v74)
          {
            free(v71);
          }

          return v11;
        }

        do
        {
          v51 = *--v48;
          v50 = v51;
          *v48 = 0;
          if (v51)
          {
            MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
          }
        }

        while (v48 != v47);
LABEL_54:
        v49 = v75;
        goto LABEL_55;
      }
    }
  }

  else
  {
    v65[0] = "requires 'unique' attribute to be set";
    v66 = 259;
    mlir::OpState::emitOpError(this, v65, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v78;
        v55 = __p;
        if (v78 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v78 = v53;
        operator delete(v55);
      }

      v47 = v75;
      if (!v75)
      {
        goto LABEL_56;
      }

      v56 = v76;
      v49 = v75;
      if (v76 == v75)
      {
        goto LABEL_55;
      }

      do
      {
        v58 = *--v56;
        v57 = v58;
        *v56 = 0;
        if (v58)
        {
          MEMORY[0x1AC55A040](v57, 0x1000C8077774924);
        }
      }

      while (v56 != v47);
      goto LABEL_54;
    }
  }

  return v11;
}

uint64_t mlir::tensor::SplatOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t a3)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v23 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v23);
  v24 = v26;
  v25 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v6, 8);
      v8 = v25;
      v9 = v7 - v25;
      if (v7 == v25)
      {
        goto LABEL_7;
      }
    }

    bzero(v24 + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v25) = v7;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &v24);
LABEL_15:
    v14 = v24;
    if (v24 == v26)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
  do
  {
    if (v12 + 2 != *v12)
    {
      free(*v12);
    }

    v12 -= 8;
    v13 += 64;
  }

  while (v13);
  *(a3 + 8) = 1;
  v14 = v24;
  if (v24 != v26)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v24);
  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i < v20; ++i)
    {
      v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::ArrayAttr::getValue(&v24) + 8 * i) == 0x8000000000000000)
      {
        v18 = *(*a1 + 72) + 32 * v16++;
        v19 = *(v18 + 56) | 4;
      }

      else
      {
        v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
        Value = mlir::ArrayAttr::getValue(&v24);
        v19 = mlir::Builder::getIndexAttr(a2, *(Value + 8 * i)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v19;
      v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(&v24);
    }
  }

  return 1;
}

unint64_t mlir::tensor::SplatOp::fold(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = **(a2 + 40);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::TensorType::hasRank(&v12))
      {
        Value = mlir::ArrayAttr::getValue(&v12);
        if (!v7)
        {
LABEL_12:
          v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v12);
          v13[0] = v2;
          return mlir::DenseElementsAttr::get(v9, v10, v13, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
        }

        v8 = 8 * v7;
        while (*Value != 0x8000000000000000)
        {
          ++Value;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::tensor::PackOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "pack", 4);
}

void mlir::tensor::PackOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::hashing::detail *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, char a10, llvm::hashing::detail *a11, uint64_t a12)
{
  DenseI64ArrayAttr = a12;
  v29[6] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x600000000;
  v24 = v26;
  v25 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a7, a8, &v24, &v27);
  v17 = *(a4 + 8);
  if (a12)
  {
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a11, a12);
  }

  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, a5, a6);
  mlir::ValueRange::ValueRange(v23, v24, v25);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v27, v28);
  if ((a10 & 1) == 0)
  {
    a9 = 0;
  }

  mlir::tensor::PackOp::build(v19, a2, v17 & 0xFFFFFFFFFFFFFFF8, a3, a4, a9, DenseI64ArrayAttr, v18, v23[0], v23[1], v19);
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v23 = a5;
  v24 = a4;
  v22 = a6;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v22, 1uLL);
  }

  mlir::OperationState::addOperands(a2, a9, a10);
  v16 = v22 != 0;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = 0x100000001;
  *(v17 + 32) = v16;
  *(v17 + 36) = a10;
  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 8) = a7;
  }

  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a11;
  v21 = *(a2 + 72);
  if (v21 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v21 + 1, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::tensor::PackOp::reifyResultShapes(uint64_t *a1, mlir::IndexType **a2, uint64_t *a3)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  __src = (*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&__src);
  __src = v32;
  v31 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v6, 8);
      v8 = v31;
      v9 = v7 - v31;
      if (v7 == v31)
      {
        goto LABEL_7;
      }
    }

    bzero(__src + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v31) = v7;
  }

  v10 = *(a3 + 2);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &__src);
LABEL_15:
    v14 = __src;
    if (__src == v32)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
  do
  {
    if (v12 + 2 != *v12)
    {
      free(*v12);
    }

    v12 -= 8;
    v13 += 64;
  }

  while (v13);
  *(a3 + 2) = 1;
  v14 = __src;
  if (__src != v32)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v15 = *(v5 + 24);
  v16 = *(*(v5 + 72) + 32 * *(v5 + 104) + 24);
  v29 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v32;
  v31 = 0x600000000;
  mlir::ArrayAttr::getValue(&v29);
  if (v17 >= 1)
  {
    for (i = 0; i < v21; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v15, v16, i);
      v20 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v22 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v31 + 1, 8);
        MixedSize = v22;
        v20 = v31;
      }

      *(__src + v20) = MixedSize;
      LODWORD(v31) = v31 + 1;
      mlir::ArrayAttr::getValue(&v29);
    }
  }

  v23 = *a3;
  v24 = __src;
  if (v23 != &__src)
  {
    if (__src != v32)
    {
      if (*v23 != v23 + 16)
      {
        free(*v23);
        v24 = __src;
      }

      *v23 = v24;
      *(v23 + 8) = v31;
      __src = v32;
      HIDWORD(v31) = 0;
      goto LABEL_39;
    }

    v25 = v31;
    v26 = *(v23 + 8);
    if (v26 >= v31)
    {
      if (v31)
      {
        memmove(*v23, __src, 8 * v31);
      }

      goto LABEL_38;
    }

    if (*(v23 + 12) >= v31)
    {
      if (v26)
      {
        memmove(*v23, __src, 8 * v26);
        v27 = v31 - v26;
        if (v31 == v26)
        {
LABEL_38:
          *(v23 + 8) = v25;
LABEL_39:
          LODWORD(v31) = 0;
          v24 = __src;
          goto LABEL_40;
        }
      }

      else
      {
        v26 = 0;
        v27 = v31;
        if (!v31)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      *(v23 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v23, (v23 + 16), v25, 8);
      v26 = 0;
      v27 = v31;
      if (!v31)
      {
        goto LABEL_38;
      }
    }

    memcpy((*v23 + 8 * v26), __src + 8 * v26, 8 * v27);
    goto LABEL_38;
  }

LABEL_40:
  if (v24 != v32)
  {
    free(v24);
  }

  return 1;
}

void mlir::tensor::PackOp::getMixedTiles(mlir::tensor::PackOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  Context = mlir::Attribute::getContext((*this + 24));
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v13 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v13);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = 8 * v5;
    do
    {
      if (*v6 == 0x8000000000000000)
      {
        v9 = v7++;
        v10 = *(*(v3 + 72) + 32 * (*(v3 + 108) + *(v3 + 104) + *(v3 + 112)) + 32 * v9 + 24) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&Context, *v6) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v11 = *(a2 + 8);
      if (v11 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11 + 1, 8);
        v11 = *(a2 + 8);
      }

      *(*a2 + 8 * v11) = v10;
      ++*(a2 + 8);
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::tensor::PackOp::getStaticTiles(mlir::tensor::PackOp *this@<X0>, void *a2@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = *this;
  v7[0] = v8;
  v7[1] = 0x600000000;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::tensor::PackOp::getMixedTiles(&v3, &v4);
  mlir::dispatchIndexOpFoldResults(v4, v5, v7, a2);
  if (v4 != &v6)
  {
    free(v4);
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }
}

uint64_t mlir::tensor::PackOp::requirePaddingValue(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, const void *a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v31[6] = *MEMORY[0x1E69E9840];
  if (a6 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a6;
  }

  v29 = v31;
  v30 = 0x600000000;
  v16 = (8 * v15) >> 3;
  if (v16 < 7)
  {
    v17 = 0;
    v18 = 8 * v15;
    if (!v15)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v16, 8);
  v17 = v30;
  v18 = 8 * v15;
  if (v15)
  {
LABEL_8:
    memcpy(v29 + 8 * v17, a5, v18);
    v17 = v30;
  }

LABEL_9:
  LODWORD(v30) = v17 + (v18 >> 3);
  if (a8)
  {
    mlir::invertPermutationVector(a7, a8, &v27);
    mlir::applyPermutationToVector<long long,6u>(&v29, v27);
    if (v27 != &v28)
    {
      free(v27);
    }
  }

  if (!a4)
  {
LABEL_22:
    v24 = 0;
    v25 = v29;
    if (v29 != v31)
    {
      goto LABEL_23;
    }

    return v24;
  }

  v20 = 8 * a4;
  while (1)
  {
    if (*(a1 + 8 * *a3) == 0x8000000000000000)
    {
      goto LABEL_15;
    }

    ConstantIntValue = mlir::getConstantIntValue(*a9);
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (*(a1 + 8 * *a3) % ConstantIntValue)
    {
      goto LABEL_20;
    }

LABEL_15:
    ++a3;
    ++a9;
    v20 -= 8;
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  v23 = *(v29 + *a3);
  if (v23 == 0x8000000000000000 || !(*(a1 + 8 * *a3) % v23))
  {
    goto LABEL_15;
  }

LABEL_20:
  v24 = 1;
  v25 = v29;
  if (v29 == v31)
  {
    return v24;
  }

LABEL_23:
  free(v25);
  return v24;
}

uint64_t mlir::tensor::PackOp::verify(uint64_t **this)
{
  v108 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v91 = *this;
  mlir::tensor::PackOp::getMixedTiles(&v91, &v104);
  if (v105)
  {
    v3 = v104;
    v4 = 8 * v105;
    while (!mlir::isConstantIntValue(*v3, 0))
    {
      ++v3;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    DenseI64ArrayAttr = "invalid zero tile factor";
    v90 = 259;
    mlir::Operation::emitError(v2, &DenseI64ArrayAttr, &v92);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
    if (v92)
    {
      mlir::InFlightDiagnostic::report(&v92);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v101;
        v13 = __p;
        if (v101 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v101 = v11;
        operator delete(v13);
      }

      v14 = v98;
      if (!v98)
      {
        goto LABEL_54;
      }

      v15 = v99;
      v16 = v98;
      if (v99 == v98)
      {
        goto LABEL_53;
      }

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
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_5:
  v86 = *(*(v2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v86);
  v6 = v5;
  v92 = v2[2 * ((*(v2 + 11) >> 23) & 1) + 8];
  v7 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v92);
  v9 = v8;
  v92 = v2[2 * ((*(v2 + 11) >> 23) & 1) + 9];
  if (!v92)
  {
    Context = mlir::Attribute::getContext((v2 + 3));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    if (v9 > v6)
    {
      goto LABEL_35;
    }

LABEL_25:
    DenseI64ArrayAttr = 0;
    v88 = 0;
    LODWORD(v89) = 0;
    if (v9)
    {
      v19 = 8 * v9;
      v20 = 8 * v9;
      v21 = v7;
      do
      {
        v22 = *v21++;
        Context = v22;
        llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&DenseI64ArrayAttr, &Context, &v92);
        v20 -= 8;
      }

      while (v20);
      if (v9 == v88)
      {
        for (i = v7; (*i & 0x8000000000000000) == 0 && *i < v6; ++i)
        {
          v19 -= 8;
          if (!v19)
          {
            llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v89));
          }
        }
      }

      llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v89));
    }

    llvm::deallocate_buffer(0, 0);
  }

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v92);
  if (v9 <= v6)
  {
    goto LABEL_25;
  }

LABEL_35:
  DenseI64ArrayAttr = "invalid inner_dims_pos vector";
  v90 = 259;
  mlir::Operation::emitError(v2, &DenseI64ArrayAttr, &v92);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
  if (v92)
  {
    mlir::InFlightDiagnostic::report(&v92);
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v101;
      v26 = __p;
      if (v101 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v101 = v24;
      operator delete(v26);
    }

    v14 = v98;
    if (!v98)
    {
      goto LABEL_54;
    }

    v27 = v99;
    v16 = v98;
    if (v99 == v98)
    {
LABEL_53:
      v99 = v14;
      operator delete(v16);
LABEL_54:
      if (v94 != v97)
      {
        free(v94);
      }

      goto LABEL_56;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v14);
LABEL_52:
    v16 = v98;
    goto LABEL_53;
  }

LABEL_56:
  if (v104 != &v106)
  {
    free(v104);
  }

  if (!v10)
  {
    return 0;
  }

  v30 = *this;
  v31 = *(*this + 11);
  v32 = &(*this)[2 * ((v31 >> 23) & 1)];
  v33 = *(v32 + 24);
  if ((v31 & 0x800000) != 0)
  {
    v34 = v30[9];
    if (!v33)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v34 = 0;
    if (!v33)
    {
      goto LABEL_88;
    }
  }

  v35 = *(v34 + 32 * (*(v32 + 23) + *(v32 + 22)) + 24);
  if (v35)
  {
    v36 = *(v35 + 8) & 0xFFFFFFFFFFFFFFF8;
    v92 = (*(*(v30[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v36 != mlir::AffineBinaryOpExpr::getRHS(&v92))
    {
      v104 = "expected padding_value has ";
      v107 = 259;
      mlir::OpState::emitOpError(this, &v104, &v92);
      Context = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      RHS = mlir::AffineBinaryOpExpr::getRHS(&Context);
      if (v92)
      {
        p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
        mlir::DiagnosticArgument::DiagnosticArgument(&DenseI64ArrayAttr, RHS);
        v39 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &DenseI64ArrayAttr && v94 + 24 * v95 > &DenseI64ArrayAttr)
          {
            v82 = &DenseI64ArrayAttr - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v39 = v94;
            p_DenseI64ArrayAttr = (v94 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
            v39 = v94;
          }
        }

        v40 = &v39[24 * v95];
        v41 = *p_DenseI64ArrayAttr;
        *(v40 + 2) = p_DenseI64ArrayAttr[2];
        *v40 = v41;
        v42 = ++v95;
        if (v92)
        {
          LODWORD(DenseI64ArrayAttr) = 3;
          v88 = " but got: ";
          v89 = 10;
          v43 = &DenseI64ArrayAttr;
          v44 = v94;
          if (v42 >= v96)
          {
            if (v94 <= &DenseI64ArrayAttr && v94 + 24 * v42 > &DenseI64ArrayAttr)
            {
              v83 = &DenseI64ArrayAttr - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v42 + 1, 24);
              v44 = v94;
              v43 = (v94 + v83);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v42 + 1, 24);
              v43 = &DenseI64ArrayAttr;
              v44 = v94;
            }
          }

          v45 = &v44[24 * v95];
          v46 = *v43;
          *(v45 + 2) = v43[2];
          *v45 = v46;
          ++v95;
          if (v92)
          {
            v47 = &DenseI64ArrayAttr;
            mlir::DiagnosticArgument::DiagnosticArgument(&DenseI64ArrayAttr, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
            v48 = v94;
            if (v95 >= v96)
            {
              if (v94 <= &DenseI64ArrayAttr && v94 + 24 * v95 > &DenseI64ArrayAttr)
              {
                v84 = &DenseI64ArrayAttr - v94;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v48 = v94;
                v47 = (v94 + v84);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v47 = &DenseI64ArrayAttr;
                v48 = v94;
              }
            }

            v49 = &v48[24 * v95];
            v50 = *v47;
            *(v49 + 2) = v47[2];
            *v49 = v50;
            ++v95;
          }
        }
      }

      v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v101;
          v54 = __p;
          if (v101 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v101 = v52;
          operator delete(v54);
        }

        v55 = v98;
        if (!v98)
        {
          goto LABEL_113;
        }

        v56 = v99;
        v57 = v98;
        if (v99 == v98)
        {
LABEL_112:
          v99 = v55;
          operator delete(v57);
LABEL_113:
          if (v94 != v97)
          {
            free(v94);
          }

          return v51;
        }

        do
        {
          v59 = *--v56;
          v58 = v59;
          *v56 = 0;
          if (v59)
          {
            MEMORY[0x1AC55A040](v58, 0x1000C8077774924);
          }
        }

        while (v56 != v55);
LABEL_111:
        v57 = v98;
        goto LABEL_112;
      }

      return v51;
    }

    return 1;
  }

LABEL_88:
  Context = (*(*(v30[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&Context);
  v62 = v61;
  v92 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v63 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v92);
  v65 = v64;
  v91 = *(*((*this)[9] + 32 * *(*this + 26) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v66 = mlir::ArrayAttr::getValue(&v91);
  v68 = v67;
  v69 = *this;
  v92 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  if (v92)
  {
    v70 = &v92;
  }

  else
  {
    DenseI64ArrayAttr = mlir::Attribute::getContext((v69 + 3));
    v104 = mlir::Builder::getDenseI64ArrayAttr(&DenseI64ArrayAttr, 0, 0);
    v70 = &v104;
  }

  v71 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v70);
  v73 = v72;
  mlir::tensor::PackOp::getMixedTiles(this, &v92);
  v74 = mlir::tensor::PackOp::requirePaddingValue(Value, v62, v63, v65, v66, v68, v71, v73, v92);
  if (v92 != &v93)
  {
    free(v92);
  }

  if (!v74)
  {
    return 1;
  }

  v104 = "invalid tile factor or output size provided. Only full tiles are supported when padding_value is not set";
  v107 = 259;
  mlir::OpState::emitOpError(this, &v104, &v92);
  v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
  if (v92)
  {
    mlir::InFlightDiagnostic::report(&v92);
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
    }

    v75 = __p;
    if (__p)
    {
      v76 = v101;
      v77 = __p;
      if (v101 != __p)
      {
        do
        {
          v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
        }

        while (v76 != v75);
        v77 = __p;
      }

      v101 = v75;
      operator delete(v77);
    }

    v55 = v98;
    if (!v98)
    {
      goto LABEL_113;
    }

    v78 = v99;
    v57 = v98;
    if (v99 == v98)
    {
      goto LABEL_112;
    }

    do
    {
      v80 = *--v78;
      v79 = v80;
      *v78 = 0;
      if (v80)
      {
        MEMORY[0x1AC55A040](v79, 0x1000C8077774924);
      }
    }

    while (v78 != v55);
    goto LABEL_111;
  }

  return v51;
}

void getPackOpResultTypeShape(uint64_t **a1, const void *a2, unint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, unint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v16 = a1 + 2;
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (a3 >= 7)
  {
    v17 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, a3, 8);
    a2 = v17;
    v18 = *(a1 + 2);
    v19 = *a1;
LABEL_5:
    memcpy(&v19[v18], a2, 8 * a3);
    v20 = *(a1 + 2);
    goto LABEL_6;
  }

  if (a3)
  {
    v18 = 0;
    v19 = (a1 + 2);
    goto LABEL_5;
  }

  v20 = 0;
LABEL_6:
  *(a1 + 2) = v20 + a3;
  __src = v40;
  v39 = 0x600000000;
  if (a7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v40, a7, 8);
    v21 = v39;
    v22 = __src;
LABEL_10:
    memcpy(&v22[8 * v21], a6, 8 * a7);
    v23 = v39;
    v24 = __src;
    goto LABEL_11;
  }

  if (a7)
  {
    v21 = 0;
    v22 = v40;
    goto LABEL_10;
  }

  v23 = 0;
  v24 = v40;
LABEL_11:
  __dst = v43;
  v42 = 0x600000000;
  v25 = (v23 + a7);
  LODWORD(v39) = v25;
  if (v25)
  {
    if (v24 == v40)
    {
      v26 = v25;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v43, v25, 8), v26 = v39, v24 = __src, v39))
      {
        memcpy(__dst, v24, 8 * v26);
        v24 = __src;
      }

      LODWORD(v42) = v25;
    }

    else
    {
      __dst = v24;
      v42 = __PAIR64__(HIDWORD(v39), v25);
      __src = v40;
      HIDWORD(v39) = 0;
      v24 = v40;
    }

    LODWORD(v39) = 0;
  }

  if (v24 != v40)
  {
    free(v24);
    LODWORD(v25) = v42;
  }

  v27 = __dst;
  if (v25)
  {
    v28 = *a1;
    v29 = 8 * v25;
    v30 = a4;
    v31 = __dst;
    do
    {
      v33 = v28[*v31];
      if (v33 != 0x8000000000000000)
      {
        v34 = *v30;
        v32 = 0x8000000000000000;
        if (*v30 != 0x8000000000000000)
        {
          if (v33)
          {
            if ((v34 ^ v33) < 0)
            {
              v32 = v33 / v34;
            }

            else
            {
              if (v34 < 0)
              {
                v35 = v33 + 1;
              }

              else
              {
                v35 = v33 - 1;
              }

              v32 = v35 / v34 + 1;
            }
          }

          else
          {
            v32 = 0;
          }
        }

        v28[*v31] = v32;
      }

      ++v31;
      ++v30;
      v29 -= 8;
    }

    while (v29);
  }

  if (v27 != v43)
  {
    free(v27);
  }

  if (a10)
  {
    mlir::applyPermutationToVector<long long,6u>(a1, a9);
  }

  v36 = *(a1 + 2);
  v37 = v36 + ((8 * a5) >> 3);
  if (v37 > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v16, v37, 8);
    LODWORD(v36) = *(a1 + 2);
  }

  if (a5)
  {
    memcpy(&(*a1)[v36], a4, 8 * a5);
    LODWORD(v36) = *(a1 + 2);
  }

  *(a1 + 2) = v36 + a5;
}

uint64_t mlir::tensor::PackOp::inferPackedType(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, unint64_t a5, uint64_t *a6, uint64_t a7)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v21 = a1;
  Value = mlir::ArrayAttr::getValue(&v21);
  getPackOpResultTypeShape(&v22, Value, v14, a2, a3, a4, a5, v15, a6, a7);
  v16 = v22;
  v17 = v23;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v21);
  result = mlir::RankedTensorType::get(v16, v17, RHS, 0);
  if (v22 != v24)
  {
    v20 = result;
    free(v22);
    return v20;
  }

  return result;
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(uint64_t a1)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v1 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = a1;
  v17 = v1;
  v15[0] = mlir::TensorType::operator mlir::ShapedType(&v17);
  v15[1] = v2;
  mlir::tensor::PackOp::getMixedTiles(&v16, &v17);
  Shape = mlir::ShapedType::getShape(v15);
  if (v4 <= v18)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8 * (v4 - v18);
  }

  if (v4 >= v18)
  {
    v6 = v18;
  }

  else
  {
    v6 = v4;
  }

  v7 = v17;
  if (v6)
  {
    v8 = (v5 + Shape);
    v9 = 8 * v18 - 8;
    v10 = 8 * v6 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v7);
      if ((v11 & 1) == 0)
      {
        v12 = 0;
LABEL_17:
        v7 = v17;
        if (v17 == v19)
        {
          return v12;
        }

        goto LABEL_18;
      }

      if (*v8 == 0x8000000000000000)
      {
        break;
      }

      v12 = 1;
      if (v10)
      {
        ++v8;
        ++v7;
        v13 = v9;
        v9 -= 8;
        v10 -= 8;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    v12 = 0;
    v7 = v17;
    if (v17 != v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 1;
    if (v17 != v19)
    {
LABEL_18:
      free(v7);
    }
  }

  return v12;
}

uint64_t mlir::tensor::PackOp::canonicalize(uint64_t a1, void (***a2)(void, uint64_t, __int128 *, uint64_t))
{
  v118[4] = *MEMORY[0x1E69E9840];
  *&v114 = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v114);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
  {
    v29 = *(a1 + 104);
    v30 = *(a1 + 72);
    if ((*(*(v30 + 32 * v29 + 24) + 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) > 7 || *(a1 + 112) && *(v30 + 32 * (v29 + *(a1 + 108)) + 24))
    {
      return 0;
    }

    v31 = DefiningOp;
    if (!hasSameInnerOuterAttribute(a1, DefiningOp) || !haveSameTiles(a1, v31))
    {
      return 0;
    }

    else
    {
      *&v114 = *(*(v31 + 72) + 24);
      v32 = 1;
      (**a2)(a2, a1, &v114, 1);
    }
  }

  else
  {
    v5 = a1 + 64;
    v6 = *(a1 + 44);
    v7 = (a1 + 64 + 16 * ((v6 >> 23) & 1));
    v8 = v7[8];
    if ((v6 & 0x800000) != 0)
    {
      v9 = *(a1 + 72);
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v9 = 0;
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (!*(v9 + 32 * (v7[7] + v7[6]) + 24))
    {
      goto LABEL_27;
    }

    __s1 = a1;
    v10 = *(a1 + 80);
    v104 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    *&v114 = v10;
    v11 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v114);
    if (v12)
    {
      v13 = v11;
      v14 = 8 * v12;
      while (1)
      {
        v15 = *v13;
        if (*(mlir::ArrayAttr::getValue(&v104) + 8 * v15) == 0x8000000000000000)
        {
          break;
        }

        v13 += 2;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      __s1 = v109;
      v108 = 0x600000000;
      v104 = v106;
      v105 = 0x600000000;
      *&v114 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      Value = mlir::ArrayAttr::getValue(&v114);
      v112 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v38 = mlir::ArrayAttr::getValue(&v112);
      v39 = 0;
      v41 = (v38 + 8 * v40);
      LODWORD(v108) = 0;
      v42 = (v41 - Value) >> 3;
      if (v42 > HIDWORD(v108))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, v109, v42, 8);
        v39 = v108;
      }

      if (v41 != Value)
      {
        memcpy(__s1 + 8 * v39, Value, v41 - Value);
        v39 = v108;
      }

      LODWORD(v108) = v39 + ((v41 - Value) >> 3);
      *&v114 = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v43 = mlir::ArrayAttr::getValue(&v114);
      v112 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v44 = mlir::ArrayAttr::getValue(&v112);
      v45 = 0;
      v47 = (v44 + 8 * v46);
      LODWORD(v105) = 0;
      v48 = (v47 - v43) >> 3;
      if (v48 > HIDWORD(v105))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v48, 8);
        v45 = v105;
      }

      if (v47 != v43)
      {
        memcpy(v104 + 8 * v45, v43, v47 - v43);
        v45 = v105;
      }

      LODWORD(v105) = v45 + ((v47 - v43) >> 3);
      LODWORD(v115) = 0;
      v114 = 0u;
      v116 = v118;
      v117 = 0x400000000;
      v112 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1));
      v49 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v112);
      v112 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1));
      v50 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v112);
      for (i = (v50 + 8 * v51); v49 != i; ++v49)
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(&v114, v49);
      }

      v112 = v113 + 8;
      *&v113[0] = 0x600000000;
      __src[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src[0])
      {
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(__src);
        if (!v53)
        {
          goto LABEL_49;
        }
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
        if (!v54)
        {
          goto LABEL_49;
        }
      }

      __src[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src[0])
      {
        p_DenseI64ArrayAttr = __src;
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
      }

      v56 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(p_DenseI64ArrayAttr);
      mlir::invertPermutationVector(v56, v57, __src);
      v58 = __src[0];
      if (__src[0] != v111)
      {
        if (v112 != v113 + 8)
        {
          free(v112);
          v58 = __src[0];
        }

        v112 = v58;
        *&v113[0] = __src[1];
        __src[0] = v111;
        __src[1] = 0;
        goto LABEL_49;
      }

      v75 = __src[1];
      v76 = LODWORD(v113[0]);
      if (LODWORD(v113[0]) >= LODWORD(__src[1]))
      {
        if (LODWORD(__src[1]))
        {
          memmove(v112, __src[0], 8 * LODWORD(__src[1]));
        }

        goto LABEL_111;
      }

      if (DWORD1(v113[0]) >= LODWORD(__src[1]))
      {
        if (LODWORD(v113[0]))
        {
          memmove(v112, __src[0], 8 * LODWORD(v113[0]));
          goto LABEL_109;
        }
      }

      else
      {
        LODWORD(v113[0]) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v113 + 8, LODWORD(__src[1]), 8);
      }

      v76 = 0;
LABEL_109:
      if (LODWORD(__src[1]) != v76)
      {
        memcpy(&v112[8 * v76], __src[0] + 8 * v76, 8 * (LODWORD(__src[1]) - v76));
      }

LABEL_111:
      LODWORD(v113[0]) = v75;
      LODWORD(__src[1]) = 0;
      if (__src[0] != v111)
      {
        free(__src[0]);
      }

LABEL_49:
      __src[0] = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(__src);
      if (v59 << 32)
      {
        v60 = v59;
        v61 = v113[0];
        v62 = v112;
        v63 = __s1;
        v64 = v104;
        if (DWORD2(v114))
        {
          v65 = v115;
          if (v115)
          {
            v66 = 0;
            v67 = v114;
            v68 = v115 - 1;
            while (1)
            {
              v69 = (37 * v66) & v68;
              v70 = *(v67 + 8 * v69);
              if (v66 != v70)
              {
                break;
              }

LABEL_55:
              if (v69 == v65)
              {
                goto LABEL_56;
              }

LABEL_53:
              if (++v66 == v59)
              {
                goto LABEL_66;
              }
            }

            v73 = 1;
            while (v70 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v74 = v69 + v73++;
              v69 = v74 & v68;
              v70 = *(v67 + 8 * v69);
              if (v66 == v70)
              {
                goto LABEL_55;
              }
            }

LABEL_56:
            v71 = v66;
            if (v61)
            {
              v71 = v62[v66];
            }

            v72 = v63[v66];
            if ((v72 == 0x8000000000000000) != (v64[v71] == 0x8000000000000000))
            {
              if (v72 == 0x8000000000000000)
              {
                v72 = v64[v71];
              }

              v63[v66] = v72;
              v64[v71] = v72;
            }

            goto LABEL_53;
          }

          if (LODWORD(v113[0]))
          {
            do
            {
              v85 = *v62++;
              v84 = v85;
              v86 = *v63;
              if ((*v63 == 0x8000000000000000) != (v64[v85] == 0x8000000000000000))
              {
                if (v86 == 0x8000000000000000)
                {
                  v86 = v64[v84];
                }

                *v63 = v86;
                v64[v84] = v86;
              }

              ++v63;
              --v60;
            }

            while (v60);
          }

          else
          {
            do
            {
              v98 = *v63;
              if ((*v63 == 0x8000000000000000) != (*v64 == 0x8000000000000000))
              {
                if (v98 == 0x8000000000000000)
                {
                  v98 = *v64;
                }

                *v63 = v98;
                *v64 = v98;
              }

              ++v64;
              ++v63;
              --v60;
            }

            while (v60);
          }
        }

        else if (v117)
        {
          v77 = 0;
          v78 = v116;
          v79 = 8 * v117;
          do
          {
            v80 = v79;
            v81 = v78;
            while (*v81 != v77)
            {
              ++v81;
              v80 -= 8;
              if (!v80)
              {
                goto LABEL_81;
              }
            }

            if (!v80)
            {
LABEL_81:
              v82 = v77;
              if (v61)
              {
                v82 = v62[v77];
              }

              v83 = v63[v77];
              if ((v83 == 0x8000000000000000) != (v64[v82] == 0x8000000000000000))
              {
                if (v83 == 0x8000000000000000)
                {
                  v83 = v64[v82];
                }

                v63[v77] = v83;
                v64[v82] = v83;
              }
            }

            ++v77;
          }

          while (v77 != v59);
        }

        else if (LODWORD(v113[0]))
        {
          do
          {
            v96 = *v62++;
            v95 = v96;
            v97 = *v63;
            if ((*v63 == 0x8000000000000000) != (v64[v96] == 0x8000000000000000))
            {
              if (v97 == 0x8000000000000000)
              {
                v97 = v64[v95];
              }

              *v63 = v97;
              v64[v95] = v97;
            }

            ++v63;
            --v60;
          }

          while (v60);
        }

        else
        {
          do
          {
            v99 = *v63;
            if ((*v63 == 0x8000000000000000) != (*v64 == 0x8000000000000000))
            {
              if (v99 == 0x8000000000000000)
              {
                v99 = *v64;
              }

              *v63 = v99;
              *v64 = v99;
            }

            ++v64;
            ++v63;
            --v60;
          }

          while (v60);
        }
      }

LABEL_66:
      if (v112 != v113 + 8)
      {
        free(v112);
      }

      if (v116 != v118)
      {
        free(v116);
      }

      llvm::deallocate_buffer(v114, (8 * v115));
    }

LABEL_10:
    *&v114 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v114);
    if (v17)
    {
      v18 = 8 * v17;
      while (*v16 != 0x8000000000000000)
      {
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_27;
    }

LABEL_14:
    v101 = a2;
    v19 = mlir::ArrayAttr::getValue(&v104);
    v21 = v20;
    *&v114 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1));
    v22 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v114);
    v24 = v23;
    DenseI64ArrayAttr = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v25 = mlir::ArrayAttr::getValue(&DenseI64ArrayAttr);
    v27 = v26;
    *&v114 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
    if (v114)
    {
      v28 = &v114;
    }

    else
    {
      __src[0] = mlir::Attribute::getContext((a1 + 24));
      v112 = mlir::Builder::getDenseI64ArrayAttr(__src, 0, 0);
      v28 = &v112;
    }

    v33 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v28);
    v35 = v34;
    mlir::tensor::PackOp::getMixedTiles(&__s1, &v114);
    v36 = mlir::tensor::PackOp::requirePaddingValue(v19, v21, v22, v24, v25, v27, v33, v35, v114);
    if (v114 != &v115)
    {
      free(v114);
    }

    if (v36)
    {
      goto LABEL_27;
    }

    ((*v101)[5])(v101, a1);
    v87 = (v5 + 16 * ((*(a1 + 44) >> 23) & 1));
    v88 = v87[6];
    v89 = v87[7];
    v90 = v87[8];
    v91 = *(*(*(a1 + 48) + 96) + 8 * *(*(a1 + 48) + 104) - 8);
    v92 = mlir::Attribute::getContext((a1 + 24));
    v93 = mlir::detail::DenseArrayAttrImpl<int>::get(v92, (v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 24), 4);
    ZinMirCacheTensors::ZinMirCacheTensors(__src, v91, v93);
    LODWORD(v112) = 2;
    v113[0] = *__src;
    v94 = mlir::MutableOperandRange::MutableOperandRange(&v114, a1, v89 + v88, v90, &v112, 1);
    mlir::MutableOperandRange::clear(v94);
    if (v115 != &v117)
    {
      free(v115);
    }

    ((*v101)[6])(v101, a1);
    return 1;
  }

  return v32;
}

BOOL hasSameInnerOuterAttribute(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v28 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v5 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
  v7 = v6;
  v8 = a2 + 64;
  v28 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v9 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
  if (v7 != v10)
  {
    return 0;
  }

  if (memcmp(v5, v9, 8 * v7))
  {
    return 0;
  }

  v28 = *(v4 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    p_DenseI64ArrayAttr = &v28;
  }

  else
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(p_DenseI64ArrayAttr);
  v15 = v14;
  v28 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
    if (v15 != v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    if (v15 != v18)
    {
      goto LABEL_14;
    }
  }

  if (!memcmp(v13, v16, 8 * v15))
  {
    return 1;
  }

LABEL_14:
  v28 = *(v4 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    v19 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
    result = mlir::isIdentityPermutation(v19, v20);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    v21 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    result = mlir::isIdentityPermutation(v21, v22);
    if (!result)
    {
      return result;
    }
  }

  v28 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    v23 = &v28;
  }

  else
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    v23 = &DenseI64ArrayAttr;
  }

  v24 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v23);
  return mlir::isIdentityPermutation(v24, v25);
}

BOOL haveSameTiles(uint64_t a1, uint64_t a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a1;
  mlir::tensor::PackOp::getMixedTiles(&v10, &v14);
  mlir::tensor::UnPackOp::getMixedTiles(&v11, &v9);
  if (v15 != v12)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v15)
  {
    v2 = 0;
    v3 = 8 * v15 - 8;
    do
    {
      result = mlir::isEqualConstantIntOrValue(*(v14 + v2), *(v11 + v2));
      v5 = !result || v3 == v2;
      v2 += 8;
    }

    while (!v5);
LABEL_11:
    v6 = v11;
    if (v11 == v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  result = 1;
  v6 = v11;
  if (v11 != v13)
  {
LABEL_12:
    v7 = result;
    free(v6);
    result = v7;
  }

LABEL_13:
  if (v14 != v16)
  {
    v8 = result;
    free(v14);
    return v8;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,mlir::Value,llvm::ArrayRef<long long>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, llvm::hashing::detail **a5, uint64_t a6, uint64_t *a7, llvm::hashing::detail **a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,mlir::Value,llvm::ArrayRef<long long>>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::tensor::PackOp::build(a1, v25, *a3, *a4, *a5, a5[1], *a6, *(a6 + 8), *a7, 1, *a8, a8[1]);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

unint64_t mlir::tensor::PackOp::fold(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v3 = *(a2 + 80);
    v4 = v3[*(a2 + 48) + *(a2 + 52)];
    v5 = v4 != 0;
    v6 = *v3;
    if (*v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = **(a2 + 80);
    if (v6)
    {
LABEL_3:
      if (mlir::DenseElementsAttr::classof(v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  result = reshapeConstantSource(v7, (*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v4, v5);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "unpack", 6);
}

uint64_t mlir::tensor::UnPackOp::reifyResultShapes(uint64_t *a1, mlir::IndexType **a2, uint64_t *a3)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  __src = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&__src);
  __src = v32;
  v31 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v6, 8);
      v8 = v31;
      v9 = v7 - v31;
      if (v7 == v31)
      {
        goto LABEL_7;
      }
    }

    bzero(__src + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v31) = v7;
  }

  v10 = *(a3 + 2);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &__src);
LABEL_15:
    v14 = __src;
    if (__src == v32)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
  do
  {
    if (v12 + 2 != *v12)
    {
      free(*v12);
    }

    v12 -= 8;
    v13 += 64;
  }

  while (v13);
  *(a3 + 2) = 1;
  v14 = __src;
  if (__src != v32)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v15 = *(v5 + 24);
  v16 = *(*(v5 + 72) + 56);
  v29 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v32;
  v31 = 0x600000000;
  mlir::ArrayAttr::getValue(&v29);
  if (v17 >= 1)
  {
    for (i = 0; i < v21; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v15, v16, i);
      v20 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v22 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v31 + 1, 8);
        MixedSize = v22;
        v20 = v31;
      }

      *(__src + v20) = MixedSize;
      LODWORD(v31) = v31 + 1;
      mlir::ArrayAttr::getValue(&v29);
    }
  }

  v23 = *a3;
  v24 = __src;
  if (v23 != &__src)
  {
    if (__src != v32)
    {
      if (*v23 != v23 + 16)
      {
        free(*v23);
        v24 = __src;
      }

      *v23 = v24;
      *(v23 + 8) = v31;
      __src = v32;
      HIDWORD(v31) = 0;
      goto LABEL_39;
    }

    v25 = v31;
    v26 = *(v23 + 8);
    if (v26 >= v31)
    {
      if (v31)
      {
        memmove(*v23, __src, 8 * v31);
      }

      goto LABEL_38;
    }

    if (*(v23 + 12) >= v31)
    {
      if (v26)
      {
        memmove(*v23, __src, 8 * v26);
        v27 = v31 - v26;
        if (v31 == v26)
        {
LABEL_38:
          *(v23 + 8) = v25;
LABEL_39:
          LODWORD(v31) = 0;
          v24 = __src;
          goto LABEL_40;
        }
      }

      else
      {
        v26 = 0;
        v27 = v31;
        if (!v31)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      *(v23 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v23, (v23 + 16), v25, 8);
      v26 = 0;
      v27 = v31;
      if (!v31)
      {
        goto LABEL_38;
      }
    }

    memcpy((*v23 + 8 * v26), __src + 8 * v26, 8 * v27);
    goto LABEL_38;
  }

LABEL_40:
  if (v24 != v32)
  {
    free(v24);
  }

  return 1;
}

void mlir::tensor::UnPackOp::getMixedTiles(uint64_t *__return_ptr a1@<X8>, mlir::tensor::UnPackOp *this@<X0>)
{
  v3 = *this;
  Context = mlir::Attribute::getContext((*this + 24));
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  v13 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v13);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = 8 * v5;
    do
    {
      if (*v6 == 0x8000000000000000)
      {
        v9 = *(v3 + 72) + 32 * v7++;
        v10 = *(v9 + 88) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&Context, *v6) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v11 = *(a1 + 2);
      if (v11 >= *(a1 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v11 + 1, 8);
        v11 = *(a1 + 2);
      }

      *(*a1 + 8 * v11) = v10;
      ++*(a1 + 2);
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::tensor::UnPackOp::getStaticTiles(mlir::tensor::UnPackOp *this@<X0>, void *a2@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = *this;
  v7[0] = v8;
  v7[1] = 0x600000000;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::tensor::UnPackOp::getMixedTiles(&v4, &v3);
  mlir::dispatchIndexOpFoldResults(v4, v5, v7, a2);
  if (v4 != &v6)
  {
    free(v4);
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }
}

BOOL mlir::tensor::UnPackOp::verify(mlir::tensor::UnPackOp *this)
{
  v48[6] = *MEMORY[0x1E69E9840];
  v1 = *this;
  v36 = *this;
  mlir::tensor::UnPackOp::getMixedTiles(&v46, &v36);
  if (v47)
  {
    v2 = v46;
    v3 = 8 * v47;
    while (!mlir::isConstantIntValue(*v2, 0))
    {
      ++v2;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    DenseI64ArrayAttr = "invalid zero tile factor";
    v35 = 259;
    mlir::Operation::emitError(v1, &DenseI64ArrayAttr, v37);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v43;
        v12 = __p;
        if (v43 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v43 = v10;
        operator delete(v12);
      }

      v13 = v40;
      if (!v40)
      {
        goto LABEL_54;
      }

      v14 = v41;
      v15 = v40;
      if (v41 == v40)
      {
        goto LABEL_53;
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
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_5:
  v31 = *(*(*(v1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v31);
  v5 = v4;
  v37[0] = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1));
  v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v37);
  v8 = v7;
  v37[0] = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1) + 8);
  if (!v37[0])
  {
    v30[0] = mlir::Attribute::getContext((v1 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(v30, 0, 0);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    if (v8 > v5)
    {
      goto LABEL_35;
    }

LABEL_25:
    DenseI64ArrayAttr = 0;
    v33 = 0;
    v34 = 0;
    if (v8)
    {
      v18 = 8 * v8;
      v19 = 8 * v8;
      v20 = v6;
      do
      {
        v21 = *v20++;
        v30[0] = v21;
        llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&DenseI64ArrayAttr, v30, v37);
        v19 -= 8;
      }

      while (v19);
      if (v8 == v33)
      {
        for (i = v6; (*i & 0x8000000000000000) == 0 && *i < v5; ++i)
        {
          v18 -= 8;
          if (!v18)
          {
            llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v34));
          }
        }
      }

      llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v34));
    }

    llvm::deallocate_buffer(0, 0);
  }

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v37);
  if (v8 <= v5)
  {
    goto LABEL_25;
  }

LABEL_35:
  DenseI64ArrayAttr = "invalid inner_dims_pos vector";
  v35 = 259;
  mlir::Operation::emitError(v1, &DenseI64ArrayAttr, v37);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v43;
      v25 = __p;
      if (v43 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v43 = v23;
      operator delete(v25);
    }

    v13 = v40;
    if (!v40)
    {
      goto LABEL_54;
    }

    v26 = v41;
    v15 = v40;
    if (v41 == v40)
    {
LABEL_53:
      v41 = v13;
      operator delete(v15);
LABEL_54:
      if (v38 != &v39)
      {
        free(v38);
      }

      goto LABEL_56;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v13);
LABEL_52:
    v15 = v40;
    goto LABEL_53;
  }

LABEL_56:
  if (v46 != v48)
  {
    free(v46);
  }

  return v9;
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::UnPackOp>(uint64_t a1)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v1 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = a1;
  v17 = v1;
  v15[0] = mlir::TensorType::operator mlir::ShapedType(&v17);
  v15[1] = v2;
  mlir::tensor::UnPackOp::getMixedTiles(&v17, &v16);
  Shape = mlir::ShapedType::getShape(v15);
  if (v4 <= v18)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8 * (v4 - v18);
  }

  if (v4 >= v18)
  {
    v6 = v18;
  }

  else
  {
    v6 = v4;
  }

  v7 = v17;
  if (v6)
  {
    v8 = (v5 + Shape);
    v9 = 8 * v18 - 8;
    v10 = 8 * v6 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v7);
      if ((v11 & 1) == 0)
      {
        v12 = 0;
LABEL_17:
        v7 = v17;
        if (v17 == v19)
        {
          return v12;
        }

        goto LABEL_18;
      }

      if (*v8 == 0x8000000000000000)
      {
        break;
      }

      v12 = 1;
      if (v10)
      {
        ++v8;
        ++v7;
        v13 = v9;
        v9 -= 8;
        v10 -= 8;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    v12 = 0;
    v7 = v17;
    if (v17 != v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 1;
    if (v17 != v19)
    {
LABEL_18:
      free(v7);
    }
  }

  return v12;
}

void mlir::tensor::UnPackOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::hashing::detail *a5, uint64_t a6, uint64_t *a7, uint64_t a8, llvm::hashing::detail *a9, uint64_t a10)
{
  DenseI64ArrayAttr = a10;
  v27[6] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x600000000;
  v22 = v24;
  v23 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a7, a8, &v22, &v25);
  v17 = *(a4 + 8);
  if (a10)
  {
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a9, a10);
  }

  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, a5, a6);
  mlir::ValueRange::ValueRange(v21, v22, v23);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v25, v26);
  mlir::tensor::UnPackOp::build(v19, a2, v17 & 0xFFFFFFFFFFFFFFF8, a3, a4, DenseI64ArrayAttr, v18, v20, v21[0], v21[1], v19);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }
}

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v19 = a5;
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, a9, a10);
  if (a6)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a6;
  }

  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = a7;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = a11;
  v18 = *(a2 + 72);
  if (v18 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v18 + 1, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::tensor::UnPackOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v97[4] = *MEMORY[0x1E69E9840];
  *&v93 = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v93);
  if (DefiningOp)
  {
    v5 = *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id ? DefiningOp : 0;
    if (v5)
    {
      v6 = *(v5 + 72);
      if ((*(*(*(a1 + 72) + 56) + 8) ^ *(*(v6 + 24) + 8)) > 7 || *(v5 + 112) && *(v6 + 32 * (*(v5 + 104) + *(v5 + 108)) + 24) || !hasSameInnerOuterAttribute(v5, a1) || !haveSameTiles(v5, a1))
      {
        return 0;
      }

      *&v93 = *(*(v5 + 72) + 24);
      v7 = 1;
      (**a2)(a2, a1, &v93, 1);
      return v7;
    }
  }

  *&v93 = *(*(a1 + 72) + 56);
  InterfaceFor = mlir::Value::getDefiningOp(&v93);
  v9 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      __dst = 0;
      v91 = 0;
LABEL_31:
      __s1 = v86;
      v85 = 0x600000000;
      v81 = v83;
      v82 = 0x600000000;
      *&v93 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      Value = mlir::ArrayAttr::getValue(&v93);
      __dst = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v23 = mlir::ArrayAttr::getValue(&__dst);
      v24 = 0;
      v26 = (v23 + 8 * v25);
      LODWORD(v85) = 0;
      v27 = (v26 - Value) >> 3;
      if (v27 > HIDWORD(v85))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, v86, v27, 8);
        v24 = v85;
      }

      if (v26 != Value)
      {
        memcpy(__s1 + 8 * v24, Value, v26 - Value);
        v24 = v85;
      }

      LODWORD(v85) = v24 + ((v26 - Value) >> 3);
      *&v93 = *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
      v28 = mlir::ArrayAttr::getValue(&v93);
      __dst = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v29 = mlir::ArrayAttr::getValue(&__dst);
      v30 = 0;
      v32 = (v29 + 8 * v31);
      LODWORD(v82) = 0;
      v33 = (v32 - v28) >> 3;
      if (v33 > HIDWORD(v82))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v33, 8);
        v30 = v82;
      }

      if (v32 != v28)
      {
        memcpy(v81 + 8 * v30, v28, v32 - v28);
        v30 = v82;
      }

      LODWORD(v82) = v30 + ((v32 - v28) >> 3);
      LODWORD(v94) = 0;
      v93 = 0u;
      v95 = v97;
      v96 = 0x400000000;
      v34 = a1 + 64;
      __dst = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      v35 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__dst);
      __dst = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      v36 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__dst);
      for (i = (v36 + 8 * v37); v35 != i; ++v35)
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(&v93, v35);
      }

      __dst = v92;
      v91 = 0x600000000;
      __src = *(v34 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        if (!v39)
        {
          goto LABEL_53;
        }
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
        if (!v40)
        {
          goto LABEL_53;
        }
      }

      __src = *(v34 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src)
      {
        p_src = &__src;
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        p_src = &DenseI64ArrayAttr;
      }

      v42 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(p_src);
      mlir::invertPermutationVector(v42, v43, &__src);
      v44 = __src;
      if (__src != v89)
      {
        if (__dst != v92)
        {
          free(__dst);
          v44 = __src;
        }

        __dst = v44;
        v91 = v88;
        __src = v89;
        v88 = 0;
        goto LABEL_53;
      }

      v61 = v88;
      v62 = v91;
      if (v91 >= v88)
      {
        if (v88)
        {
          memmove(__dst, __src, 8 * v88);
        }

        goto LABEL_113;
      }

      if (HIDWORD(v91) >= v88)
      {
        if (v91)
        {
          memmove(__dst, __src, 8 * v91);
          goto LABEL_111;
        }
      }

      else
      {
        LODWORD(v91) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v92, v88, 8);
      }

      v62 = 0;
LABEL_111:
      if (v88 != v62)
      {
        memcpy(__dst + 8 * v62, __src + 8 * v62, 8 * (v88 - v62));
      }

LABEL_113:
      LODWORD(v91) = v61;
      LODWORD(v88) = 0;
      if (__src != v89)
      {
        free(__src);
      }

LABEL_53:
      __src = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(&__src);
      if (v45 << 32)
      {
        v46 = v45;
        v47 = v91;
        v48 = __dst;
        v49 = __s1;
        v50 = v81;
        if (DWORD2(v93))
        {
          v51 = v94;
          if (v94)
          {
            v52 = 0;
            v53 = v93;
            v54 = v94 - 1;
            while (1)
            {
              v55 = (37 * v52) & v54;
              v56 = *(v53 + 8 * v55);
              if (v52 != v56)
              {
                break;
              }

LABEL_59:
              if (v55 == v51)
              {
                goto LABEL_60;
              }

LABEL_57:
              if (++v52 == v45)
              {
                goto LABEL_70;
              }
            }

            v59 = 1;
            while (v56 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v60 = v55 + v59++;
              v55 = v60 & v54;
              v56 = *(v53 + 8 * v55);
              if (v52 == v56)
              {
                goto LABEL_59;
              }
            }

LABEL_60:
            v57 = v52;
            if (v47)
            {
              v57 = v48[v52];
            }

            v58 = v49[v57];
            if ((v58 == 0x8000000000000000) != (v50[v52] == 0x8000000000000000))
            {
              if (v58 == 0x8000000000000000)
              {
                v58 = v50[v52];
              }

              v49[v57] = v58;
              v50[v52] = v58;
            }

            goto LABEL_57;
          }

          if (v91)
          {
            do
            {
              v72 = *v48++;
              v71 = v72;
              v73 = v49[v72];
              if ((v73 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
              {
                if (v73 == 0x8000000000000000)
                {
                  v73 = *v50;
                }

                v49[v71] = v73;
                *v50 = v73;
              }

              ++v50;
              --v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v77 = *v49;
              if ((*v49 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
              {
                if (v77 == 0x8000000000000000)
                {
                  v77 = *v50;
                }

                *v49 = v77;
                *v50 = v77;
              }

              ++v50;
              ++v49;
              --v46;
            }

            while (v46);
          }
        }

        else if (v96)
        {
          v63 = 0;
          v64 = v95;
          v65 = 8 * v96;
          do
          {
            v66 = v65;
            v67 = v64;
            while (*v67 != v63)
            {
              ++v67;
              v66 -= 8;
              if (!v66)
              {
                goto LABEL_85;
              }
            }

            if (!v66)
            {
LABEL_85:
              v68 = v63;
              if (v47)
              {
                v68 = v48[v63];
              }

              v69 = v49[v68];
              if ((v69 == 0x8000000000000000) != (v50[v63] == 0x8000000000000000))
              {
                if (v69 == 0x8000000000000000)
                {
                  v69 = v50[v63];
                }

                v49[v68] = v69;
                v50[v63] = v69;
              }
            }

            ++v63;
          }

          while (v63 != v45);
        }

        else if (v91)
        {
          do
          {
            v75 = *v48++;
            v74 = v75;
            v76 = v49[v75];
            if ((v76 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
            {
              if (v76 == 0x8000000000000000)
              {
                v76 = *v50;
              }

              v49[v74] = v76;
              *v50 = v76;
            }

            ++v50;
            --v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v78 = *v49;
            if ((*v49 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
            {
              if (v78 == 0x8000000000000000)
              {
                v78 = *v50;
              }

              *v49 = v78;
              *v50 = v78;
            }

            ++v50;
            ++v49;
            --v46;
          }

          while (v46);
        }
      }

LABEL_70:
      if (__dst != v92)
      {
        free(__dst);
      }

      if (v95 != v97)
      {
        free(v95);
      }

      llvm::deallocate_buffer(v93, (8 * v94));
    }

    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
  }

  __dst = v9;
  v91 = InterfaceFor;
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = *(*(a1 + 72) + 56);
  mlir::DestinationStyleOpInterface::getDpsInitsMutable(&v93, &__dst);
  v11 = mlir::MutableOperandRange::operator mlir::OperandRange(&v93);
  if (v94 != &v96)
  {
    free(v94);
  }

  v12 = *(v10 + 8) & 7;
  if (v10 && v12 == 6)
  {
    v12 = (*(v10 + 16) + 6);
  }

  v13 = *(v11 + 32 * v12 + 24);
  (*(*a2 + 40))(a2, a1);
  v14 = mlir::MutableOperandRange::MutableOperandRange(&v93, (*(a1 + 72) + 32));
  v15 = mlir::MutableOperandRange::operator mlir::OperandRange(v14);
  v17 = v16;
  if (v94 != &v96)
  {
    free(v94);
  }

  *&v93 = v15;
  *(&v93 + 1) = v17;
  v18 = (*(a1 + 72) + 32 * mlir::OperandRange::getBeginOperandIndex(&v93));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    *v19 = *v18;
    if (v20)
    {
      *(v20 + 8) = v19;
    }
  }

  v18[3] = v13;
  v18[1] = v13;
  v21 = *v13;
  *v18 = *v13;
  if (v21)
  {
    *(v21 + 8) = v18;
  }

  *v13 = v18;
  (*(*a2 + 48))(a2, a1);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::ArrayRef<long long>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, llvm::hashing::detail **a5, uint64_t a6, llvm::hashing::detail **a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::ArrayRef<long long>>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::UnPackOp::build(a1, v23, *a3, *a4, *a5, a5[1], *a6, *(a6 + 8), *a7, a7[1]);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
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

unint64_t mlir::tensor::UnPackOp::fold(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

BOOL mlir::tensor::BitcastOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = (*this - 2);
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v46 = v12[1];
      goto LABEL_61;
    }

LABEL_59:
    v46 = 0;
LABEL_61:
    v57[0] = a2;
    v57[1] = v46;
    mlir::ElementsAttr::isSplat(v57);
    return 1;
  }

  v53 = 261;
  v52[0] = a3;
  v52[1] = a4;
  mlir::Operation::emitOpError(a1, v52, v57);
  if (v57[0])
  {
    v54 = 3;
    v55 = " #";
    v56 = 2;
    v19 = &v54;
    v20 = v58;
    if (v59 >= v60)
    {
      if (v58 <= &v54 && v58 + 24 * v59 > &v54)
      {
        v48 = &v54 - v58;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v20 = v58;
        v19 = (v58 + v48);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v19 = &v54;
        v20 = v58;
      }
    }

    v21 = &v20[24 * v59];
    v22 = *v19;
    *(v21 + 2) = *(v19 + 2);
    *v21 = v22;
    v23 = ++v59;
    if (v57[0])
    {
      v54 = 5;
      v55 = a5;
      v24 = &v54;
      v25 = v58;
      if (v23 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v23 > &v54)
        {
          v49 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v23 + 1, 24);
          v25 = v58;
          v24 = (v58 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v23 + 1, 24);
          v24 = &v54;
          v25 = v58;
        }
      }

      v26 = &v25[24 * v59];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      v28 = ++v59;
      if (v57[0])
      {
        v54 = 3;
        v55 = " must be tensor of any type values, but got ";
        v56 = 44;
        v29 = &v54;
        v30 = v58;
        if (v28 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v28 > &v54)
          {
            v50 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v28 + 1, 24);
            v30 = v58;
            v29 = (v58 + v50);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v28 + 1, 24);
            v29 = &v54;
            v30 = v58;
          }
        }

        v31 = &v30[24 * v59];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v59;
        if (v57[0])
        {
          v33 = &v54;
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, a2);
          v34 = v58;
          if (v59 >= v60)
          {
            if (v58 <= &v54 && v58 + 24 * v59 > &v54)
            {
              v51 = &v54 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v34 = v58;
              v33 = (v58 + v51);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v33 = &v54;
              v34 = v58;
            }
          }

          v35 = &v34[24 * v59];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v59;
        }
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
  if (v57[0])
  {
    mlir::InFlightDiagnostic::report(v57);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v65;
      v40 = __p;
      if (v65 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v65 = v38;
      operator delete(v40);
    }

    v41 = v62;
    if (v62)
    {
      v42 = v63;
      v43 = v62;
      if (v63 != v62)
      {
        do
        {
          v45 = *--v42;
          v44 = v45;
          *v42 = 0;
          if (v45)
          {
            MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
          }
        }

        while (v42 != v41);
        v43 = v62;
      }

      v63 = v41;
      operator delete(v43);
    }

    if (v58 != v61)
    {
      free(v58);
    }
  }

  return v37;
}

BOOL mlir::tensor::BitcastOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v12))
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, (a2 + 4));
}

BOOL mlir::tensor::CastOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v12))
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, (a2 + 4));
}

BOOL mlir::tensor::CollapseShapeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2);
}

void mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a5;
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

BOOL mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v3, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'reassociation'";
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

BOOL mlir::tensor::CollapseShapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15 = 0;
  v16 = 0;
  v14[0] = &v15;
  v14[1] = 1;
  v13 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v16, v7))
  {
    return 0;
  }

  if (v16)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      operator new();
    }

    *v8 = v16;
  }

  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v20[0] = a1;
  v20[1] = &v12;
  v20[2] = a2;
  v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
  if (v10)
  {
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v10, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20))
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v20))
  {
    return 0;
  }

  v15 = v20[0];
  v21 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v20) & 1) == 0)
  {
    return 0;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v20))
  {
    return 0;
  }

  v13 = v20[0];
  mlir::OperationState::addTypes(a2, &v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v14, v4, a2 + 16);
}

uint64_t mlir::tensor::ConcatOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "dim", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 48;
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

uint64_t mlir::tensor::ConcatOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "dim", 3uLL, *a2);
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

unint64_t mlir::tensor::ConcatOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 26980 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::tensor::ConcatOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 26980 && *(a2 + 2) == 109)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::tensor::ConcatOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "dim", 3uLL, *a2);
  }
}

BOOL mlir::tensor::ConcatOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

uint64_t mlir::tensor::ConcatOp::verifyInvariantsImpl(uint64_t **this)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v67 = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(v3, "dim", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v67))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = *(v4 + 68);
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 72);
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v8 = *(*(v7 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
                v9 = *v8;
                if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                {
                  break;
                }

                v10 = *this;
                v63 = 261;
                v62[0] = "operand";
                v62[1] = 7;
                mlir::Operation::emitOpError(v10, v62, &v67);
                if (v67)
                {
                  v64 = 3;
                  v65 = " #";
                  v66 = 2;
                  v11 = v69;
                  if (v70 >= v71)
                  {
                    if (v69 <= &v64 && v69 + 24 * v70 > &v64)
                    {
                      v48 = &v64 - v69;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                      v11 = v69;
                      v12 = (v69 + v48);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                      v12 = &v64;
                      v11 = v69;
                    }
                  }

                  else
                  {
                    v12 = &v64;
                  }

                  v13 = &v11[24 * v70];
                  v14 = *v12;
                  *(v13 + 2) = *(v12 + 2);
                  *v13 = v14;
                  v15 = ++v70;
                  if (v67)
                  {
                    v64 = 5;
                    v65 = v6;
                    v16 = v69;
                    if (v15 >= v71)
                    {
                      if (v69 <= &v64 && v69 + 24 * v15 > &v64)
                      {
                        v49 = &v64 - v69;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v15 + 1, 24);
                        v16 = v69;
                        v17 = (v69 + v49);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v15 + 1, 24);
                        v17 = &v64;
                        v16 = v69;
                      }
                    }

                    else
                    {
                      v17 = &v64;
                    }

                    v18 = &v16[24 * v70];
                    v19 = *v17;
                    *(v18 + 2) = *(v17 + 2);
                    *v18 = v19;
                    v20 = ++v70;
                    if (v67)
                    {
                      v64 = 3;
                      v65 = " must be variadic of ranked tensor of any type values, but got ";
                      v66 = 63;
                      v21 = v69;
                      if (v20 >= v71)
                      {
                        if (v69 <= &v64 && v69 + 24 * v20 > &v64)
                        {
                          v50 = &v64 - v69;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v20 + 1, 24);
                          v21 = v69;
                          v22 = (v69 + v50);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v20 + 1, 24);
                          v22 = &v64;
                          v21 = v69;
                        }
                      }

                      else
                      {
                        v22 = &v64;
                      }

                      v23 = &v21[24 * v70];
                      v24 = *v22;
                      *(v23 + 2) = *(v22 + 2);
                      *v23 = v24;
                      ++v70;
                      if (v67)
                      {
                        v25 = &v64;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v64, v8);
                        v26 = v69;
                        if (v70 >= v71)
                        {
                          if (v69 <= &v64 && v69 + 24 * v70 > &v64)
                          {
                            v51 = &v64 - v69;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                            v26 = v69;
                            v25 = (v69 + v51);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                            v25 = &v64;
                            v26 = v69;
                          }
                        }

                        v27 = &v26[24 * v70];
                        v28 = *v25;
                        *(v27 + 2) = *(v25 + 2);
                        *v27 = v28;
                        ++v70;
                      }
                    }
                  }
                }

                v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
                if (v67)
                {
                  mlir::InFlightDiagnostic::report(&v67);
                }

                if (v78 == 1)
                {
                  if (v77 != &v78)
                  {
                    free(v77);
                  }

                  v30 = __p;
                  if (__p)
                  {
                    v31 = v76;
                    v32 = __p;
                    if (v76 != __p)
                    {
                      do
                      {
                        v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
                      }

                      while (v31 != v30);
                      v32 = __p;
                    }

                    v76 = v30;
                    operator delete(v32);
                  }

                  v33 = v73;
                  if (v73)
                  {
                    v34 = v74;
                    v35 = v73;
                    if (v74 != v73)
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
                      v35 = v73;
                    }

                    v74 = v33;
                    operator delete(v35);
                  }

                  if (v69 != v72)
                  {
                    free(v69);
                  }
                }

                if (!v29)
                {
                  return 0;
                }

                if (++v6 == v5)
                {
LABEL_95:
                  v4 = *this;
                  goto LABEL_96;
                }
              }

              {
                break;
              }

              mlir::Builder::getI32VectorAttr();
              v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v39 = *(v9 + 8);
              v40 = *(v9 + 16);
              if (v40)
              {
                goto LABEL_39;
              }

LABEL_65:
              v67 = v8;
              v68 = 0;
              mlir::ElementsAttr::isSplat(&v67);
              if (++v6 == v5)
              {
                goto LABEL_95;
              }
            }

            v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v39 = *(v9 + 8);
            v40 = *(v9 + 16);
            if (!v40)
            {
              goto LABEL_65;
            }

LABEL_39:
            v41 = v39;
            v42 = v40;
            do
            {
              v43 = v42 >> 1;
              v44 = &v41[2 * (v42 >> 1)];
              v46 = *v44;
              v45 = v44 + 2;
              v42 += ~(v42 >> 1);
              if (v46 < v38)
              {
                v41 = v45;
              }

              else
              {
                v42 = v43;
              }
            }

            while (v42);
            if (v41 == &v39[2 * v40] || *v41 != v38)
            {
              goto LABEL_65;
            }

            v47 = v41[1];
            v67 = v8;
            v68 = v47;
            mlir::ElementsAttr::isSplat(&v67);
            if (++v6 == v5)
            {
              goto LABEL_95;
            }
          }
        }
      }

LABEL_96:
      mlir::tensor::ConcatOp::verifyInvariantsImpl(v4, this, &v67);
      return v67;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v62[0] = "requires attribute 'dim'";
    v63 = 259;
    mlir::OpState::emitOpError(this, v62, &v67);
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v76;
        v55 = __p;
        if (v76 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v76 = v53;
        operator delete(v55);
      }

      v56 = v73;
      if (v73)
      {
        v57 = v74;
        v58 = v73;
        if (v74 != v73)
        {
          do
          {
            v60 = *--v57;
            v59 = v60;
            *v57 = 0;
            if (v60)
            {
              MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
            }
          }

          while (v57 != v56);
          v58 = v73;
        }

        v74 = v56;
        operator delete(v58);
      }

      if (v69 != v72)
      {
        free(v69);
      }
    }
  }

  return v52;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (!v37)
      {
        goto LABEL_55;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (!v37)
      {
        goto LABEL_55;
      }
    }

    v38 = v36;
    v39 = v37;
    do
    {
      v40 = v39 >> 1;
      v41 = &v38[2 * (v39 >> 1)];
      v43 = *v41;
      v42 = v41 + 2;
      v39 += ~(v39 >> 1);
      if (v43 < v35)
      {
        v38 = v42;
      }

      else
      {
        v39 = v40;
      }
    }

    while (v39);
    if (v38 != &v36[2 * v37] && *v38 == v35)
    {
      v44 = v38[1];
      goto LABEL_57;
    }

LABEL_55:
    v44 = 0;
LABEL_57:
    v55[0] = a2;
    v55[1] = v44;
    mlir::ElementsAttr::isSplat(v55);
    return 1;
  }

  v51 = 261;
  v50[0] = a3;
  v50[1] = a4;
  mlir::Operation::emitOpError(a1, v50, v55);
  if (v55[0])
  {
    v52 = 3;
    v53 = " #";
    v54 = 2;
    v8 = &v52;
    v9 = v56;
    if (v57 >= v58)
    {
      if (v56 <= &v52 && v56 + 24 * v57 > &v52)
      {
        v46 = &v52 - v56;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
        v9 = v56;
        v8 = (v56 + v46);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
        v8 = &v52;
        v9 = v56;
      }
    }

    v10 = &v9[24 * v57];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    v12 = ++v57;
    if (v55[0])
    {
      v52 = 5;
      v53 = a5;
      v13 = &v52;
      v14 = v56;
      if (v12 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v12 > &v52)
        {
          v47 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v12 + 1, 24);
          v14 = v56;
          v13 = (v56 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v12 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 3;
        v53 = " must be ranked tensor of any type values, but got ";
        v54 = 51;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v48 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        ++v57;
        if (v55[0])
        {
          v22 = &v52;
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, a2);
          v23 = v56;
          if (v57 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v57 > &v52)
            {
              v49 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v23 = v56;
              v22 = (v56 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v22 = &v52;
              v23 = v56;
            }
          }

          v24 = &v23[24 * v57];
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          ++v57;
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v63;
      v29 = __p;
      if (v63 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v63 = v27;
      operator delete(v29);
    }

    v30 = v60;
    if (v60)
    {
      v31 = v61;
      v32 = v60;
      if (v61 != v60)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        v32 = v60;
      }

      v61 = v30;
      operator delete(v32);
    }

    if (v56 != v59)
    {
      free(v56);
    }
  }

  return v26;
}

BOOL mlir::tensor::ConcatOp::parse(uint64_t a1, uint64_t a2)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v20[0] = v21;
  v20[1] = 0x400000000;
  Inputs = 0;
  v19 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 64);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, IntegerType))
  {
    goto LABEL_15;
  }

  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      operator new();
    }

    *v6 = v17;
  }

  if ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v20, 0, 1, 0xFFFFFFFFLL)) && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v7 = *(a2 + 8), v18[0] = a1, v18[1] = &v14, v18[2] = a2, mlir::tensor::ConcatOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v18[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v18)))
  {
    Inputs = mlir::FunctionType::getInputs(v18);
    v16 = v8;
    Results = mlir::FunctionType::getResults(v18);
    mlir::OperationState::addTypes(a2, Results, v10);
    v11 = (*(*a1 + 16))(a1);
    v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v20, &Inputs, v11, a2 + 16);
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return v12;
}

BOOL mlir::tensor::DimOp::verifyInvariantsImpl(uint64_t **this)
{
  v104 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v34 = *(v4 + 8);
      v35 = *(v4 + 16);
      if (!v35)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v51 = v4;
      mlir::Builder::getI32VectorAttr();
      v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v34 = *(v51 + 8);
      v35 = *(v51 + 16);
      if (!v35)
      {
        goto LABEL_67;
      }
    }

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
    if (v36 != &v34[2 * v35] && *v36 == v33)
    {
      v52 = v36[1];
      goto LABEL_69;
    }

LABEL_67:
    v52 = 0;
LABEL_69:
    v93[0] = v3;
    v53 = v93;
LABEL_70:
    *(v53 + 1) = v52;
    mlir::ElementsAttr::isSplat(v53);
    goto LABEL_71;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v4 + 8);
    v44 = *(v4 + 16);
    if (!v44)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v57 = v4;
    mlir::Builder::getI32VectorAttr();
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v57 + 8);
    v44 = *(v57 + 16);
    if (!v44)
    {
      goto LABEL_81;
    }
  }

  v45 = v43;
  v46 = v44;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v42)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
LABEL_81:
    v86 = v3;
    v87 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v86))
    {
      goto LABEL_3;
    }

    goto LABEL_84;
  }

  v58 = v45[1];
  v86 = v3;
  v87 = v58;
  if (!mlir::ElementsAttr::getShapedType(&v86))
  {
    goto LABEL_3;
  }

LABEL_84:
  v59 = *v3;
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_96;
    }
  }

  else
  {
    mlir::Builder::getI32VectorAttr();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_96;
    }
  }

  v63 = v61;
  v64 = v62;
  do
  {
    v65 = v64 >> 1;
    v66 = &v63[2 * (v64 >> 1)];
    v68 = *v66;
    v67 = v66 + 2;
    v64 += ~(v64 >> 1);
    if (v68 < v60)
    {
      v63 = v67;
    }

    else
    {
      v64 = v65;
    }
  }

  while (v64);
  if (v63 != &v61[2 * v62] && *v63 == v60)
  {
    v70 = v63[1];
    v90 = v3;
    v91 = v70;
    mlir::ShapedType::getShape(&v90);
    if (v71 < 1)
    {
      goto LABEL_3;
    }

LABEL_99:
    v72 = *v3;
    {
      v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      if (!v75)
      {
        goto LABEL_112;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      if (!v75)
      {
        goto LABEL_112;
      }
    }

    v76 = v74;
    v77 = v75;
    do
    {
      v78 = v77 >> 1;
      v79 = &v76[2 * (v77 >> 1)];
      v81 = *v79;
      v80 = v79 + 2;
      v77 += ~(v77 >> 1);
      if (v81 < v73)
      {
        v76 = v80;
      }

      else
      {
        v77 = v78;
      }
    }

    while (v77);
    if (v76 != &v74[2 * v75] && *v76 == v73)
    {
      v52 = v76[1];
      goto LABEL_114;
    }

LABEL_112:
    v52 = 0;
LABEL_114:
    v89 = v3;
    v53 = &v89;
    goto LABEL_70;
  }

LABEL_96:
  v90 = v3;
  v91 = 0;
  mlir::ShapedType::getShape(&v90);
  if (v69 >= 1)
  {
    goto LABEL_99;
  }

LABEL_3:
  v88 = 261;
  v86 = "operand";
  v87 = 7;
  mlir::Operation::emitOpError(v2, &v86, v93);
  if (v93[0])
  {
    LODWORD(v90) = 3;
    v91 = " #";
    v92 = 2;
    v6 = &v90;
    v7 = v94;
    if (v95 >= v96)
    {
      if (v94 <= &v90 && v94 + 24 * v95 > &v90)
      {
        v82 = &v90 - v94;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
        v7 = v94;
        v6 = (v94 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
        v6 = &v90;
        v7 = v94;
      }
    }

    v8 = &v7[24 * v95];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    v10 = ++v95;
    if (v93[0])
    {
      LODWORD(v90) = 5;
      v91 = 0;
      v11 = &v90;
      v12 = v94;
      if (v10 >= v96)
      {
        if (v94 <= &v90 && v94 + 24 * v10 > &v90)
        {
          v83 = &v90 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v10 + 1, 24);
          v12 = v94;
          v11 = (v94 + v83);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v10 + 1, 24);
          v11 = &v90;
          v12 = v94;
        }
      }

      v13 = &v12[24 * v95];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      v15 = ++v95;
      if (v93[0])
      {
        LODWORD(v90) = 3;
        v91 = " must be non-0-ranked or unranked tensor, but got ";
        v92 = 50;
        v16 = &v90;
        v17 = v94;
        if (v15 >= v96)
        {
          if (v94 <= &v90 && v94 + 24 * v15 > &v90)
          {
            v84 = &v90 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v15 + 1, 24);
            v17 = v94;
            v16 = (v94 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v15 + 1, 24);
            v16 = &v90;
            v17 = v94;
          }
        }

        v18 = &v17[24 * v95];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v95;
        if (v93[0])
        {
          v20 = &v90;
          mlir::DiagnosticArgument::DiagnosticArgument(&v90, v3);
          v21 = v94;
          if (v95 >= v96)
          {
            if (v94 <= &v90 && v94 + 24 * v95 > &v90)
            {
              v85 = &v90 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
              v21 = v94;
              v20 = (v94 + v85);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
              v20 = &v90;
              v21 = v94;
            }
          }

          v22 = &v21[24 * v95];
          v23 = *v20;
          *(v22 + 2) = v20[2];
          *v22 = v23;
          ++v95;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
  if (v93[0])
  {
    mlir::InFlightDiagnostic::report(v93);
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v101;
      v27 = __p;
      if (v101 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v101 = v25;
      operator delete(v27);
    }

    v28 = v98;
    if (v98)
    {
      v29 = v99;
      v30 = v98;
      if (v99 != v98)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v98;
      }

      v99 = v28;
      operator delete(v30);
    }

    if (v94 != v97)
    {
      free(v94);
    }
  }

  if (!v24)
  {
    return 0;
  }

LABEL_71:
  if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v54 = *this - 2;
  }

  else
  {
    v54 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v54, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::tensor::DimOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 28) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (IndexType = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &IndexType)) && (v10 = IndexType, v5 = (*(*a1 + 32))(a1), IndexType = mlir::Builder::getIndexType(v5, v6), mlir::OperationState::addTypes(a2, &IndexType, 1), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v4, (a2 + 4))))
  {
    return (*(*a1 + 728))(a1, v11, IndexType, a2 + 4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::EmptyOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  if ((*(v2 + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = v2[9] + 24;
    while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    mlir::tensor::ConcatOp::verifyInvariantsImpl(v2, this, &v7);
    return v7;
  }
}

uint64_t mlir::tensor::EmptyOp::parse(uint64_t a1, unsigned int *a2)
{
  v15[16] = *MEMORY[0x1E69E9840];
  v13 = v15;
  v14 = 0x400000000;
  if ((*(*a1 + 280))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, &v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 28) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v11))
        {
          v12 = v11;
          v4 = (*(*a1 + 32))(a1);
          IndexType = mlir::Builder::getIndexType(v4, v5);
          v7 = 1;
          mlir::OperationState::addTypes(a2, &v12, 1);
          if (!v14)
          {
            goto LABEL_13;
          }

          v8 = v13;
          v9 = 32 * v14;
          while (((*(*a1 + 728))(a1, v8, IndexType, a2 + 4) & 1) != 0)
          {
            v8 += 32;
            v7 = 1;
            v9 -= 32;
            if (!v9)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  v7 = 0;
LABEL_13:
  if (v13 != v15)
  {
    free(v13);
  }

  return v7;
}

BOOL mlir::tensor::ExpandShapeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, (v3 + 8));
}

BOOL mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(uint64_t **this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (!v6)
  {
    v37[0] = "requires attribute 'reassociation'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

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

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

LABEL_57:
    free(v35);
    return v18;
  }

  v7 = v5[1];
  if (!v7)
  {
    v37[0] = "requires attribute 'static_output_shape'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v45;
      v29 = __p;
      if (v45 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v45 = v27;
      operator delete(v29);
    }

    v30 = v42;
    if (v42)
    {
      v31 = v43;
      v32 = v42;
      if (v43 != v42)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        v32 = v42;
      }

      v43 = v30;
      operator delete(v32);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

    goto LABEL_57;
  }

  v39[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v4, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
  {
    return 0;
  }

  v39[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v7, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39) || !mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v10 = -1;
    v11 = 32;
LABEL_9:
    v12 = v11 + 24;
    v13 = 1;
    while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13))
    {
      ++v13;
      v12 += 32;
      if (!--v10)
      {
        v8 = *this;
        goto LABEL_13;
      }
    }

    return 0;
  }

  v9 = *(v8 + 17);
  v10 = v9 - 1;
  if (v9 != 1)
  {
    v11 = v8[9] + 32;
    goto LABEL_9;
  }

LABEL_13:
  v14 = *(v8 + 9);
  v15 = v8 - 2;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::tensor::ExpandShapeOp::parse(uint64_t a1, uint64_t a2)
{
  v34[16] = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v27[0] = v28;
  v27[1] = 1;
  v25 = 0;
  v26 = 0;
  v32 = v34;
  v33 = 0x400000000;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v28, 1))
  {
    v5 = (*(*a1 + 32))(a1);
    v7 = mlir::NoneType::get(*v5, v6);
    if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v26, v7))
    {
      if (v26)
      {
        v8 = *(a2 + 256);
        if (!v8)
        {
          operator new();
        }

        *v8 = v26;
      }

      v31 = 257;
      if ((*(*a1 + 400))(a1, "output_shape", 12, v30))
      {
        (*(*a1 + 40))(a1);
        v30[0] = 0;
        if (mlir::parseDynamicIndexList(a1, &v32, &v25, v30, 0))
        {
          v9 = *(a2 + 256);
          if (!v9)
          {
            operator new();
          }

          *(v9 + 8) = v25;
          v21 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v10 = *(a2 + 8);
            v30[0] = a1;
            v30[1] = &v21;
            v30[2] = a2;
            v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
            if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v11, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v30))
            {
              v12 = mlir::NamedAttrList::get(a2 + 112, *(*(v10 + 96) + 8));
              if (!v12 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v12, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v30)) && ((*(*a1 + 104))(a1))
              {
                v30[0] = 0;
                if (mlir::AsmParser::parseType<mlir::TensorType>(a1, v30))
                {
                  v24 = v30[0];
                  v31 = 257;
                  if ((*(*a1 + 400))(a1, "into", 4, v30))
                  {
                    v30[0] = 0;
                    if (mlir::AsmParser::parseType<mlir::TensorType>(a1, v30))
                    {
                      v22 = v30[0];
                      v13 = (*(*a1 + 32))(a1);
                      IndexType = mlir::Builder::getIndexType(v13, v14);
                      mlir::OperationState::addTypes(a2, &v22, 1);
                      if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v27, v23, v4, a2 + 16))
                      {
                        if (!v33)
                        {
                          v18 = 1;
                          v19 = v32;
                          if (v32 == v34)
                          {
                            return v18;
                          }

                          goto LABEL_28;
                        }

                        v16 = v32;
                        v17 = 32 * v33;
                        while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 16) & 1) != 0)
                        {
                          v16 += 32;
                          v18 = 1;
                          v17 -= 32;
                          if (!v17)
                          {
                            goto LABEL_27;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v18 = 0;
LABEL_27:
  v19 = v32;
  if (v32 != v34)
  {
LABEL_28:
    free(v19);
  }

  return v18;
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (HIDWORD(v20))
      {
        v9 = 0;
LABEL_6:
        bzero(__src + 8 * v9, 8 - 8 * v9);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v21, 1uLL, 8);
      v9 = v20;
      if (v20 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v20) = 1;
  }

  v16 = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v16);
  v11 = __src;
  *__src = ElementType;
  v12 = v20;
  v13 = *(a2 + 72);
  v14 = v13 + v20;
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
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::ExtractOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = a4;
  v15[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  v14 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::TensorType::getElementType(&v14);
  return 1;
}

BOOL mlir::tensor::ExtractOp::verifyInvariantsImpl(uint64_t **this)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = v5 + 24;
    v7 = 1;
    while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
    {
      ++v7;
      v6 += 32;
      if (!--v4)
      {
        v2 = *this;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v3 = *(v2 + 17);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = v2[9] + 32;
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v2 + 9);
  v9 = v2 - 2;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v25[0] = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(v25);
  if (*(*this + 9))
  {
    v12 = *this - 2;
  }

  else
  {
    v12 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v23 = "failed to verify that result type matches element type of tensor";
  v24 = 259;
  mlir::OpState::emitOpError(this, &v23, v25);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  v14 = result;
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
    result = v14;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v14;
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
      result = v14;
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
      result = v14;
    }

    if (v26 != &v27)
    {
      free(v26);
      return v14;
    }
  }

  return result;
}

BOOL mlir::tensor::ExtractOp::parse(uint64_t a1, unsigned int *a2)
{
  v39[16] = *MEMORY[0x1E69E9840];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v37 = v39;
  v38 = 0x400000000;
  v31[1] = 1;
  v32 = 0;
  v31[0] = &v32;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v37, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36))
  {
    goto LABEL_31;
  }

  v5 = v36[0];
  v32 = v36[0];
  v30 = v36[0];
  v6 = *v36[0];
  if (*(*v36[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = (*(*a1 + 16))(a1);
    v29 = 257;
    (*(*a1 + 24))(v36, a1, v7, v28);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v36, "'tensor' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v8, &v30);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    v11 = v37;
    if (v37 == v39)
    {
      return v10;
    }

    goto LABEL_33;
  }

  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v6 + 8);
    v14 = *(v6 + 16);
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_20:
    v14 = 0;
    v15 = v13;
    goto LABEL_21;
  }

  mlir::Builder::getI32VectorAttr();
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_13:
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
LABEL_21:
  if (v15 != &v13[2 * v14] && *v15 == v12)
  {
    v21 = v15[1];
  }

  else
  {
    v21 = 0;
  }

  v36[0] = v5;
  v36[1] = v21;
  mlir::ElementsAttr::isSplat(v36);
  v22 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v22, v23);
  v28[0] = *v31[0];
  v36[0] = mlir::TensorType::getElementType(v28);
  mlir::OperationState::addTypes(a2, v36, 1);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v31, v4, (a2 + 4)))
  {
    if (!v38)
    {
      v10 = 1;
      v11 = v37;
      if (v37 == v39)
      {
        return v10;
      }

      goto LABEL_33;
    }

    v25 = v37;
    v26 = 32 * v38;
    while (((*(*a1 + 728))(a1, v25, IndexType, a2 + 4) & 1) != 0)
    {
      v25 += 4;
      v10 = 1;
      v26 -= 32;
      if (!v26)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_31:
  v10 = 0;
LABEL_32:
  v11 = v37;
  if (v37 != v39)
  {
LABEL_33:
    free(v11);
  }

  return v10;
}

BOOL mlir::tensor::ExtractSliceOp::readProperties(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v17 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v17))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 5)
    {
      v15 = "size mismatch for operand/result_segment_size";
      v16 = 259;
      (*(*a1 + 16))(v18, a1, &v15);
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

        v4 = __p;
        if (__p)
        {
          v5 = v24;
          v6 = __p;
          if (v24 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v24 = v4;
          operator delete(v6);
        }

        v7 = v21;
        if (v21)
        {
          v8 = v22;
          v9 = v21;
          if (v22 != v21)
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
            v9 = v21;
          }

          v22 = v7;
          operator delete(v9);
        }

        if (v19 != &v20)
        {
          free(v19);
        }
      }

      return 0;
    }

    v12 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
    if (v13)
    {
      memmove(v3 + 3, v12, 4 * v13);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::tensor::ExtractSliceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, llvm::hashing::detail *a11, uint64_t a12, llvm::hashing::detail *a13, uint64_t a14, llvm::hashing::detail *a15, uint64_t a16)
{
  v31 = a4;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  v21[6] = 1;
  v21[7] = a6;
  v21[8] = a8;
  v21[9] = a10;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a11, a12);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *v23 = DenseI64ArrayAttr;
  v24 = mlir::Builder::getDenseI64ArrayAttr(a1, a13, a14);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 8) = v24;
  v26 = mlir::Builder::getDenseI64ArrayAttr(a1, a15, a16);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 16) = v26;
  v28 = *(a2 + 72);
  if (v28 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v28 + 1, 8);
    LODWORD(v28) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v28) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = v3[1];
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v12);
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = v3[2];
  if (v6)
  {
    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    mlir::tensor::ExtractSliceOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::tensor::ExtractSliceOp::parse(uint64_t a1, unsigned int *a2)
{
  v45[16] = *MEMORY[0x1E69E9840];
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v32[0] = v33;
  v32[1] = 1;
  v43 = v45;
  v44 = 0x400000000;
  v30 = 0;
  v31 = 0;
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v28 = 0;
  v29 = 0;
  v27[0] = &v28;
  v27[1] = 1;
  v26 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v33, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v43, &v31, v35, 0))
  {
    goto LABEL_31;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    operator new();
  }

  *v5 = v31;
  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v40, &v30, v35, 0))
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 8) = v30;
  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v37, &v29, v35, 0))
  {
    goto LABEL_31;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 16) = v29;
  v25 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 1);
  v35[0] = a1;
  v35[1] = &v25;
  v35[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v8, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v35))
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v35))
  {
    goto LABEL_31;
  }

  v28 = v35[0];
  v36 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v35) & 1) == 0)
  {
    goto LABEL_31;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v35))
  {
    goto LABEL_31;
  }

  v26 = v35[0];
  v9 = v44;
  v10 = v41;
  v11 = v38;
  v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  v12[6] = 1;
  v12[7] = v9;
  v12[8] = v10;
  v12[9] = v11;
  v13 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v13, v14);
  mlir::OperationState::addTypes(a2, &v26, 1);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v32, v27, v4, (a2 + 4)))
  {
    goto LABEL_31;
  }

  if (v44)
  {
    v16 = v43;
    v17 = 32 * v44;
    while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 4) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    v22 = 0;
LABEL_32:
    v23 = v37;
    if (v37 != v39)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_22:
  if (v41)
  {
    v18 = v40;
    v19 = 32 * v41;
    while (((*(*a1 + 728))(a1, v18, IndexType, a2 + 4) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_31;
  }

LABEL_26:
  if (v38)
  {
    v20 = v37;
    v21 = 32 * v38;
    while (((*(*a1 + 728))(a1, v20, IndexType, a2 + 4) & 1) != 0)
    {
      v20 += 32;
      v22 = 1;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v22 = 1;
  v23 = v37;
  if (v37 != v39)
  {
LABEL_33:
    free(v23);
  }

LABEL_34:
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v22;
}

uint64_t mlir::tensor::FromElementsOp::verifyInvariantsImpl(uint64_t **this)
{
  v118 = *MEMORY[0x1E69E9840];
  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v6 + 8);
    v36 = *(v6 + 16);
    if (!v36)
    {
      goto LABEL_60;
    }
  }

  else
  {
    mlir::Builder::getI32VectorAttr();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v6 + 8);
    v36 = *(v6 + 16);
    if (!v36)
    {
      goto LABEL_60;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
LABEL_60:
    v105 = v5;
    v106 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v105))
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

  v44 = v37[1];
  v105 = v5;
  v106 = v44;
  if (!mlir::ElementsAttr::getShapedType(&v105))
  {
    goto LABEL_5;
  }

LABEL_63:
  Shape = mlir::ShapedType::getShape(&v105);
  if (!v46)
  {
LABEL_67:
    v48 = *v5;
    {
      v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v50 = *(v48 + 8);
      v51 = *(v48 + 16);
      if (!v51)
      {
        goto LABEL_80;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v50 = *(v48 + 8);
      v51 = *(v48 + 16);
      if (!v51)
      {
        goto LABEL_80;
      }
    }

    v52 = v50;
    v53 = v51;
    do
    {
      v54 = v53 >> 1;
      v55 = &v52[2 * (v53 >> 1)];
      v57 = *v55;
      v56 = v55 + 2;
      v53 += ~(v53 >> 1);
      if (v57 < v49)
      {
        v52 = v56;
      }

      else
      {
        v53 = v54;
      }
    }

    while (v53);
    if (v52 != &v50[2 * v51] && *v52 == v49)
    {
      v59 = v52[1];
      goto LABEL_82;
    }

LABEL_80:
    v59 = 0;
LABEL_82:
    v98 = v5;
    v99 = v59;
    mlir::ElementsAttr::isSplat(&v98);
    goto LABEL_83;
  }

  v47 = 8 * v46;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v47 -= 8;
    if (!v47)
    {
      goto LABEL_67;
    }
  }

LABEL_5:
  v101 = 261;
  v98 = "result";
  v99 = 6;
  mlir::Operation::emitOpError(v4, &v98, &v105);
  if (v105)
  {
    LODWORD(v102) = 3;
    v103 = " #";
    v104 = 2;
    v7 = &v102;
    v8 = v108;
    if (v109 >= v110)
    {
      if (v108 <= &v102 && v108 + 24 * v109 > &v102)
      {
        v58 = &v102 - v108;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v109 + 1, 24);
        v8 = v108;
        v7 = (v108 + v58);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v109 + 1, 24);
        v7 = &v102;
        v8 = v108;
      }
    }

    v9 = &v8[24 * v109];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    v11 = ++v109;
    if (v105)
    {
      LODWORD(v102) = 5;
      v103 = 0;
      v12 = &v102;
      v13 = v108;
      if (v11 >= v110)
      {
        if (v108 <= &v102 && v108 + 24 * v11 > &v102)
        {
          v93 = &v102 - v108;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v11 + 1, 24);
          v13 = v108;
          v12 = (v108 + v93);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v11 + 1, 24);
          v12 = &v102;
          v13 = v108;
        }
      }

      v14 = &v13[24 * v109];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v16 = ++v109;
      if (v105)
      {
        LODWORD(v102) = 3;
        v103 = " must be statically shaped tensor of any type values, but got ";
        v104 = 62;
        v17 = &v102;
        v18 = v108;
        if (v16 >= v110)
        {
          if (v108 <= &v102 && v108 + 24 * v16 > &v102)
          {
            v94 = &v102 - v108;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v16 + 1, 24);
            v18 = v108;
            v17 = (v108 + v94);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v16 + 1, 24);
            v17 = &v102;
            v18 = v108;
          }
        }

        v19 = &v18[24 * v109];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v109;
        if (v105)
        {
          v21 = &v102;
          mlir::DiagnosticArgument::DiagnosticArgument(&v102, v5);
          v22 = v108;
          if (v109 >= v110)
          {
            if (v108 <= &v102 && v108 + 24 * v109 > &v102)
            {
              v95 = &v102 - v108;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v109 + 1, 24);
              v22 = v108;
              v21 = (v108 + v95);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v111, v109 + 1, 24);
              v21 = &v102;
              v22 = v108;
            }
          }

          v23 = &v22[24 * v109];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          ++v109;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
  if (v105)
  {
    mlir::InFlightDiagnostic::report(&v105);
  }

  if (v117 == 1)
  {
    if (v116 != &v117)
    {
      free(v116);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v115;
      v28 = __p;
      if (v115 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v115 = v26;
      operator delete(v28);
    }

    v29 = v112;
    if (v112)
    {
      v30 = v113;
      v31 = v112;
      if (v113 != v112)
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
        v31 = v112;
      }

      v113 = v29;
      operator delete(v31);
    }

    if (v108 != v111)
    {
      free(v108);
    }
  }

  if (!v25)
  {
    return 0;
  }

LABEL_83:
  if (*(*this + 9))
  {
    v60 = *this - 2;
  }

  else
  {
    v60 = 0;
  }

  v97 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v60, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v97);
  NumElements = mlir::ShapedType::getNumElements(Value, v62);
  if (*(*this + 9))
  {
    v64 = *this - 2;
  }

  else
  {
    v64 = 0;
  }

  v96 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v64, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v96);
  v66 = RHS;
  v105 = &v107;
  HIDWORD(v106) = 2;
  if (NumElements < 3)
  {
    if (NumElements)
    {
      v69 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_1A7598670));
      if (v69.i8[0])
      {
        v107 = RHS;
      }

      if (v69.i8[4])
      {
        v108 = RHS;
      }
    }
  }

  else
  {
    LODWORD(v106) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, &v107, NumElements, 8);
    if (NumElements == 3)
    {
      v67 = 3;
      v68 = v105;
    }

    else
    {
      v68 = (v105 + 8 * (NumElements & 0xFFFFFFFFFFFFFFFCLL));
      v67 = NumElements & 3;
      v70 = vdupq_n_s64(v66);
      v71 = (v105 + 16);
      v72 = NumElements & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v71[-1] = v70;
        *v71 = v70;
        v71 += 2;
        v72 -= 4;
      }

      while (v72);
      if (NumElements == (NumElements & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_101;
      }
    }

    do
    {
      *v68++ = v66;
      --v67;
    }

    while (v67);
  }

LABEL_101:
  LODWORD(v106) = NumElements;
  v73 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v74 = *(v73 + 17);
    v75 = v73[9];
  }

  else
  {
    v75 = 0;
    v74 = 0;
  }

  v102 = v75;
  v103 = v74;
  mlir::OperandRange::getTypes(&v98, &v102);
  if (v100 - v99 != v106)
  {
    v82 = 0;
    goto LABEL_113;
  }

  if (v106)
  {
    v76 = 8 * v106 - 8;
    v77 = &v98[32 * v99 + 24];
    v78 = v105;
    do
    {
      v79 = *v77;
      v77 += 32;
      v80 = *(v79 + 8);
      v81 = *v78++;
      v82 = v81 == (v80 & 0xFFFFFFFFFFFFFFF8);
      v83 = v81 != (v80 & 0xFFFFFFFFFFFFFFF8) || v76 == 0;
      v76 -= 8;
    }

    while (!v83);
LABEL_113:
    if (v105 == &v107)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v82 = 1;
  if (v105 != &v107)
  {
LABEL_114:
    free(v105);
  }

LABEL_115:
  if (v82)
  {
    return 1;
  }

  v98 = "failed to verify that operand types match result element type";
  v101 = 259;
  mlir::OpState::emitOpError(this, &v98, &v105);
  v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
  if (v105)
  {
    mlir::InFlightDiagnostic::report(&v105);
  }

  if (v117 == 1)
  {
    if (v116 != &v117)
    {
      free(v116);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v115;
      v86 = __p;
      if (v115 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v115 = v84;
      operator delete(v86);
    }

    v87 = v112;
    if (v112)
    {
      v88 = v113;
      v89 = v112;
      if (v113 != v112)
      {
        do
        {
          v91 = *--v88;
          v90 = v91;
          *v88 = 0;
          if (v91)
          {
            MEMORY[0x1AC55A040](v90, 0x1000C8077774924);
          }
        }

        while (v88 != v87);
        v89 = v112;
      }

      v113 = v87;
      operator delete(v89);
    }

    if (v108 != v111)
    {
      free(v108);
    }
  }

  return v43;
}

BOOL mlir::tensor::FromElementsOp::parse(uint64_t a1, uint64_t a2)
{
  v84[16] = *MEMORY[0x1E69E9840];
  v83[0] = v84;
  v83[1] = 0x400000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v83, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || (v70 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v70)))
  {
    v16 = 0;
    goto LABEL_15;
  }

  v5 = v70;
  v6 = *v70;
  if (*(*v70 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_37;
  }

  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_19:
    v9 = 0;
    v10 = v8;
    goto LABEL_20;
  }

  v18 = v6;
  mlir::Builder::getI32VectorAttr();
  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v18 + 8);
  v9 = *(v18 + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_8:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
LABEL_20:
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v19 = v10[1];
  }

  else
  {
    v19 = 0;
  }

  v70 = v5;
  v71 = v19;
  if (mlir::ElementsAttr::getShapedType(&v70))
  {
    Shape = mlir::ShapedType::getShape(&v70);
    if (v21)
    {
      v22 = 8 * v21;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_37;
    }

LABEL_29:
    v23 = *v5;
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v51 = v23;
      mlir::Builder::getI32VectorAttr();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v51 + 8);
      v26 = *(v51 + 16);
      if (v26)
      {
LABEL_31:
        v27 = v25;
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
LABEL_71:
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v52 = v27[1];
        }

        else
        {
          v52 = 0;
        }

        v67[0] = v5;
        v67[1] = v52;
        mlir::ElementsAttr::isSplat(v67);
        v53 = *(a2 + 72);
        if (v53 >= *(a2 + 76))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v53 + 1, 8);
          LODWORD(v53) = *(a2 + 72);
        }

        *(*(a2 + 64) + 8 * v53) = v5;
        ++*(a2 + 72);
        v67[0] = v5;
        Value = mlir::ArrayAttr::getValue(v67);
        NumElements = mlir::ShapedType::getNumElements(Value, v55);
        v69[0] = v5;
        RHS = mlir::AffineBinaryOpExpr::getRHS(v69);
        v58 = RHS;
        v70 = &v72;
        HIDWORD(v71) = 2;
        if (NumElements < 3)
        {
          if (NumElements)
          {
            v61 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_1A7598670));
            if (v61.i8[0])
            {
              v72 = RHS;
            }

            if (v61.i8[4])
            {
              v73 = RHS;
            }
          }

          goto LABEL_89;
        }

        LODWORD(v71) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, &v72, NumElements, 8);
        if (NumElements == 3)
        {
          v59 = 3;
          v60 = v70;
        }

        else
        {
          v60 = (v70 + 8 * (NumElements & 0xFFFFFFFFFFFFFFFCLL));
          v59 = NumElements & 3;
          v62 = vdupq_n_s64(v58);
          v63 = (v70 + 16);
          v64 = NumElements & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v63[-1] = v62;
            *v63 = v62;
            v63 += 2;
            v64 -= 4;
          }

          while (v64);
          if (NumElements == (NumElements & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_89;
          }
        }

        do
        {
          *v60++ = v58;
          --v59;
        }

        while (v59);
LABEL_89:
        LODWORD(v71) = NumElements;
        v65 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v83, &v70, v4, a2 + 16);
        if (v70 != &v72)
        {
          free(v70);
        }

        v16 = v65;
        goto LABEL_15;
      }
    }

    v26 = 0;
    v27 = v25;
    goto LABEL_71;
  }

LABEL_37:
  v33 = (*(*a1 + 16))(a1);
  v68 = 257;
  (*(*a1 + 24))(&v70, a1, v33, v67);
  if (v70)
  {
    LODWORD(v69[0]) = 3;
    v69[1] = "'result' must be statically shaped tensor of any type values, but got ";
    v69[2] = 70;
    v34 = v69;
    v35 = v73;
    if (v74 >= v75)
    {
      if (v73 <= v69 && v73 + 24 * v74 > v69)
      {
        v50 = v69 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v35 = v73;
        v34 = v73 + v50;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v34 = v69;
        v35 = v73;
      }
    }

    v36 = &v35[24 * v74];
    v37 = *v34;
    *(v36 + 2) = *(v34 + 2);
    *v36 = v37;
    ++v74;
    if (v70)
    {
      v38 = v69;
      mlir::DiagnosticArgument::DiagnosticArgument(v69, v5);
      v39 = v73;
      if (v74 >= v75)
      {
        if (v73 <= v69 && v73 + 24 * v74 > v69)
        {
          v66 = v69 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v39 = v73;
          v38 = v73 + v66;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v38 = v69;
          v39 = v73;
        }
      }

      v40 = &v39[24 * v74];
      v41 = *v38;
      *(v40 + 2) = *(v38 + 2);
      *v40 = v41;
      ++v74;
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v70);
  if (v70)
  {
    mlir::InFlightDiagnostic::report(&v70);
  }

  if (v82 == 1)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v80;
      v44 = __p;
      if (v80 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v80 = v42;
      operator delete(v44);
    }

    v45 = v77;
    if (v77)
    {
      v46 = v78;
      v47 = v77;
      if (v78 != v77)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        v47 = v77;
      }

      v78 = v45;
      operator delete(v47);
    }

    if (v73 != v76)
    {
      free(v73);
    }
  }

LABEL_15:
  if (v83[0] != v84)
  {
    free(v83[0]);
  }

  return v16;
}

uint64_t mlir::tensor::GatherOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v28 = &v59;
      v29 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v29 = v63;
          v28 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v28 = &v59;
          v29 = v63;
        }
      }

      v30 = &v29[24 * v64];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
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

    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
    }

    v23 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v35 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
      }
    }

    while (v35 != v23);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "gather_dims", 0xBuLL);
  if (v8)
  {
    v9 = v8;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
    {
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 56;
        v38 = &v59;
        v39 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v39 = v63;
            v38 = (v63 + v54);
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
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v43 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v43 = v63;
              v42 = (v63 + v56);
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

      if ((v72 & 1) == 0)
      {
        return 0;
      }

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

      v23 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v49 = v68;
      v25 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
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

      while (v49 != v23);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v10 = mlir::DictionaryAttr::get(&v58, "unique", 6uLL);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 51;
    v12 = &v59;
    v13 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v13 = v63;
        v12 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v12 = &v59;
        v13 = v63;
      }
    }

    v14 = &v13[24 * v64];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v64;
    if (v62[0])
    {
      v16 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v11);
      v17 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v17 = v63;
          v16 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v16 = &v59;
          v17 = v63;
        }
      }

      v18 = &v17[24 * v64];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
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

  v20 = __p;
  if (__p)
  {
    v21 = v70;
    v22 = __p;
    if (v70 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v70 = v20;
    operator delete(v22);
  }

  v23 = v67;
  if (v67)
  {
    v24 = v68;
    v25 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v23;
      operator delete(v25);
      goto LABEL_70;
    }

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
LABEL_68:
    v25 = v67;
    goto LABEL_69;
  }

LABEL_70:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::tensor::GatherOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "gather_dims", 0xBuLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "unique", 6uLL, v8);
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

unint64_t mlir::tensor::GatherOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 6)
  {
    if (a4 == 11 && *a3 == 0x645F726568746167 && *(a3 + 3) == 0x736D69645F726568)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1902734965 || *(a3 + 4) != 25973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::tensor::GatherOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x645F726568746167 && *(a2 + 3) == 0x736D69645F726568)
  {
    if (a4)
    {
      v7 = result;
      v9 = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
      result = v7;
      if (v9)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *v7 = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::tensor::GatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "gather_dims", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "unique", 6uLL, v5);
  }
}

BOOL mlir::tensor::GatherOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "gather_dims", 0xB, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "unique", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::GatherOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, a2[32]) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::GatherOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::tensor::GatherOp::verifyInvariantsImpl(uint64_t **this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v22[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v4, "gather_dims", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) && (v22[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 2;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'gather_dims'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_18;
  }

  v10 = a1;
  {
    v54 = v9;
    mlir::Builder::getZeroAttr();
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v54 + 8);
    v13 = *(v54 + 16);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_14;
  }

  v20 = v14[1];
LABEL_16:
  v60[0] = a2;
  v60[1] = v20;
  v55[0] = mlir::ElementsAttr::isSplat(v60);
  isSignlessIntOrIndex = mlir::Type::isSignlessIntOrIndex(v55);
  a1 = v10;
  if (isSignlessIntOrIndex)
  {
    return 1;
  }

LABEL_18:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v60);
  if (v60[0])
  {
    v57 = 3;
    v58 = " #";
    v59 = 2;
    v23 = &v57;
    v24 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v57 && v61 + 24 * v62 > &v57)
      {
        v50 = &v57 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v24 = v61;
        v23 = (v61 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v23 = &v57;
        v24 = v61;
      }
    }

    v25 = &v24[24 * v62];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v62;
    if (v60[0])
    {
      v57 = 5;
      v58 = a5;
      v28 = &v57;
      v29 = v61;
      if (v27 >= v63)
      {
        if (v61 <= &v57 && v61 + 24 * v27 > &v57)
        {
          v51 = &v57 - v61;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v27 + 1, 24);
          v29 = v61;
          v28 = (v61 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v27 + 1, 24);
          v28 = &v57;
          v29 = v61;
        }
      }

      v30 = &v29[24 * v62];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v62;
      if (v60[0])
      {
        v57 = 3;
        v58 = " must be ranked tensor of signless integer or index values, but got ";
        v59 = 68;
        v33 = &v57;
        v34 = v61;
        if (v32 >= v63)
        {
          if (v61 <= &v57 && v61 + 24 * v32 > &v57)
          {
            v52 = &v57 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v32 + 1, 24);
            v34 = v61;
            v33 = (v61 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v32 + 1, 24);
            v33 = &v57;
            v34 = v61;
          }
        }

        v35 = &v34[24 * v62];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v62;
        if (v60[0])
        {
          v37 = &v57;
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, a2);
          v38 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v53 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v38 = v61;
              v37 = (v61 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v37 = &v57;
              v38 = v61;
            }
          }

          v39 = &v38[24 * v62];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v62;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
  if (v60[0])
  {
    mlir::InFlightDiagnostic::report(v60);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v68;
      v43 = __p;
      if (v68 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v68 = v41;
      operator delete(v43);
    }

    v44 = v65;
    if (v65)
    {
      v45 = v66;
      v46 = v65;
      if (v66 != v65)
      {
        do
        {
          v48 = *--v45;
          v47 = v48;
          *v45 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v45 != v44);
        v46 = v65;
      }

      v66 = v44;
      operator delete(v46);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return v22;
}

BOOL mlir::tensor::GatherOp::parse(uint64_t *a1, unsigned int *a2)
{
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  Inputs = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "gather_dims", 11, &v24) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v17, 0))
  {
    return 0;
  }

  if (v17)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2);
    *v4 = v17;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "unique", 6))
  {
    v5 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v5, v6);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2) + 8) = UnitAttr;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 1);
  v24 = a1;
  v25 = &v14;
  v26 = a2;
  if (!mlir::tensor::GatherOp::verifyInherentAttrs(v8, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v14))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(&v14);
  v16 = v9;
  Results = mlir::FunctionType::getResults(&v14);
  mlir::OperationState::addTypes(a2, Results, v11);
  v24 = v21;
  v25 = v18;
  v12 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v24, &Inputs, v12, (a2 + 4));
}