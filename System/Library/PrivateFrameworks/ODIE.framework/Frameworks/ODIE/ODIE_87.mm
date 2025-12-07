BOOL mlir::tensor::CollapseShapeOp::verify(mlir::tensor::CollapseShapeOp *this)
{
  v61 = *MEMORY[0x277D85DE8];
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

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v49 = *this;
  v5 = *(v2 + 16);
  v6 = *(v4 + 16);
  v47 = v6;
  v48 = v5;
  if (v5 < v6)
  {
    v50[0] = "expected the expanded type, ";
    v51 = 259;
    mlir::Operation::emitOpError(&v56, v1, v50);
    if (v56)
    {
      LODWORD(v52) = 4;
      v53 = v2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58, &v52, 1);
      v8 = v58 + 24 * v59;
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++v59;
      if (v56)
      {
        mlir::Diagnostic::operator<<<34ul>(v57, " to have a higher (or same) rank ");
        if (v56)
        {
          mlir::Diagnostic::operator<<<26ul>(v57, "than the collapsed type, ");
          if (v56)
          {
            LODWORD(v52) = 4;
            v53 = v4;
            v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58, &v52, 1);
            v11 = v58 + 24 * v59;
            v12 = *v10;
            *(v11 + 16) = *(v10 + 16);
            *v11 = v12;
            ++v59;
            if (v56)
            {
              v55 = 264;
              LOBYTE(v52) = 46;
              mlir::Diagnostic::operator<<(v57, &v52);
            }
          }
        }
      }
    }

    v13 = v60;
    goto LABEL_24;
  }

  if (v6 == *(*(v1 + 80) + 16))
  {
    mlir::tensor::CollapseShapeOp::getReassociationMaps(&v52, v1);
    v14 = v52;
    if (v53)
    {
      v15 = 0;
      v16 = 8 * v53;
      while (**(v52 + v15) == v5)
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_17;
        }
      }

      v44 = "expected reassociation map #";
      v46 = 259;
      mlir::Operation::emitOpError(&v56, v1, &v44);
      v43 = v15;
      v29 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v56, &v43);
      v30 = v29;
      if (*v29)
      {
        mlir::Diagnostic::operator<<<43ul>((v29 + 1), " to have size equal to the expanded rank (");
      }

      v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v30, &v48);
      v32 = v31;
      if (*v31)
      {
        mlir::Diagnostic::operator<<<15ul>((v31 + 1), "), but it is  ");
      }

      v42 = *v14[v15];
      v33 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v32, &v42);
      v28 = v33;
      if (*v33)
      {
        v51 = 264;
        LOBYTE(v50[0]) = 46;
        mlir::Diagnostic::operator<<((v33 + 1), v50);
      }
    }

    else
    {
LABEL_17:
      LODWORD(v44) = 0;
      if (mlir::isReassociationValid(v52, v53, &v44))
      {
        v50[0] = &v49;
        v17 = *(v4 + 8);
        v18 = *(v4 + 16);
        v19 = *(v2 + 8);
        v20 = *(v2 + 16);
        mlir::tensor::CollapseShapeOp::getReassociationIndices(&v56, v1);
        v21 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, v50, v17, v18, v19, v20, v56, v57[0]);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v56);
        goto LABEL_35;
      }

      v50[0] = "expected reassociation map #";
      v51 = 259;
      mlir::Operation::emitOpError(&v56, v1, v50);
      v27 = mlir::InFlightDiagnostic::operator<<<int &>(&v56, &v44);
      v28 = v27;
      if (*v27)
      {
        mlir::Diagnostic::operator<<<29ul>((v27 + 1), " to be valid and contiguous.");
      }
    }

    v21 = *(v28 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
LABEL_35:
    if (v52 != v54)
    {
      free(v52);
    }

    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v52 = "expected collapsed rank (";
  v55 = 259;
  mlir::Operation::emitOpError(&v56, v1, &v52);
  v22 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v56, &v47);
  v23 = v22;
  if (*v22)
  {
    mlir::Diagnostic::operator<<<46ul>((v22 + 1), ") to equal the number of reassociation maps (");
  }

  v50[0] = *(*(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 64) + 16);
  v24 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v23, v50);
  v25 = v24;
  if (*v24)
  {
    mlir::Diagnostic::operator<<<3ul>((v24 + 1), ").");
  }

  v13 = *(v25 + 200);
LABEL_24:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
  if (v13)
  {
    return 0;
  }

LABEL_38:
  mlir::tensor::CollapseShapeOp::getReassociationMaps(&v52, v1);
  v34 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v2, v52, v53);
  if (mlir::tensor::isSameTypeWithoutEncoding(v4, v34))
  {
    v26 = 1;
  }

  else
  {
    v50[0] = "expected collapsed type to be ";
    v51 = 259;
    mlir::Operation::emitOpError(&v56, v1, v50);
    if (v56)
    {
      LODWORD(v44) = 4;
      v45 = v34;
      v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58, &v44, 1);
      v36 = v58 + 24 * v59;
      v37 = *v35;
      *(v36 + 16) = *(v35 + 16);
      *v36 = v37;
      ++v59;
      if (v56)
      {
        mlir::Diagnostic::operator<<<11ul>(v57, ", but got ");
        if (v56)
        {
          LODWORD(v44) = 4;
          v45 = v4;
          v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v58, &v44, 1);
          v39 = v58 + 24 * v59;
          v40 = *v38;
          *(v39 + 16) = *(v38 + 16);
          *v39 = v40;
          ++v59;
        }
      }
    }

    v26 = (v60 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v26;
}

unint64_t mlir::tensor::ExpandShapeOp::fold(mlir::tensor::ExpandShapeOp **a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(mlir::tensor::ExpandShapeOp::getODSOperands(*a1, 0) + 24);
  v5 = *(v4 + 8);
  if ((*(v3 - 1) ^ v5) <= 7)
  {
    return v4 | 4;
  }

  Raw = **(a2 + 56);
  if (Raw && ((v8 = *(*Raw + 136), v8 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v9 = 1), v9))
  {
    if (*(v3 + 9))
    {
      v10 = v3 - 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(v10 + 1) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = *v11;
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    }

    else
    {
      v14 = 0;
    }

    if (*(Raw + 8) != v11)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v11, v14, *(Raw + 32), *(Raw + 40));
    }

    return Raw & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    if ((~v5 & 7) == 0)
    {
      v4 = 0;
    }

    if (!v4)
    {
      return 0;
    }

    v15 = *(v4 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v4 + 24 * *(v4 + 16) + 120;
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      v16 = v4 + 16 * v15 + 16;
    }

    v17 = *(*(v16 + 48) + 16);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17 != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      return 0;
    }

    v6 = 0;
    v4 = *(*(v16 + 72) + 24);
    v19 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
    v29 = v19;
    if (*(v3 + 9))
    {
      v20 = v3 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19 == (*(v20 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v21 = *(v19 + 16);
      if (!v21)
      {
        return v4 | 4;
      }

      v22 = 0;
      v23 = *(v19 + 8);
      v24 = 8 * v21;
      do
      {
        v25 = *v23++;
        if (v25 == 0x8000000000000000)
        {
          ++v22;
        }

        v24 -= 8;
      }

      while (v24);
      if (v22 <= 1)
      {
        return v4 | 4;
      }

      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v31, v3);
      mlir::tensor::CollapseShapeOp::getReassociationIndices(v30, v18);
      v26 = llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator!=(&v31, v30);
      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v30);
      if ((v26 & 1) != 0 || (*(v18 + 36) ? (v28 = v18 - 16) : (v28 = 0), *(v19 + 16) >= *((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) + 16) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(v31, v32, &v29)))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(*(v18 + 72) + 24) | 4;
      }

      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v31);
    }
  }

  return v6;
}

unint64_t mlir::tensor::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(*a1 + 72) + 24);
  v4 = *(v3 + 8);
  if ((*(*a1 - 8) ^ v4) <= 7)
  {
    return v3 | 4;
  }

  Raw = **(a2 + 48);
  if (Raw && ((v7 = *(*Raw + 136), v7 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v8 = v7 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v8 = 1), v8))
  {
    if (*(v2 + 36))
    {
      v9 = v2 - 16;
    }

    else
    {
      v9 = 0;
    }

    v10 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v10)
    {
      v11 = *v10;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    }

    else
    {
      v13 = 0;
    }

    if (*(Raw + 8) != v10)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v13, *(Raw + 32), *(Raw + 40));
    }

    return Raw & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    if ((~v4 & 7) == 0)
    {
      v3 = 0;
    }

    if (!v3)
    {
      return 0;
    }

    v14 = *(v3 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v3 + 24 * *(v3 + 16);
      v16 = (v15 + 120);
      if (v15 == -120)
      {
        return 0;
      }
    }

    else
    {
      v16 = (v3 + 16 * v14 + 16);
    }

    v17 = *(*(v16 + 6) + 16);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      return 0;
    }

    v5 = 0;
    v19 = *(*(mlir::tensor::ExpandShapeOp::getODSOperands(v16, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v29 = v19;
    if (*(v2 + 36))
    {
      v20 = v2 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19 == (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v21 = *(v19 + 16);
      if (!v21)
      {
        goto LABEL_36;
      }

      v22 = 0;
      v23 = *(v19 + 8);
      v24 = 8 * v21;
      do
      {
        v25 = *v23++;
        if (v25 == 0x8000000000000000)
        {
          ++v22;
        }

        v24 -= 8;
      }

      while (v24);
      if (v22 <= 1)
      {
LABEL_36:
        v3 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v18, 0) + 24);
        return v3 | 4;
      }

      mlir::tensor::CollapseShapeOp::getReassociationIndices(&v31, v2);
      mlir::tensor::ExpandShapeOp::getReassociationIndices(v30, v18);
      v27 = llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator!=(&v31, v30);
      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v30);
      if ((v27 & 1) != 0 || (*(v18 + 9) ? (v28 = (v18 - 16)) : (v28 = 0), *(v19 + 16) >= *((*(v28 + 1) & 0xFFFFFFFFFFFFFFF8) + 16) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp>(mlir::tensor::CollapseShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::CollapseShapeOp)#1}>(v31, v32, &v29)))
      {
        v5 = 0;
      }

      else
      {
        v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v18, 0) + 24) | 4;
      }

      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v31);
    }
  }

  return v5;
}

uint64_t mlir::tensor::ExtractSliceOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v37[0] = v38;
  v37[1] = 0x600000000;
  v34 = v36;
  v35 = 0x600000000;
  v32[0] = v33;
  v32[1] = 0x600000000;
  v30[0] = v31;
  v30[1] = 0x600000000;
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  if (a3)
  {
    v13 = 8 * a3;
    do
    {
      v14 = *a2++;
      mlir::dispatchIndexOpFoldResult(v14, v30, v37);
      v13 -= 8;
    }

    while (v13);
  }

  if (a5)
  {
    v15 = 8 * a5;
    do
    {
      v16 = *a4++;
      mlir::dispatchIndexOpFoldResult(v16, v28, &v34);
      v15 -= 8;
    }

    while (v15);
  }

  if (a7)
  {
    v17 = 8 * a7;
    do
    {
      v18 = *a6++;
      mlir::dispatchIndexOpFoldResult(v18, v26, v32);
      v17 -= 8;
    }

    while (v17);
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  *&v25 = v34;
  *(&v25 + 1) = v35;
  v23 = v20;
  v24 = v19;
  v21 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v19 + 32), &v25, &v24, &v23);
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return v21;
}

void *mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v50[6] = *MEMORY[0x277D85DE8];
  v47[0] = v48;
  v47[1] = 0x600000000;
  v44 = v46;
  v45 = 0x600000000;
  v42[0] = v43;
  v42[1] = 0x600000000;
  v40[0] = v41;
  v40[1] = 0x600000000;
  v38[0] = v39;
  v38[1] = 0x600000000;
  v36[0] = v37;
  v36[1] = 0x600000000;
  if (a4)
  {
    v15 = 8 * a4;
    do
    {
      v16 = *a3++;
      mlir::dispatchIndexOpFoldResult(v16, v40, v47);
      v15 -= 8;
    }

    while (v15);
  }

  if (a6)
  {
    v17 = 8 * a6;
    do
    {
      v18 = *a5++;
      mlir::dispatchIndexOpFoldResult(v18, v38, &v44);
      v17 -= 8;
    }

    while (v17);
  }

  if (a8)
  {
    v19 = 8 * a8;
    do
    {
      v20 = *a7++;
      mlir::dispatchIndexOpFoldResult(v20, v36, v42);
      v19 -= 8;
    }

    while (v19);
  }

  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  *&v49 = v44;
  *(&v49 + 1) = v45;
  v34 = v22;
  *&v35 = v21;
  v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &v49, &v35, &v34);
  v24 = v23[2];
  v25 = v24 - a1;
  if (v24 - a1 >= 1)
  {
    v26 = v23[1];
    mlir::getPositionsOfShapeOne(&v32, v25, v26, v24);
    *&v49 = v50;
    *(&v49 + 1) = 0x600000000;
    if (v24)
    {
      v27 = 0;
      while (1)
      {
        if (v32)
        {
          if (((1 << v27) & (v32 >> 1) & ~(-1 << (v32 >> 58))) == 0)
          {
LABEL_17:
            llvm::SmallVectorTemplateBase<long long,true>::push_back(&v49, *(v26 + 8 * v27));
          }
        }

        else if ((*(*v32 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
        {
          goto LABEL_17;
        }

        if (v24 == ++v27)
        {
          v28 = v49;
          v29 = DWORD2(v49);
          goto LABEL_21;
        }
      }
    }

    v29 = 0;
    v28 = v50;
LABEL_21:
    v30 = v23[3];
    *&v35 = v28;
    *(&v35 + 1) = v29;
    v33 = 0;
    v34 = v30;
    v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v30 + 32), &v35, &v34, &v33);
    if (v49 != v50)
    {
      free(v49);
    }

    llvm::SmallBitVector::~SmallBitVector(&v32);
  }

  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  return v23;
}

void mlir::tensor::ExtractSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v58[6] = *MEMORY[0x277D85DE8];
  v56 = v58;
  v57 = 0x600000000;
  v53 = v55;
  v54 = 0x600000000;
  v50 = v52;
  v51 = 0x600000000;
  v47 = v49;
  v48 = 0x600000000;
  v44 = v46;
  v45 = 0x600000000;
  v41 = v43;
  v42 = 0x600000000;
  if (a6)
  {
    v17 = 8 * a6;
    do
    {
      v18 = *a5++;
      mlir::dispatchIndexOpFoldResult(v18, &v47, &v56);
      v17 -= 8;
    }

    while (v17);
  }

  if (a8)
  {
    v19 = 8 * a8;
    do
    {
      v20 = *a7++;
      mlir::dispatchIndexOpFoldResult(v20, &v44, &v53);
      v19 -= 8;
    }

    while (v19);
  }

  if (a10)
  {
    v22 = 8 * a10;
    do
    {
      v23 = *a9++;
      mlir::dispatchIndexOpFoldResult(v23, &v41, &v50);
      v22 -= 8;
    }

    while (v22);
  }

  if (!a3)
  {
    v24 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v24 + 24);
    v25 = *(v24 + 32);
    *&__src = v53;
    *(&__src + 1) = v54;
    v40 = v26;
    v38 = v25;
    a3 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v26 + 32), &__src, &v40, &v38);
  }

  *(a2 + 192) = 0;
  v27 = *(a2 + 120);
  if (v27 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v27, 16);
    LODWORD(v27) = *(a2 + 120);
  }

  *(a2 + 120) = v27;
  v28 = v47;
  v29 = v48;
  v30 = v44;
  v31 = v45;
  v32 = v41;
  v33 = v42;
  v37 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v56, v57);
  v36 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v53, v54);
  v34 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v50, v51);
  *&__src = a3;
  v40 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v40, 0, &v40, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v28 & 0xFFFFFFFFFFFFFFF9, 0, v28 & 0xFFFFFFFFFFFFFFF9, v29);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v30 & 0xFFFFFFFFFFFFFFF9, 0, v30 & 0xFFFFFFFFFFFFFFF9, v31);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v32 & 0xFFFFFFFFFFFFFFF9, 0, v32 & 0xFFFFFFFFFFFFFFF9, v33);
  v35 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  v35[6] = 1;
  v35[7] = v29;
  v35[8] = v31;
  v35[9] = v33;
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2) = v37;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v36;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v34;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &__src + 8);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }
}

uint64_t mlir::tensor::ExtractSliceOp::verify(mlir::tensor::ExtractSliceOp *this)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v2 = *(*(*(*this + 72) + 24) + 8);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(this, &v21);
  v3 = v21;
  v4 = v22;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(this, &v18);
  v5 = v18;
  v6 = v19;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(this, &v15);
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
  v10 = *this - 16;
  if (!*(*this + 36))
  {
    v10 = 0;
  }

  v21 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v21);
  isRankReducedType = mlir::isRankReducedType(v7, v9, v11);
  return produceSliceErrorMsg(isRankReducedType, *this, v14);
}

uint64_t produceSliceErrorMsg(int a1, void ***this, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v13[0] = "expected type to be ";
      v14 = 259;
      mlir::Operation::emitError(&v17, this, v13);
      if (v17)
      {
        v15 = 4;
        v16 = a3;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
        v6 = v19 + 24 * v20;
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++v20;
        if (v17)
        {
          mlir::Diagnostic::operator<<<45ul>(v18, " or a rank-reduced version. (size mismatch) ");
        }
      }
    }

    else
    {
      v13[0] = "expected element type to be ";
      v14 = 259;
      mlir::Operation::emitError(&v17, this, v13);
      if (v17)
      {
        v8 = *(a3 + 24);
        v15 = 4;
        v16 = v8;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
        v10 = v19 + 24 * v20;
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++v20;
      }
    }

    goto LABEL_12;
  }

  if (a1)
  {
    v13[0] = "expected rank to be smaller or equal to ";
    v14 = 259;
    mlir::Operation::emitError(&v17, this, v13);
    if (v17)
    {
      mlir::Diagnostic::operator<<<17ul>(v18, "the other rank. ");
    }

LABEL_12:
    v3 = v21 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t mlir::tensor::ExtractSliceOp::reifyResultShapes(mlir::tensor::ExtractSliceOp *a1, uint64_t a2, uint64_t a3)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (!v5)
  {
    if (*(a3 + 12))
    {
      v8 = 0;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a3, 1uLL);
      v8 = *(a3 + 8);
      if (v8 == 1)
      {
        goto LABEL_13;
      }
    }

    v9 = 64 - (v8 << 6);
    v10 = *a3 + (v8 << 6) + 16;
    do
    {
      *(v10 - 16) = v10;
      *(v10 - 8) = 0x600000000;
      v10 += 64;
      v9 -= 64;
    }

    while (v9);
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

  v6 = (*a3 + (v5 << 6) - 64);
  v7 = 64 - (v5 << 6);
  do
  {
    if (v6 + 2 != *v6)
    {
      free(*v6);
    }

    v6 -= 8;
    v7 += 64;
  }

  while (v7);
LABEL_13:
  *(a3 + 8) = 1;
LABEL_14:
  v11 = *a3;
  v12 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v12 = 0;
  }

  v13 = *((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v13 > *(v11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v11 + 16), v13, 8);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(a1, &v35);
  v32 = v34;
  v33 = 0x600000000;
  if (v36)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v32, &v35);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  v14 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v14 = 0;
  }

  v15 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(a1, &v35);
  v18 = v35;
  v19 = v36;
  llvm::SmallBitVector::SmallBitVector(&v30, v36, 0);
  if (v19)
  {
    v20 = v17 - 1;
    v21 = 8 * v19;
    v22 = v18 - 8;
    v23 = v19 - 1;
    do
    {
      v24 = *&v22[v21];
      if ((v24 & 4) != 0)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v31 = v24 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v31);
        if ((v20 & 0x8000000000000000) == 0 && (Int != 1 || *(v16 + 8 * v20) == 1))
        {
LABEL_32:
          --v20;
          goto LABEL_33;
        }
      }

      llvm::SmallBitVector::set(&v30, v23);
LABEL_33:
      --v23;
      v21 -= 8;
    }

    while (v21);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v33)
  {
    v26 = 0;
    v27 = v32;
    v28 = 8 * v33;
    while ((v30 & 1) == 0)
    {
      if ((*(*v30 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_40;
      }

LABEL_41:
      ++v26;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_45;
      }
    }

    if (((1 << v26) & (v30 >> 1) & ~(-1 << (v30 >> 58))) != 0)
    {
      goto LABEL_41;
    }

LABEL_40:
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(*a3, v27[v26]);
    goto LABEL_41;
  }

LABEL_45:
  llvm::SmallBitVector::~SmallBitVector(&v30);
  if (v32 != v34)
  {
    free(v32);
  }

  return 1;
}

unint64_t mlir::tensor::ExtractSliceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = **(a2 + 80);
  if (v3 && ((v4 = *(*v3 + 136), v4 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v5 = v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v5 = 1), v5))
  {
    if (v3[24])
    {
      v6 = **(a2 + 80);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v7 = 0;
  }

  result = reshapeConstantSource(v6, (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    v9 = *a1;
    v10 = *(*(*a1 + 72) + 24);
    v11 = *(v10 + 8);
    if (*(*a1 + 36))
    {
      v12 = *a1 - 16;
    }

    else
    {
      v12 = 0;
    }

    if ((*(v12 + 8) ^ v11) <= 7)
    {
      InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
      v14 = *a1 - 16;
      if (!*(*a1 + 36))
      {
        v14 = 0;
      }

      v28 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      v15 = mlir::TensorType::operator mlir::ShapedType(&v28);
      v17 = foldIdentityOffsetSizeAndStrideOpInterface(v9, InterfaceFor, v15, v16);
      v9 = *a1;
      if (v17)
      {
        return *(*(v9 + 72) + 24) | 4;
      }

      v10 = *(*(v9 + 72) + 24);
      v11 = *(v10 + 8);
    }

    if ((~v11 & 7) == 0)
    {
      v10 = 0;
    }

    if (!v10)
    {
      return 0;
    }

    v18 = *(v10 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v10 + 24 * *(v10 + 16) + 120;
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      v19 = v10 + 16 * v18 + 16;
    }

    v20 = *(*(v19 + 48) + 16);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v28 = v22;
    if (!v21)
    {
      return 0;
    }

    v23 = *(*(*(v19 + 72) + 24) + 8);
    v24 = *(v9 + 36) ? v9 - 16 : 0;
    if ((*(v24 + 8) ^ v23) > 7)
    {
      return 0;
    }

    v25 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
    if ((mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::isSameAs(&v28, v9, v25, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldExtractAfterInsertSlice(mlir::tensor::ExtractSliceOp)::$_0>, &v27) & 1) == 0)
    {
      return 0;
    }

    v26 = *(v28[9] + 24);
    if (v26)
    {
      return v26 | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t foldIdentityOffsetSizeAndStrideOpInterface(uint64_t a1, void (**a2)(void *__return_ptr, void, void), uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  (a2)[8](&v39, a2, a1);
  v8 = v39;
  if (v40)
  {
    v9 = 8 * v40 - 8;
    do
    {
      v10 = *v8++;
      v11 = mlir::getConstantIntValue(v10) == 0;
      v13 = v12 & v11;
      v14 = (v12 & v11) != 1 || v9 == 0;
      v9 -= 8;
    }

    while (!v14);
    v8 = v39;
  }

  else
  {
    v13 = 1;
  }

  if (v8 != v41)
  {
    free(v8);
  }

  if (!v13)
  {
    return 0;
  }

  v35[0] = (*(a4 + 24))(a4, a3);
  v35[1] = v15;
  (a2)[9](&v36, a2, a1);
  v39 = v41;
  v40 = 0x400000000;
  if (v37)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v39, &v36);
  }

  v16 = v35;
  v42 = v35;
  if (v36 != &v38)
  {
    free(v36);
    v16 = v42;
  }

  v17 = 0;
  v18 = v39;
  if (v40)
  {
    v19 = v16[1];
    if (v19)
    {
      v20 = *v16;
      v21 = 8 * v19 - 8;
      v22 = 8 * v40 - 8;
      do
      {
        v23 = mlir::getConstantIntValue(*v18) == *v20;
        v25 = v24 & v23;
        if (v25 != 1)
        {
          break;
        }

        if (!v22)
        {
          break;
        }

        ++v18;
        ++v20;
        v26 = v21;
        v21 -= 8;
        v22 -= 8;
      }

      while (v26);
      v17 = v25 ^ 1;
      v18 = v39;
    }
  }

  if (v18 != v41)
  {
    free(v18);
  }

  if (v17)
  {
    return 0;
  }

  (a2)[10](&v39, a2, a1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40 - 8;
    do
    {
      v31 = *v29++;
      v32 = mlir::getConstantIntValue(v31) == 1;
      v27 = v33 & v32;
      v34 = v27 != 1 || v30 == 0;
      v30 -= 8;
    }

    while (!v34);
    v29 = v39;
  }

  else
  {
    v27 = 1;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  return v27;
}

void mlir::tensor::InsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v56[6] = *MEMORY[0x277D85DE8];
  v54 = v56;
  v55 = 0x600000000;
  v51 = v53;
  v52 = 0x600000000;
  v48 = v50;
  v49 = 0x600000000;
  v45 = v47;
  v46 = 0x600000000;
  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  if (a6)
  {
    v16 = 8 * a6;
    do
    {
      v17 = *a5++;
      mlir::dispatchIndexOpFoldResult(v17, &v45, &v54);
      v16 -= 8;
    }

    while (v16);
  }

  if (a8)
  {
    v18 = 8 * a8;
    do
    {
      v19 = *a7++;
      mlir::dispatchIndexOpFoldResult(v19, &v42, &v51);
      v18 -= 8;
    }

    while (v18);
  }

  if (a10)
  {
    v21 = 8 * a10;
    do
    {
      v22 = *a9++;
      mlir::dispatchIndexOpFoldResult(v22, &v39, &v48);
      v21 -= 8;
    }

    while (v21);
  }

  *(a2 + 192) = 0;
  v23 = *(a2 + 120);
  if (v23 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v23, 16);
    LODWORD(v23) = *(a2 + 120);
  }

  *(a2 + 120) = v23;
  v24 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = v45;
  v26 = v46;
  v27 = v42;
  v28 = v43;
  v29 = v39;
  v30 = v40;
  v34 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v54, v55);
  v33 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v51, v52);
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v48, v49);
  v37 = a3;
  __src = v24;
  v36 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v37, 0, &v37, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v36, 0, &v36, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v25 & 0xFFFFFFFFFFFFFFF9, 0, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v27 & 0xFFFFFFFFFFFFFFF9, 0, v27 & 0xFFFFFFFFFFFFFFF9, v28);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v29 & 0xFFFFFFFFFFFFFFF9, 0, v29 & 0xFFFFFFFFFFFFFFF9, v30);
  v32 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v32 + 24) = 0x100000001;
  *(v32 + 32) = v26;
  *(v32 + 36) = v28;
  *(v32 + 40) = v30;
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) = v34;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v33;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v31;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v39);
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

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != v56)
  {
    free(v54);
  }
}

uint64_t mlir::tensor::InsertSliceOp::verify(void ****this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *((*this)[9][3] + 1);
  if (*(*this + 9))
  {
    v10 = *this - 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10[1];
  v12 = (*this)[11];
  v13 = v12[3];
  v14 = v12[4] >> 3;
  v17 = 0;
  inserted = verifyInsertSliceOp((v9 & 0xFFFFFFFFFFFFFFF8), v11 & 0xFFFFFFFFFFFFFFF8, a3, a4, v13, v14, a7, a8, &v17);
  return produceSliceErrorMsg(inserted, *this, v17);
}

uint64_t verifyInsertSliceOp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *&v20 = a5;
  *(&v20 + 1) = a6;
  v19 = v9;
  v17 = a1;
  v18 = v10;
  v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v20, &v19, &v18);
  *&v20 = v11;
  if (a9)
  {
    *a9 = v11;
  }

  v12 = mlir::TensorType::operator mlir::ShapedType(&v20);
  v14 = v13;
  v15 = mlir::TensorType::operator mlir::ShapedType(&v17);
  return mlir::isRankReducedType(v12, v14, v15);
}

uint64_t mlir::tensor::InsertSliceOp::fold(uint64_t *a1)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*(v3 + 24) + 8);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v5 + 8);
      v8 = 8 * v6;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v9 + 8);
      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
      if (*(*(v10 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *(v11 + 8);
          v14 = 8 * v12;
          while (*v13 != 0x8000000000000000)
          {
            ++v13;
            v14 -= 8;
            if (!v14)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          if ((v10 ^ v4) <= 7)
          {
            InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
            v16 = *a1 - 16;
            if (!*(*a1 + 36))
            {
              v16 = 0;
            }

            v49 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
            v17 = mlir::TensorType::operator mlir::ShapedType(&v49);
            v19 = foldIdentityOffsetSizeAndStrideOpInterface(v2, InterfaceFor, v17, v18);
            v2 = *a1;
            if (v19)
            {
              v20 = *(*(v2 + 72) + 24);
              return v20 | 4;
            }

            v3 = *(v2 + 72);
          }
        }
      }
    }
  }

  v21 = *(v3 + 32 * *(v2 + 104) + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = *(v21 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v21 + 24 * *(v21 + 16) + 120;
      if (!v23)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v23 = v21 + 16 * v22 + 16;
    }

    v24 = *(*(v23 + 48) + 16);
    v25 = v24 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
    if (v24 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v49 = v26;
    if (v25 && (*(*(v3 + 24) + 8) ^ *(*(*(v23 + 72) + 24) + 8)) <= 7)
    {
      v27 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
      if (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::isSameAs(&v49, v2, v27, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterInsertSlice(mlir::tensor::InsertSliceOp)::$_0>, &v48))
      {
        v28 = (*(v2 + 72) + 32 * *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1) + 24));
        v29 = *(*(v49 + 9) + 32 * *(v49 + 26) + 24);
        v30 = v28[1];
        if (v30)
        {
          v31 = *v28;
          *v30 = *v28;
          if (v31)
          {
            *(v31 + 8) = v28[1];
          }
        }

        v28[3] = v29;
        v28[1] = v29;
        v32 = *v29;
        *v28 = *v29;
        if (v32)
        {
          *(v32 + 8) = v28;
        }

        *v29 = v28;
        if (*(*a1 + 36))
        {
          return (*a1 - 16) | 4;
        }

        else
        {
          return 4;
        }
      }

      v2 = *a1;
      v3 = *(*a1 + 72);
    }
  }

LABEL_43:
  v34 = *(v3 + 24);
  if ((~*(v34 + 8) & 7) == 0)
  {
    v34 = 0;
  }

  if (!v34)
  {
    goto LABEL_58;
  }

  v35 = *(v34 + 8) & 7;
  if (v35 != 6)
  {
    v36 = v34 + 16 * v35 + 16;
LABEL_50:
    v37 = *(*(v36 + 48) + 16);
    v38 = v37 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    if (v37 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v49 = v39;
    if (v38 && *(*(v36 + 72) + 24) == *(v3 + 32 * *(v2 + 104) + 24))
    {
      v40 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
      if (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::isSameAs(&v49, v2, v40, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterExtractSlice(mlir::tensor::InsertSliceOp)::$_0>, &v48))
      {
        v20 = *(*(v49 + 9) + 24);
        if (v20)
        {
          return v20 | 4;
        }
      }
    }

    goto LABEL_58;
  }

  v36 = v34 + 24 * *(v34 + 16) + 120;
  if (v36)
  {
    goto LABEL_50;
  }

LABEL_58:
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(a1, &v49);
  v41 = v49;
  if (v50)
  {
    v42 = 8 * v50 - 8;
    do
    {
      v43 = *v41++;
      v44 = mlir::getConstantIntValue(v43) == 0;
      v46 = v45 & v44;
      if (v45 & v44)
      {
        break;
      }

      v47 = v42;
      v42 -= 8;
    }

    while (v47);
    v41 = v49;
  }

  else
  {
    v46 = 0;
  }

  if (v41 != v51)
  {
    free(v41);
  }

  if (v46)
  {
    v20 = *(mlir::tensor::InsertSliceOp::getODSOperands(a1, 1u) + 24);
    return v20 | 4;
  }

  return 0;
}

uint64_t mlir::tensor::InsertSliceOp::reifyResultShapes(mlir::tensor::InsertSliceOp *a1, char ***a2, uint64_t *a3)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v6 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v6 = 0;
  }

  v7 = *((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v11[0] = v12;
  v11[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v11, v7);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v11);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v8 = *(*a1 + 24);
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 1u);
  mlir::tensor::getMixedSizes(a2, v8, *(ODSOperands + 24), v11);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(*a3, v11);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return 1;
}

uint64_t mlir::tensor::PadOp::verify(void ****this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 9))
  {
    v3 = *this - 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3[1] & 0xFFFFFFFFFFFFFFF8;
  v5 = mlir::tensor::PadOp::inferResultType(*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8, (*this)[12][3], (*this)[12][4] >> 3, (*this)[11][3], (*this)[11][4] >> 3, 0, 0);
  v31 = v5;
  if (!v5)
  {
    v29[0] = "failed to infer expectedType from sourceType ";
    v30 = 259;
    mlir::Operation::emitError(&v34, *this, v29);
    if (!v34)
    {
      goto LABEL_24;
    }

    v32 = 4;
    v33 = v2;
    v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
    v17 = v36 + 24 * v37;
    v18 = *v16;
    *(v17 + 16) = *(v16 + 16);
    *v17 = v18;
    ++v37;
    if (!v34)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<27ul>(v35, ", specified resultType is ");
    if (!v34)
    {
      goto LABEL_24;
    }

    v32 = 4;
    v33 = v4;
    goto LABEL_23;
  }

  v6 = v5;
  if (*(v4 + 16) != *(v5 + 16))
  {
    v29[0] = "specified type ";
    v30 = 259;
    mlir::Operation::emitError(&v34, *this, v29);
    if (!v34)
    {
      goto LABEL_24;
    }

    v32 = 4;
    v33 = v4;
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
    v20 = v36 + 24 * v37;
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++v37;
    if (!v34)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<35ul>(v35, " does not match the inferred type ");
    if (!v34)
    {
      goto LABEL_24;
    }

    v32 = 4;
    v33 = v6;
LABEL_23:
    v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
    v23 = v36 + 24 * v37;
    v24 = *v22;
    *(v23 + 16) = *(v22 + 16);
    *v23 = v24;
    ++v37;
LABEL_24:
    v15 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    return v15 & 1;
  }

  if (*(v2 + 16) >= 1)
  {
    v7 = *(v4 + 8);
    v8 = *(v5 + 8);
    v9 = *(v2 + 16) & 0x7FFFFFFFLL;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      v13 = *v8++;
      v12 = v13;
      if (v10 != v13 && v12 != 0x8000000000000000)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    v29[0] = "specified type ";
    v30 = 259;
    mlir::Operation::emitError(&v34, *this, v29);
    if (v34)
    {
      v32 = 4;
      v33 = v4;
      v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
      v27 = v36 + 24 * v37;
      v28 = *v26;
      *(v27 + 16) = *(v26 + 16);
      *v27 = v28;
      ++v37;
      if (v34)
      {
        mlir::Diagnostic::operator<<<35ul>(v35, " does not match the inferred type ");
        if (v34)
        {
          mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(v35, &v31);
        }
      }
    }

    goto LABEL_24;
  }

LABEL_14:
  v15 = 1;
  return v15 & 1;
}

uint64_t mlir::tensor::PadOp::inferResultType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  v8 = a3 == v7 && a5 == v7;
  if (!v8 || a7 && a7 != a5)
  {
    return 0;
  }

  v28 = v30;
  v29 = 0x400000000;
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v18 = *(*(a1 + 8) + 8 * i);
      if (v18 == 0x8000000000000000 || (v19 = *(a2 + 8 * i), v19 == 0x8000000000000000) || (v20 = *(a4 + 8 * i), v20 == 0x8000000000000000))
      {
        if (a7)
        {
          v21 = *(a6 + 8 * i);
        }

        else
        {
          v21 = 0x8000000000000000;
        }
      }

      else
      {
        v21 = v19 + v18 + v20;
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v28, v21);
    }

    v22 = v28;
    v23 = v29;
  }

  else
  {
    v23 = 0;
    v22 = v30;
  }

  v24 = *(a1 + 24);
  *&v27 = v22;
  *(&v27 + 1) = v23;
  v25 = 0;
  v26 = v24;
  v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v27, &v26, &v25);
  if (v28 != v30)
  {
    free(v28);
  }

  return v15;
}

uint64_t mlir::tensor::PadOp::verifyRegions(mlir::Operation **this)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = ((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10);
  v4 = v2 - 16;
  if (!*(v2 + 9))
  {
    v4 = 0;
  }

  v5 = *((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  v25 = v5;
  v6 = *(v3 + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v9 = v7[6];
  v8 = v7[7];
  if (((v8 - v9) >> 3) != v5)
  {
    v23[0] = "expected the block to have ";
    v24 = 259;
    mlir::Operation::emitError(v26, v2, v23);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v26, &v25);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<11ul>((v17 + 1), " arguments");
    }

LABEL_18:
    v19 = *(v18 + 200);
    goto LABEL_19;
  }

  if (v9 != v8)
  {
    v10 = 1;
    while (*(*(*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v9 += 8;
      ++v10;
      if (v9 == v8)
      {
        goto LABEL_11;
      }
    }

    v23[0] = "expected block argument ";
    v24 = 259;
    mlir::Operation::emitOpError(v26, v2, v23);
    v22 = v10;
    v20 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v26, &v22);
    v18 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<16ul>((v20 + 1), " to be an index");
    }

    goto LABEL_18;
  }

LABEL_11:
  v11 = *(*(*(v7[4] + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  if (v11 != (*(v15 + 8))(v15, v12))
  {
    v23[0] = "expected yield type to match shape element type";
    v24 = 259;
    mlir::Operation::emitOpError(v26, *this, v23);
    v19 = v27;
LABEL_19:
    v16 = v19 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
    return v16 & 1;
  }

  v16 = 1;
  return v16 & 1;
}

void mlir::tensor::PadOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, _BYTE *a14, uint64_t a15)
{
  v19 = a3;
  if (!a3)
  {
    v19 = mlir::tensor::PadOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, a5, a6, a7, a8, 0, 0);
  }

  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a14, &a14[16 * a15]);
  v22 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a5, a6);
  v23 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a7, a8);
  v24 = 0;
  if (a13)
  {
    v24 = *(**a1 + 608);
  }

  mlir::tensor::PadOp::build(a2, v19, a4, a9, a10, a11, a12, v22, v23, v24);
}

void mlir::tensor::PadOp::build(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17[0] = a3;
  v17[1] = a2;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1 + 2, v17, 0, v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1 + 2, a4, 0, a4, a5);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1 + 2, a6, 0, a6, a7);
  v16 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1);
  v16[6] = 1;
  v16[7] = a5;
  v16[8] = a7;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1) + 16) = a8;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1) + 8) = a9;
  if (a10)
  {
    *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1) = a10;
  }

  mlir::OperationState::addRegion(a1);
}

void mlir::tensor::PadOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, char a9, _BYTE *__src, uint64_t a11)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 8);
  v39 = v41;
  v40 = 0x400000000;
  v36 = &v38;
  v37 = 0x400000000;
  v33 = &v35;
  v34 = 0x400000000;
  v30 = &v32;
  v31 = 0x400000000;
  if (a6)
  {
    v18 = 8 * a6;
    do
    {
      v19 = *a5++;
      mlir::dispatchIndexOpFoldResult(v19, &v39, &v33);
      v18 -= 8;
    }

    while (v18);
  }

  if (a8)
  {
    v20 = 8 * a8;
    do
    {
      v21 = *a7++;
      mlir::dispatchIndexOpFoldResult(v21, &v36, &v30);
      v20 -= 8;
    }

    while (v20);
  }

  if (!a3)
  {
    a3 = mlir::tensor::PadOp::inferResultType(v16 & 0xFFFFFFFFFFFFFFF8, v33, v34, v30, v31, 0, 0);
  }

  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), __src, &__src[16 * a11]);
  v22 = v39;
  v23 = v40;
  v24 = v36;
  v25 = v37;
  v26 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v33, v34);
  v27 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v30, v31);
  v28 = 0;
  if (a9)
  {
    v28 = *(**a1 + 608);
  }

  mlir::tensor::PadOp::build(a2, a3, a4, v22 & 0xFFFFFFFFFFFFFFF9, v23, v24 & 0xFFFFFFFFFFFFFFF9, v25, v26, v27, v28);
}

void mlir::tensor::PadOp::getPaddedDims(mlir::tensor::PadOp *this, uint64_t *a2)
{
  v16[6] = *MEMORY[0x277D85DE8];
  llvm::SmallBitVector::SmallBitVector(this, *((*(*(*(*a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16), 0);
  mlir::tensor::PadOp::getMixedLowPad(&v14, *a2);
  v4 = v14;
  if (v15)
  {
    v5 = 0;
    v6 = 8 * v15;
    do
    {
      ConstantIntValue = mlir::getConstantIntValue(v4[v5]);
      if ((v8 & 1) == 0 || ConstantIntValue)
      {
        llvm::SmallBitVector::set(this, v5);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  mlir::tensor::PadOp::getMixedHighPad(&v14, *a2);
  v9 = v14;
  if (v15)
  {
    v10 = 0;
    v11 = 8 * v15;
    do
    {
      v12 = mlir::getConstantIntValue(v9[v10]);
      if ((v13 & 1) == 0 || v12)
      {
        llvm::SmallBitVector::set(this, v10);
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
    v9 = v14;
  }

  if (v9 != v16)
  {
    free(v9);
  }
}

void mlir::tensor::PadOp::getMixedLowPad(mlir::tensor::PadOp *this, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 80);
  v6 = *(v5 + 32);
  v7 = *(v4 + 88);
  v8 = *(v4 + 92);
  if ((v3 & 0x800000) != 0)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 24);
  v18[0] = (v9 + 32 * v7) & 0xFFFFFFFFFFFFFFF9 | 2;
  v18[1] = (v8 + v7) - v7;
  v17 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v11 = (v6 >> 3);
  if ((v6 >> 3))
  {
    v12 = 0;
    do
    {
      v14 = *v10++;
      v13 = v14;
      if (v14 == 0x8000000000000000)
      {
        v15 = mlir::ValueRange::dereference_iterator(v18, v12);
        AsOpFoldResult = mlir::getAsOpFoldResult(v15);
        ++v12;
      }

      else
      {
        AsOpFoldResult = mlir::Builder::getI64IntegerAttr(&v17, v13) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, AsOpFoldResult);
      --v11;
    }

    while (v11);
  }
}

void mlir::tensor::PadOp::getMixedHighPad(mlir::tensor::PadOp *this, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 72);
  v6 = *(v5 + 32);
  v7 = (*(v4 + 92) + *(v4 + 88));
  v8 = *(v4 + 96);
  if ((v3 & 0x800000) != 0)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 24);
  v18[0] = (v9 + 32 * v7) & 0xFFFFFFFFFFFFFFF9 | 2;
  v18[1] = (v8 + v7) - v7;
  v17 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v11 = (v6 >> 3);
  if ((v6 >> 3))
  {
    v12 = 0;
    do
    {
      v14 = *v10++;
      v13 = v14;
      if (v14 == 0x8000000000000000)
      {
        v15 = mlir::ValueRange::dereference_iterator(v18, v12);
        AsOpFoldResult = mlir::getAsOpFoldResult(v15);
        ++v12;
      }

      else
      {
        AsOpFoldResult = mlir::Builder::getI64IntegerAttr(&v17, v13) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, AsOpFoldResult);
      --v11;
    }

    while (v11);
  }
}

uint64_t mlir::tensor::PadOp::getConstantPaddingValue(mlir::tensor::PadOp *this)
{
  v1 = 0;
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if (*(*(v4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
  {
    return v1;
  }

  v1 = *(*(v4 + 72) + 24);
  v6 = *(v1 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = v1;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 != 6)
  {
    v10 = v7 + 16 * v8 + 16;
    goto LABEL_13;
  }

  v9 = v7 + 24 * *(v7 + 16);
  v10 = v9 + 120;
  if (v9 != -120)
  {
LABEL_13:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v10 + 48) + 32))(*(v10 + 48), v11))
    {
      return v1;
    }

    v6 = *(v1 + 8) & 7;
  }

LABEL_15:
  if (v6 == 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v1;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 != 6)
  {
    v14 = v12 + 16 * v13 + 16;
    goto LABEL_23;
  }

  v14 = v12 + 24 * *(v12 + 16) + 120;
  if (!v14)
  {
LABEL_21:
    v14 = v1;
  }

LABEL_23:
  v15 = *(v14 + 16);
  v16 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v16)
  {
    v17 = v16 - 8;
  }

  else
  {
    v17 = 0;
  }

  if (v15 == v17)
  {
    return 0;
  }

  return v1;
}

uint64_t mlir::tensor::PadOp::fold(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 36))
  {
    v2 = *a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v2 + 8);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v3 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v8 = *(*(v1 + 72) + 24);
  if ((*(v8 + 8) ^ v3) > 7 || *(v1 + 80))
  {
    return 0;
  }

  return v8 | 4;
}

void mlir::tensor::ParallelInsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v52 = v54;
  v53 = 0x600000000;
  v49 = v51;
  v50 = 0x600000000;
  v46 = v48;
  v47 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  if (a6)
  {
    v15 = 8 * a6;
    do
    {
      v16 = *a5++;
      mlir::dispatchIndexOpFoldResult(v16, &v43, &v52);
      v15 -= 8;
    }

    while (v15);
  }

  if (a8)
  {
    v17 = 8 * a8;
    do
    {
      v18 = *a7++;
      mlir::dispatchIndexOpFoldResult(v18, &v40, &v49);
      v17 -= 8;
    }

    while (v17);
  }

  if (a10)
  {
    v20 = 8 * a10;
    do
    {
      v21 = *a9++;
      mlir::dispatchIndexOpFoldResult(v21, &v37, &v46);
      v20 -= 8;
    }

    while (v20);
  }

  *(a2 + 192) = 0;
  v22 = *(a2 + 120);
  if (v22 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v22, 16);
    LODWORD(v22) = *(a2 + 120);
  }

  *(a2 + 120) = v22;
  v23 = v43;
  v24 = v44;
  v25 = v40;
  v26 = v41;
  v27 = v37;
  v28 = v38;
  v29 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v52, v53);
  v30 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v49, v50);
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v46, v47);
  v35 = a4;
  v36 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v36, 0, &v36, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v35, 0, &v35, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v23 & 0xFFFFFFFFFFFFFFF9, 0, v23 & 0xFFFFFFFFFFFFFFF9, v24);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v25 & 0xFFFFFFFFFFFFFFF9, 0, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v27 & 0xFFFFFFFFFFFFFFF9, 0, v27 & 0xFFFFFFFFFFFFFFF9, v28);
  v32 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v32 + 24) = 0x100000001;
  *(v32 + 32) = v24;
  *(v32 + 36) = v26;
  *(v32 + 40) = v28;
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2) = v29;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v30;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v31;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, 2, 0, 2, 0);
  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }
}

uint64_t mlir::tensor::ParallelInsertSliceOp::verify(mlir::tensor::ParallelInsertSliceOp *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 16);
  if (v3 && (v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 48);
  if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = *(*(v6 + 8) + 32);
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID();
    v11 = (*(*v12 + 104))(v12, v13, v6);
  }

  else
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v6 + 32, v7))
    {
LABEL_11:
      v30 = 0;
      v14 = *(*(*(*this + 72) + 24) + 8);
      ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
      v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
      inserted = verifyInsertSliceOp((v14 & 0xFFFFFFFFFFFFFFF8), *(*(ODSOperands + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v17, v18, *(v16 + 24), *(v16 + 32) >> 3, v19, v20, &v30);
      return produceSliceErrorMsg(inserted, *this, v30);
    }

    v8 = *(v6 + 24);
    v9 = *(v5 + 48);
    v10 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID();
    v11 = (*(*v8 + 104))(v8, v10, v9);
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v2 = *this;
LABEL_13:
  v27 = "expected ParallelCombiningOpInterface parent, got:";
  v28 = 259;
  mlir::Operation::emitError(&v30, v2, &v27);
  v23 = *(*this + 16);
  if (v23 && (v24 = *(v23 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v25 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
  }

  if (v30)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(v29);
    mlir::Diagnostic::appendOp(v31, v25, v29);
  }

  v22 = (v31[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  return v22;
}

uint64_t mlir::tensor::ScatterOp::verify(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 9);
  v4 = *(v2 + 10);
  v5 = *((*(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32) >> 3;
  v8 = *(*(v3 + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (verifyGatherOrScatterDims(v2, v6, v7, *(v8 + 8), *(v8 + 16), v5, "scatter", 7, "dest", 4))
  {
    v9 = *this;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
    {
      v27[0] = "requires 'unique' attribute to be set";
      v28 = 259;
      mlir::Operation::emitOpError(&v31, v9, v27);
LABEL_16:
      v11 = v35 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
      return v11 & 1;
    }

    v10 = mlir::tensor::GatherOp::inferResultType((*(*(*(v9 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(v9 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 0);
    v11 = 1;
    v12 = mlir::tensor::GatherOp::inferResultType((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 1);
    v13 = *this;
    v14 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v10 != v14 && v14 != v12)
    {
      v27[0] = "source type mismatch: expected ";
      v28 = 259;
      mlir::Operation::emitOpError(&v31, v13, v27);
      if (v31)
      {
        v29 = 4;
        v30 = v10;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
        v17 = v33 + 24 * v34;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v34;
        if (v31)
        {
          mlir::Diagnostic::operator<<<30ul>(v32, " or its rank-reduced variant ");
          if (v31)
          {
            v29 = 4;
            v30 = v12;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
            v20 = v33 + 24 * v34;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v34;
            if (v31)
            {
              mlir::Diagnostic::operator<<<8ul>(v32, " (got: ");
              if (v31)
              {
                v22 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
                v29 = 4;
                v30 = v22;
                v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
                v24 = v33 + 24 * v34;
                v25 = *v23;
                *(v24 + 16) = *(v23 + 16);
                *v24 = v25;
                ++v34;
                if (v31)
                {
                  mlir::Diagnostic::operator<<<2ul>(v32, ")");
                }
              }
            }
          }
        }
      }

      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL mlir::tensor::SplatOp::verify(mlir::tensor::SplatOp *this)
{
  v24[26] = *MEMORY[0x277D85DE8];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    v6 = 8 * v3;
    do
    {
      v7 = *v5++;
      if (v7 == 0x8000000000000000)
      {
        ++v4;
      }

      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v8 = 1;
  mlir::tensor::SplatOp::getODSOperands(this, 1u);
  if (v4 != v9)
  {
    v22 = "incorrect number of dynamic sizes, has ";
    v23 = 259;
    mlir::Operation::emitOpError(v24, *this, &v22);
    mlir::tensor::SplatOp::getODSOperands(this, 1u);
    v21 = v10;
    v11 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v24, &v21);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<12ul>((v11 + 1), ", expected ");
    }

    v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = *(v13 + 8);
      v17 = 8 * v14;
      do
      {
        v18 = *v16++;
        if (v18 == 0x8000000000000000)
        {
          ++v15;
        }

        v17 -= 8;
      }

      while (v17);
    }

    else
    {
      v15 = 0;
    }

    v20 = v15;
    v8 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v12, &v20) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
  }

  return v8;
}

uint64_t mlir::tensor::SplatOp::reifyResultShapes(mlir::tensor::SplatOp *a1, mlir::Builder *a2, void **a3)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = *((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v15[0] = v16;
  v15[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v15, v6);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v15);
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  v7 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 16) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(v7 + 8) + 8 * v9);
      if (v10 == 0x8000000000000000)
      {
        ODSOperands = mlir::tensor::SplatOp::getODSOperands(a1, 1u);
        v12 = v8++;
        v13 = *(ODSOperands + 32 * v12 + 24) | 4;
      }

      else
      {
        v13 = mlir::Builder::getIndexAttr(a2, v10) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * v9++) = v13;
      v7 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v9 < *(v7 + 16));
  }

  return 1;
}

unint64_t mlir::tensor::SplatOp::fold(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = **(a2 + 40);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v5 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v6 = v5[2];
        if (!v6)
        {
LABEL_12:
          v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v12);
          v13[0] = v2;
          return mlir::DenseElementsAttr::get(v9, v10, v13, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
        }

        v7 = v5[1];
        v8 = 8 * v6;
        while (*v7 != 0x8000000000000000)
        {
          ++v7;
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

uint64_t mlir::tensor::PackOp::reifyResultShapes(uint64_t *a1, char ***a2, uint64_t *a3)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *((*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v8[0] = v9;
  v8[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v8, v6);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v8);
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  mlir::tensor::getMixedSizes(a2, *(v5 + 24), *(*(v5 + 72) + 32 * *(v5 + 104) + 24), v8);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(*a3, v8);
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  return 1;
}

void mlir::tensor::PackOp::getMixedTiles(mlir::tensor::PackOp *this, uint64_t a2)
{
  v11 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  v3 = *(v2 + 32);
  if (v3 >= 8)
  {
    v6 = 0;
    v7 = *(v2 + 24);
    v8 = 8 * (v3 >> 3);
    do
    {
      if (*v7 == 0x8000000000000000)
      {
        v9 = v6++;
        v10 = *(*(a2 + 72) + 32 * (*(a2 + 108) + *(a2 + 104) + *(a2 + 112)) + 32 * v9 + 24) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&v11, *v7) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, v10);
      ++v7;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::tensor::PackOp::getStaticTiles(mlir::tensor::PackOp *this, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x600000000;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  mlir::tensor::PackOp::getMixedTiles(&v6, a2);
  v3 = v6;
  if (v7)
  {
    v4 = 8 * v7;
    do
    {
      v5 = *v3++;
      mlir::dispatchIndexOpFoldResult(v5, v9, this);
      v4 -= 8;
    }

    while (v4);
    v3 = v6;
  }

  if (v3 != &v8)
  {
    free(v3);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }
}

uint64_t mlir::tensor::PackOp::requirePaddingValue(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, _BYTE *__src, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v26[6] = *MEMORY[0x277D85DE8];
  if (a6 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a6;
  }

  v25[0] = v26;
  v25[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(v25, __src, &__src[8 * v14]);
  if (a8)
  {
    mlir::invertPermutationVector(a7, a8, &v22);
    mlir::applyPermutationToVector<long long,6u>(v25, v22, v23);
    if (v22 != &v24)
    {
      free(v22);
    }
  }

  if (!a4)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v16 = 8 * a4;
  while (1)
  {
    if (*(a1 + 8 * *a3) == 0x8000000000000000)
    {
      goto LABEL_15;
    }

    ConstantIntValue = mlir::getConstantIntValue(*a9);
    if ((v18 & 1) == 0)
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
    v16 -= 8;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v19 = *(v25[0] + *a3);
  if (v19 == 0x8000000000000000 || !(*(a1 + 8 * *a3) % v19))
  {
    goto LABEL_15;
  }

LABEL_20:
  v20 = 1;
LABEL_17:
  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  return v20;
}

uint64_t mlir::tensor::PackOp::verify(mlir::tensor::PackOp *this)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = *this;
  mlir::tensor::PackOp::getMixedTiles(&v79, *this);
  if (v80)
  {
    v3 = v79;
    v4 = 8 * v80;
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v3);
      if ((v6 & 1) != 0 && !ConstantIntValue)
      {
        break;
      }

      ++v3;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v15 = "invalid zero tile factor";
  }

  else
  {
LABEL_6:
    v7 = *(v2 + 80);
    v8 = (*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = v8[2];
    v10 = *(v7 + 24);
    v11 = *(v7 + 32) >> 3;
    OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(v2);
    v14 = v13;
    if (isInvalidPackingPosSpecification(v10, v11, v9))
    {
      v15 = "invalid inner_dims_pos vector";
    }

    else if (isInvalidPackingPosSpecification(OuterDimsPerm, v14, v9))
    {
      v15 = "invalid outer_dims_perm vector";
    }

    else if (!v14 || v14 == v9)
    {
      if (v9 >= v80)
      {
        if (v11 == v80)
        {
          v73 = (*(*(*(v2 + 72) + 32 * *(v2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          v16 = mlir::TensorType::operator mlir::ShapedType(&v73);
          v18 = v17;
          v69[0] = v16;
          v69[1] = v17;
          (*(v17 + 24))(v17, v16);
          v67 = v9 + v80;
          v68 = v19;
          if (v67 != v19)
          {
            v70 = "packed rank != (unpacked rank + num tiling factors), got ";
            v72 = 259;
            mlir::Operation::emitError(&v73, v2, &v70);
            v64 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v73, &v68);
            v65 = v64;
            if (*v64)
            {
              mlir::Diagnostic::operator<<<5ul>((v64 + 1), " != ");
            }

            v36 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v65, &v67) + 200);
            goto LABEL_42;
          }

          mlir::tensor::PackOp::getStaticTiles(&v73, v2);
          v20 = mlir::tensor::PackOp::inferPackedType(v8, v73, v74, v10, v11, OuterDimsPerm, v14);
          v66 = v20;
          if (v73 != &v75)
          {
            free(v73);
          }

          v22 = *(v20 + 8);
          v21 = *(v20 + 16);
          v23 = (*(v18 + 24))(v18, v16);
          if (v21)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = 8 * v24 - 8;
            v27 = 8 * v21 - 8;
            while (*v22 == 0x8000000000000000 || *v23 == 0x8000000000000000 || *v22 <= *v23)
            {
              if (v27)
              {
                ++v22;
                ++v23;
                v29 = v26;
                v26 -= 8;
                v27 -= 8;
                if (v29)
                {
                  continue;
                }
              }

              goto LABEL_33;
            }

            v70 = "the shape of output is not large enough to hold the packed data. Expected at least ";
            v72 = 259;
            mlir::Operation::emitError(&v73, v2, &v70);
            if (v73)
            {
              mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v74, &v66);
              if (v73)
              {
                mlir::Diagnostic::operator<<<7ul>(&v74, ", got ");
                if (v73)
                {
                  mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v74, v69);
                }
              }
            }

            goto LABEL_41;
          }

LABEL_33:
          v30 = (*(v18 + 24))(v18, v16);
          v32 = v80;
          v33 = 8 * (v31 - v80);
          if (v31 <= v80)
          {
            v33 = 0;
          }

          v34 = (v33 + v30);
          if (v31 < v80)
          {
            v32 = v31;
          }

          v73 = v34;
          v74 = v32;
          v75 = &v79;
          if (llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::PackOp>(mlir::tensor::PackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(&v73))
          {
            v35 = 1;
            goto LABEL_43;
          }

          v15 = "mismatch in inner tile sizes specified and shaped of tiled dimension in the packed type";
        }

        else
        {
          v15 = "tiling factors must equal the number of dimensions to tile";
        }
      }

      else
      {
        v15 = "tiling factors must be less than or equal to the input rank for pack or output rank for unpack";
      }
    }

    else
    {
      v15 = "outer_dims_perm must be a permutation or empty";
    }
  }

  v70 = v15;
  v72 = 259;
  mlir::Operation::emitError(&v73, v2, &v70);
LABEL_41:
  v36 = v78;
LABEL_42:
  v35 = v36 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v73);
LABEL_43:
  if (v79 != &v81)
  {
    free(v79);
  }

  if (v35)
  {
    ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 2u);
    if (v38 && (v39 = *(ODSOperands + 24)) != 0)
    {
      v40 = *this;
      if ((*(v39 + 8) & 0xFFFFFFFFFFFFFFF8) != *((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24))
      {
        v79 = "expected padding_value has ";
        v82 = 259;
        mlir::Operation::emitOpError(&v73, v40, &v79);
        if (v73)
        {
          v41 = *((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
          LODWORD(v70) = 4;
          v71 = v41;
          v42 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v76, &v70, 1);
          v43 = v76 + 24 * v77;
          v44 = *v42;
          *(v43 + 16) = *(v42 + 16);
          *v43 = v44;
          ++v77;
          if (v73)
          {
            mlir::Diagnostic::operator<<<11ul>(&v74, " but got: ");
            if (v73)
            {
              v45 = *(v39 + 8) & 0xFFFFFFFFFFFFFFF8;
              LODWORD(v70) = 4;
              v71 = v45;
              v46 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v76, &v70, 1);
              v47 = v76 + 24 * v77;
              v48 = *v46;
              *(v47 + 16) = *(v46 + 16);
              *v47 = v48;
              ++v77;
            }
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
      v50 = *(*this + 80);
      v51 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v52 = *(v51 + 8);
      v53 = *(v51 + 16);
      v54 = *(v50 + 24);
      v55 = *(v50 + 32) >> 3;
      v56 = *(*(mlir::tensor::PackOp::getODSOperands(this, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v57 = *(v56 + 8);
      v58 = *(v56 + 16);
      v59 = mlir::tensor::PackOp::getOuterDimsPerm(*this);
      v61 = v60;
      mlir::tensor::PackOp::getMixedTiles(&v73, *this);
      v62 = mlir::tensor::PackOp::requirePaddingValue(v52, v53, v54, v55, v57, v58, v59, v61, v73);
      if (v73 != &v75)
      {
        free(v73);
      }

      if (v62)
      {
        v79 = "invalid tile factor or output size provided. Only full tiles are supported when padding_value is not set";
        v82 = 259;
        mlir::Operation::emitOpError(&v73, *this, &v79);
LABEL_58:
        v49 = v78 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v73);
        return v49 & 1;
      }
    }

    v49 = 1;
    return v49 & 1;
  }

  v49 = 0;
  return v49 & 1;
}

uint64_t mlir::tensor::PackOp::getOuterDimsPerm(mlir::tensor::PackOp *this)
{
  v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  if (!v2)
  {
    v2 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(this + 3) + 32), 0, 0);
  }

  return *(v2 + 24);
}

uint64_t mlir::tensor::PackOp::inferPackedType(void *a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v14 = a1[1];
  v15 = &v14[8 * a1[2]];
  v29 = v31;
  v30 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v29, v14, v15);
  v32 = v34;
  v33 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v32, a4, &a4[8 * a5]);
  *&v35 = v36;
  *(&v35 + 1) = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v35, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  v16 = v35;
  if (DWORD2(v35))
  {
    v17 = v29;
    v18 = 8 * DWORD2(v35);
    v19 = a2;
    v20 = v35;
    do
    {
      v21 = v17[*v20];
      if (v21 != 0x8000000000000000)
      {
        v22 = *v19;
        v23 = 0x8000000000000000;
        if (*v19 != 0x8000000000000000)
        {
          if (v21)
          {
            if ((v22 ^ v21) < 0)
            {
              v23 = v21 / v22;
            }

            else
            {
              if (v22 < 0)
              {
                v24 = v21 + 1;
              }

              else
              {
                v24 = v21 - 1;
              }

              v23 = v24 / v22 + 1;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v17[*v20] = v23;
      }

      ++v20;
      ++v19;
      v18 -= 8;
    }

    while (v18);
  }

  if (v16 != v36)
  {
    free(v16);
  }

  if (a7)
  {
    mlir::applyPermutationToVector<long long,6u>(&v29, a6, a7);
  }

  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v29, a2, &a2[a3]);
  v25 = a1[3];
  *&v35 = v29;
  *(&v35 + 1) = v30;
  v32 = v25;
  v28 = 0;
  v26 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v25 + 32), &v35, &v32, &v28);
  if (v29 != v31)
  {
    free(v29);
  }

  return v26;
}

uint64_t mlir::tensor::PackOp::getSpeculatability(mlir::tensor::PackOp *this)
{
  ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 2u);
  if (v3 && *(ODSOperands + 24))
  {
    return 1;
  }

  else
  {
    return areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(*this);
  }
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(uint64_t a1)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = mlir::TensorType::operator mlir::ShapedType(&v17);
  v4 = v3;
  mlir::tensor::PackOp::getMixedTiles(&v17, a1);
  v5 = (*(v4 + 24))(v4, v2);
  if (v6 <= v18)
  {
    v7 = 0;
  }

  else
  {
    v7 = 8 * (v6 - v18);
  }

  if (v6 >= v18)
  {
    v8 = v18;
  }

  else
  {
    v8 = v6;
  }

  v9 = v17;
  if (v8)
  {
    v10 = (v7 + v5);
    v11 = 8 * v18 - 8;
    v12 = 8 * v8 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v9);
      if ((v13 & 1) == 0 || *v10 == 0x8000000000000000)
      {
        break;
      }

      v14 = 1;
      if (v12)
      {
        ++v10;
        ++v9;
        v15 = v11;
        v11 -= 8;
        v12 -= 8;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v14 = 0;
LABEL_15:
    v9 = v17;
  }

  else
  {
    v14 = 1;
  }

  if (v9 != v19)
  {
    free(v9);
  }

  return v14;
}

uint64_t mlir::tensor::PackOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v107[8] = *MEMORY[0x277D85DE8];
  v84 = a1;
  v4 = *(a1 + 72);
  v5 = *(v4 + 24);
  v6 = *(v5 + 8);
  if ((~*(v5 + 8) & 7) != 0)
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = *(v7 + 8) & 7;
    if (v8 == 6)
    {
      v9 = (v7 + 24 * *(v7 + 16) + 120);
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = (v7 + 16 * v8 + 16);
    }

    v10 = *(v9[6] + 16);
    if (v10 != &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
    {
      v9 = 0;
    }

    v98[0] = v9;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
    {
      ODSOperands = mlir::tensor::UnPackOp::getODSOperands(v98, 0);
      v63 = *(a1 + 104);
      v64 = *(a1 + 72);
      if ((*(*(v64 + 32 * v63 + 24) + 8) ^ *(*(ODSOperands + 24) + 8)) > 7 || *(a1 + 112) && *(v64 + 32 * (*(a1 + 108) + v63) + 24) || !hasSameInnerOuterAttribute(a1, v98[0]) || !haveSameTiles(a1, v98[0]))
      {
        return 0;
      }

      __src = *(mlir::tensor::UnPackOp::getODSOperands(v98, 0) + 24);
      v61 = 1;
      (**a2)(a2, a1, &__src, 1);
      return v61;
    }
  }

LABEL_12:
  v11 = a1 + 64;
  if (!*(a1 + 112))
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 104);
  if (!*(v4 + 32 * (v12 + *(a1 + 108)) + 24))
  {
    goto LABEL_26;
  }

  v13 = v6 & 0xFFFFFFFFFFFFFFF8;
  v14 = *(a1 + 80);
  v16 = *(v14 + 24);
  v15 = *(v14 + 32);
  v17 = v15 >> 3;
  if (v15 >= 8)
  {
    v18 = 8 * v17;
    v19 = v16;
    while (*(*(v13 + 8) + 8 * *v19) != 0x8000000000000000)
    {
      v19 += 2;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

LABEL_26:
    __s1 = v91;
    v90 = 6;
    v85 = v87;
    v86 = 0x600000000;
    v33 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v33 + 8);
    v35 = &v34[8 * *(v33 + 16)];
    v89 = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__s1, v34, v35);
    v36 = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v85, *(v36 + 8), (*(v36 + 8) + 8 * *(v36 + 16)));
    LODWORD(v99) = 0;
    *v98 = 0u;
    v100 = v102;
    v101 = 0x400000000;
    v37 = *(v11 + 16 * ((*(a1 + 44) >> 23) & 1));
    v38 = *(v37 + 32);
    if (v38 >= 8)
    {
      v39 = *(v37 + 24);
      v40 = 8 * (v38 >> 3);
      do
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(v98, v39++);
        v40 -= 8;
      }

      while (v40);
    }

    __src = &v96;
    v95 = 0x600000000;
    mlir::tensor::PackOp::getOuterDimsPerm(a1);
    if (v41)
    {
      OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(a1);
      mlir::invertPermutationVector(OuterDimsPerm, v43, v92);
      llvm::SmallVectorImpl<long long>::operator=(&__src, v92);
      if (v92[0] != &v93)
      {
        free(v92[0]);
      }
    }

    v44 = *((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v45 = __src;
    v46 = 0;
    if (v44 << 32)
    {
      v47 = 0;
      v48 = v44;
      v49 = v95;
      v50 = __s1;
      v51 = v85;
      do
      {
        if (!llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::contains(v98, v47))
        {
          v52 = v47;
          if (v49)
          {
            v52 = v45[v47];
          }

          v53 = v50[v47];
          if ((v53 == 0x8000000000000000) != (v51[v52] == 0x8000000000000000))
          {
            if (v53 == 0x8000000000000000)
            {
              v53 = v51[v52];
            }

            v50[v47] = v53;
            v51[v52] = v53;
            v46 = 1;
          }
        }

        ++v47;
      }

      while (v48 != v47);
    }

    if (v45 != &v96)
    {
      free(v45);
    }

    if (v100 != v102)
    {
      free(v100);
    }

    MEMORY[0x25F891030](v98[0], 8);
    if ((v46 & 1) == 0)
    {
      v61 = 0;
      goto LABEL_66;
    }

    v54 = *(a1 + 24);
    v55 = *(a1 + 72);
    v83 = *(v55 + 24);
    v56 = *(v83 + 1) & 0xFFFFFFFFFFFFFFF8;
    v57 = *(v56 + 16);
    v58 = v89;
    if (v57 == v89)
    {
      v59 = __s1;
      if (!memcmp(__s1, *(v56 + 8), 8 * v57))
      {
        v60 = a2;
        goto LABEL_59;
      }
    }

    else
    {
      v59 = __s1;
    }

    __src = v56;
    v98[0] = mlir::TensorType::clone(&__src, v59, v58);
    __src = *(*(a1 + 72) + 24);
    v60 = a2;
    v83 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 8), v54, v98, &__src) - 16;
    v55 = *(a1 + 72);
LABEL_59:
    v82 = *(v55 + 32 * *(a1 + 104) + 24);
    v65 = *(v82 + 1) & 0xFFFFFFFFFFFFFFF8;
    v66 = *(v65 + 16);
    v67 = v86;
    v68 = v85;
    if (v66 == v86 && !memcmp(v85, *(v65 + 8), 8 * v66))
    {
      v98[0] = &v84;
      v98[1] = &v83;
      v99 = &v82;
      mlir::RewriterBase::modifyOpInPlace<mlir::tensor::PackOp::canonicalize(mlir::tensor::PackOp,mlir::PatternRewriter &)::$_0>(v60, a1, v98);
    }

    else
    {
      __src = v65;
      v98[0] = mlir::TensorType::clone(&__src, v68, v67);
      __src = *(*(v84 + 72) + 32 * *(v84 + 104) + 24);
      v82 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((v60 + 8), v54, v98, &__src) - 16;
      v98[0] = &v84;
      v98[1] = &v83;
      v99 = &v82;
      mlir::RewriterBase::modifyOpInPlace<mlir::tensor::PackOp::canonicalize(mlir::tensor::PackOp,mlir::PatternRewriter &)::$_0>(v60, v84, v98);
      *(v60 + 24) = vextq_s8(*(v84 + 8), *(v84 + 8), 8uLL);
      v69 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(v60 + 8, *(**v54 + 32));
      v98[0] = v54;
      v98[1] = v69;
      v99 = &v101;
      v100 = 0x400000000;
      v103[0] = v104;
      v103[1] = 0x400000000;
      v104[4] = v105;
      v104[5] = 0x400000000;
      v105[8] = 4;
      v105[9] = v106;
      v105[10] = 0x100000000;
      v106[1] = v107;
      v106[2] = 0x100000000;
      v107[2] = 0;
      v107[1] = 0;
      v107[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v107[4] = 0;
      v107[6] = 0;
      __src = v65;
      v92[0] = (v84 - 16);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v99, v92, 0, v92, 1);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v103, &__src, &v95);
      v70 = mlir::Operation::create(v98);
      mlir::OpBuilder::insert((v60 + 8), v70);
      v71 = *(*(v70 + 6) + 16);
      mlir::OperationState::~OperationState(v98);
      if (v71 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        v72 = v70;
      }

      else
      {
        v72 = 0;
      }

      v98[0] = v72;
      __src = v98;
      mlir::RewriterBase::replaceUsesWithIf(v60, (v84 - 16), v72 - 2, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, &__src, 0);
    }

    v61 = 1;
LABEL_66:
    if (v85 != v87)
    {
      free(v85);
    }

    if (__s1 != v91)
    {
      free(__s1);
    }

    return v61;
  }

LABEL_18:
  v20 = *(a1 + 96);
  v21 = *(v20 + 32);
  if (v21 >= 8)
  {
    v22 = *(v20 + 24);
    v23 = 8 * (v21 >> 3);
    while (*v22 != 0x8000000000000000)
    {
      ++v22;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
  v24 = *(v13 + 8);
  v25 = *(v13 + 16);
  v26 = *(*(v4 + 32 * v12 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 8);
  v28 = *(v26 + 16);
  v29 = mlir::tensor::PackOp::getOuterDimsPerm(a1);
  v31 = v30;
  mlir::tensor::PackOp::getMixedTiles(v98, a1);
  v32 = mlir::tensor::PackOp::requirePaddingValue(v24, v25, v16, v17, v27, v28, v29, v31, v98[0]);
  if (v98[0] != &v99)
  {
    free(v98[0]);
  }

  if (v32)
  {
    v5 = *(*(a1 + 72) + 24);
    goto LABEL_26;
  }

  (*(*a2 + 40))(a2, a1);
  v73 = (v11 + 16 * ((*(a1 + 44) >> 23) & 1));
  v74 = v73[6];
  v75 = v73[7];
  v73 += 6;
  v76 = v73[2];
  v77 = v75 + v74;
  v78 = *(*(*(a1 + 48) + 96) + 8 * *(*(a1 + 48) + 104) - 8);
  v79 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a1 + 24) + 32), v73, 4);
  LODWORD(__src) = 2;
  v95 = v78;
  v96 = v79;
  v98[0] = a1;
  v98[1] = __PAIR64__(v76, v77);
  v99 = &v101;
  v100 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v99, &__src, v97);
  mlir::MutableOperandRange::clear(v98);
  if (v99 != &v101)
  {
    free(v99);
  }

  (*(*a2 + 48))(a2, a1);
  return 1;
}

BOOL hasSameInnerOuterAttribute(mlir::tensor::PackOp *a1, mlir::tensor::UnPackOp *a2)
{
  v2 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v3 = *(v2 + 32);
  v4 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
  if ((*(v4 + 32) ^ v3) > 7 || memcmp(*(v2 + 24), *(v4 + 24), v3 & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(a1);
  v10 = v9;
  v11 = mlir::tensor::UnPackOp::getOuterDimsPerm(a2);
  if (v10 == v12 && !memcmp(OuterDimsPerm, v11, 8 * v10))
  {
    return 1;
  }

  v13 = mlir::tensor::PackOp::getOuterDimsPerm(a1);
  if (v14)
  {
    v15 = 0;
    while (v15 == *(v13 + 8 * v15))
    {
      if (v14 == ++v15)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  v16 = mlir::tensor::UnPackOp::getOuterDimsPerm(a2);
  if (!v17)
  {
    return 1;
  }

  v18 = v16;
  v19 = 0;
  do
  {
    v20 = *(v18 + 8 * v19);
    result = v19 == v20;
    v21 = v19 != v20 || v17 - 1 == v19;
    ++v19;
  }

  while (!v21);
  return result;
}

uint64_t haveSameTiles(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::tensor::PackOp::getMixedTiles(&v12, a1);
  mlir::tensor::UnPackOp::getMixedTiles(&v9, a2);
  if (v13 == v10)
  {
    if (v13)
    {
      v3 = 0;
      v4 = 8 * v13 - 8;
      do
      {
        isEqualConstantIntOrValue = mlir::isEqualConstantIntOrValue(*(v12 + v3), *(v9 + v3));
        v6 = !isEqualConstantIntOrValue || v4 == v3;
        v3 += 8;
      }

      while (!v6);
      v7 = isEqualConstantIntOrValue;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v9 != &v11)
  {
    free(v9);
  }

  if (v12 != v14)
  {
    free(v12);
  }

  return v7;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = &v17;
  v16[1] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v13 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &__src, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

uint64_t mlir::RewriterBase::modifyOpInPlace<mlir::tensor::PackOp::canonicalize(mlir::tensor::PackOp,mlir::PatternRewriter &)::$_0>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  (*(*a1 + 40))(a1);
  v6 = *(**a3 + 72);
  v7 = *a3[1];
  v8 = v6[1];
  if (v8)
  {
    v9 = *v6;
    *v8 = *v6;
    if (v9)
    {
      *(v9 + 8) = v6[1];
    }
  }

  v6[3] = v7;
  v10 = *v7;
  *v6 = *v7;
  v6[1] = v7;
  if (v10)
  {
    *(v10 + 8) = v6;
  }

  *v7 = v6;
  v11 = (*(**a3 + 72) + 32 * *(**a3 + 16 * ((*(**a3 + 44) >> 23) & 1) + 88));
  v12 = *a3[2];
  v13 = v11[1];
  if (v13)
  {
    v14 = *v11;
    *v13 = *v11;
    if (v14)
    {
      *(v14 + 8) = v11[1];
    }
  }

  v11[3] = v12;
  v15 = *v12;
  *v11 = *v12;
  v11[1] = v12;
  if (v15)
  {
    *(v15 + 8) = v11;
  }

  *v12 = v11;
  v16 = **a3;
  v17 = *(v16 + 36);
  v18 = v16 - 16;
  if (!v17)
  {
    v18 = 0;
  }

  *(v18 + 8) = *(*a3[2] + 8) & 0xFFFFFFFFFFFFFFF8 | *(v18 + 8) & 7;
  v19 = *(*a1 + 48);

  return v19(a1, a2);
}

unint64_t mlir::tensor::PackOp::fold(mlir::tensor::PackOp *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v2 = *(a2 + 80);
    v3 = v2[*(a2 + 48) + *(a2 + 52)];
    v4 = v3 != 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = *(a2 + 80);
  }

  v5 = *v2;
  if (v5)
  {
    v6 = *(*v5 + 136);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  ODSOperands = mlir::tensor::PackOp::getODSOperands(a1, 1u);
  result = reshapeConstantSource(v8, (*(*(ODSOperands + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v3, v4);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::reifyResultShapes(uint64_t *a1, char ***a2, uint64_t *a3)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v5 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v9, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v10[0] = v11;
  v10[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v10, v5);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v10);
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v6 = *(v9 + 24);
  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(&v9, 1u);
  mlir::tensor::getMixedSizes(a2, v6, *(ODSOperands + 24), v10);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(*a3, v10);
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return 1;
}

void mlir::tensor::UnPackOp::getMixedTiles(mlir::tensor::UnPackOp *this, uint64_t a2)
{
  v12 = a2;
  v11 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  v3 = *(v2 + 32);
  if (v3 >= 8)
  {
    v5 = 0;
    v6 = *(v2 + 24);
    v7 = 8 * (v3 >> 3);
    do
    {
      if (*v6 == 0x8000000000000000)
      {
        ODSOperands = mlir::tensor::UnPackOp::getODSOperands(&v12, 2u);
        v9 = v5++;
        v10 = *(ODSOperands + 32 * v9 + 24) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&v11, *v6) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, v10);
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }
}

void mlir::tensor::UnPackOp::getStaticTiles(mlir::tensor::UnPackOp *this, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x600000000;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  mlir::tensor::UnPackOp::getMixedTiles(&v6, a2);
  v3 = v6;
  if (v7)
  {
    v4 = 8 * v7;
    do
    {
      v5 = *v3++;
      mlir::dispatchIndexOpFoldResult(v5, v9, this);
      v4 -= 8;
    }

    while (v4);
    v3 = v6;
  }

  if (v3 != &v8)
  {
    free(v3);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }
}

uint64_t mlir::tensor::UnPackOp::verify(mlir::tensor::UnPackOp **this)
{
  v52[6] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v45 = v1;
  mlir::tensor::UnPackOp::getMixedTiles(&v50, v1);
  if (v51)
  {
    v2 = v50;
    v3 = 8 * v51;
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v2);
      if ((v5 & 1) != 0 && !ConstantIntValue)
      {
        break;
      }

      ++v2;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v14 = "invalid zero tile factor";
  }

  else
  {
LABEL_6:
    v6 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v45, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = v6[2];
    v8 = *(v45 + 2 * ((*(v45 + 11) >> 23) & 1) + 8);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32) >> 3;
    OuterDimsPerm = mlir::tensor::UnPackOp::getOuterDimsPerm(v45);
    v13 = v12;
    if (isInvalidPackingPosSpecification(v9, v10, v7))
    {
      v14 = "invalid inner_dims_pos vector";
    }

    else if (isInvalidPackingPosSpecification(OuterDimsPerm, v13, v7))
    {
      v14 = "invalid outer_dims_perm vector";
    }

    else if (!v13 || v13 == v7)
    {
      if (v7 >= v51)
      {
        if (v10 == v51)
        {
          v46 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v45, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          v15 = mlir::TensorType::operator mlir::ShapedType(&v46);
          v17 = v16;
          v42[0] = v15;
          v42[1] = v16;
          (*(v16 + 24))(v16, v15);
          v40 = v7 + v51;
          v41 = v18;
          if (v40 != v18)
          {
            v43[0] = "packed rank != (unpacked rank + num tiling factors), got ";
            v44 = 259;
            mlir::Operation::emitError(&v46, v1, v43);
            v37 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v46, &v41);
            v38 = v37;
            if (*v37)
            {
              mlir::Diagnostic::operator<<<5ul>((v37 + 1), " != ");
            }

            v35 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v38, &v40) + 200);
            goto LABEL_42;
          }

          mlir::tensor::UnPackOp::getStaticTiles(&v46, v45);
          v19 = mlir::tensor::PackOp::inferPackedType(v6, v46, v47, v9, v10, OuterDimsPerm, v13);
          v39 = v19;
          if (v46 != &v48)
          {
            free(v46);
          }

          v21 = *(v19 + 8);
          v20 = *(v19 + 16);
          v22 = (*(v17 + 24))(v17, v15);
          if (v20)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v25 = 8 * v23 - 8;
            v26 = 8 * v20 - 8;
            while (*v21 == 0x8000000000000000 || *v22 == 0x8000000000000000 || *v21 <= *v22)
            {
              if (v26)
              {
                ++v21;
                ++v22;
                v28 = v25;
                v25 -= 8;
                v26 -= 8;
                if (v28)
                {
                  continue;
                }
              }

              goto LABEL_33;
            }

            v43[0] = "the shape of output is not large enough to hold the packed data. Expected at least ";
            v44 = 259;
            mlir::Operation::emitError(&v46, v1, v43);
            if (v46)
            {
              mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v47, &v39);
              if (v46)
              {
                mlir::Diagnostic::operator<<<7ul>(&v47, ", got ");
                if (v46)
                {
                  mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v47, v42);
                }
              }
            }

            goto LABEL_41;
          }

LABEL_33:
          v29 = (*(v17 + 24))(v17, v15);
          v31 = v51;
          v32 = 8 * (v30 - v51);
          if (v30 <= v51)
          {
            v32 = 0;
          }

          v33 = (v32 + v29);
          if (v30 < v51)
          {
            v31 = v30;
          }

          v46 = v33;
          v47 = v31;
          v48 = &v50;
          if (llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::UnPackOp>(mlir::tensor::UnPackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(&v46))
          {
            v34 = 1;
            goto LABEL_43;
          }

          v14 = "mismatch in inner tile sizes specified and shaped of tiled dimension in the packed type";
        }

        else
        {
          v14 = "tiling factors must equal the number of dimensions to tile";
        }
      }

      else
      {
        v14 = "tiling factors must be less than or equal to the input rank for pack or output rank for unpack";
      }
    }

    else
    {
      v14 = "outer_dims_perm must be a permutation or empty";
    }
  }

  v43[0] = v14;
  v44 = 259;
  mlir::Operation::emitError(&v46, v1, v43);
LABEL_41:
  v35 = v49;
LABEL_42:
  v34 = v35 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
LABEL_43:
  if (v50 != v52)
  {
    free(v50);
  }

  return v34 & 1;
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::UnPackOp>(uint64_t a1)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v16 = a1;
  v17 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v16, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v1 = mlir::TensorType::operator mlir::ShapedType(&v17);
  v3 = v2;
  mlir::tensor::UnPackOp::getMixedTiles(&v17, v16);
  v4 = (*(v3 + 24))(v3, v1);
  if (v5 <= v18)
  {
    v6 = 0;
  }

  else
  {
    v6 = 8 * (v5 - v18);
  }

  if (v5 >= v18)
  {
    v7 = v18;
  }

  else
  {
    v7 = v5;
  }

  v8 = v17;
  if (v7)
  {
    v9 = (v6 + v4);
    v10 = 8 * v18 - 8;
    v11 = 8 * v7 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v8);
      if ((v12 & 1) == 0 || *v9 == 0x8000000000000000)
      {
        break;
      }

      v13 = 1;
      if (v11)
      {
        ++v9;
        ++v8;
        v14 = v10;
        v10 -= 8;
        v11 -= 8;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v13 = 0;
LABEL_15:
    v8 = v17;
  }

  else
  {
    v13 = 1;
  }

  if (v8 != v19)
  {
    free(v8);
  }

  return v13;
}

void mlir::tensor::UnPackOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a10;
  v33[6] = *MEMORY[0x277D85DE8];
  v31 = v33;
  v32 = 0x600000000;
  v28 = v30;
  v29 = 0x600000000;
  if (a8)
  {
    v18 = 8 * a8;
    do
    {
      v19 = *a7++;
      mlir::dispatchIndexOpFoldResult(v19, &v28, &v31);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (a10)
  {
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a9, a10);
  }

  v21 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a5, a6);
  v22 = v28;
  v23 = v29;
  v24 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v31, v32);
  v26 = a3;
  __src = v20;
  v25 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v26, 0, &v26, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v25, 0, &v25, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v22 & 0xFFFFFFFFFFFFFFF9, 0, v22 & 0xFFFFFFFFFFFFFFF9, v23);
  if (v16)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2) + 8) = v16;
  }

  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2) = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2) + 16) = v24;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v28);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v31 != v33)
  {
    free(v31);
  }
}

uint64_t mlir::tensor::UnPackOp::canonicalize(mlir::tensor::UnPackOp *a1, uint64_t a2)
{
  v99[8] = *MEMORY[0x277D85DE8];
  v78 = a1;
  v3 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 0) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v5 = v3 + 24 * *(v3 + 16);
      v6 = v5 + 120;
      if (v5 == -120)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = v3 + 16 * v4 + 16;
    }

    if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id)
    {
      goto LABEL_9;
    }

    v72 = *(*(*(v6 + 72) + 24) + 8);
    if ((*(*(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24) + 8) ^ v72) > 7)
    {
      return 0;
    }

    v73 = *(v6 + 44);
    v74 = (v6 + 16 * ((v73 >> 23) & 1));
    v75 = v74[24];
    if ((v73 & 0x800000) != 0)
    {
      v76 = *(v6 + 72);
      if (v75)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v76 = 0;
      if (v75)
      {
LABEL_71:
        if (*(v76 + 32 * (v74[23] + v74[22]) + 24))
        {
          return 0;
        }
      }
    }

    if (hasSameInnerOuterAttribute(v6, v78) && haveSameTiles(v6, v78))
    {
      *&v91 = *(*(v6 + 72) + 24);
      v27 = 1;
      (**a2)(a2, v78, &v91, 1);
      return v27;
    }

    return 0;
  }

LABEL_9:
  v7 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    v10 = 0;
LABEL_16:
    v11 = 0;
    goto LABEL_19;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  v10 = llvm::DefaultDoCastIfPossible<mlir::DestinationStyleOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DestinationStyleOpInterface,mlir::Operation *,void>>::doCastIfPossible(v10);
LABEL_19:
  *&v91 = v10;
  *(&v91 + 1) = v11;
  if (v10)
  {
    v12 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24);
    DpsInits = mlir::DestinationStyleOpInterface::getDpsInits(&v91);
    v14 = *(v12 + 8) & 7;
    if (v12 && v14 == 6)
    {
      v14 = (*(v12 + 16) + 6);
    }

    v15 = *(DpsInits + 32 * v14 + 24);
    v16 = v78;
    (*(*a2 + 40))(a2, v78);
    v17 = v78;
    ODSOperandIndexAndLength = mlir::tensor::UnPackOp::getODSOperandIndexAndLength(&v78, 1u);
    v19 = *(v17 + 9);
    v20 = *(*(v19 + 32 * ODSOperandIndexAndLength + 16) + 72) + ((v19 + 32 * ODSOperandIndexAndLength - *(*(v19 + 32 * ODSOperandIndexAndLength + 16) + 72)) & 0x1FFFFFFFE0);
    v21 = *(v20 + 16);
    if ((*(v21 + 46) & 0x80) != 0)
    {
      v22 = *(v21 + 72);
    }

    else
    {
      v22 = 0;
    }

    v23 = (v19 + ((v20 - v22) & 0x1FFFFFFFE0));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      *v24 = *v23;
      if (v25)
      {
        *(v25 + 8) = v23[1];
      }
    }

    v23[3] = v15;
    v23[1] = v15;
    v26 = *v15;
    *v23 = *v15;
    if (v26)
    {
      *(v26 + 8) = v23;
    }

    *v15 = v23;
    (*(*a2 + 48))(a2, v16);
    return 1;
  }

  else
  {
    __s1 = v85;
    v84 = 0x600000000;
    v81 = 0x600000000;
    v79 = v78;
    v80 = v82;
    v28 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v29 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v29 + 8) + 8 * *(v29 + 16));
    LODWORD(v84) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__s1, v28, v30);
    v31 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v32 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v33 = (*(v32 + 8) + 8 * *(v32 + 16));
    LODWORD(v81) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v80, v31, v33);
    LODWORD(v92) = 0;
    v91 = 0u;
    v93 = v95;
    v94 = 0x400000000;
    v34 = v79;
    v35 = *(v79 + 2 * ((*(v79 + 11) >> 23) & 1) + 8);
    v36 = *(v35 + 32);
    if (v36 >= 8)
    {
      v37 = *(v35 + 24);
      v38 = 8 * (v36 >> 3);
      do
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(&v91, v37++);
        v38 -= 8;
      }

      while (v38);
      v34 = v79;
    }

    v88 = v90;
    v89 = 0x600000000;
    mlir::tensor::UnPackOp::getOuterDimsPerm(v34);
    if (v39)
    {
      OuterDimsPerm = mlir::tensor::UnPackOp::getOuterDimsPerm(v79);
      mlir::invertPermutationVector(OuterDimsPerm, v41, v86);
      llvm::SmallVectorImpl<long long>::operator=(&v88, v86);
      if (v86[0] != &v87)
      {
        free(v86[0]);
      }
    }

    v42 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v43 = v88;
    v44 = 0;
    if (v42 << 32)
    {
      v45 = 0;
      v46 = v42;
      v47 = v89;
      v48 = __s1;
      v49 = v80;
      do
      {
        if (!llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::contains(&v91, v45))
        {
          v50 = v45;
          if (v47)
          {
            v50 = v43[v45];
          }

          v51 = v48[v50];
          if ((v51 == 0x8000000000000000) != (v49[v45] == 0x8000000000000000))
          {
            if (v51 == 0x8000000000000000)
            {
              v51 = v49[v45];
            }

            v48[v50] = v51;
            v49[v45] = v51;
            v44 = 1;
          }
        }

        ++v45;
      }

      while (v46 != v45);
    }

    if (v43 != v90)
    {
      free(v43);
    }

    if (v93 != v95)
    {
      free(v93);
    }

    MEMORY[0x25F891030](v91, 8);
    if (v44)
    {
      v52 = *(v78 + 3);
      v53 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 0) + 24);
      v54 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v78, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v55 = *(v54 + 16);
      if (v55 != v84 || memcmp(__s1, *(v54 + 8), 8 * v55))
      {
        v88 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v78, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        *&v91 = mlir::TensorType::clone(&v88, __s1, v84);
        v88 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 0) + 24);
        v53 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 8), v52, &v91, &v88) - 16;
      }

      v56 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24);
      v57 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v58 = *(v57 + 16);
      if (v58 != v81 || memcmp(v80, *(v57 + 8), 8 * v58))
      {
        v88 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        *&v91 = mlir::TensorType::clone(&v88, v80, v81);
        v88 = *(mlir::tensor::UnPackOp::getODSOperands(&v78, 1u) + 24);
        v56 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 8), v52, &v91, &v88) - 16;
      }

      v59 = *(v78 + 2 * ((*(v78 + 11) >> 23) & 1) + 8);
      v60 = *(v59 + 24);
      v61 = *(v59 + 32) >> 3;
      mlir::tensor::UnPackOp::getMixedTiles(&v88, v78);
      v62 = mlir::tensor::UnPackOp::getOuterDimsPerm(v78);
      v64 = v63;
      v65 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::UnPackOp>(*(**v52 + 32));
      *&v91 = v52;
      *(&v91 + 1) = v65;
      v92 = &v94;
      v93 = 0x400000000;
      v95[3] = v96;
      v95[4] = 0x400000000;
      v96[4] = v97;
      v96[5] = 0x400000000;
      v97[8] = 4;
      v97[9] = v98;
      v97[10] = 0x100000000;
      v98[1] = v99;
      v98[2] = 0x100000000;
      v99[2] = 0;
      v99[1] = 0;
      v99[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v99[4] = 0;
      v99[6] = 0;
      mlir::tensor::UnPackOp::build((a2 + 8), &v91, v53, v56, v60, v61, v88, v89, v62, v64);
      v66 = mlir::Operation::create(&v91);
      mlir::OpBuilder::insert((a2 + 8), v66);
      v67 = *(*(v66 + 6) + 16);
      mlir::OperationState::~OperationState(&v91);
      if (v67 == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0;
      }

      *&v91 = v68 - 16;
      if (v88 != v90)
      {
        free(v88);
      }

      v69 = v78;
      if (*(v78 + 9))
      {
        v70 = v78 - 16;
      }

      else
      {
        v70 = 0;
      }

      v88 = (*(v70 + 1) & 0xFFFFFFFFFFFFFFF8);
      v71 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>((a2 + 8), *(v78 + 3), &v88, &v91);
      (*(*a2 + 8))(a2, v69, v71);
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    if (v80 != v82)
    {
      free(v80);
    }

    if (__s1 != v85)
    {
      free(__s1);
    }
  }

  return v27;
}

uint64_t mlir::tensor::UnPackOp::getOuterDimsPerm(mlir::tensor::UnPackOp *this)
{
  v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  if (!v2)
  {
    v2 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(this + 3) + 32), 0, 0);
  }

  return *(v2 + 24);
}

unint64_t mlir::tensor::UnPackOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 64);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v2 = 0;
    }
  }

  v5 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v5 = 0;
  }

  result = reshapeConstantSource(v2, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t foldTensorCastPrecondition(uint64_t a1)
{
  if (*(*(a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    return 0;
  }

  if (mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if ((*(a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 68);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 72);
  v4 = 32 * v2;
  for (i = (v3 + 24); ; i += 4)
  {
    v6 = *i;
    v7 = *(*i + 8) & 7;
    if (*i)
    {
      v8 = v7 == 7;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_16;
    }

    if (v7 != 6)
    {
      break;
    }

    v9 = v6 + 24 * *(v6 + 16) + 120;
    if (v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v4 -= 32;
    if (!v4)
    {
      return 0;
    }
  }

  v9 = v6 + 16 * v7 + 16;
LABEL_14:
  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id || (mlir::tensor::preservesStaticInformation((*(v9 - 8) & 0xFFFFFFFFFFFFFFF8), (*(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

BOOL mlir::tensor::BitcastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v33[25] = *MEMORY[0x277D85DE8];
  v29 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *v14;
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v23 = v14[2];
      if (!(v23 >> 30))
      {
        return 1;
      }

      v24 = v23 & 0xC0000000;
      if (v24 == 0x80000000 || v24 == 0x40000000)
      {
        return 1;
      }
    }

    v16 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v15 + 8, v16))
    {
      return 1;
    }
  }

  v28 = 261;
  v27[0] = a3;
  v27[1] = a4;
  mlir::Operation::emitOpError(&v32, a1, v27);
  if (v32)
  {
    mlir::Diagnostic::operator<<<3ul>(v33, " #");
  }

  v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
  v18 = v17;
  if (*v17)
  {
    mlir::Diagnostic::operator<<<109ul>((v17 + 1), " must be tensor of signless integer or unsigned integer or signed integer or floating-point values, but got ");
    if (*v18)
    {
      v30 = 4;
      v31 = a2;
      v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v18 + 3), &v30, 1);
      v20 = v18[3] + 24 * *(v18 + 8);
      v21 = *v19;
      *(v20 + 16) = *(v19 + 16);
      *v20 = v21;
      ++*(v18 + 8);
    }
  }

  v22 = (v18[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  return v22;
}

BOOL mlir::tensor::BitcastOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
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

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
}

void mlir::tensor::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::tensor::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = a5;
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    (*(v10 + 8))(v10, a2);
    return 1;
  }

  else
  {
    v19 = 261;
    v18[0] = a3;
    v18[1] = a4;
    mlir::Operation::emitOpError(&v23, a1, v18);
    if (v23)
    {
      mlir::Diagnostic::operator<<<3ul>(v24, " #");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<45ul>((v12 + 1), " must be tensor of any type values, but got ");
      if (*v13)
      {
        v21 = 4;
        v22 = a2;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v21, 1);
        v15 = v13[3] + 24 * *(v13 + 8);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(v13 + 8);
      }
    }

    v11 = (v13[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  }

  return v11;
}

BOOL mlir::tensor::CastOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
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

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::CollapseShapeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "reassociation", 0xDuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::tensor::CollapseShapeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "reassociation";
  v10[1] = 13;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::tensor::CollapseShapeOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::tensor::CollapseShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x69636F7373616572 ? (v4 = *(a3 + 5) == 0x6E6F69746169636FLL) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t *mlir::tensor::CollapseShapeOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::tensor::CollapseShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "reassociation";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::tensor::CollapseShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v8, "reassociation", 0xD, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = &v9[v8];
      v7 = 1;
      while (1)
      {
        v11 = *v9;
        if (!*v9 || *(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          goto LABEL_3;
        }

        v12 = v11[2];
        if (v12)
        {
          v13 = v11[1];
          v14 = 8 * v12;
          do
          {
            v15 = *v13;
            if (!*v13)
            {
              goto LABEL_3;
            }

            if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              goto LABEL_3;
            }

            v16 = v15[1];
            if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v16[2] != 64)
            {
              goto LABEL_3;
            }

            ++v13;
            v14 -= 8;
          }

          while (v14);
        }

        if (++v9 == v10)
        {
          return v7;
        }
      }
    }

    return 1;
  }

LABEL_3:
  a4(&v20, a5);
  if (v20)
  {
    mlir::Diagnostic::operator<<<12ul>(v21, "attribute '");
    if (v20)
    {
      v19 = 261;
      v18[0] = a2;
      v18[1] = a3;
      mlir::Diagnostic::operator<<(v21, v18);
      if (v20)
      {
        mlir::Diagnostic::operator<<<73ul>(v21, "' failed to satisfy constraint: Array of 64-bit integer array attributes");
      }
    }
  }

  v7 = (v21[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::tensor::CollapseShapeOp::build(mlir::Builder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v10 = a3;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::OperationState::addAttribute(a2, "reassociation", 0xD, ReassociationIndicesAttribute);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  *(a2 + 192) = 0;
  v8 = *(a2 + 120);
  if (v8 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v8, 16);
    LODWORD(v8) = *(a2 + 120);
  }

  *(a2 + 120) = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, &v10 + 2, 0, &v10 + 2, 1);
}

BOOL mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v3, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = "requires attribute 'reassociation'";
    v8 = 259;
    mlir::Operation::emitOpError(v9, v2, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

BOOL mlir::tensor::CollapseShapeOp::parse(void *a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13 = 0;
  v14 = 0;
  v12[0] = &v13;
  v12[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v14, v6))
  {
    return 0;
  }

  if (v14)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(a2);
    *v8 = v14;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  __src = a1;
  v19[0] = &v11;
  v19[1] = a2;
  if (!mlir::tensor::CollapseShapeOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v13 = __src;
  v20 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &__src) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v11))
  {
    return 0;
  }

  __src = v11;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v19);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v12, v4, a2 + 16);
}

void mlir::tensor::CollapseShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v22 = v24;
  v23 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "reassociation", 13);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v22, v23);
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 3uLL)
  {
    *v18 = 1869901417;
    *(v17 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v17, "into", 4uLL);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = *this - 16;
  if (!*(*this + 9))
  {
    v21 = 0;
  }

  (*(*a2 + 32))(a2, *(v21 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v22 != v24)
  {
    free(v22);
  }
}

uint64_t mlir::tensor::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::tensor::ConcatOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "dim", 3uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::tensor::ConcatOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "dim";
  v10[1] = 3;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::tensor::ConcatOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::tensor::ConcatOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 26980 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
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
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::tensor::ConcatOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "dim";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::tensor::ConcatOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v8, "dim", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 64)
    {
      return 1;
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<66ul>(v13, "' failed to satisfy constraint: 64-bit signless integer attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::ConcatOp::verifyInvariantsImpl(unsigned int **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v27 = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v3, "dim", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v27))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = v4[17];
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 9) + 24;
          do
          {
            v8 = *this;
            v9 = *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8;
            v24 = v6;
            v10 = *v9;
            if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v18 = mlir::detail::InterfaceMap::lookup(v10 + 8, v17);
              (*(v18 + 8))(v18, v9);
            }

            else
            {
              v23 = 261;
              v22[0] = "operand";
              v22[1] = 7;
              mlir::Operation::emitOpError(&v27, v8, v22);
              if (v27)
              {
                mlir::Diagnostic::operator<<<3ul>(v28, " #");
              }

              v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v24);
              v12 = v11;
              if (*v11)
              {
                mlir::Diagnostic::operator<<<64ul>((v11 + 1), " must be variadic of ranked tensor of any type values, but got ");
                if (*v12)
                {
                  v25 = 4;
                  v26 = v9;
                  v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v12 + 3), &v25, 1);
                  v14 = v12[3] + 24 * *(v12 + 8);
                  v15 = *v13;
                  *(v14 + 16) = *(v13 + 16);
                  *v14 = v15;
                  ++*(v12 + 8);
                }
              }

              v16 = *(v12 + 200);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
              if (v16)
              {
                return 0;
              }
            }

            ++v6;
            v7 += 32;
          }

          while (v5 != v6);
          v4 = *this;
        }
      }

      if (v4[9])
      {
        v19 = v4 - 4;
      }

      else
      {
        v19 = 0;
      }

      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v4, (*(v19 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v22[0] = "requires attribute 'dim'";
    v23 = 259;
    mlir::Operation::emitOpError(&v27, v2, v22);
    v20 = (v28[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  }

  return v20;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a5;
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v6 + 8, v13);
    (*(v14 + 8))(v14, a2);
    return 1;
  }

  else
  {
    v17 = 261;
    v16[0] = a3;
    v16[1] = a4;
    mlir::Operation::emitOpError(&v21, a1, v16);
    if (v21)
    {
      mlir::Diagnostic::operator<<<3ul>(v22, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<52ul>((v7 + 1), " must be ranked tensor of any type values, but got ");
      if (*v8)
      {
        v19 = 4;
        v20 = a2;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v19, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = (v8[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  return v12;
}

BOOL mlir::tensor::ConcatOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v13 = 0;
  v17 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v15, v5))
  {
    goto LABEL_13;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  if ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL)) && (v12 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v7 = *(a2 + 8), v16[0] = a1, v16[1] = &v12, v16[2] = a2, mlir::tensor::ConcatOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v16[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v16)))
  {
    v8 = *(v16[0] + 8);
    v13 = *(v16[0] + 16);
    v14 = v8;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v13 + 8 * v8), (v13 + 8 * v8 + 8 * *(v16[0] + 12)));
    v9 = (*(*a1 + 16))(a1);
    v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, &v13, v9, a2 + 16);
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v10;
}

void mlir::tensor::ConcatOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
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
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 2)
  {
    *(v7 + 2) = 109;
    *v7 = 26980;
    *(v6 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v6, "dim", 3uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ")", 1uLL);
  }

  else
  {
    *v11 = 41;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v15 = *(v14 + 17);
    v16 = v14[9];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = (*(*a2 + 16))(a2);
  if (v15)
  {
    v18 = v17;
    (*(*a2 + 160))(a2, *(v16 + 24));
    v19 = v15 - 1;
    if (v19)
    {
      v20 = (v16 + 56);
      do
      {
        v21 = *(v18 + 4);
        if (*(v18 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v18 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }

        v22 = *v20;
        v20 += 4;
        (*(*a2 + 160))(a2, v22);
        --v19;
      }

      while (v19);
    }
  }

  v37 = v39;
  v38 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "dim", 3);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v37, v38);
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v31 = *(v30 + 9);
    v32 = *(v30 + 17);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v36[0] = v31;
  v36[1] = 0;
  v36[2] = v31;
  v36[3] = v32;
  v33 = *(v30 + 9);
  v34 = v30 - 16;
  if (!v33)
  {
    v34 = 0;
  }

  v35[0] = v34;
  v35[1] = 0;
  v35[2] = v34;
  v35[3] = v33;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v36, v35);
  if (v37 != v39)
  {
    free(v37);
  }
}

BOOL mlir::tensor::DimOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = 0;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = &v28;
    goto LABEL_14;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v4 + 8, v6);
    if ((*(v7 + 16))(v7, v3))
    {
      v8 = *v3;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
      (*(v10 + 24))(v10, v3);
      if (v11 >= 1)
      {
        v4 = *v3;
        v12 = v23;
LABEL_14:
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v4 + 8, v19);
        *v12 = v20;
        (*(v20 + 8))(v20, v3);
        goto LABEL_15;
      }
    }
  }

  v24 = 261;
  v23[0] = "operand";
  v23[1] = 7;
  mlir::Operation::emitOpError(&v28, v2, v23);
  if (v28)
  {
    mlir::Diagnostic::operator<<<3ul>(v29, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v25);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<51ul>((v13 + 1), " must be non-0-ranked or unranked tensor, but got ");
    if (*v14)
    {
      v26 = 4;
      v27 = v3;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v26, 1);
      v16 = v14[3] + 24 * *(v14 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v14 + 8);
    }
  }

  v18 = *(v14 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  if (v18)
  {
    return 0;
  }

LABEL_15:
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v21 = *this - 16;
  }

  else
  {
    v21 = 0;
  }

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(*this, *(v21 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<25ul>((v6 + 1), " must be index, but got ");
    if (*v7)
    {
      v16 = 4;
      v17 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11;
}

uint64_t mlir::tensor::DimOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v12, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6)) && (v8 = v6, v6 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::tensor::DimOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, 0);
  v5 = (*(*a2 + 16))(a2);
  v6 = *(v5 + 4);
  if (v6 >= *(v5 + 3))
  {
    llvm::raw_ostream::write(v5, 32);
  }

  else
  {
    *(v5 + 4) = v6 + 1;
    *v6 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++*(v7 + 4);
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
    ++*(v13 + 4);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::tensor::EmptyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  if ((*(v2 + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
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
    if (*(v2 + 9))
    {
      v6 = v2 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v2, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<37ul>((v6 + 1), " must be variadic of index, but got ");
    if (*v7)
    {
      v16 = 4;
      v17 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11;
}

uint64_t mlir::tensor::EmptyOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  if (((*(*a1 + 280))() & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || (v9 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v9)))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  __src = v9;
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
  if (v12)
  {
    v5 = v11;
    v6 = 32 * v12;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v7 = 1;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v7 = 1;
LABEL_13:
  if (v11 != v13)
  {
    free(v11);
  }

  return v7;
}

void mlir::tensor::EmptyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, 0);
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
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

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

  v24 = *this - 16;
  if (!*(*this + 9))
  {
    v24 = 0;
  }

  (*(*a2 + 32))(a2, *(v24 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::ExpandShapeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::tensor::ExpandShapeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v21, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "reassociation", 0xDuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v21, a4);
        if (!v21)
        {
          goto LABEL_4;
        }

        if (!v21)
        {
          goto LABEL_4;
        }

        v19 = 0;
        v20 = v11;
        goto LABEL_23;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_output_shape", 0x13uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v14[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        a3(&v21, a4);
        if (!v21)
        {
          goto LABEL_4;
        }

        if (!v21)
        {
          goto LABEL_4;
        }

        v19 = 0;
        v20 = v14;
LABEL_23:
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
        v17 = v23 + 24 * v24;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v24;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
        return 0;
      }

      a1[1] = v14;
    }
  }

  return 1;
}

uint64_t mlir::tensor::ExpandShapeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "reassociation";
    v15 = 13;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "static_output_shape";
    v15 = 19;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v10, v8);
  }

  v11 = v17;
  if (v18)
  {
    v12 = mlir::DictionaryAttr::get(a1, v17, v18);
    v11 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v19)
  {
    free(v11);
  }

  return v12;
}

unint64_t mlir::tensor::ExpandShapeOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v9, 0, v9, v10, &v8, &v7);
}

unint64_t mlir::tensor::ExpandShapeOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    if (*a3 != 0x6F5F636974617473 || a3[1] != 0x68735F7475707475 || *(a3 + 11) != 0x65706168735F7475)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
LABEL_18:
    v8 = v5 & 0xFFFFFFFFFFFFFF00;
    return v8 | v5;
  }

  if (a4 == 13 && *a3 == 0x69636F7373616572 && *(a3 + 5) == 0x6E6F69746169636FLL)
  {
    v5 = *a2;
    goto LABEL_18;
  }

LABEL_16:
  LOBYTE(v5) = 0;
  v8 = 0;
  return v8 | v5;
}

void *mlir::tensor::ExpandShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 19)
  {
    if (*a2 == 0x6F5F636974617473 && a2[1] == 0x68735F7475707475 && *(a2 + 11) == 0x65706168735F7475)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = a4[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v7[2] == 64)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      result[1] = v8;
    }
  }

  else if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *result = v9;
  }

  return result;
}

void mlir::tensor::ExpandShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "reassociation";
    v12 = 13;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "static_output_shape";
    v12 = 19;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::tensor::ExpandShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v10, "reassociation", 0xD, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_output_shape", 0x13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 64)
    {
      return 1;
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<58ul>(v13, "' failed to satisfy constraint: i64 dense array attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(mlir::tensor::ExpandShapeOp **this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v20 = "requires attribute 'reassociation'";
LABEL_22:
    v22 = v20;
    v23 = 259;
    mlir::Operation::emitOpError(v24, v2, &v22);
    v19 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
    return v19;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v20 = "requires attribute 'static_output_shape'";
    goto LABEL_22;
  }

  v24[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v4, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v24))
  {
    return 0;
  }

  v24[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v24))
  {
    return 0;
  }

  v8 = *this;
  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
    {
      ++v12;
      v13 += 32;
      if (v11 == v12)
      {
        v8 = *this;
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  v14 = mlir::tensor::ExpandShapeOp::getODSOperands(v8, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = v14 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
    {
      LODWORD(v11) = v11 + 1;
      v17 += 32;
      if (!--v16)
      {
        v8 = *this;
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_15:
  if (*(v8 + 9))
  {
    v18 = v8 - 16;
  }

  else
  {
    v18 = 0;
  }

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(v8, (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::tensor::ExpandShapeOp::getODSOperands(mlir::tensor::ExpandShapeOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

uint64_t mlir::tensor::ExpandShapeOp::parse(void *a1, uint64_t a2)
{
  v29[16] = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  v19 = 0;
  v20 = 0;
  v27 = v29;
  v28 = 0x400000000;
  v17[1] = 1;
  v18 = 0;
  v17[0] = &v18;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v20, v6))
  {
    goto LABEL_21;
  }

  if (v20)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2);
    *v8 = v20;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "output_shape", 12, &__src) & 1) == 0 || ((*(*a1 + 40))(a1), __src = 0, !mlir::parseDynamicIndexList(a1, &v27, &v19, &__src, 0)) || (v9 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2), *(v9 + 8) = v19, v16 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v10 = *(a2 + 8), __src = a1, v25[0] = &v16, v25[1] = a2, !mlir::tensor::ExpandShapeOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src)) || ((*(*a1 + 104))(a1) & 1) == 0 || (__src = 0, !mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) || (v18 = __src, v26 = 257, ((*(*a1 + 400))(a1, "into", 4, &__src) & 1) == 0) || (v16 = 0, !mlir::AsmParser::parseType<mlir::TensorType>(a1, &v16)) || (__src = v16, v11 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v25), !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v21, v17, v4, a2 + 16)))
  {
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (v28)
  {
    v12 = v27;
    v13 = 32 * v28;
    while (((*(*a1 + 728))(a1, v12, v11, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v14 = 1;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v14 = 1;
LABEL_22:
  if (v27 != v29)
  {
    free(v27);
  }

  return v14;
}

void mlir::tensor::ExpandShapeOp::print(mlir::tensor::ExpandShapeOp **this, mlir::OpAsmPrinter *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 0xB)
  {
    *(v12 + 8) = 1701863784;
    *v12 = *"output_shape";
    *(v11 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v11, "output_shape", 0xCuLL);
  }

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

  v15 = *this;
  v16 = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 1u);
  v17 = *(v15 + 2 * ((*(v15 + 11) >> 23) & 1) + 9);
  mlir::printDynamicIndexList(a2, v15, v16, v18, *(v17 + 24), *(v17 + 32) >> 3, 0, 0, 2, 0, 2);
  v34 = v36;
  v35 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "reassociation", 13);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "static_output_shape", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, v35);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  (*(*a2 + 32))(a2, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 3uLL)
  {
    *v30 = 1869901417;
    *(v29 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v29, "into", 4uLL);
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (v32 >= *(v31 + 3))
  {
    llvm::raw_ostream::write(v31, 32);
  }

  else
  {
    *(v31 + 4) = v32 + 1;
    *v32 = 32;
  }

  v33 = *this - 16;
  if (!*(*this + 9))
  {
    v33 = 0;
  }

  (*(*a2 + 32))(a2, *(v33 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v34 != v36)
  {
    free(v34);
  }
}

unint64_t mlir::tensor::ExtractOp::getODSOperandIndexAndLength(mlir::tensor::ExtractOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor9ExtractOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir6tensor9ExtractOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

void mlir::tensor::ExtractOp::build(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v19 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v19, 0, &v19, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a4, 0, a4, a5);
  __src = v22;
  v21 = 0x200000000;
  v8 = *(a2 + 2);
  v9 = a2[6];
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  if (!mlir::tensor::ExtractOp::inferReturnTypes(Dictionary, v11, v12, v8 & 0xFFFFFFFFFFFFFFF9, v9, v13, v14, v15, v17, v18, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v16);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v21);
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::ExtractOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  v15 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*v15 + 136);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = 24;
LABEL_14:
    v17 = *(v15 + v18);
    goto LABEL_15;
  }

  if (v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v18 = 8;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_15:
  **a11 = v17;
  return 1;
}

BOOL mlir::tensor::ExtractOp::verifyInvariantsImpl(mlir::tensor::ExtractOp *this)
{
  v23 = *MEMORY[0x277D85DE8];
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v5))
    {
      ++v5;
      v6 += 32;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v7 = mlir::tensor::ExtractOp::getODSOperands(this, 1u);
  if (v8)
  {
    v9 = v8;
    v10 = v7 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      LODWORD(v4) = v4 + 1;
      v10 += 32;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v11 = *(*(mlir::tensor::ExtractOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = 24;
LABEL_15:
    v13 = *(v11 + v15);
    goto LABEL_16;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v15 = 8;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:
  v16 = *this;
  if (*(*this + 36))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  v14 = 1;
  if (v13 != (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v19 = "failed to verify that result type matches element type of tensor";
    v20 = 259;
    mlir::Operation::emitOpError(v21, v16, &v19);
    v14 = (v22 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
  }

  return v14;
}

uint64_t mlir::tensor::ExtractOp::getODSOperands(mlir::tensor::ExtractOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::ExtractOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::tensor::ExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v30[16] = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23[0] = v24;
  v23[1] = 1;
  v28 = v30;
  v29 = 0x400000000;
  v21[1] = 1;
  v22 = 0;
  v21[0] = &v22;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v24, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v28, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    goto LABEL_25;
  }

  v5 = __src;
  v22 = __src;
  v20 = __src;
  v6 = *__src;
  if (*(*__src + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    (*(v10 + 8))(v10, v5);
    v11 = (*(*a1 + 32))(a1);
    v12 = *(*v22 + 136);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 24;
    }

    else
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v13 = 0;
        goto LABEL_19;
      }

      v14 = 8;
    }

    v13 = *(v22 + v14);
LABEL_19:
    v15 = *(**v11 + 472);
    __src = v13;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v27);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v23, v21, v4, a2 + 16))
    {
      if (!v29)
      {
        v8 = 1;
        goto LABEL_26;
      }

      v16 = v28;
      v17 = 32 * v29;
      while (((*(*a1 + 728))(a1, v16, v15, a2 + 16) & 1) != 0)
      {
        v16 += 32;
        v8 = 1;
        v17 -= 32;
        if (!v17)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v8 = 0;
    goto LABEL_26;
  }

  v7 = (*(*a1 + 16))(a1);
  v19[16] = 257;
  (*(*a1 + 24))(&__src, a1, v7, v19);
  if (__src)
  {
    mlir::Diagnostic::operator<<<60ul>(v27, "'tensor' must be ranked tensor of any type values, but got ");
    if (__src)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v27, &v20);
    }
  }

  v8 = (v27[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_26:
  if (v28 != v30)
  {
    free(v28);
  }

  return v8;
}

void mlir::tensor::ExtractOp::print(mlir::tensor::ExtractOp *this, mlir::OpAsmPrinter *a2)
{
  v28[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, "[", 1uLL);
  }

  else
  {
    *v8 = 91;
    ++*(v7 + 4);
  }

  v9 = mlir::tensor::ExtractOp::getODSOperands(this, 1u);
  v11 = v10;
  v12 = (*(*a2 + 16))(a2);
  if (v11)
  {
    v13 = v12;
    (*(*a2 + 160))(a2, *(v9 + 24));
    v14 = v11 - 1;
    if (v14)
    {
      v15 = (v9 + 56);
      do
      {
        v16 = *(v13 + 4);
        if (*(v13 + 3) - v16 > 1uLL)
        {
          *v16 = 8236;
          *(v13 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v13, ", ", 2uLL);
        }

        v17 = *v15;
        v15 += 4;
        (*(*a2 + 160))(a2, v17);
        --v14;
      }

      while (v14);
    }
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "]", 1uLL);
  }

  else
  {
    *v19 = 93;
    ++*(v18 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v28, 0);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) == v24)
  {
    llvm::raw_ostream::write(v23, ":", 1uLL);
  }

  else
  {
    *v24 = 58;
    ++*(v23 + 4);
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = mlir::tensor::ExtractOp::getODSOperands(this, 0);
  (*(*a2 + 32))(a2, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::ExtractSliceOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  v4 = *(v2 + 16);
  *(result + 56) = *(v2 + 32);
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 64) = v7;
  *(result + 72) = v6;
  return result;
}

BOOL mlir::tensor::ExtractSliceOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v30, a4);
    if (v30)
    {
      mlir::Diagnostic::operator<<<42ul>(v31, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_offsets", 0xEuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        (a3)(&v30, a4);
        if (v30)
        {
LABEL_37:
          mlir::Diagnostic::operator<<<60ul>(v31, v24);
LABEL_38:
          if (v30)
          {
            v28 = 0;
            v29 = v11;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v28, 1);
            v26 = v32 + 24 * v33;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v33;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        return 0;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_sizes", 0xCuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v11[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        (a3)(&v30, a4);
        if (v30)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

      a1[1] = v11;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_strides", 0xEuLL);
  if (v17)
  {
    v11 = *(v16 + 8);
    if (v11)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v18 = v11[1];
        if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v18[2] == 64)
        {
          a1[2] = v11;
          goto LABEL_25;
        }
      }

      (a3)(&v30, a4);
      if (v30)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v20 & 1) == 0 || (v21 = *(v19 + 8)) == 0)
  {
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v23 & 1) == 0)
    {
      return 1;
    }

    v21 = *(v22 + 8);
    if (!v21)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 4, v21, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::tensor::ExtractSliceOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "static_offsets";
    v21 = 14;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "static_sizes";
    v21 = 12;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "static_strides";
    v21 = 14;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

unint64_t mlir::tensor::ExtractSliceOp::computePropertiesHash(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v16 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v14 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = a1[4];
  v11 = __ROR8__(v10 + 16, 16);
  v13 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v10;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
}

unint64_t mlir::tensor::ExtractSliceOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v12 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 4);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 12)
  {
    if (*a3 != 0x735F636974617473 || *(a3 + 2) != 1936030313)
    {
      goto LABEL_34;
    }

    a1 = a2[1];
    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 == 0x6F5F636974617473 && *(a3 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x735F636974617473 || *(a3 + 6) != 0x736564697274735FLL)
      {
LABEL_34:
        LOBYTE(a1) = 0;
        v5 = 0;
        return v5 | a1;
      }

      a1 = a2[2];
    }

LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

uint64_t *mlir::tensor::ExtractSliceOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = *a2 ^ 0x53646E617265706FLL;
      v9 = a2[1] ^ 0x6953746E656D6765;
      v10 = *(a2 + 11);
      v11 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = *a2 ^ 0x5F646E617265706FLL;
      v9 = a2[1] ^ 0x5F746E656D676573;
      v10 = *(a2 + 13);
      v11 = 1935635566;
    }

    if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 4)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 12)
  {
    if (*a2 == 0x735F636974617473 && *(a2 + 2) == 1936030313)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      result[1] = v14;
    }
  }

  else if (a3 == 14)
  {
    if (*a2 == 0x6F5F636974617473 && *(a2 + 6) == 0x7374657366666F5FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v18 = *(a4 + 8), *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v18[2] == 64)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *result = v19;
    }

    else if (*a2 == 0x735F636974617473 && *(a2 + 6) == 0x736564697274735FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = *(a4 + 8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v6[2] == 64)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[2] = v7;
    }
  }

  return result;
}

void mlir::tensor::ExtractSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "static_offsets";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_sizes";
    v20 = 12;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_strides";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::ExtractSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "static_offsets", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_sizes", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_strides", 0xE, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::ExtractSliceOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 5)
    {
      v6 = "size mismatch for operand/result_segment_size";
      v7 = 259;
      (*(*a1 + 16))(v9, a1, &v6);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
      return 0;
    }

    v4 = *(v8 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4uLL) & 1) != 0);
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

uint64_t mlir::tensor::ExtractSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 24, 4);
    (*(*a2 + 16))(a2, v5);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 4);
  }

  return result;
}

BOOL mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v28 = "requires attribute 'static_offsets'";
LABEL_32:
    v30 = v28;
    v31 = 259;
    mlir::Operation::emitOpError(v32, v2, &v30);
    v27 = (v33 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
    return v27;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v28 = "requires attribute 'static_sizes'";
    goto LABEL_32;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    v28 = "requires attribute 'static_strides'";
    goto LABEL_32;
  }

  v32[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v32))
  {
    return 0;
  }

  v32[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v32))
  {
    return 0;
  }

  v32[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v32))
  {
    return 0;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      return 0;
    }
  }

LABEL_12:
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  v18 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  v22 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  if (*(*this + 9))
  {
    v26 = *this - 16;
  }

  else
  {
    v26 = 0;
  }

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v26 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::tensor::ExtractSliceOp::parse(uint64_t a1, uint64_t a2)
{
  v42[16] = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v40 = v42;
  v41 = 0x400000000;
  v26 = 0;
  v27 = 0;
  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v24 = 0;
  v25 = 0;
  v23[0] = &v24;
  v23[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0 || ((*(*a1 + 40))(a1), __src = 0, !mlir::parseDynamicIndexList(a1, &v40, &v27, &__src, 0)) || (v5 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2), *v5 = v27, (*(*a1 + 40))(a1), __src = 0, !mlir::parseDynamicIndexList(a1, &v37, &v26, &__src, 0)) || (v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2), *(v6 + 8) = v26, (*(*a1 + 40))(a1), __src = 0, !mlir::parseDynamicIndexList(a1, &v34, &v25, &__src, 0)) || (v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2), *(v7 + 16) = v25, v22 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v8 = *(a2 + 8), __src = a1, v32[0] = &v22, v32[1] = a2, !mlir::tensor::ExtractSliceOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src)) || ((*(*a1 + 104))(a1) & 1) == 0 || (__src = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) || (v24 = __src, v33 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0) || (v22 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v22)) || (__src = v22, v9 = v41, v10 = v38, v11 = v35, v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2), v12[6] = 1, v12[7] = v9, v12[8] = v10, v12[9] = v11, v13 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v32), !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v23, v4, a2 + 16)))
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  if (v41)
  {
    v14 = v40;
    v15 = 32 * v41;
    while (((*(*a1 + 728))(a1, v14, v13, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_25;
  }

LABEL_16:
  if (v38)
  {
    v16 = v37;
    v17 = 32 * v38;
    while (((*(*a1 + 728))(a1, v16, v13, a2 + 16) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

LABEL_20:
  if (v35)
  {
    v18 = v34;
    v19 = 32 * v35;
    while (((*(*a1 + 728))(a1, v18, v13, a2 + 16) & 1) != 0)
    {
      v18 += 32;
      v20 = 1;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  v20 = 1;
LABEL_26:
  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  return v20;
}

void mlir::tensor::ExtractSliceOp::print(mlir::tensor::ExtractSliceOp *this, mlir::OpAsmPrinter *a2)
{
  v38[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  v6 = *this;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(this, 1u);
  v8 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::printDynamicIndexList(a2, v6, ODSOperands, v9, *(v8 + 24), *(v8 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v12 = *this;
  v13 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 2u);
  v14 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::printDynamicIndexList(a2, v12, v13, v15, *(v14 + 24), *(v14 + 32) >> 3, 0, 0, 2, 0, 2);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this;
  v19 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 3u);
  v20 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v18, v19, v21, *(v20 + 24), *(v20 + 32) >> 3, 0, 0, 2, 0, 2);
  v36 = v38;
  v37 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "static_offsets", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "static_sizes", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "static_strides", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, v37);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++*(v25 + 4);
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (*(v31 + 3) - v32 > 1uLL)
  {
    *v32 = 28532;
    *(v31 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "to", 2uLL);
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  v35 = *this - 16;
  if (!*(*this + 36))
  {
    v35 = 0;
  }

  (*(*a2 + 32))(a2, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36 != v38)
  {
    free(v36);
  }
}

BOOL mlir::tensor::FromElementsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 1) & 0xFFFFFFFFFFFFFFF8;
  v43 = 0;
  v5 = *v4;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    if ((*(v7 + 16))(v7, v4))
    {
      v8 = (*(v7 + 24))(v7, v4);
      if (!v9)
      {
LABEL_10:
        v11 = *v4;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
        (*(v13 + 8))(v13, v4);
        goto LABEL_18;
      }

      v10 = 8 * v9;
      while (*v8 != 0x8000000000000000)
      {
        ++v8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v42 = 261;
  v41[0] = "result";
  v41[1] = 6;
  mlir::Operation::emitOpError(&v46, v2, v41);
  if (v46)
  {
    mlir::Diagnostic::operator<<<3ul>(&v47, " #");
  }

  v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v46, &v43);
  v15 = v14;
  if (*v14)
  {
    mlir::Diagnostic::operator<<<63ul>((v14 + 1), " must be statically shaped tensor of any type values, but got ");
    if (*v15)
    {
      v44 = 4;
      v45 = v4;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v44, 1);
      v17 = v15[3] + 24 * *(v15 + 8);
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++*(v15 + 8);
    }
  }

  v19 = *(v15 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  if (v19)
  {
    return 0;
  }

LABEL_18:
  v21 = *this - 16;
  if (!*(*this + 9))
  {
    v21 = 0;
  }

  v22 = (*(v21 + 1) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[2];
  if (v23)
  {
    v24 = v22[1];
    v25 = 8 * v23;
    v26 = 1;
    do
    {
      v27 = *v24++;
      v26 *= v27;
      v25 -= 8;
    }

    while (v25);
  }

  else
  {
    v26 = 1;
  }

  v28 = v22[3];
  v46 = v48;
  v47 = 0x200000000;
  llvm::SmallVectorImpl<mlir::Type>::assign(&v46, v26, v28);
  v29 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v30 = *(v29 + 17);
    v31 = *(v29 + 9);
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  if (v30 == v47)
  {
    if (v47)
    {
      v32 = 8 * v30 - 8;
      v33 = (v31 + 24);
      v34 = v46;
      do
      {
        v35 = *v33;
        v33 += 4;
        v36 = *(v35 + 8);
        v37 = *v34++;
        v38 = v37 == (v36 & 0xFFFFFFFFFFFFFFF8);
        v39 = v37 != (v36 & 0xFFFFFFFFFFFFFFF8) || v32 == 0;
        v32 -= 8;
      }

      while (!v39);
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 0;
  }

  if (v46 != v48)
  {
    free(v46);
  }

  v20 = 1;
  if (!v38)
  {
    v41[0] = "failed to verify that operand types match result element type";
    v42 = 259;
    mlir::Operation::emitOpError(&v46, *this, v41);
    v20 = (v48[184] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  }

  return v20;
}