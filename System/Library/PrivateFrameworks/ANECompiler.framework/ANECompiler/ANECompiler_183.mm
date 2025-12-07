uint64_t mlir::ElementsAttr::getValues<mlir::Attribute>@<X0>(mlir::ElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  ShapedType = mlir::ElementsAttr::getShapedType(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<mlir::Attribute>(a1, &v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, *(a1 + 1));
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ShapedType, v6, &v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12 & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::tensor::FromElementsOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "from_elements", 13);
}

unint64_t mlir::tensor::FromElementsOp::fold(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v4 = 8 * v3;
    v5 = *(a2 + 40);
    while (*v5)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
  }

  if (v5 != (*(a2 + 40) + 8 * v3))
  {
    return 0;
  }

LABEL_9:
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v9);
  return mlir::DenseElementsAttr::get(v7, v8, *(a2 + 40), *(a2 + 48)) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::tensor::GatherOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "gather", 6);
}

uint64_t mlir::tensor::GatherOp::inferResultType(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v46 = a2;
  v47 = a1;
  Value = mlir::ArrayAttr::getValue(&v46);
  v10 = v8 - 1;
  v56 = v58;
  v57 = 0x600000000;
  v11 = (8 * (v8 - 1)) >> 3;
  if (v11 < 7)
  {
    v12 = 0;
    v13 = 8 * v10;
    if (v8 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v11, 8);
  v12 = v57;
  v13 = 8 * v10;
  if (v10)
  {
LABEL_5:
    memcpy(v56 + 8 * v12, Value, v13);
    v12 = v57;
  }

LABEL_6:
  v14 = v12 + (v13 >> 3);
  LODWORD(v57) = v12 + (v13 >> 3);
  mlir::ArrayAttr::getValue(&v47);
  if (v15 + v14 > HIDWORD(v57))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v15 + v14, 8);
  }

  mlir::ArrayAttr::getValue(&v47);
  if (v16)
  {
    v17 = v16;
    v18 = &a3[a4];
    v19 = (8 * a4) >> 3;
    if (a5)
    {
      for (i = 0; i != v17; ++i)
      {
        v23 = a3;
        if (a4)
        {
          v24 = (8 * a4) >> 3;
          do
          {
            v25 = v24 >> 1;
            v26 = &v23[v24 >> 1];
            v28 = *v26;
            v27 = v26 + 1;
            v24 += ~(v24 >> 1);
            if (v28 < i)
            {
              v23 = v27;
            }

            else
            {
              v24 = v25;
            }
          }

          while (v24);
        }

        if (v23 == v18 || i < *v23)
        {
          v21 = *(mlir::ArrayAttr::getValue(&v47) + 8 * i);
          v22 = v57;
          if (v57 >= HIDWORD(v57))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 8);
            v22 = v57;
          }

          *(v56 + v22) = v21;
          LODWORD(v57) = v57 + 1;
        }
      }

      goto LABEL_42;
    }

    if (a4)
    {
      v29 = 0;
      while (1)
      {
        v30 = a3;
        v31 = v19;
        do
        {
          v32 = v31 >> 1;
          v33 = &v30[v31 >> 1];
          v35 = *v33;
          v34 = v33 + 1;
          v31 += ~(v31 >> 1);
          if (v35 < v29)
          {
            v30 = v34;
          }

          else
          {
            v31 = v32;
          }
        }

        while (v31);
        if (v30 == v18 || v29 < *v30)
        {
          v36 = *(mlir::ArrayAttr::getValue(&v47) + 8 * v29);
          v37 = v57;
          if (v57 >= HIDWORD(v57))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v37 = v57;
          v36 = 1;
          if (v57 >= HIDWORD(v57))
          {
LABEL_37:
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v37 + 1, 8);
            v37 = v57;
          }
        }

        *(v56 + v37) = v36;
        LODWORD(v57) = v57 + 1;
        if (++v29 == v17)
        {
          goto LABEL_42;
        }
      }
    }

    for (j = 0; j != v17; ++j)
    {
      v39 = *(mlir::ArrayAttr::getValue(&v47) + 8 * j);
      v40 = v57;
      if (v57 >= HIDWORD(v57))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 8);
        v40 = v57;
      }

      *(v56 + v40) = v39;
      LODWORD(v57) = v57 + 1;
    }
  }

LABEL_42:
  v48 = v47;
  v49 = mlir::ArrayAttr::getValue(&v48);
  v50 = v41;
  v51 = v53;
  v52 = 0x600000000;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v48);
  Values = mlir::SparseElementsAttr::getValues(&v48);
  v55 = Values;
  v49 = v56;
  v50 = v57;
  LODWORD(v52) = 0;
  if (v57)
  {
    v43 = v56;
  }

  else
  {
    v43 = v51;
  }

  v44 = mlir::RankedTensorType::get(v43, v57, RHS, Values);
  if (v51 != v53)
  {
    free(v51);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return v44;
}

BOOL mlir::tensor::GatherOp::verify(uint64_t **this)
{
  v75 = *MEMORY[0x1E69E9840];
  v64[0] = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(v64);
  v3 = v2;
  v64[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v64);
  v6 = v5;
  v7 = *this;
  v64[0] = *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(v64);
  if (!verifyGatherOrScatterDims(v7, v4, v6, Value, v9, v3, "gather", 6, "source", 6))
  {
    return 0;
  }

  v10 = mlir::tensor::GatherOp::inferResultType(*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 0);
  v11 = 1;
  v12 = mlir::tensor::GatherOp::inferResultType(*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 1);
  if (*(*this + 9))
  {
    v13 = *this - 2;
  }

  else
  {
    v13 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) != v10)
  {
    v14 = *(*this + 9) ? *this - 2 : 0;
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8) != v12)
    {
      v59 = "result type mismatch: expected ";
      v60 = 259;
      mlir::OpState::emitOpError(this, &v59, v64);
      if (v64[0])
      {
        v15 = &v61;
        mlir::DiagnosticArgument::DiagnosticArgument(&v61, v10);
        v16 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v53 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v16 = v65;
            v15 = (v65 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v15 = &v61;
            v16 = v65;
          }
        }

        v17 = &v16[24 * v66];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        v19 = ++v66;
        if (v64[0])
        {
          v61 = 3;
          v62 = " or its rank-reduced variant ";
          v63 = 29;
          v20 = &v61;
          v21 = v65;
          if (v19 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v19 > &v61)
            {
              v55 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v19 + 1, 24);
              v21 = v65;
              v20 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v19 + 1, 24);
              v20 = &v61;
              v21 = v65;
            }
          }

          v22 = &v21[24 * v66];
          v23 = *v20;
          *(v22 + 2) = *(v20 + 2);
          *v22 = v23;
          ++v66;
          if (v64[0])
          {
            v24 = &v61;
            mlir::DiagnosticArgument::DiagnosticArgument(&v61, v12);
            v25 = v65;
            if (v66 >= v67)
            {
              if (v65 <= &v61 && v65 + 24 * v66 > &v61)
              {
                v57 = &v61 - v65;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                v25 = v65;
                v24 = (v65 + v57);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                v24 = &v61;
                v25 = v65;
              }
            }

            v26 = &v25[24 * v66];
            v27 = *v24;
            *(v26 + 2) = *(v24 + 2);
            *v26 = v27;
            v28 = ++v66;
            if (v64[0])
            {
              v61 = 3;
              v62 = " (got: ";
              v63 = 7;
              v29 = &v61;
              v30 = v65;
              if (v28 >= v67)
              {
                if (v65 <= &v61 && v65 + 24 * v28 > &v61)
                {
                  v58 = &v61 - v65;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v28 + 1, 24);
                  v30 = v65;
                  v29 = (v65 + v58);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v28 + 1, 24);
                  v29 = &v61;
                  v30 = v65;
                }
              }

              v31 = &v30[24 * v66];
              v32 = *v29;
              *(v31 + 2) = *(v29 + 2);
              *v31 = v32;
              ++v66;
            }
          }
        }
      }

      if (*(*this + 9))
      {
        v33 = *this - 2;
      }

      else
      {
        v33 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
      if (v64[0])
      {
        v35 = &v61;
        mlir::DiagnosticArgument::DiagnosticArgument(&v61, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        v36 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v54 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v36 = v65;
            v35 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v35 = &v61;
            v36 = v65;
          }
        }

        v37 = &v36[24 * v66];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        v39 = ++v66;
        if (v64[0])
        {
          v61 = 3;
          v62 = ")";
          v63 = 1;
          v40 = &v61;
          v41 = v65;
          if (v39 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v39 > &v61)
            {
              v56 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v39 + 1, 24);
              v41 = v65;
              v40 = (v65 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v39 + 1, 24);
              v40 = &v61;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v66;
        }
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }

      if (v74 == 1)
      {
        if (v73 != &v74)
        {
          free(v73);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v72;
          v46 = __p;
          if (v72 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v72 = v44;
          operator delete(v46);
        }

        v47 = v69;
        if (v69)
        {
          v48 = v70;
          v49 = v69;
          if (v70 != v69)
          {
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
            v49 = v69;
          }

          v70 = v47;
          operator delete(v49);
        }

        if (v65 != v68)
        {
          free(v65);
        }
      }
    }
  }

  return v11;
}

BOOL verifyGatherOrScatterDims(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8, const char *a9, const char *a10)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= a6)
    {
      if (a5 && *(a4 + 8 * a5 - 8) == a3)
      {
        v37 = 8 * a3;
        for (i = a2; (*i & 0x8000000000000000) == 0; ++i)
        {
          if (*i >= a6)
          {
            v87 = 261;
            v84 = a7;
            v85 = a8;
            mlir::Operation::emitOpError(a1, &v84, &v92);
            if (v92)
            {
              LODWORD(v88) = 3;
              v89 = "_dims value must be smaller than ";
              v90 = 33;
              v61 = &v88;
              v62 = v94;
              if (v95 >= v96)
              {
                if (v94 <= &v88 && v94 + 24 * v95 > &v88)
                {
                  v82 = &v88 - v94;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                  v62 = v94;
                  v61 = (v94 + v82);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                  v61 = &v88;
                  v62 = v94;
                }
              }

              v63 = &v62[24 * v95];
              v64 = *v61;
              *(v63 + 2) = v61[2];
              *v63 = v64;
              ++v95;
              if (v92)
              {
                v91 = 261;
                v88 = a9;
                v89 = a10;
                mlir::Diagnostic::operator<<(v93, &v88);
                if (v92)
                {
                  LODWORD(v88) = 3;
                  v89 = " rank";
                  v90 = 5;
                  v65 = &v88;
                  v66 = v94;
                  if (v95 >= v96)
                  {
                    if (v94 <= &v88 && v94 + 24 * v95 > &v88)
                    {
                      v83 = &v88 - v94;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                      v66 = v94;
                      v65 = (v94 + v83);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                      v65 = &v88;
                      v66 = v94;
                    }
                  }

                  v67 = &v66[24 * v95];
                  v68 = *v65;
                  *(v67 + 2) = v65[2];
                  *v67 = v68;
                  ++v95;
                }
              }
            }

            v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
            if (v92)
            {
              mlir::InFlightDiagnostic::report(&v92);
            }

            if (v103 != 1)
            {
              return v18;
            }

            if (v102 != &v103)
            {
              free(v102);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v101;
              v71 = __p;
              if (v101 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v101 = v69;
              operator delete(v71);
            }

            v22 = v98;
            if (!v98)
            {
              goto LABEL_117;
            }

            v72 = v99;
            v24 = v98;
            if (v99 == v98)
            {
              goto LABEL_116;
            }

            do
            {
              v74 = *--v72;
              v73 = v74;
              *v72 = 0;
              if (v74)
              {
                MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
              }
            }

            while (v72 != v22);
            goto LABEL_115;
          }

          v37 -= 8;
          if (!v37)
          {
            if (a3 < 2)
            {
              return 1;
            }

            v39 = a3 - 1;
            v40 = a2 + 1;
            v18 = 1;
            while (*(v40 - 1) < *v40)
            {
              ++v40;
              if (!--v39)
              {
                return v18;
              }
            }

            v91 = 261;
            v88 = a7;
            v89 = a8;
            mlir::Operation::emitOpError(a1, &v88, &v92);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v92, "_dims values must be strictly increasing");
            v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
            return v18;
          }
        }

        v91 = 261;
        v88 = a7;
        v89 = a8;
        mlir::Operation::emitOpError(a1, &v88, &v92);
        if (v92)
        {
          LODWORD(v84) = 3;
          v85 = "_dims value must be non-negative";
          v86 = 32;
          v51 = &v84;
          v52 = v94;
          if (v95 >= v96)
          {
            if (v94 <= &v84 && v94 + 24 * v95 > &v84)
            {
              v81 = &v84 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
              v52 = v94;
              v51 = (v94 + v81);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
              v51 = &v84;
              v52 = v94;
            }
          }

          v53 = &v52[24 * v95];
          v54 = *v51;
          *(v53 + 2) = v51[2];
          *v53 = v54;
          ++v95;
        }

        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
        if (v92)
        {
          mlir::InFlightDiagnostic::report(&v92);
        }

        if (v103 != 1)
        {
          return v18;
        }

        if (v102 != &v103)
        {
          free(v102);
        }

        v55 = __p;
        if (__p)
        {
          v56 = v101;
          v57 = __p;
          if (v101 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v101 = v55;
          operator delete(v57);
        }

        v22 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v58 = v99;
        v24 = v98;
        if (v99 == v98)
        {
          goto LABEL_116;
        }

        do
        {
          v60 = *--v58;
          v59 = v60;
          *v58 = 0;
          if (v60)
          {
            MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
          }
        }

        while (v58 != v22);
        goto LABEL_115;
      }

      v91 = 261;
      v88 = a7;
      v89 = a8;
      mlir::Operation::emitOpError(a1, &v88, &v92);
      if (v92)
      {
        LODWORD(v84) = 3;
        v85 = "_dims length must match the size of last dimension of indices";
        v86 = 61;
        v41 = &v84;
        v42 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v84 && v94 + 24 * v95 > &v84)
          {
            v79 = &v84 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v42 = v94;
            v41 = (v94 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v41 = &v84;
            v42 = v94;
          }
        }

        v43 = &v42[24 * v95];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        ++v95;
      }

      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
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

        v45 = __p;
        if (__p)
        {
          v46 = v101;
          v47 = __p;
          if (v101 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v101 = v45;
          operator delete(v47);
        }

        v22 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v48 = v99;
        v24 = v98;
        if (v99 == v98)
        {
          goto LABEL_116;
        }

        do
        {
          v50 = *--v48;
          v49 = v50;
          *v48 = 0;
          if (v50)
          {
            MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
          }
        }

        while (v48 != v22);
        goto LABEL_115;
      }
    }

    else
    {
      v87 = 261;
      v84 = a7;
      v85 = a8;
      mlir::Operation::emitOpError(a1, &v84, &v92);
      if (v92)
      {
        LODWORD(v88) = 3;
        v89 = "_dims overflow ";
        v90 = 15;
        v10 = &v88;
        v11 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v88 && v94 + 24 * v95 > &v88)
          {
            v78 = &v88 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v11 = v94;
            v10 = (v94 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v10 = &v88;
            v11 = v94;
          }
        }

        v12 = &v11[24 * v95];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v95;
        if (v92)
        {
          v91 = 261;
          v88 = a9;
          v89 = a10;
          mlir::Diagnostic::operator<<(v93, &v88);
          if (v92)
          {
            LODWORD(v88) = 3;
            v89 = " rank";
            v90 = 5;
            v14 = &v88;
            v15 = v94;
            if (v95 >= v96)
            {
              if (v94 <= &v88 && v94 + 24 * v95 > &v88)
              {
                v80 = &v88 - v94;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v15 = v94;
                v14 = (v94 + v80);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v14 = &v88;
                v15 = v94;
              }
            }

            v16 = &v15[24 * v95];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            ++v95;
          }
        }
      }

      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
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

        v19 = __p;
        if (__p)
        {
          v20 = v101;
          v21 = __p;
          if (v101 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v101 = v19;
          operator delete(v21);
        }

        v22 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v23 = v99;
        v24 = v98;
        if (v99 == v98)
        {
LABEL_116:
          v99 = v22;
          operator delete(v24);
LABEL_117:
          if (v94 != v97)
          {
            free(v94);
          }

          return v18;
        }

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
LABEL_115:
        v24 = v98;
        goto LABEL_116;
      }
    }
  }

  else
  {
    v91 = 261;
    v88 = a7;
    v89 = a8;
    mlir::Operation::emitOpError(a1, &v88, &v92);
    if (v92)
    {
      LODWORD(v84) = 3;
      v85 = "_dims must be non-empty";
      v86 = 23;
      v27 = &v84;
      v28 = v94;
      if (v95 >= v96)
      {
        if (v94 <= &v84 && v94 + 24 * v95 > &v84)
        {
          v77 = &v84 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v28 = v94;
          v27 = (v94 + v77);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v27 = &v84;
          v28 = v94;
        }
      }

      v29 = &v28[24 * v95];
      v30 = *v27;
      *(v29 + 2) = v27[2];
      *v29 = v30;
      ++v95;
    }

    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
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

      v31 = __p;
      if (__p)
      {
        v32 = v101;
        v33 = __p;
        if (v101 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v101 = v31;
        operator delete(v33);
      }

      v22 = v98;
      if (!v98)
      {
        goto LABEL_117;
      }

      v34 = v99;
      v24 = v98;
      if (v99 == v98)
      {
        goto LABEL_116;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v34 != v22);
      goto LABEL_115;
    }
  }

  return v18;
}

unint64_t mlir::tensor::GatherOp::fold(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
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

unint64_t reshapeConstantSource(unint64_t result, void *a2, llvm::APFloatBase *a3, char a4)
{
  v13 = a2;
  v14 = result;
  if (result)
  {
    if (!mlir::DenseElementsAttr::isSplat(&v14) || !mlir::TensorType::hasRank(&v13))
    {
      return 0;
    }

    Value = mlir::ArrayAttr::getValue(&v13);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if (a4)
    {
      mlir::ArrayAttr::getValue(&v14);
      ZinMirCacheTensors::ZinMirCacheTensors(&v16, v14, 0);
      v9 = v14;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
      ZinMirCacheTensors::ZinMirCacheTensors(&v15, v9, NumElements);
      if (mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v16) != a3)
      {
        return 0;
      }
    }

    v11 = mlir::TensorType::operator mlir::ShapedType(&v13);
    return mlir::DenseElementsAttr::reshape(&v14, v11, v12) & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

uint64_t mlir::tensor::InsertOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "inserted", 8);
}

unint64_t mlir::tensor::InsertOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *v2;
  v3 = *(v2 + 8);
  if (*v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (!mlir::DenseElementsAttr::classof(*(v2 + 8)) ? (v6 = 0) : (v6 = v3), (*&v14 = v6) != 0 && ((isSplat = mlir::DenseElementsAttr::isSplat(&v14)) == 0 ? (v8 = 0) : (v8 = v3), (v12 = v8, isSplat) && (mlir::ArrayAttr::getValue(&v12), ZinMirCacheTensors::ZinMirCacheTensors(&v14, v12, 0), v9 = v12, NumElements = mlir::DenseElementsAttr::getNumElements(&v12), ZinMirCacheTensors::ZinMirCacheTensors(&v13, v9, NumElements), v4 == mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v14)))))
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::GenerateOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "generated", 9);
}

uint64_t mlir::tensor::GenerateOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t a3)
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
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    for (i = 0; i != v16; ++i)
    {
      v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::ArrayAttr::getValue(&v24) + 8 * i) == 0x8000000000000000)
      {
        v19 = v17++;
        v20 = *(*(*a1 + 72) + 32 * v19 + 24) | 4;
      }

      else
      {
        v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
        Value = mlir::ArrayAttr::getValue(&v24);
        v20 = mlir::Builder::getIndexAttr(a2, *(Value + 8 * i)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v20;
    }
  }

  return 1;
}

uint64_t mlir::tensor::GenerateOp::verifyRegions(uint64_t **this)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v41 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  ArgumentTypes = mlir::Region::getArgumentTypes((((&v2[2 * ((*(v2 + 11) >> 23) & 1) + 8] + ((*(v2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10)));
  if (ArgumentTypes == v4)
  {
LABEL_5:
    v7 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
    if (*v7 == v7)
    {
      mlir::ArrayAttr::getValue(&v41);
      if (!v17)
      {
LABEL_10:
        v12 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
        if (v12)
        {
          v13 = (v12 - 8);
        }

        else
        {
          v13 = 0;
        }

        mlir::Block::getTerminator(v13);
        v15 = *(*(*(v14 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v15 == mlir::AffineBinaryOpExpr::getRHS(&v41))
        {
          return 1;
        }

        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v42);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
        if (v42[0])
        {
          mlir::InFlightDiagnostic::report(v42);
        }

        if (v50 != 1)
        {
          return v16;
        }

        if (v49 != &v50)
        {
          free(v49);
        }

        v32 = __p;
        if (__p)
        {
          v33 = v48;
          v34 = __p;
          if (v48 != __p)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = __p;
          }

          v48 = v32;
          operator delete(v34);
        }

        v21 = v45;
        if (!v45)
        {
          goto LABEL_66;
        }

        v35 = v46;
        v23 = v45;
        if (v46 == v45)
        {
LABEL_65:
          v46 = v21;
          operator delete(v23);
LABEL_66:
          if (v43 != &v44)
          {
            free(v43);
          }

          return v16;
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

        while (v35 != v21);
LABEL_64:
        v23 = v45;
        goto LABEL_65;
      }
    }

    else
    {
      v8 = v7[1];
      if (v8)
      {
        v9 = v8 - 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = ((*(v9 + 56) - *(v9 + 48)) >> 3);
      mlir::ArrayAttr::getValue(&v41);
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }

    v39[0] = "must have one body argument per input dimension";
    v40 = 259;
    mlir::OpState::emitError(this, v39, v42);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return v16;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v48;
      v20 = __p;
      if (v48 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v48 = v18;
      operator delete(v20);
    }

    v21 = v45;
    if (!v45)
    {
      goto LABEL_66;
    }

    v22 = v46;
    v23 = v45;
    if (v46 == v45)
    {
      goto LABEL_65;
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
    goto LABEL_64;
  }

  v5 = ArgumentTypes;
  v6 = v4;
  while (1)
  {
    v42[0] = *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (!mlir::Type::isIndex(v42))
    {
      break;
    }

    v5 += 8;
    if (v5 == v6)
    {
      goto LABEL_5;
    }
  }

  v39[0] = "all body arguments must be index";
  v40 = 259;
  mlir::OpState::emitError(this, v39, v42);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v48;
      v28 = __p;
      if (v48 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v48 = v26;
      operator delete(v28);
    }

    v21 = v45;
    if (!v45)
    {
      goto LABEL_66;
    }

    v29 = v46;
    v23 = v45;
    if (v46 == v45)
    {
      goto LABEL_65;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v21);
    goto LABEL_64;
  }

  return v16;
}

uint64_t mlir::tensor::ReshapeOp::verify(uint64_t **this)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v72 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 2;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v71 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v72);
  if (ElementType != mlir::TensorType::getElementType(&v71))
  {
    v69[0] = "element types of source and destination tensor types should be the same";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v80;
        v15 = __p;
        if (v80 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v80 = v13;
        operator delete(v15);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v17 = v78;
      v18 = v77;
      if (v78 == v77)
      {
        goto LABEL_92;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v17 != v16);
      goto LABEL_91;
    }

    return v12;
  }

  v73 = *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *mlir::ArrayAttr::getValue(&v73);
  v8 = v71;
  v9 = v72;
  v10 = *(*v71 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  v68 = v8;
  v11 = *(*v72 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = 0;
  }

  v67 = v9;
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 1;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && mlir::TensorType::hasRank(&v68))
  {
    Value = mlir::ArrayAttr::getValue(&v68);
    if (v22)
    {
      v23 = 8 * v22;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_57;
    }

LABEL_33:
    if (!mlir::TensorType::hasRank(&v67))
    {
      goto LABEL_57;
    }

    v24 = mlir::ArrayAttr::getValue(&v67);
    if (v25)
    {
      v26 = 8 * v25;
      while (*v24 != 0x8000000000000000)
      {
        ++v24;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_57;
    }

LABEL_38:
    v73 = mlir::TensorType::operator mlir::ShapedType(&v67);
    v74 = v27;
    Shape = mlir::ShapedType::getShape(&v73);
    if (!v29)
    {
      v38 = 1;
      goto LABEL_47;
    }

    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v31 = v30 + 1;
      v32 = (v30 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v33 = (Shape + 8 * v32);
      v34 = (Shape + 8);
      v35 = 1;
      v36 = v32;
      v37 = 1;
      do
      {
        v35 *= *(v34 - 1);
        v37 *= *v34;
        v34 += 2;
        v36 -= 2;
      }

      while (v36);
      v38 = v37 * v35;
      if (v31 == v32)
      {
LABEL_47:
        v73 = mlir::TensorType::operator mlir::ShapedType(&v68);
        v74 = v40;
        v41 = mlir::ShapedType::getShape(&v73);
        if (!v42)
        {
          v51 = 1;
          goto LABEL_56;
        }

        v43 = (v42 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v43)
        {
          v44 = v43 + 1;
          v45 = (v43 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v46 = (v41 + 8 * v45);
          v47 = (v41 + 8);
          v48 = 1;
          v49 = v45;
          v50 = 1;
          do
          {
            v48 *= *(v47 - 1);
            v50 *= *v47;
            v47 += 2;
            v49 -= 2;
          }

          while (v49);
          v51 = v50 * v48;
          if (v44 == v45)
          {
LABEL_56:
            if (v38 != v51)
            {
              v69[0] = "source and destination tensor should have the same number of elements";
              v70 = 259;
              mlir::OpState::emitOpError(this, v69, &v73);
              v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v73);
              return v12;
            }

            goto LABEL_57;
          }
        }

        else
        {
          v51 = 1;
          v46 = v41;
        }

        do
        {
          v52 = *v46++;
          v51 *= v52;
        }

        while (v46 != (v41 + 8 * v42));
        goto LABEL_56;
      }
    }

    else
    {
      v38 = 1;
      v33 = Shape;
    }

    do
    {
      v39 = *v33++;
      v38 *= v39;
    }

    while (v33 != (Shape + 8 * v29));
    goto LABEL_47;
  }

LABEL_57:
  if (v7 == 0x8000000000000000)
  {
    v69[0] = "cannot use shape operand with dynamic length to reshape to statically-ranked tensor type";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v80;
        v55 = __p;
        if (v80 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v80 = v53;
        operator delete(v55);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v56 = v78;
      v18 = v77;
      if (v78 == v77)
      {
LABEL_92:
        v78 = v16;
        operator delete(v18);
LABEL_93:
        if (v75 != &v76)
        {
          free(v75);
        }

        return v12;
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

      while (v56 != v16);
LABEL_91:
      v18 = v77;
      goto LABEL_92;
    }
  }

  else
  {
    mlir::ArrayAttr::getValue(&v68);
    if (v7 == v59)
    {
      return 1;
    }

    v69[0] = "length of shape operand differs from the result's tensor rank";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v60 = __p;
      if (__p)
      {
        v61 = v80;
        v62 = __p;
        if (v80 != __p)
        {
          do
          {
            v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
          }

          while (v61 != v60);
          v62 = __p;
        }

        v80 = v60;
        operator delete(v62);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v63 = v78;
      v18 = v77;
      if (v78 == v77)
      {
        goto LABEL_92;
      }

      do
      {
        v65 = *--v63;
        v64 = v65;
        *v63 = 0;
        if (v65)
        {
          MEMORY[0x1AC55A040](v64, 0x1000C8077774924);
        }
      }

      while (v63 != v16);
      goto LABEL_91;
    }
  }

  return v12;
}

unint64_t mlir::tensor::ReshapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
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
    v40 = *(*(*a1 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v40);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
    {
      v16 = *a1;
      v17 = *(*a1 + 72);
      v18 = *(*(DefiningOp + 72) + 24);
      v19 = v17[1];
      if (v19)
      {
        v20 = *v17;
        *v19 = *v17;
        if (v20)
        {
          *(v20 + 8) = v19;
        }
      }

      v17[3] = v18;
      v17[1] = v18;
      v21 = *v18;
      *v17 = *v18;
      if (v21)
      {
        *(v21 + 8) = v17;
      }

      *v18 = v17;
      v22 = *(v16 + 36);
      v23 = v16 - 16;
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      return mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0) | 4;
    }

    else
    {
      v9 = *a1;
      v10 = *(*(*a1 + 72) + 24);
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v11 = 0;
      }

      v40 = v11;
      v12 = *(v9 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && v11 == v12)
      {
        mlir::ArrayAttr::getValue(&v40);
        if (v15 == 1)
        {
          return v10 | 4;
        }

        else
        {
          v39 = *(*(*a1 + 72) + 56);
          result = mlir::Value::getDefiningOp(&v39);
          if (result)
          {
            if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
            {
              if ((*(result + 46) & 0x80) != 0)
              {
                v25 = *(result + 68);
                v26 = *(result + 72);
                mlir::ArrayAttr::getValue(&v40);
                v28 = v27 == v25;
                if (v25 >= 1 && v27 == v25)
                {
                  v29 = 0;
                  v30 = (v26 + 24);
                  while (1)
                  {
                    v39 = *v30;
                    ConstantIntValue = mlir::getConstantIntValue(v39 | 4);
                    if (v32)
                    {
                      v28 = ConstantIntValue == *(mlir::ArrayAttr::getValue(&v40) + 8 * v29);
                    }

                    else
                    {
                      v33 = mlir::Value::getDefiningOp(&v39);
                      if (!v33 || *(*(v33 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
                      {
                        return 0;
                      }

                      v34 = *(v33 + 72);
                      v35 = *(v34 + 24) == v10;
                      v36 = mlir::getConstantIntValue(*(v34 + 56) | 4);
                      v28 = v35 & v37;
                      if (v29 != v36)
                      {
                        v28 = 0;
                      }
                    }

                    if (++v29 < v25)
                    {
                      v30 += 4;
                      if (v28)
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }

              else
              {
                mlir::ArrayAttr::getValue(&v40);
                v28 = v38 == 0;
              }

              if (v28)
              {
                return v10 | 4;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "collapsed", 9);
}

uint64_t mlir::tensor::ExpandShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "expanded", 8);
}

uint64_t mlir::tensor::ExpandShapeOp::getCorrespondingSourceDim(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v22[16] = *MEMORY[0x1E69E9840];
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &v17);
  v20 = v22;
  v21 = 0x400000000;
  if (v18)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v20, &v17);
    v3 = v17;
    if (!v18)
    {
      goto LABEL_8;
    }

    v4 = v17 + 32 * v18 - 16;
    v5 = -32 * v18;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
  }

  v3 = v17;
LABEL_8:
  if (v3 != &v19)
  {
    free(v3);
  }

  v7 = v20;
  if (!v21)
  {
    v8 = 0;
    if (v20 == v22)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v8 = 0;
  v9 = v20;
  while (1)
  {
    v11 = *(v9 + 2);
    if (v11)
    {
      v12 = 8 * v11;
      v10 = *v9;
      while (*v10 != a2)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = *v9;
    }

    if (v10 != &(*v9)[v11])
    {
      break;
    }

LABEL_14:
    ++v8;
    v9 += 4;
    if (v9 == (v20 + 32 * v21))
    {
      v8 = ((v21 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      break;
    }
  }

  v13 = v20 + 32 * v21 - 16;
  v14 = -32 * v21;
  do
  {
    v15 = *(v13 - 2);
    if (v13 != v15)
    {
      free(v15);
    }

    v13 -= 32;
    v14 += 32;
  }

  while (v14);
  v7 = v20;
  if (v20 != v22)
  {
LABEL_28:
    free(v7);
  }

  return v8;
}

void mlir::tensor::ExpandShapeOp::inferOutputShape(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v15 = mlir::TensorType::operator mlir::ShapedType(&v21);
  mlir::inferExpandShapeOutputShape(a1, a2, v15, v16, a4, a5, a6, a7, &__src);
  if (v25 != 1)
  {
    *a8 = 0;
    *(a8 + 64) = 0;
    return;
  }

  v17 = (a8 + 16);
  *a8 = a8 + 16;
  *(a8 + 8) = 0x600000000;
  if (&__src != a8)
  {
    v18 = v23;
    if (v23)
    {
      if (v23 < 7)
      {
        v19 = v23;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a8, (a8 + 16), v23, 8);
        v19 = v23;
        if (!v23)
        {
          goto LABEL_11;
        }

        v17 = *a8;
      }

      memcpy(v17, __src, 8 * v19);
LABEL_11:
      *(a8 + 8) = v18;
      v20 = v25;
      *(a8 + 64) = 1;
      if ((v20 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  *(a8 + 64) = 1;
LABEL_12:
  if (__src != &v24)
  {
    free(__src);
  }
}

void mlir::tensor::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x600000000;
  v16 = (8 * a8) >> 3;
  if (v16 < 7)
  {
    v17 = 0;
    v18 = 8 * a8;
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v16, 8);
  v17 = v22;
  v18 = 8 * a8;
  if (a8)
  {
LABEL_5:
    memcpy(v21 + 8 * v17, a7, v18);
    v17 = v22;
  }

LABEL_6:
  LODWORD(v22) = v17 + (v18 >> 3);
  mlir::decomposeMixedValues(&v21, &v24);
  if (v21 != v23)
  {
    free(v21);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::ValueRange::ValueRange(&v21, v27, v28);
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, ReassociationIndicesAttribute, v21, v22, v20, v24, v25);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v24 != &v26)
  {
    free(v24);
  }
}

void mlir::tensor::ExpandShapeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, llvm::hashing::detail *a9, uint64_t a10)
{
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = a5;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a9, a10);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = DenseI64ArrayAttr;
  v19 = *(a2 + 72);
  if (v19 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v19 + 1, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v19) = a3;
  ++*(a2 + 72);
}

void mlir::tensor::ExpandShapeOp::build(mlir::IndexType **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  __src = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = v31;
  v30 = 0x600000000;
  mlir::ArrayAttr::getValue(&__src);
  if (v13 >= 1)
  {
    for (i = 0; i < v17; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a1, v12, a4, i);
      v16 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v18 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        MixedSize = v18;
        v16 = v30;
      }

      *(v29 + v16) = MixedSize;
      LODWORD(v30) = v30 + 1;
      mlir::ArrayAttr::getValue(&__src);
    }
  }

  mlir::tensor::ExpandShapeOp::inferOutputShape(a1, *a2, a3, a5, a6, v29, v30, &__src);
  __dst = v24;
  v23 = 0x600000000;
  if (v28 != 1)
  {
    v19 = 0;
    v21 = v24;
    goto LABEL_16;
  }

  v19 = v26;
  if (v26)
  {
    if (v26 < 7)
    {
      v20 = v26;
      v21 = v24;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v24, v26, 8);
      v20 = v26;
      v21 = __dst;
      if (!v26)
      {
        goto LABEL_15;
      }
    }

    memcpy(v21, __src, 8 * v20);
    v21 = __dst;
  }

  else
  {
    v21 = v24;
  }

LABEL_15:
  LODWORD(v23) = v19;
LABEL_16:
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, a5, a6, v21, v19);
  if (__dst != v24)
  {
    free(__dst);
  }

  if (v28 == 1 && __src != &v27)
  {
    free(__src);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

void mlir::tensor::CollapseShapeOp::getReassociationExprs(mlir::tensor::CollapseShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v18[8] = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &v13);
  mlir::convertReassociationIndicesToExprs(Context, v13, v14, &v16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  if (v17)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(a2, &v16);
    v5 = v16;
    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = &v16[32 * v17 - 16];
    v7 = -32 * v17;
    do
    {
      v8 = *(v6 - 2);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
  }

  v5 = v16;
LABEL_8:
  if (v5 != v18)
  {
    free(v5);
  }

  v9 = v13;
  if (v14)
  {
    v10 = v13 + 32 * v14 - 16;
    v11 = -32 * v14;
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
    v9 = v13;
  }

  if (v9 != &v15)
  {
    free(v9);
  }
}

uint64_t mlir::tensor::CollapseShapeOp::inferCollapsedType(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v30 = a1;
  Value = mlir::ArrayAttr::getValue(&v30);
  v31 = v33;
  v32 = 0x400000000;
  if (a3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, a3, 8);
LABEL_4:
    v6 = 0;
    v7 = &a2[a3];
    while (1)
    {
      v29 = *a2;
      v8 = mlir::arith::FastMathFlagsAttr::getValue(&v29);
      v9 = v8;
      if (v8)
      {
        v10 = 8 * v8;
        v11 = (Value + 8 * v6);
        while (*v11 != 0x8000000000000000)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v11 = (Value + 8 * v6);
      }

      v12 = Value + 8 * v6 + 8 * v8;
      if (v11 == v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0x8000000000000000;
      }

      if (v11 != v12 || v8 == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      if (v8 >= 2)
      {
        v15 = 0;
        if (!__CFADD__(v6, v8 - 1))
        {
          v13 = 1;
          if (!((v8 - 1) >> 32))
          {
            v15 = v8 & 0xFFFFFFFE;
            v20 = v6;
            v21 = v15;
            v22 = 1;
            v23 = 1;
            do
            {
              v22 *= *(Value + 8 * v20);
              v23 *= *(Value + 8 * (v20 + 1));
              v20 += 2;
              v21 -= 2;
            }

            while (v21);
            v13 = v23 * v22;
            if (v15 == v8)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        v15 = 0;
      }

      v13 = 1;
LABEL_21:
      v16 = v6 + v15;
      v17 = v8 - v15;
      do
      {
        v13 *= *(Value + 8 * v16++);
        --v17;
      }

      while (v17);
LABEL_23:
      v18 = v32;
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        v18 = v32;
      }

      *(v31 + v18) = v13;
      v19 = v32 + 1;
      LODWORD(v32) = v32 + 1;
      v6 += v9;
      if (++a2 == v7)
      {
        goto LABEL_34;
      }
    }
  }

  if (a3)
  {
    goto LABEL_4;
  }

  v19 = v32;
LABEL_34:
  v24 = v31;
  v25 = v19;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v30);
  result = mlir::RankedTensorType::get(v24, v25, RHS, 0);
  if (v31 != v33)
  {
    v28 = result;
    free(v31);
    return v28;
  }

  return result;
}

void mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v13 = *(a2 + 120);
  if (a8 + v13 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a8 + v13, 16);
    LODWORD(v13) = *(a2 + 120);
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v13), a7, 16 * a8);
    LODWORD(v13) = *(a2 + 120);
  }

  *(a2 + 120) = v13 + a8;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v14, 8);
    v14 = *(a2 + 72);
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
      ++v15;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 8);
    if (*(v18 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v19 + 144))(v19, v18, v17, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1, v22);
    }
  }
}

BOOL mlir::tensor::ExpandShapeOp::verify(uint64_t **this)
{
  v304 = *MEMORY[0x1E69E9840];
  v2 = *(*((*this)[9] + 24) + 8);
  if (*(*this + 9))
  {
    v3 = *this - 2;
  }

  else
  {
    v3 = 0;
  }

  v274 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v291 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v291);
  v5 = v4;
  mlir::ArrayAttr::getValue(&v274);
  if (v5 != v6)
  {
    v287 = "expected number of static shape dims to be equal to the output rank (";
    v290 = 259;
    mlir::OpState::emitOpError(this, &v287, &v291);
    mlir::ArrayAttr::getValue(&v274);
    if (v291)
    {
      LODWORD(v277) = 2;
      v278 = v15;
      v16 = &v277;
      v17 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v248 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v17 = v294;
          v16 = (v294 + v248);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v16 = &v277;
          v17 = v294;
        }
      }

      v18 = &v17[24 * v295];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      v20 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = ") but found ";
        v279 = 12;
        v21 = &v277;
        v22 = v294;
        if (v20 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v20 > &v277)
          {
            v250 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v20 + 1, 24);
            v22 = v294;
            v21 = (v294 + v250);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v20 + 1, 24);
            v21 = &v277;
            v22 = v294;
          }
        }

        v23 = &v22[24 * v295];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        ++v295;
      }
    }

    v277 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v277);
    if (v291)
    {
      LODWORD(v277) = 5;
      v278 = v25;
      v26 = &v277;
      v27 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v249 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v27 = v294;
          v26 = (v294 + v249);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v26 = &v277;
          v27 = v294;
        }
      }

      v28 = &v27[24 * v295];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      v30 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = " inputs instead";
        v279 = 15;
        v31 = &v277;
        v32 = v294;
        if (v30 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v30 > &v277)
          {
            v251 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v30 + 1, 24);
            v32 = v294;
            v31 = (v294 + v251);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v30 + 1, 24);
            v31 = &v277;
            v32 = v294;
          }
        }

        v33 = &v32[24 * v295];
        v34 = *v31;
        *(v33 + 2) = v31[2];
        *v33 = v34;
        ++v295;
      }
    }

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 != 1)
    {
      return v35;
    }

    if (v302 != &v303)
    {
      free(v302);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v301;
      v38 = __p;
      if (v301 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v301 = v36;
      operator delete(v38);
    }

    v39 = v298;
    if (v298)
    {
      v40 = v299;
      v41 = v298;
      if (v299 != v298)
      {
        do
        {
          v43 = *--v40;
          v42 = v43;
          *v40 = 0;
          if (v43)
          {
            MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
          }
        }

        while (v40 != v39);
        goto LABEL_114;
      }

LABEL_115:
      v299 = v39;
      operator delete(v41);
    }

LABEL_116:
    v129 = v294;
    if (v294 == v297)
    {
      return v35;
    }

    goto LABEL_254;
  }

  v7 = *this;
  v8 = *(*this + 11);
  if ((v8 & 0x800000) != 0)
  {
    v9 = *(v7 + 17) - 1;
  }

  else
  {
    v9 = -1;
  }

  v291 = v7[2 * ((v8 >> 23) & 1) + 9];
  v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v291);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_43;
  }

  v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v12 >= 3)
  {
    v44 = v12 + 1;
    v45 = (v12 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v14 = (v10 + 8 * v45);
    v46 = (v10 + 16);
    v47 = 0uLL;
    v48 = vnegq_f64(0);
    v49 = v45;
    v50 = 0uLL;
    do
    {
      v47 = vsubq_s64(v47, vceqq_s64(v46[-1], v48));
      v50 = vsubq_s64(v50, vceqq_s64(*v46, v48));
      v46 += 2;
      v49 -= 4;
    }

    while (v49);
    v13 = vaddvq_s64(vaddq_s64(v50, v47));
    if (v44 == v45)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = 0;
    v14 = v10;
  }

  do
  {
    v51 = *v14++;
    if (v51 == 0x8000000000000000)
    {
      ++v13;
    }
  }

  while (v14 != (v10 + 8 * v11));
LABEL_43:
  if (v9 != v13)
  {
    v287 = "mismatch in dynamic dims in output_shape and static_output_shape: static_output_shape has ";
    v290 = 259;
    mlir::OpState::emitOpError(this, &v287, &v291);
    v277 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
    v85 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v277);
    if (!v86)
    {
      v88 = 0;
      goto LABEL_87;
    }

    v87 = (v86 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v87 >= 3)
    {
      v96 = v87 + 1;
      v97 = (v87 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v89 = (v85 + 8 * v97);
      v98 = (v85 + 16);
      v99 = 0uLL;
      v100 = vnegq_f64(0);
      v101 = v97;
      v102 = 0uLL;
      do
      {
        v99 = vsubq_s64(v99, vceqq_s64(v98[-1], v100));
        v102 = vsubq_s64(v102, vceqq_s64(*v98, v100));
        v98 += 2;
        v101 -= 4;
      }

      while (v101);
      v88 = vaddvq_s64(vaddq_s64(v102, v99));
      if (v96 == v97)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v88 = 0;
      v89 = v85;
    }

    do
    {
      v103 = *v89++;
      if (v103 == 0x8000000000000000)
      {
        ++v88;
      }
    }

    while (v89 != (v85 + 8 * v86));
LABEL_87:
    if (v291)
    {
      LODWORD(v277) = 2;
      v278 = v88;
      v104 = &v277;
      v105 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v252 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v105 = v294;
          v104 = (v294 + v252);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v104 = &v277;
          v105 = v294;
        }
      }

      v106 = &v105[24 * v295];
      v107 = *v104;
      *(v106 + 2) = v104[2];
      *v106 = v107;
      v108 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = " dynamic dims while output_shape has ";
        v279 = 37;
        v109 = &v277;
        v110 = v294;
        if (v108 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v108 > &v277)
          {
            v254 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v108 + 1, 24);
            v110 = v294;
            v109 = (v294 + v254);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v108 + 1, 24);
            v109 = &v277;
            v110 = v294;
          }
        }

        v111 = &v110[24 * v295];
        v112 = *v109;
        *(v111 + 2) = v109[2];
        *v111 = v112;
        ++v295;
      }
    }

    if ((*(*this + 46) & 0x80) != 0)
    {
      v113 = *(*this + 17) - 1;
      if (!v291)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v113 = -1;
      if (!v291)
      {
        goto LABEL_98;
      }
    }

    LODWORD(v277) = 5;
    v278 = v113;
    v114 = &v277;
    v115 = v294;
    if (v295 >= v296)
    {
      if (v294 <= &v277 && v294 + 24 * v295 > &v277)
      {
        v253 = &v277 - v294;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v115 = v294;
        v114 = (v294 + v253);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v114 = &v277;
        v115 = v294;
      }
    }

    v116 = &v115[24 * v295];
    v117 = *v114;
    *(v116 + 2) = v114[2];
    *v116 = v117;
    v118 = ++v295;
    if (v291)
    {
      LODWORD(v277) = 3;
      v278 = " values";
      v279 = 7;
      v119 = &v277;
      v120 = v294;
      if (v118 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v118 > &v277)
        {
          v255 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v118 + 1, 24);
          v120 = v294;
          v119 = (v294 + v255);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v118 + 1, 24);
          v119 = &v277;
          v120 = v294;
        }
      }

      v121 = &v120[24 * v295];
      v122 = *v119;
      *(v121 + 2) = v119[2];
      *v121 = v122;
      ++v295;
    }

LABEL_98:
    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 != 1)
    {
      return v35;
    }

    if (v302 != &v303)
    {
      free(v302);
    }

    v123 = __p;
    if (__p)
    {
      v124 = v301;
      v125 = __p;
      if (v301 != __p)
      {
        do
        {
          v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
        }

        while (v124 != v123);
        v125 = __p;
      }

      v301 = v123;
      operator delete(v125);
    }

    v39 = v298;
    if (v298)
    {
      v126 = v299;
      v41 = v298;
      if (v299 != v298)
      {
        do
        {
          v128 = *--v126;
          v127 = v128;
          *v126 = 0;
          if (v128)
          {
            MEMORY[0x1AC55A040](v127, 0x1000C8077774924);
          }
        }

        while (v126 != v39);
LABEL_114:
        v41 = v298;
        goto LABEL_115;
      }

      goto LABEL_115;
    }

    goto LABEL_116;
  }

  v52 = v2 & 0xFFFFFFFFFFFFFFF8;
  v53 = *this;
  v54 = v274;
  v275 = v53;
  v282 = v274;
  v283 = v53;
  v281 = v52;
  mlir::ArrayAttr::getValue(&v282);
  v56 = v55;
  mlir::ArrayAttr::getValue(&v281);
  if (v56 < v57)
  {
    v287 = "expected the expanded type, ";
    v290 = 259;
    mlir::OpState::emitOpError(&v283, &v287, &v291);
    if (v291)
    {
      v58 = &v277;
      mlir::DiagnosticArgument::DiagnosticArgument(&v277, v282);
      v59 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v256 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v59 = v294;
          v58 = (v294 + v256);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v58 = &v277;
          v59 = v294;
        }
      }

      v60 = &v59[24 * v295];
      v61 = *v58;
      *(v60 + 2) = v58[2];
      *v60 = v61;
      v62 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = " to have a higher (or same) rank ";
        v279 = 33;
        v63 = &v277;
        v64 = v294;
        if (v62 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v62 > &v277)
          {
            v257 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v62 + 1, 24);
            v64 = v294;
            v63 = (v294 + v257);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v62 + 1, 24);
            v63 = &v277;
            v64 = v294;
          }
        }

        v65 = &v64[24 * v295];
        v66 = *v63;
        *(v65 + 2) = v63[2];
        *v65 = v66;
        v67 = ++v295;
        if (v291)
        {
          LODWORD(v277) = 3;
          v278 = "than the collapsed type, ";
          v279 = 25;
          v68 = &v277;
          v69 = v294;
          if (v67 >= v296)
          {
            if (v294 <= &v277 && v294 + 24 * v67 > &v277)
            {
              v261 = &v277 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v67 + 1, 24);
              v69 = v294;
              v68 = (v294 + v261);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v67 + 1, 24);
              v68 = &v277;
              v69 = v294;
            }
          }

          v70 = &v69[24 * v295];
          v71 = *v68;
          *(v70 + 2) = v68[2];
          *v70 = v71;
          ++v295;
          if (v291)
          {
            v72 = &v277;
            mlir::DiagnosticArgument::DiagnosticArgument(&v277, v281);
            v73 = v294;
            if (v295 >= v296)
            {
              if (v294 <= &v277 && v294 + 24 * v295 > &v277)
              {
                v265 = &v277 - v294;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
                v73 = v294;
                v72 = (v294 + v265);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
                v72 = &v277;
                v73 = v294;
              }
            }

            v74 = &v73[24 * v295];
            v75 = *v72;
            *(v74 + 2) = v72[2];
            *v74 = v75;
            ++v295;
            if (v291)
            {
              mlir::Diagnostic::operator<<(&v292, 46);
            }
          }
        }
      }
    }

    v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 == 1)
    {
      if (v302 != &v303)
      {
        free(v302);
      }

      v77 = __p;
      if (__p)
      {
        v78 = v301;
        v79 = __p;
        if (v301 != __p)
        {
          do
          {
            v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
          }

          while (v78 != v77);
          v79 = __p;
        }

        v301 = v77;
        operator delete(v79);
      }

      v80 = v298;
      if (!v298)
      {
        goto LABEL_154;
      }

      v81 = v299;
      v82 = v298;
      if (v299 == v298)
      {
LABEL_153:
        v299 = v80;
        operator delete(v82);
LABEL_154:
        if (v294 != v297)
        {
          free(v294);
        }

        goto LABEL_156;
      }

      do
      {
        v84 = *--v81;
        v83 = v84;
        *v81 = 0;
        if (v84)
        {
          MEMORY[0x1AC55A040](v83, 0x1000C8077774924);
        }
      }

      while (v81 != v80);
LABEL_152:
      v82 = v298;
      goto LABEL_153;
    }

    goto LABEL_156;
  }

  v90 = v57;
  v291 = v53[2 * ((*(v53 + 11) >> 23) & 1) + 8];
  mlir::ArrayAttr::getValue(&v291);
  if (v90 != v91)
  {
    v287 = "expected collapsed rank (";
    v290 = 259;
    mlir::OpState::emitOpError(&v283, &v287, &v291);
    if (v291)
    {
      LODWORD(v277) = 5;
      v278 = v90;
      v130 = &v277;
      v131 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v258 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v131 = v294;
          v130 = (v294 + v258);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v130 = &v277;
          v131 = v294;
        }
      }

      v132 = &v131[24 * v295];
      v133 = *v130;
      *(v132 + 2) = v130[2];
      *v132 = v133;
      v134 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = ") to equal the number of reassociation maps (";
        v279 = 45;
        v135 = &v277;
        v136 = v294;
        if (v134 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v134 > &v277)
          {
            v262 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v134 + 1, 24);
            v136 = v294;
            v135 = (v294 + v262);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v134 + 1, 24);
            v135 = &v277;
            v136 = v294;
          }
        }

        v137 = &v136[24 * v295];
        v138 = *v135;
        *(v137 + 2) = v135[2];
        *v137 = v138;
        ++v295;
      }
    }

    v284 = v283[2 * ((*(v283 + 11) >> 23) & 1) + 8];
    mlir::ArrayAttr::getValue(&v284);
    if (v291)
    {
      LODWORD(v277) = 5;
      v278 = v139;
      v140 = &v277;
      v141 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v259 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v141 = v294;
          v140 = (v294 + v259);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v140 = &v277;
          v141 = v294;
        }
      }

      v142 = &v141[24 * v295];
      v143 = *v140;
      *(v142 + 2) = v140[2];
      *v142 = v143;
      v144 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = ").";
        v279 = 2;
        v145 = &v277;
        v146 = v294;
        if (v144 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v144 > &v277)
          {
            v263 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v144 + 1, 24);
            v146 = v294;
            v145 = (v294 + v263);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v144 + 1, 24);
            v145 = &v277;
            v146 = v294;
          }
        }

        v147 = &v146[24 * v295];
        v148 = *v145;
        *(v147 + 2) = v145[2];
        *v147 = v148;
        ++v295;
      }
    }

    v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 == 1)
    {
      if (v302 != &v303)
      {
        free(v302);
      }

      v149 = __p;
      if (__p)
      {
        v150 = v301;
        v151 = __p;
        if (v301 != __p)
        {
          do
          {
            v150 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v150 - 1);
          }

          while (v150 != v149);
          v151 = __p;
        }

        v301 = v149;
        operator delete(v151);
      }

      v80 = v298;
      if (!v298)
      {
        goto LABEL_154;
      }

      v152 = v299;
      v82 = v298;
      if (v299 == v298)
      {
        goto LABEL_153;
      }

      do
      {
        v154 = *--v152;
        v153 = v154;
        *v152 = 0;
        if (v154)
        {
          MEMORY[0x1AC55A040](v153, 0x1000C8077774924);
        }
      }

      while (v152 != v80);
      goto LABEL_152;
    }

LABEL_156:
    if (v76)
    {
      goto LABEL_157;
    }

    return 0;
  }

  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v283, &v291);
  mlir::getSymbolLessAffineMaps(v291, v292, &v287);
  v92 = v291;
  if (v292)
  {
    v93 = v291 + 32 * v292 - 16;
    v94 = -32 * v292;
    do
    {
      v95 = *(v93 - 2);
      if (v93 != v95)
      {
        free(v95);
      }

      v93 -= 32;
      v94 += 32;
    }

    while (v94);
    v92 = v291;
  }

  if (v92 != &v293)
  {
    free(v92);
  }

  v155 = v287;
  if (!v288)
  {
    v159 = 0;
LABEL_191:
    v276 = 0;
    if (mlir::isReassociationValid(v155, v159, &v276))
    {
      v277 = &v283;
      Value = mlir::ArrayAttr::getValue(&v281);
      v188 = v187;
      v189 = mlir::ArrayAttr::getValue(&v282);
      v191 = v190;
      mlir::memref::CollapseShapeOp::getReassociationIndices(&v283, &v291);
      v192 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v277, Value, v188, v189, v191, v291, v292);
      v193 = v291;
      if (v292)
      {
        v194 = v291 + 32 * v292 - 16;
        v195 = -32 * v292;
        do
        {
          v196 = *(v194 - 2);
          if (v194 != v196)
          {
            free(v196);
          }

          v194 -= 32;
          v195 += 32;
        }

        while (v195);
        v193 = v291;
      }

      v246 = &v293;
    }

    else
    {
      v277 = "expected reassociation map #";
      v280 = 259;
      mlir::OpState::emitOpError(&v283, &v277, &v291);
      if (v291)
      {
        LODWORD(v284) = 2;
        v285 = v276;
        v197 = &v284;
        v198 = v294;
        if (v295 >= v296)
        {
          if (v294 <= &v284 && v294 + 24 * v295 > &v284)
          {
            v267 = &v284 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
            v198 = v294;
            v197 = (v294 + v267);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
            v197 = &v284;
            v198 = v294;
          }
        }

        v199 = &v198[24 * v295];
        v200 = *v197;
        *(v199 + 2) = v197[2];
        *v199 = v200;
        v201 = ++v295;
        if (v291)
        {
          LODWORD(v284) = 3;
          v285 = " to be valid and contiguous.";
          v286 = 28;
          v202 = &v284;
          v203 = v294;
          if (v201 >= v296)
          {
            if (v294 <= &v284 && v294 + 24 * v201 > &v284)
            {
              v270 = &v284 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v201 + 1, 24);
              v203 = v294;
              v202 = (v294 + v270);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v201 + 1, 24);
              v202 = &v284;
              v203 = v294;
            }
          }

          v204 = &v203[24 * v295];
          v205 = *v202;
          *(v204 + 2) = v202[2];
          *v204 = v205;
          ++v295;
        }
      }

      v192 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
      if (v291)
      {
        mlir::InFlightDiagnostic::report(&v291);
      }

      if (v303 != 1)
      {
        goto LABEL_261;
      }

      if (v302 != &v303)
      {
        free(v302);
      }

      v206 = __p;
      if (__p)
      {
        v207 = v301;
        v208 = __p;
        if (v301 != __p)
        {
          do
          {
            v207 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v207 - 1);
          }

          while (v207 != v206);
          v208 = __p;
        }

        v301 = v206;
        operator delete(v208);
      }

      v209 = v298;
      if (v298)
      {
        v210 = v299;
        v211 = v298;
        if (v299 != v298)
        {
          do
          {
            v213 = *--v210;
            v212 = v213;
            *v210 = 0;
            if (v213)
            {
              MEMORY[0x1AC55A040](v212, 0x1000C8077774924);
            }
          }

          while (v210 != v209);
          v211 = v298;
        }

        v299 = v209;
        operator delete(v211);
      }

      v193 = v294;
      v246 = v297;
    }

    if (v193 == v246)
    {
      goto LABEL_261;
    }

LABEL_260:
    free(v193);
    goto LABEL_261;
  }

  v156 = 0;
  v157 = v56;
  v158 = 8 * v288;
  while (mlir::AffineMap::getNumDims(v155) == v56)
  {
    ++v156;
    v155 = (v155 + 8);
    v158 -= 8;
    if (!v158)
    {
      v155 = v287;
      v159 = v288;
      goto LABEL_191;
    }
  }

  v277 = "expected reassociation map #";
  v280 = 259;
  mlir::OpState::emitOpError(&v283, &v277, &v291);
  if (v291)
  {
    LODWORD(v284) = 5;
    v285 = v156;
    v214 = &v284;
    v215 = v294;
    if (v295 >= v296)
    {
      if (v294 <= &v284 && v294 + 24 * v295 > &v284)
      {
        v268 = &v284 - v294;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v215 = v294;
        v214 = (v294 + v268);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v214 = &v284;
        v215 = v294;
      }
    }

    v216 = &v215[24 * v295];
    v217 = *v214;
    *(v216 + 2) = v214[2];
    *v216 = v217;
    v218 = ++v295;
    if (v291)
    {
      LODWORD(v284) = 3;
      v285 = " to have size equal to the expanded rank (";
      v286 = 42;
      v219 = &v284;
      v220 = v294;
      if (v218 >= v296)
      {
        if (v294 <= &v284 && v294 + 24 * v218 > &v284)
        {
          v271 = &v284 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v218 + 1, 24);
          v220 = v294;
          v219 = (v294 + v271);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v218 + 1, 24);
          v219 = &v284;
          v220 = v294;
        }
      }

      v221 = &v220[24 * v295];
      v222 = *v219;
      *(v221 + 2) = v219[2];
      *v221 = v222;
      v223 = ++v295;
      if (v291)
      {
        LODWORD(v284) = 5;
        v285 = v157;
        v224 = &v284;
        v225 = v294;
        if (v223 >= v296)
        {
          if (v294 <= &v284 && v294 + 24 * v223 > &v284)
          {
            v272 = &v284 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v223 + 1, 24);
            v225 = v294;
            v224 = (v294 + v272);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v223 + 1, 24);
            v224 = &v284;
            v225 = v294;
          }
        }

        v226 = &v225[24 * v295];
        v227 = *v224;
        *(v226 + 2) = v224[2];
        *v226 = v227;
        v228 = ++v295;
        if (v291)
        {
          LODWORD(v284) = 3;
          v285 = "), but it is  ";
          v286 = 14;
          v229 = &v284;
          v230 = v294;
          if (v228 >= v296)
          {
            if (v294 <= &v284 && v294 + 24 * v228 > &v284)
            {
              v273 = &v284 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v228 + 1, 24);
              v230 = v294;
              v229 = (v294 + v273);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v228 + 1, 24);
              v229 = &v284;
              v230 = v294;
            }
          }

          v231 = &v230[24 * v295];
          v232 = *v229;
          *(v231 + 2) = v229[2];
          *v231 = v232;
          ++v295;
        }
      }
    }
  }

  NumDims = mlir::AffineMap::getNumDims(v155);
  if (v291)
  {
    LODWORD(v284) = 5;
    v285 = NumDims;
    v234 = &v284;
    v235 = v294;
    if (v295 >= v296)
    {
      if (v294 <= &v284 && v294 + 24 * v295 > &v284)
      {
        v269 = &v284 - v294;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v235 = v294;
        v234 = (v294 + v269);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v234 = &v284;
        v235 = v294;
      }
    }

    v236 = &v235[24 * v295];
    v237 = *v234;
    *(v236 + 2) = v234[2];
    *v236 = v237;
    ++v295;
    if (v291)
    {
      mlir::Diagnostic::operator<<(&v292, 46);
    }
  }

  v192 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
  if (v291)
  {
    mlir::InFlightDiagnostic::report(&v291);
  }

  if (v303)
  {
    if (v302 != &v303)
    {
      free(v302);
    }

    v238 = __p;
    if (__p)
    {
      v239 = v301;
      v240 = __p;
      if (v301 != __p)
      {
        do
        {
          v239 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v239 - 1);
        }

        while (v239 != v238);
        v240 = __p;
      }

      v301 = v238;
      operator delete(v240);
    }

    v241 = v298;
    if (v298)
    {
      v242 = v299;
      v243 = v298;
      if (v299 != v298)
      {
        do
        {
          v245 = *--v242;
          v244 = v245;
          *v242 = 0;
          if (v245)
          {
            MEMORY[0x1AC55A040](v244, 0x1000C8077774924);
          }
        }

        while (v242 != v241);
        v243 = v298;
      }

      v299 = v241;
      operator delete(v243);
    }

    v193 = v294;
    if (v294 != v297)
    {
      goto LABEL_260;
    }
  }

LABEL_261:
  if (v287 != v289)
  {
    free(v287);
  }

  if ((v192 & 1) == 0)
  {
    return 0;
  }

LABEL_157:
  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v275, &v291);
  mlir::getSymbolLessAffineMaps(v291, v292, &v287);
  v160 = v291;
  if (v292)
  {
    v161 = v291 + 32 * v292 - 16;
    v162 = -32 * v292;
    do
    {
      v163 = *(v161 - 2);
      if (v161 != v163)
      {
        free(v163);
      }

      v161 -= 32;
      v162 += 32;
    }

    while (v162);
    v160 = v291;
  }

  if (v160 != &v293)
  {
    free(v160);
  }

  v164 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v54, v287, v288);
  if (mlir::tensor::isSameTypeWithoutEncoding(v52, v164))
  {
    v35 = 1;
  }

  else
  {
    v277 = "expected collapsed type to be ";
    v280 = 259;
    mlir::OpState::emitOpError(&v275, &v277, &v291);
    if (v291)
    {
      v165 = &v284;
      mlir::DiagnosticArgument::DiagnosticArgument(&v284, v164);
      v166 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v284 && v294 + 24 * v295 > &v284)
        {
          v260 = &v284 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v166 = v294;
          v165 = (v294 + v260);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v165 = &v284;
          v166 = v294;
        }
      }

      v167 = &v166[24 * v295];
      v168 = *v165;
      *(v167 + 2) = v165[2];
      *v167 = v168;
      v169 = ++v295;
      if (v291)
      {
        LODWORD(v284) = 3;
        v285 = ", but got ";
        v286 = 10;
        v170 = &v284;
        v171 = v294;
        if (v169 >= v296)
        {
          if (v294 <= &v284 && v294 + 24 * v169 > &v284)
          {
            v264 = &v284 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v169 + 1, 24);
            v171 = v294;
            v170 = (v294 + v264);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v169 + 1, 24);
            v170 = &v284;
            v171 = v294;
          }
        }

        v172 = &v171[24 * v295];
        v173 = *v170;
        *(v172 + 2) = v170[2];
        *v172 = v173;
        ++v295;
        if (v291)
        {
          v174 = &v284;
          mlir::DiagnosticArgument::DiagnosticArgument(&v284, v52);
          v175 = v294;
          if (v295 >= v296)
          {
            if (v294 <= &v284 && v294 + 24 * v295 > &v284)
            {
              v266 = &v284 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
              v175 = v294;
              v174 = (v294 + v266);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
              v174 = &v284;
              v175 = v294;
            }
          }

          v176 = &v175[24 * v295];
          v177 = *v174;
          *(v176 + 2) = v174[2];
          *v176 = v177;
          ++v295;
        }
      }
    }

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 == 1)
    {
      if (v302 != &v303)
      {
        free(v302);
      }

      v178 = __p;
      if (__p)
      {
        v179 = v301;
        v180 = __p;
        if (v301 != __p)
        {
          do
          {
            v179 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v179 - 1);
          }

          while (v179 != v178);
          v180 = __p;
        }

        v301 = v178;
        operator delete(v180);
      }

      v181 = v298;
      if (v298)
      {
        v182 = v299;
        v183 = v298;
        if (v299 != v298)
        {
          do
          {
            v185 = *--v182;
            v184 = v185;
            *v182 = 0;
            if (v185)
            {
              MEMORY[0x1AC55A040](v184, 0x1000C8077774924);
            }
          }

          while (v182 != v181);
          v183 = v298;
        }

        v299 = v181;
        operator delete(v183);
      }

      if (v294 != v297)
      {
        free(v294);
      }
    }
  }

  v129 = v287;
  if (v287 != v289)
  {
LABEL_254:
    free(v129);
  }

  return v35;
}

BOOL mlir::tensor::CollapseShapeOp::verify(mlir::tensor::CollapseShapeOp *this)
{
  v208 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v179 = v1;
  v186 = v2;
  v187 = v1;
  v185 = v4;
  mlir::ArrayAttr::getValue(&v186);
  v6 = v5;
  mlir::ArrayAttr::getValue(&v185);
  if (v6 >= v7)
  {
    v35 = v7;
    v195 = *(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 64);
    mlir::ArrayAttr::getValue(&v195);
    if (v35 != v36)
    {
      v191 = "expected collapsed rank (";
      v194 = 259;
      mlir::OpState::emitOpError(&v187, &v191, &v195);
      if (v195)
      {
        LODWORD(v181) = 5;
        v182 = v35;
        v41 = &v181;
        v42 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v181 && v198 + 24 * v199 > &v181)
          {
            v163 = &v181 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v42 = v198;
            v41 = (v198 + v163);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v41 = &v181;
            v42 = v198;
          }
        }

        v43 = &v42[24 * v199];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        v45 = ++v199;
        if (v195)
        {
          LODWORD(v181) = 3;
          v182 = ") to equal the number of reassociation maps (";
          v183 = 45;
          v46 = &v181;
          v47 = v198;
          if (v45 >= v200)
          {
            if (v198 <= &v181 && v198 + 24 * v45 > &v181)
            {
              v167 = &v181 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v45 + 1, 24);
              v47 = v198;
              v46 = (v198 + v167);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v45 + 1, 24);
              v46 = &v181;
              v47 = v198;
            }
          }

          v48 = &v47[24 * v199];
          v49 = *v46;
          *(v48 + 2) = v46[2];
          *v48 = v49;
          ++v199;
        }
      }

      v188 = v187[2 * ((*(v187 + 11) >> 23) & 1) + 8];
      mlir::ArrayAttr::getValue(&v188);
      if (v195)
      {
        LODWORD(v181) = 5;
        v182 = v50;
        v51 = &v181;
        v52 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v181 && v198 + 24 * v199 > &v181)
          {
            v164 = &v181 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v52 = v198;
            v51 = (v198 + v164);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v51 = &v181;
            v52 = v198;
          }
        }

        v53 = &v52[24 * v199];
        v54 = *v51;
        *(v53 + 2) = v51[2];
        *v53 = v54;
        v55 = ++v199;
        if (v195)
        {
          LODWORD(v181) = 3;
          v182 = ").";
          v183 = 2;
          v56 = &v181;
          v57 = v198;
          if (v55 >= v200)
          {
            if (v198 <= &v181 && v198 + 24 * v55 > &v181)
            {
              v168 = &v181 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v55 + 1, 24);
              v57 = v198;
              v56 = (v198 + v168);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v55 + 1, 24);
              v56 = &v181;
              v57 = v198;
            }
          }

          v58 = &v57[24 * v199];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v199;
        }
      }

      v60 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
      if (v195)
      {
        mlir::InFlightDiagnostic::report(&v195);
      }

      if (v207 == 1)
      {
        if (v206 != &v207)
        {
          free(v206);
        }

        v61 = __p;
        if (__p)
        {
          v62 = v205;
          v63 = __p;
          if (v205 != __p)
          {
            do
            {
              v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v205 = v61;
          operator delete(v63);
        }

        v64 = v202;
        if (v202)
        {
          v65 = v203;
          v66 = v202;
          if (v203 != v202)
          {
            do
            {
              v68 = *--v65;
              v67 = v68;
              *v65 = 0;
              if (v68)
              {
                MEMORY[0x1AC55A040](v67, 0x1000C8077774924);
              }
            }

            while (v65 != v64);
            v66 = v202;
          }

          v203 = v64;
          operator delete(v66);
        }

        if (v198 != v201)
        {
          free(v198);
        }
      }

      if (v60)
      {
        goto LABEL_97;
      }

      return 0;
    }

    mlir::tensor::CollapseShapeOp::getReassociationExprs(&v187, &v195);
    mlir::getSymbolLessAffineMaps(v195, v196, &v191);
    v37 = v195;
    if (v196)
    {
      v38 = v195 + 32 * v196 - 16;
      v39 = -32 * v196;
      do
      {
        v40 = *(v38 - 2);
        if (v38 != v40)
        {
          free(v40);
        }

        v38 -= 32;
        v39 += 32;
      }

      while (v39);
      v37 = v195;
    }

    if (v37 != &v197)
    {
      free(v37);
    }

    v69 = v191;
    if (v192)
    {
      v70 = 0;
      v71 = v6;
      v72 = 8 * v192;
      while (mlir::AffineMap::getNumDims(v69) == v6)
      {
        ++v70;
        v69 = (v69 + 8);
        v72 -= 8;
        if (!v72)
        {
          v180 = 0;
          if (mlir::isReassociationValid(v191, v192, &v180))
          {
            goto LABEL_131;
          }

          goto LABEL_71;
        }
      }

      v181 = "expected reassociation map #";
      v184 = 259;
      mlir::OpState::emitOpError(&v187, &v181, &v195);
      if (v195)
      {
        LODWORD(v188) = 5;
        v189 = v70;
        v128 = &v188;
        v129 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v199 > &v188)
          {
            v173 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v129 = v198;
            v128 = (v198 + v173);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v128 = &v188;
            v129 = v198;
          }
        }

        v130 = &v129[24 * v199];
        v131 = *v128;
        *(v130 + 2) = v128[2];
        *v130 = v131;
        v132 = ++v199;
        if (v195)
        {
          LODWORD(v188) = 3;
          v189 = " to have size equal to the expanded rank (";
          v190 = 42;
          v133 = &v188;
          v134 = v198;
          if (v132 >= v200)
          {
            if (v198 <= &v188 && v198 + 24 * v132 > &v188)
            {
              v176 = &v188 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v132 + 1, 24);
              v134 = v198;
              v133 = (v198 + v176);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v132 + 1, 24);
              v133 = &v188;
              v134 = v198;
            }
          }

          v135 = &v134[24 * v199];
          v136 = *v133;
          *(v135 + 2) = v133[2];
          *v135 = v136;
          v137 = ++v199;
          if (v195)
          {
            LODWORD(v188) = 5;
            v189 = v71;
            v138 = &v188;
            v139 = v198;
            if (v137 >= v200)
            {
              if (v198 <= &v188 && v198 + 24 * v137 > &v188)
              {
                v177 = &v188 - v198;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v137 + 1, 24);
                v139 = v198;
                v138 = (v198 + v177);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v137 + 1, 24);
                v138 = &v188;
                v139 = v198;
              }
            }

            v140 = &v139[24 * v199];
            v141 = *v138;
            *(v140 + 2) = v138[2];
            *v140 = v141;
            v142 = ++v199;
            if (v195)
            {
              LODWORD(v188) = 3;
              v189 = "), but it is  ";
              v190 = 14;
              v143 = &v188;
              v144 = v198;
              if (v142 >= v200)
              {
                if (v198 <= &v188 && v198 + 24 * v142 > &v188)
                {
                  v178 = &v188 - v198;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v142 + 1, 24);
                  v144 = v198;
                  v143 = (v198 + v178);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v142 + 1, 24);
                  v143 = &v188;
                  v144 = v198;
                }
              }

              v145 = &v144[24 * v199];
              v146 = *v143;
              *(v145 + 2) = v143[2];
              *v145 = v146;
              ++v199;
            }
          }
        }
      }

      NumDims = mlir::AffineMap::getNumDims(v69);
      if (v195)
      {
        LODWORD(v188) = 5;
        v189 = NumDims;
        v148 = &v188;
        v149 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v199 > &v188)
          {
            v174 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v149 = v198;
            v148 = (v198 + v174);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v148 = &v188;
            v149 = v198;
          }
        }

        v150 = &v149[24 * v199];
        v151 = *v148;
        *(v150 + 2) = v148[2];
        *v150 = v151;
        ++v199;
        if (v195)
        {
          mlir::Diagnostic::operator<<(&v196, 46);
        }
      }

      v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
      if (v195)
      {
        mlir::InFlightDiagnostic::report(&v195);
      }

      if (v207)
      {
        if (v206 != &v207)
        {
          free(v206);
        }

        v152 = __p;
        if (__p)
        {
          v153 = v205;
          v154 = __p;
          if (v205 != __p)
          {
            do
            {
              v153 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v153 - 1);
            }

            while (v153 != v152);
            v154 = __p;
          }

          v205 = v152;
          operator delete(v154);
        }

        v155 = v202;
        if (v202)
        {
          v156 = v203;
          v157 = v202;
          if (v203 != v202)
          {
            do
            {
              v159 = *--v156;
              v158 = v159;
              *v156 = 0;
              if (v159)
              {
                MEMORY[0x1AC55A040](v158, 0x1000C8077774924);
              }
            }

            while (v156 != v155);
            v157 = v202;
          }

          v203 = v155;
          operator delete(v157);
        }

        v124 = v198;
        if (v198 != v201)
        {
          goto LABEL_167;
        }
      }

LABEL_168:
      if (v191 != v193)
      {
        free(v191);
      }

      if (v82)
      {
        goto LABEL_97;
      }

      return 0;
    }

    v180 = 0;
    if (mlir::isReassociationValid(v191, 0, &v180))
    {
LABEL_131:
      v181 = &v187;
      Value = mlir::ArrayAttr::getValue(&v185);
      v120 = v119;
      v121 = mlir::ArrayAttr::getValue(&v186);
      v123 = v122;
      mlir::memref::CollapseShapeOp::getReassociationIndices(&v187, &v195);
      v82 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v181, Value, v120, v121, v123, v195, v196);
      v124 = v195;
      if (v196)
      {
        v125 = v195 + 32 * v196 - 16;
        v126 = -32 * v196;
        do
        {
          v127 = *(v125 - 2);
          if (v125 != v127)
          {
            free(v127);
          }

          v125 -= 32;
          v126 += 32;
        }

        while (v126);
        v124 = v195;
      }

      if (v124 == &v197)
      {
        goto LABEL_168;
      }
    }

    else
    {
LABEL_71:
      v181 = "expected reassociation map #";
      v184 = 259;
      mlir::OpState::emitOpError(&v187, &v181, &v195);
      if (v195)
      {
        LODWORD(v188) = 2;
        v189 = v180;
        v73 = &v188;
        v74 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v199 > &v188)
          {
            v172 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v74 = v198;
            v73 = (v198 + v172);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v73 = &v188;
            v74 = v198;
          }
        }

        v75 = &v74[24 * v199];
        v76 = *v73;
        *(v75 + 2) = v73[2];
        *v75 = v76;
        v77 = ++v199;
        if (v195)
        {
          LODWORD(v188) = 3;
          v189 = " to be valid and contiguous.";
          v190 = 28;
          v78 = &v188;
          v79 = v198;
          if (v77 >= v200)
          {
            if (v198 <= &v188 && v198 + 24 * v77 > &v188)
            {
              v175 = &v188 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v77 + 1, 24);
              v79 = v198;
              v78 = (v198 + v175);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v77 + 1, 24);
              v78 = &v188;
              v79 = v198;
            }
          }

          v80 = &v79[24 * v199];
          v81 = *v78;
          *(v80 + 2) = v78[2];
          *v80 = v81;
          ++v199;
        }
      }

      v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
      if (v195)
      {
        mlir::InFlightDiagnostic::report(&v195);
      }

      if (v207 != 1)
      {
        goto LABEL_168;
      }

      if (v206 != &v207)
      {
        free(v206);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v205;
        v85 = __p;
        if (v205 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v205 = v83;
        operator delete(v85);
      }

      v86 = v202;
      if (v202)
      {
        v87 = v203;
        v88 = v202;
        if (v203 != v202)
        {
          do
          {
            v90 = *--v87;
            v89 = v90;
            *v87 = 0;
            if (v90)
            {
              MEMORY[0x1AC55A040](v89, 0x1000C8077774924);
            }
          }

          while (v87 != v86);
          v88 = v202;
        }

        v203 = v86;
        operator delete(v88);
      }

      v124 = v198;
      if (v198 == v201)
      {
        goto LABEL_168;
      }
    }

LABEL_167:
    free(v124);
    goto LABEL_168;
  }

  v191 = "expected the expanded type, ";
  v194 = 259;
  mlir::OpState::emitOpError(&v187, &v191, &v195);
  if (v195)
  {
    v8 = &v181;
    mlir::DiagnosticArgument::DiagnosticArgument(&v181, v186);
    v9 = v198;
    if (v199 >= v200)
    {
      if (v198 <= &v181 && v198 + 24 * v199 > &v181)
      {
        v161 = &v181 - v198;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
        v9 = v198;
        v8 = (v198 + v161);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
        v8 = &v181;
        v9 = v198;
      }
    }

    v10 = &v9[24 * v199];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    v12 = ++v199;
    if (v195)
    {
      LODWORD(v181) = 3;
      v182 = " to have a higher (or same) rank ";
      v183 = 33;
      v13 = &v181;
      v14 = v198;
      if (v12 >= v200)
      {
        if (v198 <= &v181 && v198 + 24 * v12 > &v181)
        {
          v162 = &v181 - v198;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v12 + 1, 24);
          v14 = v198;
          v13 = (v198 + v162);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v12 + 1, 24);
          v13 = &v181;
          v14 = v198;
        }
      }

      v15 = &v14[24 * v199];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      v17 = ++v199;
      if (v195)
      {
        LODWORD(v181) = 3;
        v182 = "than the collapsed type, ";
        v183 = 25;
        v18 = &v181;
        v19 = v198;
        if (v17 >= v200)
        {
          if (v198 <= &v181 && v198 + 24 * v17 > &v181)
          {
            v166 = &v181 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v17 + 1, 24);
            v19 = v198;
            v18 = (v198 + v166);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v17 + 1, 24);
            v18 = &v181;
            v19 = v198;
          }
        }

        v20 = &v19[24 * v199];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v199;
        if (v195)
        {
          v22 = &v181;
          mlir::DiagnosticArgument::DiagnosticArgument(&v181, v185);
          v23 = v198;
          if (v199 >= v200)
          {
            if (v198 <= &v181 && v198 + 24 * v199 > &v181)
            {
              v170 = &v181 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v23 = v198;
              v22 = (v198 + v170);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v22 = &v181;
              v23 = v198;
            }
          }

          v24 = &v23[24 * v199];
          v25 = *v22;
          *(v24 + 2) = v22[2];
          *v24 = v25;
          ++v199;
          if (v195)
          {
            mlir::Diagnostic::operator<<(&v196, 46);
          }
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
  if (v195)
  {
    mlir::InFlightDiagnostic::report(&v195);
  }

  if (v207 == 1)
  {
    if (v206 != &v207)
    {
      free(v206);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v205;
      v29 = __p;
      if (v205 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v205 = v27;
      operator delete(v29);
    }

    v30 = v202;
    if (v202)
    {
      v31 = v203;
      v32 = v202;
      if (v203 != v202)
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
        v32 = v202;
      }

      v203 = v30;
      operator delete(v32);
    }

    if (v198 != v201)
    {
      free(v198);
    }
  }

  if (!v26)
  {
    return 0;
  }

LABEL_97:
  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v179, &v195);
  mlir::getSymbolLessAffineMaps(v195, v196, &v191);
  v91 = v195;
  if (v196)
  {
    v92 = v195 + 32 * v196 - 16;
    v93 = -32 * v196;
    do
    {
      v94 = *(v92 - 2);
      if (v92 != v94)
      {
        free(v94);
      }

      v92 -= 32;
      v93 += 32;
    }

    while (v93);
    v91 = v195;
  }

  if (v91 != &v197)
  {
    free(v91);
  }

  v95 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v2, v191, v192);
  if (mlir::tensor::isSameTypeWithoutEncoding(v4, v95))
  {
    v96 = 1;
  }

  else
  {
    v181 = "expected collapsed type to be ";
    v184 = 259;
    mlir::OpState::emitOpError(&v179, &v181, &v195);
    if (v195)
    {
      v97 = &v188;
      mlir::DiagnosticArgument::DiagnosticArgument(&v188, v95);
      v98 = v198;
      if (v199 >= v200)
      {
        if (v198 <= &v188 && v198 + 24 * v199 > &v188)
        {
          v165 = &v188 - v198;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
          v98 = v198;
          v97 = (v198 + v165);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
          v97 = &v188;
          v98 = v198;
        }
      }

      v99 = &v98[24 * v199];
      v100 = *v97;
      *(v99 + 2) = v97[2];
      *v99 = v100;
      v101 = ++v199;
      if (v195)
      {
        LODWORD(v188) = 3;
        v189 = ", but got ";
        v190 = 10;
        v102 = &v188;
        v103 = v198;
        if (v101 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v101 > &v188)
          {
            v169 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v101 + 1, 24);
            v103 = v198;
            v102 = (v198 + v169);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v101 + 1, 24);
            v102 = &v188;
            v103 = v198;
          }
        }

        v104 = &v103[24 * v199];
        v105 = *v102;
        *(v104 + 2) = v102[2];
        *v104 = v105;
        ++v199;
        if (v195)
        {
          v106 = &v188;
          mlir::DiagnosticArgument::DiagnosticArgument(&v188, v4);
          v107 = v198;
          if (v199 >= v200)
          {
            if (v198 <= &v188 && v198 + 24 * v199 > &v188)
            {
              v171 = &v188 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v107 = v198;
              v106 = (v198 + v171);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v106 = &v188;
              v107 = v198;
            }
          }

          v108 = &v107[24 * v199];
          v109 = *v106;
          *(v108 + 2) = v106[2];
          *v108 = v109;
          ++v199;
        }
      }
    }

    v96 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
    if (v195)
    {
      mlir::InFlightDiagnostic::report(&v195);
    }

    if (v207 == 1)
    {
      if (v206 != &v207)
      {
        free(v206);
      }

      v110 = __p;
      if (__p)
      {
        v111 = v205;
        v112 = __p;
        if (v205 != __p)
        {
          do
          {
            v111 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v111 - 1);
          }

          while (v111 != v110);
          v112 = __p;
        }

        v205 = v110;
        operator delete(v112);
      }

      v113 = v202;
      if (v202)
      {
        v114 = v203;
        v115 = v202;
        if (v203 != v202)
        {
          do
          {
            v117 = *--v114;
            v116 = v117;
            *v114 = 0;
            if (v117)
            {
              MEMORY[0x1AC55A040](v116, 0x1000C8077774924);
            }
          }

          while (v114 != v113);
          v115 = v202;
        }

        v203 = v113;
        operator delete(v115);
      }

      if (v198 != v201)
      {
        free(v198);
      }
    }
  }

  if (v191 != v193)
  {
    free(v191);
  }

  return v96;
}

uint64_t mlir::tensor::ExpandShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 56);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        mlir::Builder::getZeroAttr();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Value = mlir::ArrayAttr::getValue(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Value;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Value + 8 * v33);
  v34 = (Value + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Value + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::memref::CollapseShapeOp::getReassociationIndices(&v62, &v66);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::ArrayAttr::getValue(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::ArrayAttr::getValue(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 48);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        mlir::Builder::getZeroAttr();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Value = mlir::ArrayAttr::getValue(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Value;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Value + 8 * v33);
  v34 = (Value + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Value + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::memref::CollapseShapeOp::getReassociationIndices(&v62, &v66);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::ArrayAttr::getValue(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::ArrayAttr::getValue(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "extracted_slice", 15);
}

uint64_t mlir::tensor::ExtractSliceOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v30[0] = v31;
  v30[1] = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  v25[0] = v26;
  v25[1] = 0x600000000;
  v23[0] = v24;
  v23[1] = 0x600000000;
  v21[0] = v22;
  v21[1] = 0x600000000;
  v19[0] = v20;
  v19[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a2, a3, v23, v30);
  mlir::dispatchIndexOpFoldResults(a4, a5, v21, &v27);
  mlir::dispatchIndexOpFoldResults(a6, a7, v19, v25);
  v12 = v27;
  v13 = v28;
  v18 = a1;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v18);
  Values = mlir::SparseElementsAttr::getValues(&v18);
  v16 = mlir::RankedTensorType::get(v12, v13, RHS, Values);
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  return v16;
}

uint64_t mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, void *a2, uint64_t a3, uint64_t a4, llvm::hashing::detail *a5, uint64_t a6)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v26 = a2;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v26);
  Values = mlir::SparseElementsAttr::getValues(&v26);
  v25 = mlir::RankedTensorType::get(a5, a6, RHS, Values);
  mlir::ArrayAttr::getValue(&v25);
  v12 = v11 - a1;
  if (v11 - a1 >= 1)
  {
    Value = mlir::ArrayAttr::getValue(&v25);
    v15 = v14;
    mlir::getPositionsOfShapeOne(v12, Value, v14, &v24);
    v26 = v28;
    v27 = 0x600000000;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        if (v24)
        {
          if (((1 << v17) & (v24 >> 1) & ~(-1 << (v24 >> 58))) == 0)
          {
LABEL_10:
            v18 = *(Value + 8 * v17);
            if (v16 >= HIDWORD(v27))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v16 + 1, 8);
              v16 = v27;
            }

            *(v26 + v16) = v18;
            v16 = v27 + 1;
            LODWORD(v27) = v27 + 1;
          }
        }

        else if ((*(*v24 + (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_10;
        }

        if (v15 == ++v17)
        {
          v19 = v26;
          v20 = v16;
          goto LABEL_14;
        }
      }
    }

    v20 = 0;
    v19 = v28;
LABEL_14:
    v21 = mlir::AffineBinaryOpExpr::getRHS(&v25);
    v25 = mlir::RankedTensorType::get(v19, v20, v21, 0);
    if (v26 != v28)
    {
      free(v26);
    }

    v22 = v24;
    if ((v24 & 1) == 0 && v24)
    {
      if (*v24 != v24 + 2)
      {
        free(*v24);
      }

      MEMORY[0x1AC55A070](v22, 0x1080C40EF38A13ELL);
    }
  }

  return v25;
}

BOOL llvm::SmallBitVector::test(llvm::SmallBitVector *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    return ((1 << a2) & (v2 >> 1) & ~(-1 << (v2 >> 58))) != 0;
  }

  else
  {
    return (*(*v2 + 8 * (a2 >> 6)) & (1 << a2)) != 0;
  }
}

uint64_t mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29[0] = v30;
  v29[1] = 0x600000000;
  v26 = v28;
  v27 = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  v22[0] = v23;
  v22[1] = 0x600000000;
  v20[0] = v21;
  v20[1] = 0x600000000;
  v18[0] = v19;
  v18[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, v22, v29);
  mlir::dispatchIndexOpFoldResults(a5, a6, v20, &v26);
  mlir::dispatchIndexOpFoldResults(a7, a8, v18, v24);
  v15 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(a1, a2, v13, v14, v26, v27);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  return v15;
}

void mlir::tensor::ExtractSliceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v45 = v47;
  v46 = 0x600000000;
  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  v36 = v38;
  v37 = 0x600000000;
  v33 = v35;
  v34 = 0x600000000;
  v30 = v32;
  v31 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v36, &v45);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v33, &v42);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v30, &v39);
  if (a3)
  {
    *(a2 + 192) = 0;
    v17 = *(a2 + 120);
    v18 = a12 + v17;
    if (a12 + v17 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = v42;
    v23 = v43;
    v29[0] = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
    RHS = mlir::AffineBinaryOpExpr::getRHS(v29);
    Values = mlir::SparseElementsAttr::getValues(v29);
    a3 = mlir::RankedTensorType::get(v22, v23, RHS, Values);
    *(a2 + 192) = 0;
    v17 = *(a2 + 120);
    v18 = a12 + v17;
    if (a12 + v17 <= *(a2 + 124))
    {
LABEL_3:
      if (!a12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v18, 16);
  LODWORD(v17) = *(a2 + 120);
  if (a12)
  {
LABEL_4:
    memcpy((*(a2 + 112) + 16 * v17), __src, 16 * a12);
    LODWORD(v17) = *(a2 + 120);
  }

LABEL_5:
  *(a2 + 120) = v17 + a12;
  mlir::ValueRange::ValueRange(v29, v36, v37);
  mlir::ValueRange::ValueRange(v28, v33, v34);
  mlir::ValueRange::ValueRange(v27, v30, v31);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v45, v46);
  v20 = mlir::Builder::getDenseI64ArrayAttr(a1, v42, v43);
  v21 = mlir::Builder::getDenseI64ArrayAttr(a1, v39, v40);
  mlir::tensor::ExtractSliceOp::build(v21, a2, a3, a4, v29[0], v29[1], v28[0], v28[1], v27[0], v27[1], DenseI64ArrayAttr, v20, v21);
  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }
}

void mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24 = a4;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  v19[6] = 1;
  v19[7] = a6;
  v19[8] = a8;
  v19[9] = a10;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a11;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = a13;
  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23 + 1, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
}

BOOL mlir::tensor::ExtractSliceOp::verify(mlir::tensor::ExtractSliceOp *this)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*this + 72) + 24) + 8);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(this, &v21);
  v3 = v21;
  v4 = v22;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(this, &v18);
  v5 = v18;
  v6 = v19;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(this, &v15);
  v14 = mlir::tensor::ExtractSliceOp::inferResultType(v2 & 0xFFFFFFFFFFFFFFF8, v3, v4, v5, v6, v15, v16);
  if (v15 != &v17)
  {
    free(v15);
  }

  if (v18 != &v20)
  {
    free(v18);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v7 = mlir::TensorType::operator mlir::ShapedType(&v14);
  v9 = v8;
  if (*(*this + 36))
  {
    v10 = *this - 16;
  }

  else
  {
    v10 = 0;
  }

  v21 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v21);
  isRankReducedType = mlir::isRankReducedType(v7, v9, v11);
  return produceSliceErrorMsg(isRankReducedType, *this, v14);
}

BOOL produceSliceErrorMsg(int a1, uint64_t *a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = a3;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v48[0] = "expected type to be ";
      v49 = 259;
      mlir::Operation::emitError(a2, v48, v54);
      if (v54[0])
      {
        v5 = &v51;
        mlir::DiagnosticArgument::DiagnosticArgument(&v51, a3);
        v6 = v55;
        if (v56 >= v57)
        {
          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
          {
            v44 = &v51 - v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v6 = v55;
            v5 = (v55 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v5 = &v51;
            v6 = v55;
          }
        }

        v7 = &v6[24 * v56];
        v8 = *v5;
        *(v7 + 2) = *(v5 + 2);
        *v7 = v8;
        v9 = ++v56;
        if (v54[0])
        {
          v51 = 3;
          v52 = " or a rank-reduced version. (size mismatch) ";
          v53 = 44;
          v10 = &v51;
          v11 = v55;
          if (v9 >= v57)
          {
            if (v55 <= &v51 && v55 + 24 * v9 > &v51)
            {
              v47 = &v51 - v55;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v9 + 1, 24);
              v11 = v55;
              v10 = (v55 + v47);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v9 + 1, 24);
              v10 = &v51;
              v11 = v55;
            }
          }

          v12 = &v11[24 * v56];
          v13 = *v10;
          *(v12 + 2) = *(v10 + 2);
          *v12 = v13;
          ++v56;
        }
      }

      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v64 == 1)
      {
        if (v63 != &v64)
        {
          free(v63);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v62;
          v16 = __p;
          if (v62 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v62 = v14;
          operator delete(v16);
        }

        v17 = v59;
        if (!v59)
        {
          goto LABEL_66;
        }

        v18 = v60;
        v19 = v59;
        if (v60 == v59)
        {
          goto LABEL_65;
        }

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
        goto LABEL_64;
      }
    }

    else
    {
      v48[0] = "expected element type to be ";
      v49 = 259;
      mlir::Operation::emitError(a2, v48, v54);
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v50);
      if (v54[0])
      {
        v33 = &v51;
        mlir::DiagnosticArgument::DiagnosticArgument(&v51, RHS);
        v34 = v55;
        if (v56 >= v57)
        {
          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
          {
            v46 = &v51 - v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v34 = v55;
            v33 = (v55 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v33 = &v51;
            v34 = v55;
          }
        }

        v35 = &v34[24 * v56];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v56;
      }

      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v64 == 1)
      {
        if (v63 != &v64)
        {
          free(v63);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v62;
          v39 = __p;
          if (v62 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v62 = v37;
          operator delete(v39);
        }

        v17 = v59;
        if (!v59)
        {
          goto LABEL_66;
        }

        v40 = v60;
        v19 = v59;
        if (v60 == v59)
        {
          goto LABEL_65;
        }

        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v17);
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return 1;
    }

    v48[0] = "expected rank to be smaller or equal to ";
    v49 = 259;
    mlir::Operation::emitError(a2, v48, v54);
    if (v54[0])
    {
      v51 = 3;
      v52 = "the other rank. ";
      v53 = 16;
      v22 = &v51;
      v23 = v55;
      if (v56 >= v57)
      {
        if (v55 <= &v51 && v55 + 24 * v56 > &v51)
        {
          v45 = &v51 - v55;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v23 = v55;
          v22 = (v55 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v22 = &v51;
          v23 = v55;
        }
      }

      v24 = &v23[24 * v56];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      ++v56;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v62;
        v28 = __p;
        if (v62 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v62 = v26;
        operator delete(v28);
      }

      v17 = v59;
      if (!v59)
      {
        goto LABEL_66;
      }

      v29 = v60;
      v19 = v59;
      if (v60 == v59)
      {
LABEL_65:
        v60 = v17;
        operator delete(v19);
LABEL_66:
        if (v55 != v58)
        {
          free(v55);
        }

        return v3;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
        }
      }

      while (v29 != v17);
LABEL_64:
      v19 = v59;
      goto LABEL_65;
    }
  }

  return v3;
}

void getDroppedDims(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 0x3A)
  {
    operator new();
  }

  v7 = (a5 << 58) | 1;
  *a1 = v7;
  if (a5)
  {
    v8 = a3 - 1;
    v9 = 8 * a5;
    v10 = a4 - 8;
    v11 = a5 - 1;
    do
    {
      v12 = *(v10 + v9);
      if ((v12 & 4) != 0)
      {
        if (v8 < 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v14 = v12 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v14);
        if (v8 < 0 || Int == 1 && *(a2 + 8 * v8) != 1)
        {
LABEL_13:
          if (v7)
          {
            v7 = v7 & 0xFC00000000000001 | (2 * (((1 << v11) | (v7 >> 1)) & ~(-1 << (v7 >> 58))));
            *a1 = v7;
          }

          else
          {
            *(*v7 + 8 * (v11 >> 6)) |= 1 << v11;
          }

          goto LABEL_8;
        }
      }

      --v8;
LABEL_8:
      --v11;
      v9 -= 8;
    }

    while (v9);
  }
}

unint64_t mlir::tensor::ExtractSliceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *v3;
  if (*v3)
  {
    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v24 = v5;
    if (v5)
    {
      if (!mlir::DenseElementsAttr::isSplat(&v24))
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    if (*(*a1 + 36))
    {
      v10 = *a1 - 16;
    }

    else
    {
      v10 = 0;
    }

    v9 = *(*(*(*a1 + 72) + 24) + 8);
    if (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7 && ((v11 = *a1, v12 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1), *(*a1 + 36)) ? (v13 = *a1 - 16) : (v13 = 0), v24 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8), v14 = mlir::TensorType::operator mlir::ShapedType(&v24), (foldIdentityOffsetSizeAndStrideOpInterface(v11, v12, v14, v15)))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    else
    {
      v16 = *a1;
      v24 = *(*(v16 + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v24);
      if (DefiningOp && (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id ? (v18 = 0) : (v18 = DefiningOp), v18 && (*(v16 + 36) ? (v20 = v16 - 16) : (v20 = 0), (v19 = *(*(*(v18 + 72) + 24) + 8), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) ^ v19) <= 7) && (InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v16), v22 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v18), (mlir::detail::sameOffsetsSizesAndStrides(v18, v22, v16, InterfaceFor, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldExtractAfterInsertSlice(mlir::tensor::ExtractSliceOp)::$_0>, &v24) & 1) != 0))))
      {
        v23 = *(*(v18 + 72) + 24);
        if (v23)
        {
          return v23 | 4;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t foldIdentityOffsetSizeAndStrideOpInterface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v36[0] = a1;
  v36[1] = a2;
  v35[0] = a3;
  v35[1] = a4;
  mlir::Attribute::getContext((a1 + 24));
  mlir::OffsetSizeAndStrideOpInterface::getMixedOffsets(&__dst, v36);
  v4 = __dst;
  if (v41)
  {
    v5 = 8 * v41 - 8;
    do
    {
      v6 = *v4++;
      v7 = mlir::getConstantIntValue(v6) == 0;
      v9 = v8 & v7;
      v10 = (v8 & v7) != 1 || v5 == 0;
      v5 -= 8;
    }

    while (!v10);
    v4 = __dst;
    if (__dst == v42)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    if (__dst == v42)
    {
      goto LABEL_10;
    }
  }

  free(v4);
LABEL_10:
  if (!v9)
  {
    return 0;
  }

  v34[0] = mlir::ShapedType::getShape(v35);
  v34[1] = v11;
  mlir::OffsetSizeAndStrideOpInterface::getMixedSizes(&__src, v36);
  __dst = v42;
  v41 = 0x400000000;
  v12 = v38;
  v13 = __src;
  if (v38)
  {
    if (__src == v39)
    {
      v14 = v38;
      if (v38 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v42, v38, 8), v14 = v38, v13 = __src, v38))
      {
        memcpy(__dst, v13, 8 * v14);
        v13 = __src;
      }

      LODWORD(v41) = v12;
    }

    else
    {
      __dst = __src;
      v41 = v38;
      __src = v39;
      HIDWORD(v38) = 0;
      v13 = v39;
    }

    LODWORD(v38) = 0;
  }

  v15 = v34;
  v43 = v34;
  if (v13 != v39)
  {
    free(v13);
    v15 = v43;
    v12 = v41;
  }

  v16 = 0;
  v17 = __dst;
  if (v12)
  {
    v18 = v15[1];
    if (v18)
    {
      v19 = *v15;
      v20 = 8 * v18 - 8;
      v21 = 8 * v12 - 8;
      do
      {
        v22 = mlir::getConstantIntValue(*v17) == *v19;
        v24 = v23 & v22;
        if (v24 != 1)
        {
          break;
        }

        if (!v21)
        {
          break;
        }

        ++v17;
        ++v19;
        v25 = v20;
        v20 -= 8;
        v21 -= 8;
      }

      while (v25);
      v16 = v24 ^ 1;
      v17 = __dst;
    }
  }

  if (v17 != v42)
  {
    free(v17);
  }

  if (v16)
  {
    return 0;
  }

  mlir::OffsetSizeAndStrideOpInterface::getMixedStrides(&__dst, v36);
  v27 = __dst;
  if (!v41)
  {
    result = 1;
    if (__dst == v42)
    {
      return result;
    }

LABEL_45:
    v33 = result;
    free(v27);
    return v33;
  }

  v28 = 8 * v41 - 8;
  do
  {
    v29 = *v27++;
    v30 = mlir::getConstantIntValue(v29) == 1;
    result = v31 & v30;
    v32 = result != 1 || v28 == 0;
    v28 -= 8;
  }

  while (!v32);
  v27 = __dst;
  if (__dst != v42)
  {
    goto LABEL_45;
  }

  return result;
}

int64x2_t **llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(int64x2_t **result, unint64_t a2, int64x2_t **a3)
{
  v4 = result + 2;
  *result = (result + 2);
  result[1] = 0x600000000;
  v5 = *a3;
  if (a2 >= 7)
  {
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, v4, a2, 8);
    result = v6;
    v7 = *v6 + (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = a2 & 3;
    v9 = vdupq_n_s64(v5);
    v10 = *v6 + 1;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v10[-1] = v9;
      *v10 = v9;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      do
      {
        *v7++ = v5;
        --v8;
      }

      while (v8);
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v12 = vdupq_n_s64(a2 - 1);
  v13 = a2 + 1;
  v14 = vmovn_s64(vcgeq_u64(v12, xmmword_1A7598670));
  if ((v14.i8[0] & 1) == 0)
  {
    v15 = v13 & 0xE;
    if ((v14.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    result[3] = v5;
    if (v15 == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  *v4 = v5;
  v15 = v13 & 0xE;
  if (v14.i8[4])
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v15 == 2)
  {
    goto LABEL_6;
  }

LABEL_14:
  v16 = vmovn_s64(vcgtq_u64(v12, xmmword_1A75989F0));
  if ((v16.i8[0] & 1) == 0)
  {
    if ((v16.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  result[4] = v5;
  if (v16.i8[4])
  {
LABEL_19:
    result[5] = v5;
    if (v15 != 4)
    {
      goto LABEL_20;
    }

LABEL_6:
    *(result + 2) = a2;
    return result;
  }

LABEL_16:
  if (v15 == 4)
  {
    goto LABEL_6;
  }

LABEL_20:
  v17 = vmovn_s64(vcgtq_u64(v12, xmmword_1A75DA400));
  if (v17.i8[0])
  {
    result[6] = v5;
  }

  if ((v17.i8[4] & 1) == 0)
  {
    goto LABEL_6;
  }

  result[7] = v5;
  *(result + 2) = a2;
  return result;
}

uint64_t mlir::tensor::InsertSliceOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "inserted_slice", 14);
}

void mlir::tensor::InsertSliceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  v36 = v38;
  v37 = 0x600000000;
  v33 = v35;
  v34 = 0x600000000;
  v30 = v32;
  v31 = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v33, &v42);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v30, &v39);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v27, &v36);
  *(a2 + 192) = 0;
  v17 = *(a2 + 120);
  if (a12 + v17 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a12 + v17, 16);
    LODWORD(v17) = *(a2 + 120);
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v17), __src, 16 * a12);
    LODWORD(v17) = *(a2 + 120);
  }

  *(a2 + 120) = v17 + a12;
  v18 = *(a4 + 8);
  mlir::ValueRange::ValueRange(v26, v33, v34);
  mlir::ValueRange::ValueRange(v25, v30, v31);
  mlir::ValueRange::ValueRange(v24, v27, v28);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v42, v43);
  v20 = mlir::Builder::getDenseI64ArrayAttr(a1, v39, v40);
  v21 = mlir::Builder::getDenseI64ArrayAttr(a1, v36, v37);
  mlir::tensor::InsertSliceOp::build(v21, a2, v18 & 0xFFFFFFFFFFFFFFF8, a3, a4, v26[0], v26[1], v22, v25[0], v25[1], v24[0], v24[1], DenseI64ArrayAttr, v20, v21);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }
}

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v24 = a5;
  v25 = a4;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = 0x100000001;
  *(v19 + 32) = a7;
  *(v19 + 36) = a10;
  *(v19 + 40) = a12;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a13;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a14;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = a15;
  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23 + 1, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
}

BOOL mlir::tensor::InsertSliceOp::verify(uint64_t **this)
{
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*this + 9))
  {
    v3 = *this - 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v18);
  v18 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  v5 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v18);
  v7 = v6;
  v18 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v18);
  v17 = v2;
  v18 = v4;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v18);
  Values = mlir::SparseElementsAttr::getValues(&v18);
  v10 = mlir::RankedTensorType::get(v5, v7, RHS, Values);
  v18 = v10;
  v11 = mlir::TensorType::operator mlir::ShapedType(&v18);
  v13 = v12;
  v14 = mlir::TensorType::operator mlir::ShapedType(&v17);
  isRankReducedType = mlir::isRankReducedType(v11, v13, v14);
  return produceSliceErrorMsg(isRankReducedType, *this, v10);
}

uint64_t mlir::tensor::InsertSliceOp::fold(uint64_t *a1)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v43 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&v43))
  {
    Value = mlir::ArrayAttr::getValue(&v43);
    if (v3)
    {
      v4 = 8 * v3;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(*a1 + 36))
      {
        v5 = *a1 - 16;
      }

      else
      {
        v5 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (mlir::TensorType::hasRank(&v42))
      {
        v6 = mlir::ArrayAttr::getValue(&v42);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          if (*(*a1 + 36))
          {
            v10 = *a1 - 16;
          }

          else
          {
            v10 = 0;
          }

          v9 = *(*(*(*a1 + 72) + 24) + 8);
          if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7)
          {
            v11 = *a1;
            InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
            v13 = *(*a1 + 36) ? *a1 - 16 : 0;
            v41 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v14 = mlir::TensorType::operator mlir::ShapedType(&v41);
            if (foldIdentityOffsetSizeAndStrideOpInterface(v11, InterfaceFor, v14, v15))
            {
              v16 = *(*a1 + 72);
LABEL_56:
              v34 = *(v16 + 24);
              return v34 | 4;
            }
          }
        }
      }
    }
  }

  v17 = *a1;
  v43 = *(*(*a1 + 72) + 32 * *(*a1 + 104) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v43);
  if (!DefiningOp || (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id ? (v19 = 0) : (v19 = DefiningOp), !v19 || (*(*(*(v17 + 72) + 24) + 8) ^ *(*(*(v19 + 72) + 24) + 8)) > 7 || (v20 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v17), v21 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v19), !mlir::detail::sameOffsetsSizesAndStrides(v19, v21, v17, v20, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterInsertSlice(mlir::tensor::InsertSliceOp)::$_0>, &v43))))
  {
    v29 = *a1;
    v43 = *(*(*a1 + 72) + 24);
    v30 = mlir::Value::getDefiningOp(&v43);
    if (v30)
    {
      v31 = *(*(v30 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v30 : 0;
      if (v31)
      {
        if (*(*(v31 + 72) + 24) == *(*(v29 + 72) + 32 * *(v29 + 104) + 24))
        {
          v32 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v29);
          v33 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v31);
          if (mlir::detail::sameOffsetsSizesAndStrides(v31, v33, v29, v32, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterExtractSlice(mlir::tensor::InsertSliceOp)::$_0>, &v43))
          {
            v34 = *(*(v31 + 72) + 24);
            if (v34)
            {
              return v34 | 4;
            }
          }
        }
      }
    }

    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(a1, &v43);
    v35 = v43;
    if (v44)
    {
      v36 = 8 * v44 - 8;
      do
      {
        v37 = *v35++;
        isConstantIntValue = mlir::isConstantIntValue(v37, 0);
        if (isConstantIntValue)
        {
          break;
        }

        v39 = v36;
        v36 -= 8;
      }

      while (v39);
      v35 = v43;
      if (v43 == v45)
      {
        goto LABEL_54;
      }
    }

    else
    {
      isConstantIntValue = 0;
      if (v43 == v45)
      {
        goto LABEL_54;
      }
    }

    v40 = isConstantIntValue;
    free(v35);
    isConstantIntValue = v40;
LABEL_54:
    if (!isConstantIntValue)
    {
      return 0;
    }

    v16 = *(*a1 + 72) + 32 * *(*a1 + 104);
    goto LABEL_56;
  }

  v22 = (*(v17 + 72) + 32 * *(v17 + 16 * ((*(v17 + 44) >> 23) & 1) + 88));
  v23 = *(*(v19 + 72) + 32 * *(v19 + 104) + 24);
  v24 = v22[1];
  if (v24)
  {
    v25 = *v22;
    *v24 = *v22;
    if (v25)
    {
      *(v25 + 8) = v24;
    }
  }

  v22[3] = v23;
  v22[1] = v23;
  v26 = *v23;
  *v22 = *v23;
  if (v26)
  {
    *(v26 + 8) = v22;
  }

  *v23 = v22;
  if (*(*a1 + 36))
  {
    v27 = *a1 - 16;
  }

  else
  {
    v27 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0) | 4;
}

uint64_t mlir::tensor::InsertSliceOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t *a3)
{
  v33[6] = *MEMORY[0x1E69E9840];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v30);
  __src = v33;
  v32 = 0x600000000;
  if (v7)
  {
    v8 = v7;
    if (v7 < 7)
    {
      v9 = 0;
      v10 = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v7, 8);
      v9 = v32;
      v10 = v8 - v32;
      if (v8 == v32)
      {
        goto LABEL_10;
      }
    }

    bzero(__src + 8 * v9, 8 * v10);
LABEL_10:
    LODWORD(v32) = v8;
  }

  v11 = *(a3 + 2);
  if (!v11)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v11, &__src);
LABEL_18:
    v15 = __src;
    if (__src == v33)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v11 == 1)
  {
    goto LABEL_18;
  }

  v12 = v11 << 6;
  v13 = (v12 + *a3 - 64);
  v14 = 64 - v12;
  do
  {
    if (v13 + 2 != *v13)
    {
      free(*v13);
    }

    v13 -= 8;
    v14 += 64;
  }

  while (v14);
  *(a3 + 2) = 1;
  v15 = __src;
  if (__src != v33)
  {
LABEL_19:
    free(v15);
  }

LABEL_20:
  v16 = *(*a1 + 24);
  v17 = *(*(*a1 + 72) + 32 * *(*a1 + 104) + 24);
  v30 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v33;
  v32 = 0x600000000;
  mlir::ArrayAttr::getValue(&v30);
  if (v18 >= 1)
  {
    for (i = 0; i < v22; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v16, v17, i);
      v21 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v23 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v32 + 1, 8);
        MixedSize = v23;
        v21 = v32;
      }

      *(__src + v21) = MixedSize;
      LODWORD(v32) = v32 + 1;
      mlir::ArrayAttr::getValue(&v30);
    }
  }

  v24 = *a3;
  v25 = __src;
  if (v24 != &__src)
  {
    if (__src != v33)
    {
      if (*v24 != v24 + 16)
      {
        free(*v24);
        v25 = __src;
      }

      *v24 = v25;
      *(v24 + 8) = v32;
      __src = v33;
      HIDWORD(v32) = 0;
      goto LABEL_42;
    }

    v26 = v32;
    v27 = *(v24 + 8);
    if (v27 >= v32)
    {
      if (v32)
      {
        memmove(*v24, __src, 8 * v32);
      }

      goto LABEL_41;
    }

    if (*(v24 + 12) >= v32)
    {
      if (v27)
      {
        memmove(*v24, __src, 8 * v27);
        v28 = v32 - v27;
        if (v32 == v27)
        {
LABEL_41:
          *(v24 + 8) = v26;
LABEL_42:
          LODWORD(v32) = 0;
          v25 = __src;
          goto LABEL_43;
        }
      }

      else
      {
        v27 = 0;
        v28 = v32;
        if (!v32)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      *(v24 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v24, (v24 + 16), v26, 8);
      v27 = 0;
      v28 = v32;
      if (!v32)
      {
        goto LABEL_41;
      }
    }

    memcpy((*v24 + 8 * v27), __src + 8 * v27, 8 * v28);
    goto LABEL_41;
  }

LABEL_43:
  if (v25 != v33)
  {
    free(v25);
  }

  return 1;
}

uint64_t mlir::tensor::PadOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "padded", 6);
}

uint64_t mlir::tensor::PadOp::verify(uint64_t **this)
{
  v108 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v93 = v3;
  v4 = *(v2 + 9);
  v5 = v2 - 2;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v92 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v97[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v7 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v97);
  v9 = v8;
  v97[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v97);
  v91 = mlir::tensor::PadOp::inferResultType(v3, v7, v9, v10, v11, 0, 0);
  if (v91)
  {
    mlir::ArrayAttr::getValue(&v92);
    v13 = v12;
    mlir::ArrayAttr::getValue(&v91);
    if (v13 == v14)
    {
      mlir::ArrayAttr::getValue(&v93);
      if (v15 < 1)
      {
        return 1;
      }

      v16 = 0;
      v17 = v15 & 0x7FFFFFFF;
      while (1)
      {
        v18 = *(mlir::ArrayAttr::getValue(&v92) + 8 * v16);
        if (v18 != *(mlir::ArrayAttr::getValue(&v91) + 8 * v16) && *(mlir::ArrayAttr::getValue(&v91) + 8 * v16) != 0x8000000000000000)
        {
          break;
        }

        if (v17 == ++v16)
        {
          return 1;
        }
      }

      v89[0] = "specified type ";
      v90 = 259;
      mlir::OpState::emitError(this, v89, v97);
      if (v97[0])
      {
        v19 = &v94;
        mlir::DiagnosticArgument::DiagnosticArgument(&v94, v92);
        v20 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v99 > &v94)
          {
            v86 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v20 = v98;
            v19 = (v98 + v86);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v19 = &v94;
            v20 = v98;
          }
        }

        v21 = &v20[24 * v99];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        v23 = ++v99;
        if (v97[0])
        {
          v94 = 3;
          v95 = " does not match the inferred type ";
          v96 = 34;
          v24 = &v94;
          v25 = v98;
          if (v23 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v23 > &v94)
            {
              v87 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v23 + 1, 24);
              v25 = v98;
              v24 = (v98 + v87);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v23 + 1, 24);
              v24 = &v94;
              v25 = v98;
            }
          }

          v26 = &v25[24 * v99];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v99;
          if (v97[0])
          {
            v28 = &v94;
            mlir::DiagnosticArgument::DiagnosticArgument(&v94, v91);
            v29 = v98;
            if (v99 >= v100)
            {
              if (v98 <= &v94 && v98 + 24 * v99 > &v94)
              {
                v88 = &v94 - v98;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v29 = v98;
                v28 = (v98 + v88);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v28 = &v94;
                v29 = v98;
              }
            }

            v30 = &v29[24 * v99];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            ++v99;
          }
        }
      }

      v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
      if (v97[0])
      {
        mlir::InFlightDiagnostic::report(v97);
      }

      if (v107)
      {
        if (v106 != &v107)
        {
          free(v106);
        }

        v33 = __p;
        if (__p)
        {
          v34 = v105;
          v35 = __p;
          if (v105 != __p)
          {
            do
            {
              v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
            }

            while (v34 != v33);
            v35 = __p;
          }

          v105 = v33;
          operator delete(v35);
        }

        v36 = v102;
        if (!v102)
        {
          goto LABEL_83;
        }

        v37 = v103;
        v38 = v102;
        if (v103 == v102)
        {
LABEL_82:
          v103 = v36;
          operator delete(v38);
LABEL_83:
          if (v98 != v101)
          {
            free(v98);
          }

          return v32;
        }

        do
        {
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
          }
        }

        while (v37 != v36);
LABEL_81:
        v38 = v102;
        goto LABEL_82;
      }
    }

    else
    {
      v89[0] = "specified type ";
      v90 = 259;
      mlir::OpState::emitError(this, v89, v97);
      if (v97[0])
      {
        v60 = &v94;
        mlir::DiagnosticArgument::DiagnosticArgument(&v94, v92);
        v61 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v99 > &v94)
          {
            v81 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v61 = v98;
            v60 = (v98 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v60 = &v94;
            v61 = v98;
          }
        }

        v62 = &v61[24 * v99];
        v63 = *v60;
        *(v62 + 2) = *(v60 + 2);
        *v62 = v63;
        v64 = ++v99;
        if (v97[0])
        {
          v94 = 3;
          v95 = " does not match the inferred type ";
          v96 = 34;
          v65 = &v94;
          v66 = v98;
          if (v64 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v64 > &v94)
            {
              v83 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v64 + 1, 24);
              v66 = v98;
              v65 = (v98 + v83);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v64 + 1, 24);
              v65 = &v94;
              v66 = v98;
            }
          }

          v67 = &v66[24 * v99];
          v68 = *v65;
          *(v67 + 2) = *(v65 + 2);
          *v67 = v68;
          ++v99;
          if (v97[0])
          {
            v69 = &v94;
            mlir::DiagnosticArgument::DiagnosticArgument(&v94, v91);
            v70 = v98;
            if (v99 >= v100)
            {
              if (v98 <= &v94 && v98 + 24 * v99 > &v94)
              {
                v85 = &v94 - v98;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v70 = v98;
                v69 = (v98 + v85);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v69 = &v94;
                v70 = v98;
              }
            }

            v71 = &v70[24 * v99];
            v72 = *v69;
            *(v71 + 2) = *(v69 + 2);
            *v71 = v72;
            ++v99;
          }
        }
      }

      v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
      if (v97[0])
      {
        mlir::InFlightDiagnostic::report(v97);
      }

      if (v107 == 1)
      {
        if (v106 != &v107)
        {
          free(v106);
        }

        v73 = __p;
        if (__p)
        {
          v74 = v105;
          v75 = __p;
          if (v105 != __p)
          {
            do
            {
              v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
            }

            while (v74 != v73);
            v75 = __p;
          }

          v105 = v73;
          operator delete(v75);
        }

        v36 = v102;
        if (!v102)
        {
          goto LABEL_83;
        }

        v76 = v103;
        v38 = v102;
        if (v103 == v102)
        {
          goto LABEL_82;
        }

        do
        {
          v78 = *--v76;
          v77 = v78;
          *v76 = 0;
          if (v78)
          {
            MEMORY[0x1AC55A040](v77, 0x1000C8077774924);
          }
        }

        while (v76 != v36);
        goto LABEL_81;
      }
    }
  }

  else
  {
    v89[0] = "failed to infer expectedType from sourceType ";
    v90 = 259;
    mlir::OpState::emitError(this, v89, v97);
    if (v97[0])
    {
      v41 = &v94;
      mlir::DiagnosticArgument::DiagnosticArgument(&v94, v93);
      v42 = v98;
      if (v99 >= v100)
      {
        if (v98 <= &v94 && v98 + 24 * v99 > &v94)
        {
          v80 = &v94 - v98;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
          v42 = v98;
          v41 = (v98 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
          v41 = &v94;
          v42 = v98;
        }
      }

      v43 = &v42[24 * v99];
      v44 = *v41;
      *(v43 + 2) = *(v41 + 2);
      *v43 = v44;
      v45 = ++v99;
      if (v97[0])
      {
        v94 = 3;
        v95 = ", specified resultType is ";
        v96 = 26;
        v46 = &v94;
        v47 = v98;
        if (v45 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v45 > &v94)
          {
            v82 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v45 + 1, 24);
            v47 = v98;
            v46 = (v98 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v45 + 1, 24);
            v46 = &v94;
            v47 = v98;
          }
        }

        v48 = &v47[24 * v99];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v99;
        if (v97[0])
        {
          v50 = &v94;
          mlir::DiagnosticArgument::DiagnosticArgument(&v94, v92);
          v51 = v98;
          if (v99 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v99 > &v94)
            {
              v84 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v51 = v98;
              v50 = (v98 + v84);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v50 = &v94;
              v51 = v98;
            }
          }

          v52 = &v51[24 * v99];
          v53 = *v50;
          *(v52 + 2) = *(v50 + 2);
          *v52 = v53;
          ++v99;
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
    if (v97[0])
    {
      mlir::InFlightDiagnostic::report(v97);
    }

    if (v107 == 1)
    {
      if (v106 != &v107)
      {
        free(v106);
      }

      v54 = __p;
      if (__p)
      {
        v55 = v105;
        v56 = __p;
        if (v105 != __p)
        {
          do
          {
            v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
          }

          while (v55 != v54);
          v56 = __p;
        }

        v105 = v54;
        operator delete(v56);
      }

      v36 = v102;
      if (!v102)
      {
        goto LABEL_83;
      }

      v57 = v103;
      v38 = v102;
      if (v103 == v102)
      {
        goto LABEL_82;
      }

      do
      {
        v59 = *--v57;
        v58 = v59;
        *v57 = 0;
        if (v59)
        {
          MEMORY[0x1AC55A040](v58, 0x1000C8077774924);
        }
      }

      while (v57 != v36);
      goto LABEL_81;
    }
  }

  return v32;
}

uint64_t mlir::tensor::PadOp::inferResultType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v23 = a1;
  mlir::ArrayAttr::getValue(&v23);
  v14 = a3 == v13 && a5 == v13;
  if (!v14 || a7 && a7 != a5)
  {
    return 0;
  }

  v24 = v26;
  v25 = 0x400000000;
  if (!a5)
  {
    v19 = 0;
    v20 = v26;
    goto LABEL_24;
  }

  v16 = 0;
  do
  {
    if (*(mlir::ArrayAttr::getValue(&v23) + 8 * v16) == 0x8000000000000000 || *(a2 + 8 * v16) == 0x8000000000000000 || *(a4 + 8 * v16) == 0x8000000000000000)
    {
      if (a7)
      {
        v17 = *(a6 + 8 * v16);
        v18 = v25;
        if (v25 < HIDWORD(v25))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v17 = 0x8000000000000000;
        v18 = v25;
        if (v25 < HIDWORD(v25))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v17 = *(a2 + 8 * v16) + *(a4 + 8 * v16) + *(mlir::ArrayAttr::getValue(&v23) + 8 * v16);
      v18 = v25;
      if (v25 < HIDWORD(v25))
      {
        goto LABEL_19;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v18 + 1, 8);
    v18 = v25;
LABEL_19:
    *(v24 + v18) = v17;
    v19 = (v25 + 1);
    LODWORD(v25) = v25 + 1;
    ++v16;
  }

  while (a5 != v16);
  v20 = v24;
LABEL_24:
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v23);
  result = mlir::RankedTensorType::get(v20, v19, RHS, 0);
  if (v24 != v26)
  {
    v22 = result;
    free(v24);
    return v22;
  }

  return result;
}

uint64_t mlir::tensor::PadOp::verifyRegions(uint64_t **this)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(*this + 9))
  {
    v3 = *this - 2;
  }

  else
  {
    v3 = 0;
  }

  v80 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v80);
  v5 = v4;
  v6 = *(v2 + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  if (((*(v7 + 7) - *(v7 + 6)) >> 3) != v4)
  {
    v75[0] = "expected the block to have ";
    v76 = 259;
    mlir::OpState::emitError(this, v75, &v80);
    if (v80)
    {
      v77 = 5;
      v78 = v5;
      v26 = &v77;
      v27 = v82;
      if (v83 >= v84)
      {
        if (v82 <= &v77 && v82 + 24 * v83 > &v77)
        {
          v70 = &v77 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v27 = v82;
          v26 = (v82 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v26 = &v77;
          v27 = v82;
        }
      }

      v28 = &v27[24 * v83];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      v30 = ++v83;
      if (v80)
      {
        v77 = 3;
        v78 = " arguments";
        v79 = 10;
        v31 = &v77;
        v32 = v82;
        if (v30 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v30 > &v77)
          {
            v71 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v30 + 1, 24);
            v32 = v82;
            v31 = (v82 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v30 + 1, 24);
            v31 = &v77;
            v32 = v82;
          }
        }

        v33 = &v32[24 * v83];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v83;
      }
    }

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v80);
    if (v80)
    {
      mlir::InFlightDiagnostic::report(&v80);
    }

    if (v91 != 1)
    {
      return v35;
    }

    if (v90 != &v91)
    {
      free(v90);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v89;
      v38 = __p;
      if (v89 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v89 = v36;
      operator delete(v38);
    }

    v39 = v86;
    if (!v86)
    {
      goto LABEL_104;
    }

    v40 = v87;
    v41 = v86;
    if (v87 == v86)
    {
      goto LABEL_103;
    }

    do
    {
      v43 = *--v40;
      v42 = v43;
      *v40 = 0;
      if (v43)
      {
        MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
      }
    }

    while (v40 != v39);
    goto LABEL_102;
  }

  ArgumentTypes = mlir::Block::getArgumentTypes(v7);
  if (ArgumentTypes == v9)
  {
LABEL_12:
    mlir::Block::getTerminator(v7);
    v14 = *(*(*(v13 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    if (!v15)
    {
      goto LABEL_83;
    }

    v16 = *v15;
    {
      v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      if (!v19)
      {
        goto LABEL_83;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      if (!v19)
      {
        goto LABEL_83;
      }
    }

    v20 = v18;
    v21 = v19;
    do
    {
      v22 = v21 >> 1;
      v23 = &v20[2 * (v21 >> 1)];
      v25 = *v23;
      v24 = v23 + 2;
      v21 += ~(v21 >> 1);
      if (v25 < v17)
      {
        v20 = v24;
      }

      else
      {
        v21 = v22;
      }
    }

    while (v21);
    if (v20 != &v18[2 * v19] && *v20 == v17)
    {
      v62 = v20[1];
      v80 = v15;
      v81 = v62;
      if (v14 == mlir::ElementsAttr::isSplat(&v80))
      {
        return 1;
      }

LABEL_86:
      v75[0] = "expected yield type to match shape element type";
      v76 = 259;
      mlir::OpState::emitOpError(this, v75, &v80);
      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v80);
      if (v80)
      {
        mlir::InFlightDiagnostic::report(&v80);
      }

      if (v91 != 1)
      {
        return v35;
      }

      if (v90 != &v91)
      {
        free(v90);
      }

      v63 = __p;
      if (__p)
      {
        v64 = v89;
        v65 = __p;
        if (v89 != __p)
        {
          do
          {
            v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
          }

          while (v64 != v63);
          v65 = __p;
        }

        v89 = v63;
        operator delete(v65);
      }

      v39 = v86;
      if (!v86)
      {
        goto LABEL_104;
      }

      v66 = v87;
      v41 = v86;
      if (v87 == v86)
      {
LABEL_103:
        v87 = v39;
        operator delete(v41);
LABEL_104:
        v61 = v82;
        if (v82 == v85)
        {
          return v35;
        }

LABEL_105:
        free(v61);
        return v35;
      }

      do
      {
        v68 = *--v66;
        v67 = v68;
        *v66 = 0;
        if (v68)
        {
          MEMORY[0x1AC55A040](v67, 0x1000C8077774924);
        }
      }

      while (v66 != v39);
LABEL_102:
      v41 = v86;
      goto LABEL_103;
    }

LABEL_83:
    v80 = v15;
    v81 = 0;
    if (v14 == mlir::ElementsAttr::isSplat(&v80))
    {
      return 1;
    }

    goto LABEL_86;
  }

  v10 = ArgumentTypes;
  v11 = v9;
  v12 = 0;
  while (1)
  {
    v74 = *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (!mlir::Type::isIndex(&v74))
    {
      break;
    }

    ++v12;
    v10 += 8;
    if (v10 == v11)
    {
      goto LABEL_12;
    }
  }

  v75[0] = "expected block argument ";
  v76 = 259;
  mlir::OpState::emitOpError(this, v75, &v80);
  if (v80)
  {
    v77 = 5;
    v78 = (v12 + 1);
    v44 = &v77;
    v45 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v77 && v82 + 24 * v83 > &v77)
      {
        v72 = &v77 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v45 = v82;
        v44 = (v82 + v72);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v44 = &v77;
        v45 = v82;
      }
    }

    v46 = &v45[24 * v83];
    v47 = *v44;
    *(v46 + 2) = *(v44 + 2);
    *v46 = v47;
    v48 = ++v83;
    if (v80)
    {
      v77 = 3;
      v78 = " to be an index";
      v79 = 15;
      v49 = &v77;
      v50 = v82;
      if (v48 >= v84)
      {
        if (v82 <= &v77 && v82 + 24 * v48 > &v77)
        {
          v73 = &v77 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v48 + 1, 24);
          v50 = v82;
          v49 = (v82 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v48 + 1, 24);
          v49 = &v77;
          v50 = v82;
        }
      }

      v51 = &v50[24 * v83];
      v52 = *v49;
      *(v51 + 2) = *(v49 + 2);
      *v51 = v52;
      ++v83;
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v80);
  if (v80)
  {
    mlir::InFlightDiagnostic::report(&v80);
  }

  if (v91)
  {
    if (v90 != &v91)
    {
      free(v90);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v89;
      v55 = __p;
      if (v89 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v89 = v53;
      operator delete(v55);
    }

    v56 = v86;
    if (v86)
    {
      v57 = v87;
      v58 = v86;
      if (v87 != v86)
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
        v58 = v86;
      }

      v87 = v56;
      operator delete(v58);
    }

    v61 = v82;
    if (v82 != v85)
    {
      goto LABEL_105;
    }
  }

  return v35;
}

void mlir::tensor::PadOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::hashing::detail *a5, uint64_t a6, llvm::hashing::detail *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, char a13, const void *a14, uint64_t a15)
{
  v19 = a3;
  if (a3)
  {
    *(a2 + 192) = 0;
    v22 = *(a2 + 120);
    v23 = a15 + v22;
    if (a15 + v22 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = mlir::tensor::PadOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, a5, a6, a7, a8, 0, 0);
    *(a2 + 192) = 0;
    v22 = *(a2 + 120);
    v23 = a15 + v22;
    if (a15 + v22 <= *(a2 + 124))
    {
LABEL_3:
      if (!a15)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v23, 16);
  LODWORD(v22) = *(a2 + 120);
  if (!a15)
  {
LABEL_5:
    *(a2 + 120) = v22 + a15;
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a5, a6);
    v26 = mlir::Builder::getDenseI64ArrayAttr(a1, a7, a8);
    if (a13)
    {
      UnitAttr = mlir::Builder::getUnitAttr(a1, v25);
    }

    else
    {
      UnitAttr = 0;
    }

    mlir::tensor::PadOp::build(UnitAttr, a2, v19, a4, a9, a10, a11, a12, DenseI64ArrayAttr, v26, UnitAttr);
  }

LABEL_4:
  memcpy((*(a2 + 112) + 16 * v22), a14, 16 * a15);
  LODWORD(v22) = *(a2 + 120);
  goto LABEL_5;
}

void mlir::tensor::PadOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  v16 = *(a2 + 32);
  if (v16)
  {
    v16[6] = 1;
    v16[7] = a6;
    v16[8] = a8;
    v17 = *(a2 + 32);
    if (v17)
    {
      *(v17 + 16) = a9;
      v18 = *(a2 + 32);
      if (v18)
      {
        *(v18 + 8) = a10;
        if (!a11)
        {
          mlir::OperationState::addRegion(a2);
        }

        v19 = *(a2 + 32);
        if (!v19)
        {
          operator new();
        }

        *v19 = a11;
        mlir::OperationState::addRegion(a2);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void mlir::tensor::PadOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, char a9, void *__src, uint64_t a11)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v17 = *(a4 + 8);
  v36 = v38;
  v37 = 0x400000000;
  v33 = &v35;
  v34 = 0x400000000;
  v30 = &v32;
  v31 = 0x400000000;
  v27 = &v29;
  v28 = 0x400000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v36, &v30);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v33, &v27);
  if (a3)
  {
    *(a2 + 192) = 0;
    v18 = *(a2 + 120);
    v19 = a11 + v18;
    if (a11 + v18 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    a3 = mlir::tensor::PadOp::inferResultType(v17 & 0xFFFFFFFFFFFFFFF8, v30, v31, v27, v28, 0, 0);
    *(a2 + 192) = 0;
    v18 = *(a2 + 120);
    v19 = a11 + v18;
    if (a11 + v18 <= *(a2 + 124))
    {
LABEL_3:
      v20 = a9;
      if (!a11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v19, 16);
  LODWORD(v18) = *(a2 + 120);
  v20 = a9;
  if (!a11)
  {
LABEL_5:
    *(a2 + 120) = v18 + a11;
    mlir::ValueRange::ValueRange(v26, v36, v37);
    mlir::ValueRange::ValueRange(v25, v33, v34);
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v30, v31);
    v23 = mlir::Builder::getDenseI64ArrayAttr(a1, v27, v28);
    if (v20)
    {
      UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
    }

    else
    {
      UnitAttr = 0;
    }

    mlir::tensor::PadOp::build(UnitAttr, a2, a3, a4, v26[0], v26[1], v25[0], v25[1], DenseI64ArrayAttr, v23, UnitAttr);
  }

LABEL_4:
  memcpy((*(a2 + 112) + 16 * v18), __src, 16 * a11);
  LODWORD(v18) = *(a2 + 120);
  goto LABEL_5;
}

uint64_t mlir::tensor::PadOp::getConstantPaddingValue(mlir::tensor::PadOp *this)
{
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  mlir::Block::getTerminator(v3);
  v5 = v4;
  result = 0;
  if (v5)
  {
    v7 = *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v13 = *(*(v5 + 72) + 24);
    v14 = v13;
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    if (!DefiningOp)
    {
      goto LABEL_14;
    }

    {
      v12 = DefiningOp;
      mlir::tensor::PadOp::getConstantPaddingValue();
      DefiningOp = v12;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return v13;
    }

    else
    {
LABEL_14:
      ParentBlock = mlir::Value::getParentBlock(&v13);
      v10 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
      if (v10)
      {
        v11 = v10 - 8;
      }

      else
      {
        v11 = 0;
      }

      if (ParentBlock == v11)
      {
        return 0;
      }

      else
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::PadOp::fold(uint64_t a1)
{
  if (*(*a1 + 36))
  {
    v2 = *a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v10);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v6 = *(*a1 + 36) ? *a1 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(*(*a1 + 72) + 24);
  if ((*(v8 + 8) ^ *(NextResultAtOffset + 8)) > 7 || *(*a1 + 80))
  {
    return 0;
  }

  return v8 | 4;
}

void mlir::tensor::ParallelInsertSliceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v41 = v43;
  v42 = 0x600000000;
  v38 = v40;
  v39 = 0x600000000;
  v35 = v37;
  v36 = 0x600000000;
  v32 = v34;
  v33 = 0x600000000;
  v29 = v31;
  v30 = 0x600000000;
  v26 = v28;
  v27 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v32, &v41);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v29, &v38);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v26, &v35);
  *(a2 + 192) = 0;
  v16 = *(a2 + 120);
  if (a12 + v16 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a12 + v16, 16);
    LODWORD(v16) = *(a2 + 120);
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v16), __src, 16 * a12);
    LODWORD(v16) = *(a2 + 120);
  }

  *(a2 + 120) = v16 + a12;
  mlir::ValueRange::ValueRange(v25, 0, 0);
  mlir::ValueRange::ValueRange(v24, v32, v33);
  mlir::ValueRange::ValueRange(v23, v29, v30);
  mlir::ValueRange::ValueRange(v22, v26, v27);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v41, v42);
  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, v38, v39);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v35, v36);
  mlir::tensor::ParallelInsertSliceOp::build(v19, a2, v25[0], v25[1], a3, a4, v24[0], v24[1], v23[0], v23[1], v22[0], v22[1], DenseI64ArrayAttr, v18, v19);
  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }
}

void mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = a6;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = 0x100000001;
  *(v20 + 32) = a8;
  *(v20 + 36) = a10;
  *(v20 + 40) = a12;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a13;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a14;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 16) = a15;
  v24 = *(a2 + 72);
  if (a4 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v24, 8);
    v24 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_16;
    }
  }

  else if (!a4)
  {
    goto LABEL_16;
  }

  v25 = 0;
  v26 = *(a2 + 64) + 8 * v24;
  do
  {
    *(v26 + 8 * v25) = mlir::TypeRange::dereference_iterator(a3, v25);
    ++v25;
  }

  while (a4 != v25);
  LODWORD(v24) = *(a2 + 72);
LABEL_16:
  *(a2 + 72) = v24 + a4;
}