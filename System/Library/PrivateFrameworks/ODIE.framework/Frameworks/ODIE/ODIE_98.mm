char *mlir::ODIE::Compiler::createTensorConstant<BOOL>(mlir::OpBuilder *a1, _BYTE *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v15[0] = a3;
    v7 = v15;
    v6 = 1;
  }

  v8 = mlir::IntegerType::get(*a1, 1, 0);
  *&v14 = v7;
  *(&v14 + 1) = v6;
  v12 = 0;
  v13 = v8;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v14, &v13, &v12);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseElementsAttr::get(v9, v10, a2, a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v14) - 16;
}

{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v15[0] = a3;
    v7 = v15;
    v6 = 1;
  }

  v8 = mlir::IntegerType::get(*a1, 1, 0);
  *&v14 = v7;
  *(&v14 + 1) = v6;
  v12 = 0;
  v13 = v8;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v14, &v13, &v12);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseElementsAttr::get(v9, v10, a2, a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v14) - 16;
}

unint64_t mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::OpBuilder *a1, void *a2, char *a3, uint64_t a4, int a5)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v42 = a3;
  v43 = a2;
  v41 = a4;
  v6 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v8 = a3;
    v10 = *v6;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
    v40[0] = v6;
    v40[1] = v12;
    if (!a5)
    {
      goto LABEL_6;
    }

    v8 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::ImplicitLocOpBuilder &,mlir::Value,mlir::Value,mlir::Value,BOOL)::$_0::operator()(a1, &v42, v40);
    v14 = v13;
    v15 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::ImplicitLocOpBuilder &,mlir::Value,mlir::Value,mlir::Value,BOOL)::$_0::operator()(a1, &v41, v40);
    v17 = 0;
    if ((v14 & 1) == 0)
    {
      v18 = 0;
      return v18 | v17;
    }

    v18 = 0;
    if (v16)
    {
      v41 = v15;
      v42 = v8;
LABEL_6:
      __src = a2;
      v50 = v8;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v44);
      if (v46)
      {
        v42 = *(v44[0] + 1);
        v19 = v42;
        v20 = (*(v12 + 8))(v12, v6);
        v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v19, v20);
        if (v22)
        {
          v42 = v21;
          v47[0] = a2;
          v47[1] = v41;
          mlir::ODIE::Compiler::getBroadcastedValues(v47, 2uLL, a1, &__src);
          std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v44, &__src);
          if (v53 == 1 && __src != v51)
          {
            free(__src);
          }

          if (v46)
          {
            v41 = *(v44[0] + 1);
            v23 = v41;
            v24 = (*(v12 + 8))(v12, v6);
            v25 = mlir::ODIE::Compiler::castValueToElementType(a1, v23, v24);
            if (v26)
            {
              v41 = v25;
              v27 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v40, &v43, &v42);
              v28 = *(a1 + 4);
              v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**v28 + 32));
              __src = v28;
              v50 = v29;
              v51[0] = &v52;
              v51[1] = 0x400000000;
              v53 = v55;
              v54 = 0x400000000;
              v55[4] = v56;
              v55[5] = 0x400000000;
              v56[8] = 4;
              v56[9] = v57;
              v56[10] = 0x100000000;
              v57[1] = v58;
              v57[2] = 0x100000000;
              v58[1] = 0;
              v58[2] = 0;
              v58[3] = &mlir::detail::TypeIDResolver<void,void>::id;
              v58[4] = 0;
              v58[6] = 0;
              mlir::ODIE::Compiler::CoreML::AddOp::build(a1, &__src, v40[0], v27 - 16, v41);
              v30 = mlir::Operation::create(&__src);
              mlir::OpBuilder::insert(a1, v30);
              v31 = *(*(v30 + 6) + 16);
              v32 = v30 - 16;
              mlir::OperationState::~OperationState(&__src);
              v33 = -16;
              if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
              {
                v33 = v32;
              }

              v18 = v33 & 0xFFFFFFFFFFFFFF00;
              v17 = v33;
              goto LABEL_29;
            }

            v38 = *(a1 + 4);
            v48 = 257;
            emitDiag(v38, 2, v47, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<67ul>(&v50, "unable to cast the bias operand to same element type as normalized");
            }
          }

          else
          {
            v37 = *(a1 + 4);
            v48 = 257;
            emitDiag(v37, 2, v47, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<57ul>(&v50, "unable to broadcast the bias operand to normalized shape");
            }
          }
        }

        else
        {
          v36 = *(a1 + 4);
          v48 = 257;
          emitDiag(v36, 2, v47, &__src);
          if (__src)
          {
            mlir::Diagnostic::operator<<<69ul>(&v50, "unable to cast the weight operand to same element type as normalized");
          }
        }
      }

      else
      {
        v35 = *(a1 + 4);
        v48 = 257;
        emitDiag(v35, 2, v47, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<59ul>(&v50, "unable to broadcast the weight operand to normalized shape");
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v17 = 0;
      v18 = 0;
LABEL_29:
      if (v46 == 1 && v44[0] != v45)
      {
        free(v44[0]);
      }
    }
  }

  else
  {
    v34 = *(a1 + 4);
    v45[8] = 257;
    emitDiag(v34, 2, v44, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<41ul>(&v50, "Normalized input must be a ranked tensor");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v17 = 0;
    v18 = 0;
  }

  return v18 | v17;
}

char *mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::ImplicitLocOpBuilder &,mlir::Value,mlir::Value,mlir::Value,BOOL)::$_0::operator()(mlir::OpBuilder *a1, uint64_t *a2, uint64_t a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 16) == 1)
  {
    (*(*(a3 + 8) + 24))();
    if (v8 == 1)
    {
      return *a2;
    }

    else
    {
      (*(*(a3 + 8) + 24))();
      v18 = v20;
      v19 = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(&v18, v9, 1);
      v10 = v18;
      *(v18 + 1) = **(v4 + 8);
      *&v16 = v17;
      *(&v16 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::append<long long *,void>(&v16, v10, &v10[8 * v19]);
      v13 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v16, DWORD2(v16));
      if (v16 != v17)
      {
        free(v16);
      }

      v11 = *(v4 + 24);
      *&v16 = v18;
      *(&v16 + 1) = v19;
      v14 = 0;
      v15 = v11;
      *&v16 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v16, &v15, &v14);
      v3 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v16, a2, &v13) - 16;
      if (v18 != v20)
      {
        free(v18);
      }
    }
  }

  return v3;
}

void mlir::ODIE::Compiler::getStackedInfoFromSanitizedIndices(void ***a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  v8 = a1;
  v70 = *MEMORY[0x277D85DE8];
  v10 = a1[4];
  v61 = v63;
  v62 = 0x600000000;
  v58 = v60;
  v59 = 0x600000000;
  v11 = *(a3 + 2);
  if (v11)
  {
    v14 = a5;
    v16 = 0;
    v17 = *a3;
    v18 = 8 * v11;
    do
    {
      v19 = *(v17 + 8 * v16);
      if (v19)
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v58, v19);
        llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v61, v16);
      }

      ++v16;
      v18 -= 8;
    }

    while (v18);
    v20 = v58;
    v21 = v59;
    v7 = a2;
    a5 = v14;
    v5 = a4;
    v8 = a1;
  }

  else
  {
    v21 = 0;
    v20 = v60;
  }

  mlir::ODIE::Compiler::getBroadcastedValues(v20, v21, v8, v55);
  if (v57)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v58, v55);
    if (v62 && v59)
    {
      v22 = v61;
      v23 = v58;
      v24 = 8 * v59 - 8;
      v25 = 8 * v62 - 8;
      do
      {
        v27 = *v22++;
        v26 = v27;
        v28 = *v23++;
        *(*a3 + 8 * v26) = v28;
        if (!v25)
        {
          break;
        }

        v29 = v24;
        v24 -= 8;
        v25 -= 8;
      }

      while (v29);
    }

    v30 = *a3;
    v31 = *(a3 + 2);
    v51 = v7;
    v52 = v54;
    v53 = 0x600000000;
    v32 = *((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v67 = v69;
    v68 = 0xC00000000;
    if (v31)
    {
      v33 = 0;
      v34 = 8 * v31;
      v35 = 8 * v31;
      do
      {
        if (*(v30 + 8 * v33))
        {
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v67, v33);
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v52, *(v30 + 8 * v33));
        }

        ++v33;
        v35 -= 8;
      }

      while (v35);
      if (v5)
      {
        v36 = 0;
        do
        {
          if (!*(v30 + 8 * v36))
          {
            llvm::SmallVectorTemplateBase<int,true>::push_back(&v67, v36);
          }

          ++v36;
          v34 -= 8;
        }

        while (v34);
LABEL_29:
        if (v32 > v31)
        {
          do
          {
            llvm::SmallVectorTemplateBase<int,true>::push_back(&v67, v31++);
          }

          while (v32 != v31);
        }

        v50 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, v67, v68);
        v64 = v66;
        v65 = 0xC00000000;
        llvm::SmallVectorImpl<int>::resizeImpl<false>(&v64, v68);
        if (v68)
        {
          v37 = 0;
          v38 = v67;
          v39 = v64;
          v40 = 4 * v68;
          do
          {
            *(v39 + *(v38 + v37)) = v37;
            ++v37;
            v40 -= 4;
          }

          while (v40);
        }

        if ((~*(v7 + 8) & 7) != 0)
        {
          v41 = v7;
        }

        else
        {
          v41 = 0;
        }

        if (!v41)
        {
          goto LABEL_40;
        }

        v42 = *(v41 + 8) & 7;
        if (v42 == 6)
        {
          v43 = v41 + 24 * *(v41 + 16) + 120;
          if (!v43)
          {
LABEL_40:
            v44 = (v7 + 32);
            goto LABEL_46;
          }
        }

        else
        {
          v43 = v41 + 16 * v42 + 16;
        }

        v44 = (v43 + 24);
LABEL_46:
        v49 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::Value &,mlir::Value &>(v8, *v44, &v51, &v50);
        v48 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, v64, v65);
        v7 = v49 - 16;
        v47 = mlir::ODIE::Compiler::stackIndices(v8, v52, v53);
        if (v64 != v66)
        {
          free(v64);
        }

        goto LABEL_48;
      }

      v45 = v52;
      v46 = v53;
    }

    else
    {
      if (v5)
      {
        goto LABEL_29;
      }

      v46 = 0;
      v45 = v54;
    }

    v47 = mlir::ODIE::Compiler::stackIndices(v8, v45, v46);
    v48 = 0;
LABEL_48:
    if (v67 != v69)
    {
      free(v67);
    }

    if (v52 != v54)
    {
      free(v52);
    }

    *a5 = v7;
    *(a5 + 8) = v47;
    *(a5 + 16) = v48;
    *(a5 + 24) = 1;
    goto LABEL_53;
  }

  v69[8] = 257;
  emitDiag(v10, 2, &v67, &v52);
  if (v52)
  {
    mlir::Diagnostic::operator<<<43ul>(&v53, "unable to broadcast non-null index tensors");
  }

  *a5 = 0;
  *(a5 + 24) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v52);
LABEL_53:
  if (v57 == 1 && v55[0] != &v56)
  {
    free(v55[0]);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != v63)
  {
    free(v61);
  }
}

void mlir::ODIE::Compiler::getSanitizedIndices(mlir::OpBuilder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a1;
  v159 = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  v115 = *(v10 + 16);
  LODWORD(v137) = 1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v137, 1);
  v122 = mlir::IntegerType::get(*v8, 32, 1);
  v134[0] = v135;
  v134[1] = 0x600000000;
  v12 = *(a2 + 8);
  if (!v12)
  {
    v13 = 0;
    v16 = -1;
LABEL_46:
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, v134);
    v46 = *(a2 + 8);
    if (v115 < v46)
    {
      v47 = v8[4];
      v133 = 257;
      emitDiag(v47, 2, &v130, &v137);
      if (v137)
      {
        mlir::Diagnostic::operator<<<17ul>(&v137 + 8, "require at most ");
        if (v137)
        {
          LODWORD(v130) = 2;
          v131 = v115;
          v48 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v139, &v130, 1);
          v49 = v139 + 24 * v140[0];
          v50 = *v48;
          *(v49 + 16) = *(v48 + 16);
          *v49 = v50;
          ++v140[0];
          if (v137)
          {
            mlir::Diagnostic::operator<<<32ul>(&v137 + 8, " elements in indices, but have ");
            if (v137)
            {
              v51 = *(a2 + 8);
              LODWORD(v130) = 5;
              v131 = v51;
              v52 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v139, &v130, 1);
              v53 = v139 + 24 * v140[0];
              v54 = *v52;
              *(v53 + 16) = *(v52 + 16);
              *v53 = v54;
              ++v140[0];
            }
          }
        }
      }

      goto LABEL_101;
    }

    if (!v46)
    {
      LOBYTE(v59) = 0;
      *&v137 = &v138;
      *(&v137 + 1) = 0x600000000;
      LOBYTE(v141) = 0;
      *a6 = a6 + 16;
      *(a6 + 8) = 0x600000000;
      goto LABEL_66;
    }

    v55 = 0;
    v56 = *a2;
    v57 = *a2 + 8 * v46;
    v58 = 8 * v46;
    while (!v56[v55 / 8])
    {
      v55 += 8;
      if (v58 == v55)
      {
        *&v137 = &v138;
        *(&v137 + 1) = 0x600000000;
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v137, a2);
        v59 = DWORD2(v137);
        LOBYTE(v141) = 0;
        *a6 = a6 + 16;
        *(a6 + 8) = 0x600000000;
        if (v59)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(a6, &v137);
          LOBYTE(v59) = v141;
        }

        goto LABEL_66;
      }
    }

    v72 = v58;
    v73 = *a2;
    do
    {
      if (*v73)
      {
        goto LABEL_86;
      }

      ++v73;
      v72 -= 8;
    }

    while (v72);
    v73 = v57;
LABEL_86:
    while (v58)
    {
      v74 = v56[v58 / 8 - 1];
      v58 -= 8;
      if (v74)
      {
        v56 = (v56 + v58 + 8);
        break;
      }
    }

    if (v73 != v56)
    {
      while (*v73)
      {
        if (++v73 == v56)
        {
          goto LABEL_108;
        }
      }
    }

    if (v73 != v56)
    {
      *&v137 = &v138;
      *(&v137 + 1) = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v137, a2);
      LOBYTE(v141) = 1;
      *a6 = a6 + 16;
      *(a6 + 8) = 0x600000000;
      if (DWORD2(v137))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a6, &v137);
        v79 = v141;
      }

      else
      {
        v79 = 1;
      }

      *(a6 + 64) = v79;
      *(a6 + 72) = 1;
LABEL_67:
      if (v137 != &v138)
      {
        free(v137);
      }

      goto LABEL_102;
    }

LABEL_108:
    LODWORD(v137) = 0;
    v128 = mlir::ODIE::Compiler::createTensorConstant<int>(v8, &v137, 1);
    LODWORD(v137) = 1;
    v116 = v8;
    v127 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, &v137, 1);
    v136 = 0x8000000000000000;
    *&v137 = &v136;
    *(&v137 + 1) = 1;
    v129 = 0;
    v130 = v122;
    v120 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v122 + 32), &v137, &v130, &v129);
    v136 = 1;
    *&v137 = &v136;
    *(&v137 + 1) = 1;
    v129 = 0;
    v130 = v122;
    v126 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v122 + 32), &v137, &v130, &v129);
    v80 = *(a2 + 8);
    if (v80)
    {
      v81 = 0;
      v112 = a2;
      v82 = *a2;
      v83 = ((v80 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v84 = 8 * v80;
      v85 = 8 * v80;
      while (!v82[v81])
      {
        ++v81;
        v85 -= 8;
        if (!v85)
        {
          v81 = v83;
          break;
        }
      }

      v86 = 0;
      if (v13 <= v16)
      {
        v87 = v16;
      }

      else
      {
        v87 = v13;
      }

      v88 = v81 + v87;
      v110 = v81 + v87;
      v89 = Tensor;
      v119 = v82;
      do
      {
        if (v82[v86])
        {
          break;
        }

        DimensionLengthOfTensor = mlir::ODIE::Compiler::getDimensionLengthOfTensor(v8, a4, v86);
        v90 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(v8, v8[4], &v126, &DimensionLengthOfTensor, &v127) - 16;
        v91 = v8[4];
        v92 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RangeOp>(v8, *(**v91 + 32));
        *&v137 = v91;
        *(&v137 + 1) = v92;
        v138 = v140;
        v139 = 0x400000000;
        v141 = v143;
        v142 = 0x400000000;
        v144 = v146;
        v145 = 0x400000000;
        v147 = 4;
        v148 = &v150;
        v149 = 0x100000000;
        v151 = &v153;
        v152 = 0x100000000;
        v154 = 0;
        v155 = 0;
        v156 = &mlir::detail::TypeIDResolver<void,void>::id;
        v157 = 0;
        v158 = 0;
        mlir::ODIE::Compiler::CoreML::RangeOp::build(v8, &v137, v120, v128, DimensionLengthOfTensor, v89);
        v93 = mlir::Operation::create(&v137);
        mlir::OpBuilder::insert(v8, v93);
        v94 = *(*(v93 + 6) + 16);
        mlir::OperationState::~OperationState(&v137);
        v95 = v94 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id ? v93 : 0;
        v96 = v88 - 1;
        if ((v88 - 1) <= 0)
        {
          v88 = v110 - v86;
          v98 = v122;
        }

        else
        {
          *&v137 = &v138;
          *(&v137 + 1) = 0xC00000000;
          llvm::SmallVectorImpl<int>::assign(&v137, v88 - 1, 1);
          v97 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, v137, DWORD2(v137));
          if (v137 != &v138)
          {
            free(v137);
          }

          v136 = v88;
          *&v137 = &v136;
          *(&v137 + 1) = 1;
          v98 = v122;
          v129 = 0;
          v130 = v122;
          v129 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v122 + 32), &v137, &v130, &v129);
          v130 = v90;
          v131 = v97;
          *&v137 = &v130;
          *(&v137 + 1) = 2;
          v8 = v116;
          v90 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(v116, v116[4], &v129, &v128, &v137) - 16;
        }

        v130 = v132;
        v131 = 0x600000000;
        llvm::SmallVectorImpl<long long>::assign(&v130, v88, 1);
        v99 = v130;
        *v130 = 0x8000000000000000;
        *&v137 = v99;
        *(&v137 + 1) = v131;
        v129 = v98;
        v136 = 0;
        v100 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v98 + 32), &v137, &v129, &v136);
        v101 = v8[4];
        v102 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(v8, *(**v101 + 32));
        *&v137 = v101;
        *(&v137 + 1) = v102;
        v138 = v140;
        v139 = 0x400000000;
        v141 = v143;
        v142 = 0x400000000;
        v144 = v146;
        v145 = 0x400000000;
        v147 = 4;
        v148 = &v150;
        v149 = 0x100000000;
        v151 = &v153;
        v152 = 0x100000000;
        v154 = 0;
        v155 = 0;
        v156 = &mlir::detail::TypeIDResolver<void,void>::id;
        v157 = 0;
        v158 = 0;
        mlir::ODIE::Compiler::CoreML::ReshapeOp::build(v8, &v137, v100, (v95 - 16), v90);
        v103 = mlir::Operation::create(&v137);
        mlir::OpBuilder::insert(v8, v103);
        v104 = *(*(v103 + 6) + 16);
        mlir::OperationState::~OperationState(&v137);
        if (v104 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
        {
          v105 = v103;
        }

        else
        {
          v105 = 0;
        }

        *(*v112 + 8 * v86) = v105 - 16;
        if (v130 != v132)
        {
          free(v130);
        }

        ++v86;
        v88 = v96;
        v84 -= 8;
        v89 = Tensor;
        v82 = v119;
      }

      while (v84);
      v106 = *(v112 + 8);
      *&v137 = &v138;
      *(&v137 + 1) = 0x600000000;
      if (v106)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v137, v112);
        v59 = DWORD2(v137);
        LOBYTE(v141) = 0;
        *a6 = a6 + 16;
        *(a6 + 8) = 0x600000000;
        if (v59)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(a6, &v137);
          LOBYTE(v59) = v141;
        }

LABEL_66:
        *(a6 + 64) = v59;
        *(a6 + 72) = 1;
        goto LABEL_67;
      }
    }

    else
    {
      *&v137 = &v138;
      *(&v137 + 1) = 0x600000000;
    }

    LOBYTE(v59) = 0;
    LOBYTE(v141) = 0;
    *a6 = a6 + 16;
    *(a6 + 8) = 0x600000000;
    goto LABEL_66;
  }

  v113 = a5;
  v13 = 0;
  v14 = 0;
  v15 = *a2;
  v124 = *a2 + 8 * v12;
  v16 = -1;
  v109 = v11;
  while (1)
  {
    v128 = v14;
    v17 = *v15;
    if (!*v15)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v134, 0);
      goto LABEL_21;
    }

    if (*(a3 + 8) != *(a2 + 8))
    {
      break;
    }

    v18 = v16;
    v19 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v66 = *(*a3 + 8 * v14);
      v133 = 257;
      emitDiag(v66, 2, &v130, &v137);
      if (v137)
      {
        mlir::Diagnostic::operator<<<28ul>(&v137 + 8, "index argument at position ");
      }

      v67 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v137, &v128);
      if (*v67)
      {
        v68 = v67;
        mlir::Diagnostic::operator<<<41ul>((v67 + 1), " is not None or RankedTensorType. It is ");
        if (*v68)
        {
          LODWORD(v130) = 4;
          v131 = v19;
          v69 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v68 + 3), &v130, 1);
          v70 = v68[3] + 24 * *(v68 + 8);
          v71 = *v69;
          *(v70 + 16) = *(v69 + 16);
          *v70 = v71;
          ++*(v68 + 8);
        }
      }

      goto LABEL_101;
    }

    v20 = v19[3];
    if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_69;
    }

    v21 = v20[2];
    if (v21 - 1073741832 <= 0x18 && ((1 << (v21 - 8)) & 0x1000101) != 0 || v21 == -2147483632)
    {
      goto LABEL_15;
    }

    if (v21 >> 30 == 2)
    {
      if ((v21 & 0x3FFFFFFF) != 8)
      {
LABEL_69:
        if ((v113 & 1) == 0)
        {
LABEL_97:
          v77 = *(*a3 + 8 * v14);
          v133 = 257;
          emitDiag(v77, 2, &v130, &v137);
          if (v137)
          {
            mlir::Diagnostic::operator<<<28ul>(&v137 + 8, "index argument at position ");
          }

          v78 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v137, &v128);
          if (*v78)
          {
            mlir::Diagnostic::operator<<<59ul>((v78 + 1), " is not int32. Currently only support indexing using int32");
          }

          goto LABEL_101;
        }

LABEL_70:
        v63 = *(*a3 + 8 * v14);
        v133 = 257;
        emitDiag(v63, 2, &v130, &v137);
        if (v137)
        {
          mlir::Diagnostic::operator<<<28ul>(&v137 + 8, "index argument at position ");
        }

        v64 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v137, &v128);
        if (*v64)
        {
          mlir::Diagnostic::operator<<<75ul>((v64 + 1), " is not int32 or BOOL. Currently only support indexing using int32 or BOOL");
        }

        goto LABEL_101;
      }

LABEL_15:
      v24 = mlir::IntegerType::get(*v8, 32, 1);
      v25 = mlir::ODIE::Compiler::castValueToElementType(v8, v17, v24);
      if ((v26 & 1) == 0)
      {
        v75 = *(*a3 + 8 * v128);
        v133 = 257;
        emitDiag(v75, 2, &v130, &v137);
        if (v137)
        {
          mlir::Diagnostic::operator<<<34ul>(&v137 + 8, "Failed to cast index at position ");
        }

        v76 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v137, &v128);
        if (*v76)
        {
          mlir::Diagnostic::operator<<<10ul>((v76 + 1), " to int32");
        }

        goto LABEL_101;
      }

      *v15 = v25;
      if (v18 <= v19[2])
      {
        v16 = v19[2];
      }

      else
      {
        v16 = v18;
      }

      ++v13;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v134, v25);
      goto LABEL_21;
    }

    if ((v113 & 1) == 0)
    {
      goto LABEL_97;
    }

    if (v21 != 1)
    {
      goto LABEL_70;
    }

    v111 = a2;
    v27 = 0;
    v28 = v19[1];
    v29 = v19[2];
    while ((v29 & ~(v29 >> 63)) != v27)
    {
      v30 = v11[v27];
      v31 = v28[v27++];
      if (v30 != v31)
      {
        v60 = *(*a3 + 8 * v14);
        v133 = 257;
        emitDiag(v60, 2, &v130, &v137);
        if (v137)
        {
          mlir::Diagnostic::operator<<<19ul>(&v137 + 8, "index at position ");
        }

        v61 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v137, &v128);
        v62 = v61;
        if (*v61)
        {
          mlir::Diagnostic::operator<<<47ul>((v61 + 1), " is a BOOLean index tensor. The shape of mask ");
        }

        mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long> &>(v62, v28, v29);
        if (*v62)
        {
          mlir::Diagnostic::operator<<<46ul>((v62 + 1), " does not match the shape of the base tensor ");
        }

        mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long> &>(v62, v109, v115);
        goto LABEL_101;
      }
    }

    v108 = a6;
    v130 = 0x8000000000000000;
    v131 = v29;
    v136 = 0;
    *&v137 = &v130;
    *(&v137 + 1) = 2;
    v129 = v122;
    v117 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v122 + 32), &v137, &v129, &v136);
    v32 = v8[4];
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NonZeroOp>(v8, *(**v32 + 32));
    *&v137 = v32;
    *(&v137 + 1) = v33;
    v138 = v140;
    v139 = 0x400000000;
    v141 = v143;
    v142 = 0x400000000;
    v144 = v146;
    v145 = 0x400000000;
    v147 = 4;
    v148 = &v150;
    v149 = 0x100000000;
    v151 = &v153;
    v152 = 0x100000000;
    v154 = 0;
    v155 = 0;
    v156 = &mlir::detail::TypeIDResolver<void,void>::id;
    v157 = 0;
    v158 = 0;
    mlir::ODIE::Compiler::CoreML::NonZeroOp::build(v8, &v137, v117, *v15);
    v34 = mlir::Operation::create(&v137);
    mlir::OpBuilder::insert(v8, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v137);
    if (v19[2] >= 1)
    {
      v107 = v13;
      v36 = 0;
      if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id)
      {
        v37 = v34;
      }

      else
      {
        v37 = 0;
      }

      v118 = (v37 - 16);
      do
      {
        LODWORD(v137) = v36;
        v38 = mlir::ODIE::Compiler::createTensorConstant<int>(v8, &v137, 1);
        v136 = 0x8000000000000000;
        *&v137 = &v136;
        *(&v137 + 1) = 1;
        v129 = 0;
        v130 = v122;
        v39 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v122 + 32), &v137, &v130, &v129);
        v40 = v8[4];
        v41 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(v8, *(**v40 + 32));
        *&v137 = v40;
        *(&v137 + 1) = v41;
        v138 = v140;
        v139 = 0x400000000;
        v141 = v143;
        v142 = 0x400000000;
        v144 = v146;
        v145 = 0x400000000;
        v147 = 4;
        v148 = &v150;
        v149 = 0x100000000;
        v151 = &v153;
        v152 = 0x100000000;
        v154 = 0;
        v155 = 0;
        v156 = &mlir::detail::TypeIDResolver<void,void>::id;
        v157 = 0;
        v158 = 0;
        mlir::ODIE::Compiler::CoreML::SelectOp::build(v8, &v137, v39, v118, Tensor, v38);
        v42 = mlir::Operation::create(&v137);
        mlir::OpBuilder::insert(v8, v42);
        v43 = *(*(v42 + 6) + 16);
        v44 = v42 - 16;
        mlir::OperationState::~OperationState(&v137);
        if (v18 <= 1)
        {
          v18 = 1;
        }

        if (v43 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
        {
          v45 = v44;
        }

        else
        {
          v45 = -16;
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v134, v45);
        ++v36;
      }

      while (v36 < v19[2]);
      v13 = v107 + v36;
    }

    a6 = v108;
    a2 = v111;
    v16 = v18;
LABEL_21:
    ++v14;
    ++v15;
    ++v11;
    if (v15 == v124)
    {
      goto LABEL_46;
    }
  }

  v65 = v8[4];
  v133 = 257;
  emitDiag(v65, 2, &v130, &v137);
  if (v137)
  {
    mlir::Diagnostic::operator<<<74ul>(&v137 + 8, "Provide loc info for each index arg, or fill with operation loc otherwise");
  }

LABEL_101:
  *a6 = 0;
  *(a6 + 72) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v137);
LABEL_102:
  if (v134[0] != v135)
  {
    free(v134[0]);
  }
}

char *mlir::ODIE::Compiler::createTensorConstant<int>(mlir::OpBuilder *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v15[0] = a3;
    v7 = v15;
    v6 = 1;
  }

  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v14 = v7;
  *(&v14 + 1) = v6;
  v12 = 0;
  v13 = v8;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v14, &v13, &v12);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v14) - 16;
}

uint64_t mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long> &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = *a2;
    LODWORD(v18) = 2;
    v19 = v7;
    v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v18, 1);
    v9 = *(a1 + 24) + 24 * *(a1 + 32);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 16);
    *v9 = v10;
    ++*(a1 + 32);
    if (a3 != 1)
    {
      v11 = a2 + 1;
      v12 = 8 * a3 - 8;
      do
      {
        v18 = ", ";
        v20 = 259;
        mlir::Diagnostic::operator<<(a1 + 8, &v18);
        v13 = *v11++;
        LODWORD(v18) = 2;
        v19 = v13;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v18, 1);
        v15 = *(a1 + 24) + 24 * *(a1 + 32);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(a1 + 32);
        v12 -= 8;
      }

      while (v12);
    }
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::buildGatherNdFromStackedIndices(mlir::OpBuilder *a1, uint64_t *a2, uint64_t *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  *&__src = 0;
  v46 = v48;
  v47 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v46, &__src, &__src + 8);
  if (v7)
  {
    v9 = a3;
    v10 = (*(a2[1] + 8) & 0xFFFFFFFFFFFFFFF8);
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

    v15 = (*(v13 + 24))(v13, v10);
    *&__src = &v50;
    *(&__src + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__src, v15, &v15[8 * v16]);
    llvm::SmallVectorImpl<long long>::operator=(&v46, &__src);
    if (__src != &v50)
    {
      free(__src);
    }

    (*(v13 + 24))(v13, v10);
    v14 = v17 - 1;
    a3 = v9;
  }

  else
  {
    v14 = 0;
  }

  v18 = *(v46 + v47 - 1);
  v19 = *(v8 + 8);
  v20 = *(v8 + 16) - v18 + v14;
  v43 = v45;
  v44 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v43, v20);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = v43;
    v23 = v46;
    v24 = v19 - 8 * v14 + 8 * v18;
    do
    {
      if (v21 >= v14)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      v22[v21++] = *v25;
      v24 += 8;
      ++v23;
    }

    while (v20 != v21);
  }

  if (v7)
  {
    v26 = v43;
    v27 = v44;
    v28 = (*(a3[1] + 8))();
    *&__src = v26;
    *(&__src + 1) = v27;
    v41 = 0;
    v42 = v28;
    v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &__src, &v42, &v41);
    v30 = *(a1 + 4);
    v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherNdOp>(a1, *(**v30 + 32));
    *&__src = v30;
    *(&__src + 1) = v31;
    v50 = v52;
    v51 = 0x400000000;
    v53 = v55;
    v54 = 0x400000000;
    v56 = v58;
    v57 = 0x400000000;
    v59 = 4;
    v60 = &v62;
    v61 = 0x100000000;
    v63 = &v65;
    v64 = 0x100000000;
    v66 = 0;
    v67 = 0;
    v68 = &mlir::detail::TypeIDResolver<void,void>::id;
    v69 = 0;
    v70 = 0;
    mlir::ODIE::Compiler::CoreML::GatherNdOp::build(a1, &__src, v29, v6, v7);
    v32 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v32);
    v33 = *(*(v32 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    v34 = v33 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id ? v32 : 0;
    v6 = (v34 - 16);
    if (*a3 != v29)
    {
      v35 = *(a1 + 4);
      v36 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**v35 + 32));
      *&__src = v35;
      *(&__src + 1) = v36;
      v50 = v52;
      v51 = 0x400000000;
      v53 = v55;
      v54 = 0x400000000;
      v56 = v58;
      v57 = 0x400000000;
      v59 = 4;
      v60 = &v62;
      v61 = 0x100000000;
      v63 = &v65;
      v64 = 0x100000000;
      v66 = 0;
      v67 = 0;
      v68 = &mlir::detail::TypeIDResolver<void,void>::id;
      v69 = 0;
      v70 = 0;
      mlir::ODIE::Compiler::CoreML::CastOp::build(a1, &__src, *a3, v6);
      v37 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v37);
      v38 = *(*(v37 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v38 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      v6 = (v39 - 16);
    }
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  return v6;
}

char *mlir::ODIE::Compiler::buildScatterNdFromStackedIndices(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  v7 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 16);
  v52 = *(v7 + 8);
  *&__src = 0;
  v62 = v64;
  v63 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v62, &__src, &__src + 8);
  if (v5)
  {
    v9 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = *v9;
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = (*(v12 + 24))(v12, v9);
    LODWORD(v63) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v62, v14, &v14[8 * v15]);
    (*(v12 + 24))(v12, v9);
    v13 = v16 - 1;
  }

  else
  {
    v13 = 0;
  }

  v17 = *(v62 + v63 - 1);
  v18 = v8 - v17 + v13;
  v60[0] = v61;
  v60[1] = 0x600000000;
  if (v5)
  {
    SliceOfTensorShape = mlir::ODIE::Compiler::getSliceOfTensorShape(a1, v5, 0, v13);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v60, SliceOfTensorShape);
  }

  v51 = v6;
  v20 = mlir::ODIE::Compiler::getSliceOfTensorShape(a1, v6, v17, v8);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v60, v20);
  LODWORD(__src) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1);
  v87[0] = v8 - v17 + v13;
  v21 = mlir::IntegerType::get(*a1, 32, 1);
  *&__src = v87;
  *(&__src + 1) = 1;
  v57 = v21;
  v55[0] = 0;
  *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &__src, &v57, v55);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, a1[4], &__src, &Tensor, v60);
  v57 = v59;
  v58 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v57, v18);
  if (v18 >= 1)
  {
    v23 = 0;
    v24 = v57;
    v25 = v62;
    v26 = v52 - 8 * v13 + 8 * v17;
    do
    {
      if (v23 >= v13)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v24[v23++] = *v27;
      v26 += 8;
      ++v25;
    }

    while (v18 != v23);
  }

  v28 = v57;
  v29 = v58;
  v30 = (*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v30);
  v33 = v31;
  if (v31)
  {
    v31 = (*(v32 + 8))(v32, v31);
  }

  if (v33)
  {
    v34 = v31;
  }

  else
  {
    v34 = v30;
  }

  *&__src = v28;
  *(&__src + 1) = v29;
  v55[0] = v34;
  v87[0] = 0;
  v35 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &__src, v55, v87);
  v36 = a1[4];
  v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a1, *(**v36 + 32));
  *&__src = v36;
  *(&__src + 1) = v37;
  v66 = v68;
  v67 = 0x400000000;
  v69 = v71;
  v70 = 0x400000000;
  v72 = v74;
  v73 = 0x400000000;
  v75 = 4;
  v76 = &v78;
  v77 = 0x100000000;
  v79 = &v81;
  v80 = 0x100000000;
  v83 = 0;
  v82 = 0;
  v84 = &mlir::detail::TypeIDResolver<void,void>::id;
  v85 = 0;
  v86 = 0;
  mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(a1, &__src, v35, *a3, v22 - 16);
  v38 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v38);
  v39 = *(*(v38 + 6) + 16);
  mlir::OperationState::~OperationState(&__src);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  if (v5)
  {
    v41 = a1[4];
    v42 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterNdOp,void>::id, *(**v41 + 32));
    if ((v43 & 1) == 0)
    {
      v56 = 1283;
      v55[2] = "coreml.scatter_nd";
      v55[3] = 17;
      v88 = 259;
      llvm::operator+(v55, v87, &__src);
      llvm::report_fatal_error(&__src, 1);
    }

    *&__src = v41;
    *(&__src + 1) = v42;
    v66 = v68;
    v67 = 0x400000000;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = 4;
    v76 = &v78;
    v77 = 0x100000000;
    v79 = &v81;
    v80 = 0x100000000;
    v83 = 0;
    v82 = 0;
    v84 = &mlir::detail::TypeIDResolver<void,void>::id;
    v85 = 0;
    v86 = 0;
    mlir::ODIE::Compiler::CoreML::ScatterNdOp::build(a1, &__src, v7, v51, v5, (v40 - 16));
    v44 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v44);
    v45 = *(*(v44 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    if (v45 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterNdOp,void>::id)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46 - 16;
    *&__src = v46 - 16;
    v49 = a2[2];
    v48 = a2 + 2;
    if (v49)
    {
      v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, v48) - 16;
    }
  }

  else
  {
    v47 = v40 - 16;
  }

  if (v57 != v59)
  {
    free(v57);
  }

  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  return v47;
}

char *mlir::ODIE::Compiler::makeNElementTensor(mlir::OpBuilder *a1, int a2, char *a3, int a4)
{
  v4 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 1);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
  if (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16) != 1)
  {
    if ((~v5 & 7) != 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
      if (!v15)
      {
LABEL_17:
        v16 = (a3 + 32);
        goto LABEL_33;
      }
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }

    v16 = (v15 + 24);
LABEL_33:
    v23 = *v16;
    v36 = 257;
    emitDiag(v23, 2, v35, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<16ul>(&v41, "expect 1D input");
    }

    goto LABEL_39;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v7 = v6[1], v8 = *v7, *v7 == 0x8000000000000000))
  {
    if ((~v5 & 7) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16) + 120;
      if (!v11)
      {
LABEL_10:
        v12 = (a3 + 32);
        goto LABEL_37;
      }
    }

    else
    {
      v11 = v9 + 16 * v10 + 16;
    }

    v12 = (v11 + 24);
LABEL_37:
    v24 = *v12;
    v36 = 257;
    emitDiag(v24, 2, v35, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<20ul>(&v41, "expect static input");
    }

LABEL_39:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    return 0;
  }

  if (v8 == a2)
  {
    return v4;
  }

  v17 = a2;
  if (v8 > a2 || v8 <= 0)
  {
    if ((~v5 & 7) != 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = *(v19 + 8) & 7;
    if (v20 == 6)
    {
      v21 = v19 + 24 * *(v19 + 16) + 120;
      if (!v21)
      {
LABEL_30:
        v22 = (a3 + 32);
LABEL_46:
        v30 = *v22;
        v36 = 257;
        emitDiag(v30, 2, v35, &v40);
        if (v40)
        {
          mlir::Diagnostic::operator<<<53ul>(&v41, "expect input to have at least 1 element and at most ");
          if (v40)
          {
            LODWORD(v35[0]) = 2;
            *(&v35[0] + 1) = v17;
            v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v43, v35, 1);
            v32 = v43 + 24 * v44;
            v33 = *v31;
            *(v32 + 16) = *(v31 + 16);
            *v32 = v33;
            ++v44;
            if (v40)
            {
              mlir::Diagnostic::operator<<<10ul>(&v41, " elements");
            }
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v21 = v19 + 16 * v20 + 16;
    }

    v22 = (v21 + 24);
    goto LABEL_46;
  }

  v27 = a2 - *v7;
  v40 = &v42;
  v41 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v40, v27, a4);
  v28 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v40, v41);
  LODWORD(v35[0]) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v35, 1);
  v39 = v17;
  v29 = mlir::IntegerType::get(*a1, 32, 1);
  *&v35[0] = &v39;
  *(&v35[0] + 1) = 1;
  v37 = 0;
  v38[0] = v29;
  v37 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v29 + 32), v35, v38, &v37);
  v38[0] = v4;
  v38[1] = v28;
  *&v35[0] = v38;
  *(&v35[0] + 1) = 2;
  v4 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(a1, *(a1 + 4), &v37, &Tensor, v35) - 16;
  if (v40 != &v42)
  {
    free(v40);
  }

  return v4;
}

char *mlir::ODIE::Compiler::replaceConv1dImpl(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v73 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v49 = a2;
  v50 = "expects shaped type for convolution input";
  v54[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v50, v47);
  v50 = "expects shaped type for convolution input";
  v54[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a3, &v50, v46);
  v16 = *(a1 + 4);
  TensorTypeByExpandingLastDim = mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(v47[0], v47[1]);
  LODWORD(v50) = -1;
  v17 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v50, 1);
  v44 = v17;
  v18 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &TensorTypeByExpandingLastDim, &v49, &v44);
  v43 = mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(v46[0], v46[1]);
  v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v43, &v48, &v44);
  NElementTensor = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, a4, 1);
  if ((v21 & 1) == 0)
  {
    v41 = "failed to append 1 to strides";
    v42 = 259;
LABEL_13:
    emitDiag(v16, 2, &v41, &v50);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    return 0;
  }

  v22 = NElementTensor;
  v23 = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, a5, 0);
  if ((v24 & 1) == 0)
  {
    v38 = "failed to append 0 to padding";
LABEL_12:
    v41 = v38;
    v42 = 259;
    goto LABEL_13;
  }

  v25 = v23;
  v26 = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, a6, 1);
  if ((v27 & 1) == 0)
  {
    v38 = "failed to append 1 to dilation";
    goto LABEL_12;
  }

  v40 = v26;
  v39 = mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(a9, a10);
  v28 = *(a1 + 4);
  v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::Conv2dOp>(a1, *(**v28 + 32));
  v50 = v28;
  v51 = v29;
  v52 = v54;
  v53 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v58 = v60;
  v59 = 0x400000000;
  v61 = 4;
  v62 = &v64;
  v63 = 0x100000000;
  v65 = &v67;
  v66 = 0x100000000;
  v68 = 0;
  v69 = 0;
  v70 = &mlir::detail::TypeIDResolver<void,void>::id;
  v71 = 0;
  v72 = 0;
  mlir::ODIE::Compiler::CoreML::Conv2dOp::build(a1, &v50, v39, v18 - 16, v19 - 16, v22, v25, v40, a7);
  v30 = mlir::Operation::create(&v50);
  mlir::OpBuilder::insert(a1, v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(&v50);
  if (v31 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id)
  {
    v30 = 0;
  }

  v32 = *(a1 + 4);
  v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1, *(**v32 + 32));
  v50 = v32;
  v51 = v33;
  v52 = v54;
  v53 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v58 = v60;
  v59 = 0x400000000;
  v61 = 4;
  v62 = &v64;
  v63 = 0x100000000;
  v65 = &v67;
  v66 = 0x100000000;
  v68 = 0;
  v69 = 0;
  v70 = &mlir::detail::TypeIDResolver<void,void>::id;
  v71 = 0;
  v72 = 0;
  mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(a1, &v50, a9, (v30 - 16), v17);
  v34 = mlir::Operation::create(&v50);
  mlir::OpBuilder::insert(a1, v34);
  v35 = *(*(v34 + 6) + 16);
  v36 = v34 - 16;
  mlir::OperationState::~OperationState(&v50);
  if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
  {
    return v36;
  }

  else
  {
    return -16;
  }
}

uint64_t mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v3 = (*(a2 + 24))(a2, a1);
  std::vector<long long>::vector[abi:nn200100]<long long const*,0>(&__src, v3, &v3[v4]);
  v5 = v22;
  if (v22 >= v23)
  {
    v7 = __src;
    v8 = v22 - __src;
    v9 = (v22 - __src) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v11 = v23 - __src;
    if ((v23 - __src) >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__src, v13);
    }

    *(8 * v9) = 1;
    v6 = 8 * v9 + 8;
    memcpy(0, v7, v8);
    v14 = __src;
    __src = 0;
    v22 = v6;
    v23 = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v22 = 1;
    v6 = (v5 + 8);
  }

  v22 = v6;
  v15 = __src;
  v16 = (v6 - __src) >> 3;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  if (v17)
  {
    v2 = (*(v18 + 8))(v18, v17);
  }

  *&v26 = v15;
  *(&v26 + 1) = v16;
  v24 = 0;
  v25 = v2;
  v19 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v2 + 32), &v26, &v25, &v24);
  if (__src)
  {
    v22 = __src;
    operator delete(__src);
  }

  return v19;
}

char *mlir::ODIE::Compiler::replacePostConvBiasImpl(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v28 = a3;
  v29 = a2;
  v27[0] = a4;
  v27[1] = a5;
  v9 = (*(a5 + 24))(a5, a4);
  v10 = *(a1 + 4);
  v41 = v43;
  v42 = 0xC00000000;
  v38 = v40;
  v39 = 0x600000000;
  if (v8 == 3)
  {
    v14 = *(v9 + 8);
    LODWORD(__src) = 1;
    *(&__src + 4) = v14 | 0x100000000;
    LODWORD(v42) = 0;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v41, &__src, &__src + 12);
    v15 = *(v9 + 8);
    *&__src = 1;
    *(&__src + 1) = v15;
    v36.i64[0] = 1;
    LODWORD(v39) = 0;
    v13 = &v36.i8[8];
  }

  else
  {
    if (v8 != 4)
    {
      v32[0] = "Can't reshape convolution bias, input is not 3D/4D";
      v33[8] = 259;
      emitDiag(v10, 2, v32, &__src);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v22 = 0;
      goto LABEL_19;
    }

    v11 = *(v9 + 8);
    LODWORD(__src) = 1;
    DWORD1(__src) = v11;
    *(&__src + 1) = 0x100000001;
    LODWORD(v42) = 0;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v41, &__src, &v36);
    v12 = *(v9 + 8);
    *&__src = 1;
    *(&__src + 1) = v12;
    v36 = vdupq_n_s64(1uLL);
    LODWORD(v39) = 0;
    v13 = &v37;
  }

  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v38, &__src, v13);
  v26 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v41, v42);
  v16 = v38;
  v17 = v39;
  v18 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v18);
  v21 = v19;
  if (v19)
  {
    v19 = (*(v20 + 8))(v20, v19);
  }

  if (v21)
  {
    v23 = v19;
  }

  else
  {
    v23 = v18;
  }

  *&__src = v16;
  *(&__src + 1) = v17;
  v32[0] = v23;
  v30[0] = 0;
  *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v23 + 32), &__src, v32, v30);
  *&__src = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v28, &v26) - 16;
  *(&__src + 1) = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v32);
  if (v34)
  {
    v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v27, &v29, v32[0]) - 16;
  }

  else
  {
    v24 = *(a1 + 4);
    v31 = 257;
    emitDiag(v24, 2, v30, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<47ul>(&__src + 8, "unable to broadcast reshapedBias to ConvResult");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v22 = 0;
  }

  if (v34 == 1 && v32[0] != v33)
  {
    free(v32[0]);
  }

LABEL_19:
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return v22;
}

uint64_t mlir::ODIE::Compiler::createCoreMLResizeByScaleOp(mlir::OpBuilder *a1, uint64_t *a2, uint64_t *a3, char **a4, uint64_t *a5, unsigned int a6, unsigned int a7, char a8, uint64_t a9, uint64_t a10)
{
  v128 = *MEMORY[0x277D85DE8];
  v18 = *a3;
  v100 = 1283;
  v97 = "Input to ";
  *(&v98 + 1) = a9;
  v99 = a10;
  *&v106 = &v97;
  v107 = " must be a shaped ranked tensor";
  LOWORD(v109[0]) = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v18, &v106, &v87);
  if (v89 != 1)
  {
    return 0;
  }

  v82 = a8;
  v83 = a7;
  v84 = a6;
  v19 = v87;
  v20 = v88;
  (*(v88 + 24))(v88, v87);
  *v81 = v21;
  v85 = *(a1 + 4);
  (*(v20 + 24))(v20, v19);
  v23 = v22;
  v24 = *a4;
  v25 = *a5;
  LODWORD(v106) = 1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v106, 1);
  v27 = *a5;
  if (*a4)
  {
    if (v27)
    {
      goto LABEL_12;
    }

    v28 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, v24);
    if ((v29 & 1) == 0)
    {
      v100 = 257;
      v30 = v85;
      emitDiag(v85, 2, &v97, &v106);
      if (v106)
      {
        v31 = "Failed to cast scale_width to same type as scale_height";
LABEL_24:
        mlir::Diagnostic::operator<<<56ul>(&v106 + 8, v31);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (!v27)
  {
    LODWORD(v106) = 1;
    v24 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v106, 1);
    LODWORD(v106) = 1;
    v28 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v106, 1);
LABEL_11:
    v25 = v28;
    goto LABEL_12;
  }

  v32 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, v25);
  if ((v33 & 1) == 0)
  {
    v100 = 257;
    v30 = v85;
    emitDiag(v85, 2, &v97, &v106);
    if (v106)
    {
      v31 = "Failed to cast scale_height to same type as scale_width";
      goto LABEL_24;
    }

LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
LABEL_79:
    v100 = 257;
    emitDiag(v30, 2, &v97, &v106);
    if (v106)
    {
      mlir::Diagnostic::operator<<<60ul>(&v106 + 8, "Failed to create scales argument for coreml.resize_by_scale");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
    return 0;
  }

  v24 = v32;
LABEL_12:
  v34 = *a4;
  *&v106 = "input height scale factor must be a ranked tensor";
  LOWORD(v109[0]) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v34, &v106, &v102);
  if (v104 != 1)
  {
LABEL_78:
    v30 = v85;
    goto LABEL_79;
  }

  if (*((*(v20 + 24))(v20, v19) + 8 * (v23 - 1)) != 0x8000000000000000 && *((*(v20 + 24))(v20, v19) + 8 * (v23 - 2)) != 0x8000000000000000)
  {
    v106 = 0uLL;
    v97 = &v106;
    v35 = (~*(v24 + 2) & 7) != 0 ? v24 : 0;
    if (v35)
    {
      v36 = *(v35 + 1) & 7;
      if (v36 == 6)
      {
        v37 = &v35[24 * *(v35 + 2)];
        v38 = (v37 + 120);
        if (v37 == -120)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v38 = &v35[16 * v36 + 16];
      }

      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v97, v38))
      {
        v106 = 0uLL;
        v97 = &v106;
        v39 = (~*(v25 + 8) & 7) != 0 ? v25 : 0;
        if (v39)
        {
          v40 = *(v39 + 8) & 7;
          if (v40 == 6)
          {
            v41 = v39 + 24 * *(v39 + 16);
            v42 = v41 + 120;
            if (v41 == -120)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v42 = v39 + 16 * v40 + 16;
          }

          if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v97, v42))
          {
            goto LABEL_41;
          }

          if (*(*(*(v103 + 8))(v103, v102) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            mlir::ODIE::Compiler::extract1DIntVector<int>(v24, &v97);
            mlir::ODIE::Compiler::extract1DIntVector<int>(v25, &v92);
            if (v101)
            {
              if (v96)
              {
                ScalesVectorForResize = mlir::ODIE::Compiler::createScalesVectorForResizeOp<int>(a1, &v97, &v92, v23);
LABEL_62:
                v57 = ScalesVectorForResize;
                if (v96 == 1 && v92 != v94)
                {
                  free(v92);
                }

                if (v101 == 1 && v97 != &v98 + 8)
                {
                  free(v97);
                }

                goto LABEL_52;
              }

              goto LABEL_70;
            }
          }

          else
          {
            mlir::ODIE::Compiler::extract1DFloatVector<float>(v24, &v97);
            mlir::ODIE::Compiler::extract1DFloatVector<float>(v25, &v92);
            if (v101)
            {
              if (v96)
              {
                ScalesVectorForResize = mlir::ODIE::Compiler::createScalesVectorForResizeOp<float>(a1, &v97, &v92, v23);
                goto LABEL_62;
              }

LABEL_70:
              v79 = *(a1 + 4);
              v91 = 257;
              emitDiag(v79, 2, v90, &v106);
              if (v106)
              {
                mlir::Diagnostic::operator<<<44ul>(&v106 + 8, "Failed to extract scale_width as a constant");
              }

LABEL_72:
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
              if (v96 == 1 && v92 != v94)
              {
                free(v92);
              }

              if (v101 == 1 && v97 != &v98 + 8)
              {
                free(v97);
              }

              goto LABEL_78;
            }
          }

          v78 = *(a1 + 4);
          v91 = 257;
          emitDiag(v78, 2, v90, &v106);
          if (v106)
          {
            mlir::Diagnostic::operator<<<45ul>(&v106 + 8, "Failed to extract scale_height as a constant");
          }

          goto LABEL_72;
        }
      }
    }
  }

LABEL_41:
  v44 = (*(v103 + 8))(v103, v102);
  LODWORD(v106) = 0;
  v45 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v106, 1);
  v97 = &v98 + 8;
  *&v98 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v97, ((v23 << 32) - 0x200000000) >> 32, 1);
  v46 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v97, v98);
  v47 = mlir::ODIE::Compiler::castValueToElementType(a1, v46, v44);
  v49 = v48;
  if (v48)
  {
    v50 = v47;
    v105 = v23;
    *&v106 = &v105;
    *(&v106 + 1) = 1;
    v92 = v44;
    v90[0] = 0;
    v51 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v44 + 32), &v106, &v92, v90);
    v92 = v50;
    v93 = v24;
    v94[0] = v25;
    v52 = *(a1 + 4);
    v53 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**v52 + 32));
    *&v106 = v52;
    *(&v106 + 1) = v53;
    v107 = v109;
    v108 = 0x400000000;
    v110 = v112;
    v111 = 0x400000000;
    v113 = v115;
    v114 = 0x400000000;
    v116 = 4;
    v117 = &v119;
    v118 = 0x100000000;
    v120 = &v122;
    v121 = 0x100000000;
    v124 = 0;
    v123 = 0;
    v125 = &mlir::detail::TypeIDResolver<void,void>::id;
    v126 = 0;
    v127 = 0;
    mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, &v106, v51, v45, &v92, 3);
    v54 = mlir::Operation::create(&v106);
    mlir::OpBuilder::insert(a1, v54);
    v55 = *(*(v54 + 6) + 16);
    v56 = v54 - 16;
    mlir::OperationState::~OperationState(&v106);
    if (v55 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
    {
      v57 = v56;
    }

    else
    {
      v57 = -16;
    }
  }

  else
  {
    v58 = *(a1 + 4);
    v95 = 257;
    emitDiag(v58, 2, &v92, &v106);
    if (v106)
    {
      mlir::Diagnostic::operator<<<32ul>(&v106 + 8, "Failed to cast int constant to ");
      if (v106)
      {
        LODWORD(v92) = 4;
        v93 = v44;
        v59 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v108, &v92, 1);
        v60 = v108 + 24 * v109[0];
        v61 = *v59;
        *(v60 + 16) = *(v59 + 16);
        *v60 = v61;
        ++v109[0];
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
    v57 = 0;
  }

  v30 = v85;
  if (v97 != &v98 + 8)
  {
    free(v97);
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_52:
  v86 = v57;
  v97 = &v99;
  v98 = xmmword_25D0A0550;
  llvm::SmallVectorImpl<BOOL>::assign(&v97, *v81, 0);
  v63 = v97;
  v62 = v98;
  *(v97 + v98 - 2) = 257;
  v102 = v62;
  v64 = mlir::IntegerType::get(*a1, 1, 0);
  *&v106 = &v102;
  *(&v106 + 1) = 1;
  v92 = v64;
  v90[0] = 0;
  v92 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v64 + 32), &v106, &v92, v90);
  v65 = mlir::TensorType::operator mlir::ShapedType(&v92);
  *&v106 = mlir::DenseElementsAttr::get(v65, v66, v63, v62);
  v67 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v106);
  LOBYTE(v106) = v82;
  v68 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v106, 1);
  v69 = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::get(*a1, v83);
  v70 = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::get(*a1, v84);
  v71 = *(a1 + 4);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ResizeByScaleOp,void>::id, *(**v71 + 32));
  if ((v73 & 1) == 0)
  {
    v95 = 1283;
    v94[0] = "coreml.resize_by_scale";
    v94[1] = 22;
    v91 = 259;
    llvm::operator+(&v92, v90, &v106);
    llvm::report_fatal_error(&v106, 1);
  }

  *&v106 = v71;
  *(&v106 + 1) = v72;
  v107 = v109;
  v108 = 0x400000000;
  v110 = v112;
  v111 = 0x400000000;
  v113 = v115;
  v114 = 0x400000000;
  v116 = 4;
  v117 = &v119;
  v118 = 0x100000000;
  v120 = &v122;
  v121 = 0x100000000;
  v124 = 0;
  v123 = 0;
  v125 = &mlir::detail::TypeIDResolver<void,void>::id;
  v126 = 0;
  v127 = 0;
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::build(a1, &v106, *a2, *a3, v86, v67 - 16, v68, v69, v70);
  v74 = mlir::Operation::create(&v106);
  mlir::OpBuilder::insert(a1, v74);
  v75 = *(*(v74 + 6) + 16);
  v76 = v74 - 16;
  mlir::OperationState::~OperationState(&v106);
  if (v75 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ResizeByScaleOp,void>::id)
  {
    v77 = v76;
  }

  else
  {
    v77 = -16;
  }

  if (v97 != &v99)
  {
    free(v97);
  }

  return v77;
}

mlir::Operation *mlir::ODIE::Compiler::calculateScaleFromOutputSize(mlir::OpBuilder *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v59[8] = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v51 = 0uLL;
  *&v48[0] = &v51;
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v11 = *(v6 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v6 + 24 * *(v6 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
LABEL_15:
      v31 = *(a1 + 4);
      v49 = 257;
      emitDiag(v31, 2, v48, &v51);
      if (v51)
      {
        mlir::Diagnostic::operator<<<42ul>(&v51 + 8, "Target output size must be a constant int");
      }

      goto LABEL_17;
    }
  }

  else
  {
    v13 = v6 + 16 * v11 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v48, v13))
  {
    goto LABEL_15;
  }

  if (*((*(*(a3 + 8) + 24))() + 8 * a5) == 0x8000000000000000)
  {
    v14 = mlir::IntegerType::get(*a1, 32, 1);
    LODWORD(v51) = a5;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v51, 1);
    LODWORD(v51) = 0;
    v16 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v51, 1);
    v17 = *(a1 + 4);
    v51 = 0uLL;
    *&v48[0] = v14;
    v46 = 0;
    v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v14 + 32), &v51, v48, &v46);
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**v17 + 32));
    *&v51 = v17;
    *(&v51 + 1) = v19;
    v52[0] = &v53;
    v52[1] = 0x400000000;
    v54 = v56;
    v55 = 0x400000000;
    v56[4] = v57;
    v56[5] = 0x400000000;
    v57[8] = 4;
    v57[9] = v58;
    v57[10] = 0x100000000;
    v58[1] = v59;
    v58[2] = 0x100000000;
    v59[1] = 0;
    v59[2] = 0;
    v59[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v59[4] = 0;
    v59[6] = 0;
    mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, &v51, v18, *a2, v16, Tensor);
    v20 = mlir::Operation::create(&v51);
    mlir::OpBuilder::insert(a1, v20);
    v21 = *(*(v20 + 6) + 16);
    v22 = (v20 - 16);
    mlir::OperationState::~OperationState(&v51);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
    {
      v22 = -16;
    }

    F32Type = mlir::Builder::getF32Type(a1);
    v46 = mlir::ODIE::Compiler::castValueToElementType(a1, v22, F32Type);
    v47 = v24;
    if (v24)
    {
      v25 = *a4;
      v26 = mlir::Builder::getF32Type(a1);
      v44 = mlir::ODIE::Compiler::castValueToElementType(a1, v25, v26);
      v45 = v27;
      if (v27)
      {
        v28 = *(a1 + 4);
        v29 = mlir::Builder::getF32Type(a1);
        v51 = 0uLL;
        *&v48[0] = v29;
        v50 = 0;
        *&v51 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v29 + 32), &v51, v48, &v50);
        return (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v28, &v51, &v44, &v46) - 16);
      }

      v38 = *(a1 + 4);
      v49 = 257;
      emitDiag(v38, 2, v48, &v51);
      if (v51)
      {
        mlir::Diagnostic::operator<<<36ul>(&v51 + 8, "Failed to cast output size to float");
      }
    }

    else
    {
      v37 = *(a1 + 4);
      v49 = 257;
      emitDiag(v37, 2, v48, &v51);
      if (v51)
      {
        mlir::Diagnostic::operator<<<46ul>(&v51 + 8, "Failed to cast input shape select op to float");
      }
    }

LABEL_17:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    return 0;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(*a4, &v51);
  if (v54)
  {
    v33 = *v51;
    *&v50 = v33 / *((*(*(a3 + 8) + 24))() + 8 * a5);
    v34 = *(**a1 + 440);
    v48[0] = 0uLL;
    v46 = v34;
    v44 = 0;
    v46 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), v48, &v46, &v44);
    v35 = mlir::TensorType::operator mlir::ShapedType(&v46);
    *&v48[0] = mlir::DenseIntOrFPElementsAttr::getRaw(v35, v36, &v50, 4);
    v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), v48) - 16;
    if (v54 == 1 && v51 != v52)
    {
      free(v51);
    }

    return v30;
  }

  v39 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(v39, v40, v41, v42, v43);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

char *mlir::ODIE::Compiler::stackIndices(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  LODWORD(v13[0]) = *((*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v13, 1);
  v7 = *(a1 + 4);
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::StackOp>(a1, *(**v7 + 32));
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::StackOp::build(a1, v13, Tensor, a2 & 0xFFFFFFFFFFFFFFF9, a3);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  v10 = *(*(v9 + 6) + 16);
  v11 = v9 - 16;
  mlir::OperationState::~OperationState(v13);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id)
  {
    return v11;
  }

  else
  {
    return -16;
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::ODIE::Compiler::CoreML::TransposeOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::StackOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.stack";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::ODIE::Compiler::createScalesVectorForResizeOp<int>(mlir::OpBuilder *a1, _DWORD **a2, _DWORD **a3, int a4)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v10, a4, 1);
  v7 = v10;
  *(v10 + v11 - 2) = **a2;
  *(v7 + v11 - 1) = **a3;
  v8 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v7, v11);
  if (v10 != v12)
  {
    free(v10);
  }

  return v8;
}

char *mlir::ODIE::Compiler::createScalesVectorForResizeOp<float>(mlir::OpBuilder *a1, _DWORD **a2, _DWORD **a3, int a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  __b = v22;
  v21 = 12;
  if (a4 < 0xD)
  {
    if (a4)
    {
      memset_pattern16(v22, &unk_25D0A0910, 4 * a4);
    }

    v9 = v22;
  }

  else
  {
    v20 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v22, a4, 4);
    v9 = __b;
    memset_pattern16(__b, &unk_25D0A0910, 4 * v8);
  }

  v20 = a4;
  v10 = v9 + 4 * a4;
  *(v10 - 2) = **a2;
  *(v10 - 1) = **a3;
  v23[0] = a4;
  v11 = *(**a1 + 440);
  *&v18 = v23;
  *(&v18 + 1) = 1;
  v16 = 0;
  v17 = v11;
  v17 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v18, &v17, &v16);
  v12 = mlir::TensorType::operator mlir::ShapedType(&v17);
  *&v18 = mlir::DenseIntOrFPElementsAttr::getRaw(v12, v13, v9, 4 * a4);
  v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v18);
  if (__b != v22)
  {
    free(__b);
  }

  return v14 - 16;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.reduce_mean";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SqrtOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.sqrt";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NonZeroOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.non_zero";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RangeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.range";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v14, *a3, *a4, *a5 & 0xFFFFFFFFFFFFFFF9, a5[1]);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherNdOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.gather_nd";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v14, *a3, *a4, *a5 & 0xFFFFFFFFFFFFFFF9, *(a5 + 8));
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.expand_dims";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::Conv2dOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.conv2d";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.shrink_dims";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.conv_transpose2d";
    v6[3] = 23;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::ODIE::Compiler::ConvertCoreToSCFPass::~ConvertCoreToSCFPass(mlir::ODIE::Compiler::ConvertCoreToSCFPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::impl::ConvertCoreToSCFBase<mlir::ODIE::Compiler::ConvertCoreToSCFPass>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(a2);
}

void mlir::ODIE::Compiler::ConvertCoreToSCFPass::runOnOperation(mlir::ODIE::Compiler::ConvertCoreToSCFPass *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  __src = 0u;
  v4 = 0u;
  v2 = v1;
  v5 = v7;
  v6 = 0x600000000;
  v7[6] = 0;
  v7[7] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 40;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 40;
  operator new();
}

void mlir::ODIE::Compiler::ConvertIfOpPattern::~ConvertIfOpPattern(mlir::ODIE::Compiler::ConvertIfOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::ConvertIfOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v9 = *(v6 + 24);
  v7 = v6 + 24;
  v8 = v9;
  if (v9)
  {
    v10 = v8 == v7;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(a3 + 40) & 6;
  v27 = v11;
  if (v13 || !v12)
  {
    if (v13 == 2 && v12 != 0)
    {
      v12 = v12[3];
    }
  }

  else
  {
    v12 = *v12;
  }

  v15 = *(a2 + 24);
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a4 + 8, *(**v15 + 32));
  v30 = v15;
  v31 = v16;
  v32 = v34;
  v33 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v41 = 4;
  v42 = &v44;
  v43 = 0x100000000;
  v45 = &v47;
  v46 = 0x100000000;
  v48 = 0;
  v49 = 0;
  v50 = &mlir::detail::TypeIDResolver<void,void>::id;
  v51 = 0;
  v52 = 0;
  mlir::tensor::ExtractOp::build(a4 + 8, &v30, v12, 0, 0);
  v17 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert((a4 + 8), v17);
  v18 = *(*(v17 + 6) + 16);
  mlir::OperationState::~OperationState(&v30);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a2 + 24);
  v21 = *(a2 + 36);
  if (v21)
  {
    v22 = a2 - 16;
  }

  else
  {
    v22 = 0;
  }

  v26 = *(v19 + 9);
  v25 = (v19 - 16);
  v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a4 + 8, *(**v20 + 32));
  v30 = v20;
  v31 = v23;
  v32 = v34;
  v33 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v41 = 4;
  v42 = &v44;
  v43 = 0x100000000;
  v45 = &v47;
  v46 = 0x100000000;
  v48 = 0;
  v49 = 0;
  v50 = &mlir::detail::TypeIDResolver<void,void>::id;
  v51 = 0;
  v52 = 0;
  v28[0] = v22;
  v28[1] = 0;
  v28[2] = v22;
  v28[3] = v21;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v29, v28);
  if (v26)
  {
    v24 = v25;
  }

  else
  {
    v24 = 0;
  }

  mlir::scf::IfOp::build(a4 + 8, &v30, v29[0], v29[1], v24, v27);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertIfOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertIfOpPattern]";
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

void mlir::ODIE::Compiler::ConvertWhileOpPattern::~ConvertWhileOpPattern(mlir::ODIE::Compiler::ConvertWhileOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::ConvertWhileOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a4 + 8, *(**v5 + 32));
  v13[0] = v5;
  v13[1] = v10;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  v11[0] = v7;
  v11[1] = 0;
  v11[2] = v7;
  v11[3] = v6;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v12, v11);
  mlir::scf::WhileOp::build(a4 + 8, v13, v12[0], v12[1], v8, v9, 0, 0);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertWhileOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertWhileOpPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::ConvertConditionOpPattern::~ConvertConditionOpPattern(mlir::ODIE::Compiler::ConvertConditionOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::ConvertConditionOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v8 = *(a3 + 40);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 6) != 0 || v9 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v9 != 0)
    {
      v9 = v9[3];
    }
  }

  else
  {
    v9 = *v9;
  }

  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a4 + 8, *(**v7 + 32));
  v28 = v7;
  v29 = v12;
  v30 = v32;
  v31 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v39 = 4;
  v40 = &v42;
  v41 = 0x100000000;
  v43 = &v45;
  v44 = 0x100000000;
  v46 = 0;
  v47 = 0;
  v48 = &mlir::detail::TypeIDResolver<void,void>::id;
  v49 = 0;
  v50 = 0;
  mlir::tensor::ExtractOp::build(a4 + 8, &v28, v9, 0, 0);
  v13 = mlir::Operation::create(&v28);
  mlir::OpBuilder::insert((a4 + 8), v13);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(&v28);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v15 + 9);
  v17 = v15 - 16;
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a3 + 48);
  v28 = *(a3 + 40);
  v29 = 1;
  v20 = mlir::ValueRange::offset_base(&v28, 1);
  v21 = *(a2 + 24);
  v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(a4 + 8, *(**v21 + 32));
  v28 = v21;
  v29 = v22;
  v30 = v32;
  v31 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v39 = 4;
  v40 = &v42;
  v41 = 0x100000000;
  v43 = &v45;
  v44 = 0x100000000;
  v46 = 0;
  v47 = 0;
  v48 = &mlir::detail::TypeIDResolver<void,void>::id;
  v49 = 0;
  v50 = 0;
  v27 = v18;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, &v27, 0, &v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, v20, 0, v20, v19 - 1);
  v23 = mlir::Operation::create(&v28);
  mlir::OpBuilder::insert((a4 + 8), v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&v28);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  (*(*a4 + 8))(a4, a2, v25);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertConditionOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertConditionOpPattern]";
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

void mlir::ODIE::Compiler::ConvertYieldOpPattern::~ConvertYieldOpPattern(mlir::ODIE::Compiler::ConvertYieldOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::ConvertYieldOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>(a4 + 8, *(**v8 + 32));
  v14[0] = v8;
  v14[1] = v9;
  v15[0] = v16;
  v15[1] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v15, v6, 0, v6, v7);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert((a4 + 8), v10);
  v11 = *(*(v10 + 6) + 16);
  mlir::OperationState::~OperationState(v14);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  (*(*a4 + 8))(a4, a2, v12);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertYieldOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertYieldOpPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::CoreToSCFConversionTarget::~CoreToSCFConversionTarget(mlir::ODIE::Compiler::CoreToSCFConversionTarget *this)
{
  mlir::ConversionTarget::~ConversionTarget(this);

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler6CoreML7YieldOpEZNS6_25CoreToSCFConversionTargetC1ERNS2_11MLIRContextEEUlS8_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSE_EUlSG_E_NS_9allocatorISK_EEFNS_8optionalIbEESG_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA1380;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler6CoreML7YieldOpEZNS6_25CoreToSCFConversionTargetC1ERNS2_11MLIRContextEEUlS8_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSE_EUlSG_E_NS_9allocatorISK_EEFNS_8optionalIbEESG_EEclEOSG_(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*((*(*(*a2 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    return 256;
  }

  else
  {
    return 257;
  }
}

uint64_t mlir::ODIE::Compiler::ConvertExecToODIX::runOnOperation(mlir::ODIE::Compiler::ConvertExecToODIX *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(***(v3 + 3) + 32);
  result = mlir::ODIE::Compiler::getOpAttrs(v3, a2);
  if (v6)
  {
    mlir::Operation::setAttrs(v3, result);
    mlir::SymbolTable::SymbolTable(v8, v3, v7);
    v8[5] = 0;
    v8[6] = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0x1000000000;
    __src = 0u;
    v16 = 0u;
    v14 = v4;
    v17 = v19;
    v18 = 0x600000000;
    v19[7] = 0;
    v19[6] = 0;
    v20 = 0;
    v22 = 0;
    v21 = 0;
    v23 = 0x2800000000;
    v24 = 0;
    v25 = 0;
    v26 = 0x2800000000;
    operator new();
  }

  *(this + 5) |= 4uLL;
  return result;
}

uint64_t mlir::ODIE::Compiler::getOpAttrs(mlir::ODIE::Compiler *this, mlir::Operation *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v5 = *(AttrDictionary + 8);
  v4 = *(AttrDictionary + 16);
  v48 = v50;
  v49 = 0x400000000;
  v51 = 0;
  dictionaryAttrSort<false>(v5, v4, &v48);
  v51 = 4;
  v40 = this;
  v6 = *(this + 6);
  v7 = *(v6 + 104);
  if (v7)
  {
    v8 = *(v6 + 96);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      mlir::NamedAttrList::erase(&v48, v10);
      v9 -= 8;
    }

    while (v9);
  }

  v11 = v48;
  if (v49)
  {
    v12 = &v48[2 * v49];
    do
    {
      v13 = v11[1];
      v14 = *(*v11 + 16);
      v15 = *(*v11 + 24);
      v16 = *v13;
      v17 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
      if (mlir::detail::InterfaceMap::lookup(v16 + 8, v17))
      {
        v18 = *v13;
        v19 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
        if (v13)
        {
          v21 = (*v20)(v20, v13);
          mlir::NamedAttrList::set(&v48, v14, v15, v21);
        }
      }

      v22 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(&v48, v14, v15);
      if (v23)
      {
        v24 = *(v22 + 8);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(*v24 + 136);
      if (v25 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id)
      {
        v41 = "attribute not supported for ODIX serialization: ";
        v42 = 259;
        mlir::Operation::emitWarning(v45, v40, &v41);
        if (v45[0])
        {
          v43 = 0;
          v44 = v24;
          v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v46, &v43, 1);
          v35 = v46 + 24 * v47;
          v36 = *v34;
          *(v35 + 16) = *(v34 + 16);
          *v35 = v36;
          ++v47;
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(v45);
        mlir::NamedAttrList::erase(&v48, v14, v15);
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = v48;
    v37 = v49;
  }

  else
  {
    v37 = 0;
  }

  v38 = mlir::DictionaryAttr::get(*(***(v40 + 3) + 32), v11, v37);
  if (v48 != v50)
  {
    free(v48);
  }

  return v38;
}

void mlir::ODIE::Compiler::ConvertExecToODIX::~ConvertExecToODIX(mlir::ODIE::Compiler::ConvertExecToODIX *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::ConvertExecToODIX::getDependentDialects(mlir::ODIE::Compiler::ConvertExecToODIX *this, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::ODIX::ODIXDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::Exec::ExecDialect>(a2);
  mlir::DialectRegistry::insert<mlir::cf::ControlFlowDialect>(a2);
  mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(a2, v3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[269];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>();
    unk_27FC1B880 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr]";
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

void mlir::ODIE::Compiler::ODIXRegisterTypeConverter::~ODIXRegisterTypeConverter(mlir::ODIE::Compiler::ODIXRegisterTypeConverter *this)
{
  mlir::TypeConverter::~TypeConverter(this);

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler25ODIXRegisterTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA14A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler25ODIXRegisterTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_EclEOS5_SL_(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**(**v3 + 32) + 384);
    v9 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v9);
    if (v6)
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v6);
    }

    LODWORD(v3) = v6 != 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v3 | (v7 << 8);
}

void mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::~ReplaceWithOperandsPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[13] = v9;
  v11[14] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[13] = a3;
  v11[14] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[13] = v9;
  v11[14] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[13] = a3;
  v11[14] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 104), *(a3 + 112), &v16);
  v8 = *(a3 + 96);
  v9 = *(a3 + 80);
  v12[4] = *(a3 + 64);
  v12[5] = v9;
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v11 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v11;
  v13 = v8;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  (*(*a1 + 88))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 104), *(a3 + 112), &v18);
  v8 = *(a3 + 80);
  v14[4] = *(a3 + 64);
  v14[5] = v8;
  v9 = *(a3 + 96);
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v11 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v11;
  v15 = v9;
  v16 = v18 & 0xFFFFFFFFFFFFFFF9;
  v17 = v19;
  v12 = (*(*a1 + 104))(a1, a2, v14, a4);
  if (v18 != v20)
  {
    free(v18);
  }

  return v12;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::FuncOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::FuncOp>]";
  v6 = 148;
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

void mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::~ReplaceWithOperandsPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ClassOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ClassOp>]";
  v6 = 149;
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

void mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::~ReplaceWithOperandsPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>]";
  v6 = 150;
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

void mlir::ODIE::Compiler::IsolatedGroupToChainPattern::~IsolatedGroupToChainPattern(mlir::ODIE::Compiler::IsolatedGroupToChainPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

void mlir::ODIE::Compiler::IsolatedGroupToChainPattern::matchAndRewrite(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31[14] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v24, *(a1 + 104), a2, *(a3 + 48), *(a3 + 56), a4);
  v6 = a2;
  while (1)
  {
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v8)
    {
      break;
    }

    v6 = *(v8 + 16);
    if (!v6 || *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(&v19, v6);
  v21 = &v23;
  v22 = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v21, "__c", "");
  v9 = 0;
  v10 = v22;
  while (1)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v21, v10);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v21, 95);
    std::to_string(&v25, v9);
    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v25;
    }

    else
    {
      v12 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(&v21, v12, v12 + size);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v14 = llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::find(&v19, v21, v22, v13);
    if (v19 + 8 * v20 != v14)
    {
      ++v9;
      if (*(*v14 + 8))
      {
        continue;
      }
    }

    v15 = a2;
    do
    {
      v15 = *((*(v15[2] + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    while (*(v15[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id);
    v16 = v15[2];
    if ((v16 + 32) != v15)
    {
      do
      {
        if (*(v15[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          break;
        }

        v15 = v15[1];
      }

      while (v15 != (v16 + 32));
    }

    *(a4 + 24) = v16;
    *(a4 + 32) = v15;
    v17 = a2[3];
    v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::RegionOp>(*(**v17 + 32));
    v25.__r_.__value_.__r.__words[0] = v17;
    v25.__r_.__value_.__l.__size_ = v18;
    v25.__r_.__value_.__r.__words[2] = v27;
    v26 = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[8] = 4;
    v29[9] = v30;
    v29[10] = 0x100000000;
    v30[1] = v31;
    v30[2] = 0x100000000;
    v31[1] = 0;
    v31[2] = 0;
    v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v31[4] = 0;
    v31[6] = 0;
    mlir::ODIE::Compiler::ODIX::RegionOp::build((a4 + 8), &v25, v21, v22);
  }
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

void mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v31[2] = *MEMORY[0x277D85DE8];
  v31[0] = a4;
  v31[1] = a5;
  v28 = v30;
  v29 = 0x600000000;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(a3) || (!a3 ? (InterfaceFor = 0) : (InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(a3)), !a3))
  {
    v12 = *(a3 + 36);
    v13 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(a6 + 8), 2uLL);
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v28, v12, v13);
    goto LABEL_15;
  }

  v14 = (*InterfaceFor)(InterfaceFor, a3);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  LODWORD(v29) = 0;
  if (v15 > HIDWORD(v29))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v15, 8);
    v17 = v29;
    goto LABEL_11;
  }

  if (v15)
  {
    v17 = 0;
LABEL_11:
    v18 = &v16[v15];
    v19 = v28 + 8 * v17;
    do
    {
      v20 = *v16++;
      *v19++ = v20;
    }

    while (v16 != v18);
    v21 = v29;
    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:
  LODWORD(v29) = v21 + v15;
LABEL_15:
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v22 = (a6 + 24);
  v27 = *(a6 + 24);
  mlir::ODIE::Compiler::ODIXBuilderContext::setOpInsertionPoint<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::ODIE::Compiler::ODIX::FunctionOp>(a2, a6);
  if (v29)
  {
    v23 = v28;
    v24 = (v7 - *(a3 + 36));
    v25 = 8 * v29;
    do
    {
      if (*(*v23 + 8) == 2)
      {
        v26 = mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::ValueOp>((a6 + 8), *(a3 + 24)) - 16;
      }

      else
      {
        v26 = mlir::ValueRange::dereference_iterator(v31, v24);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, v26);
      v23 += 8;
      ++v24;
      v25 -= 8;
    }

    while (v25);
  }

  if (v27)
  {
    *v22 = v27;
  }

  else
  {
    *v22 = 0;
    *(a6 + 32) = 0;
  }

  if (v28 != v30)
  {
    free(v28);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::ValueOp>(mlir::ODIE::Compiler::ODIX::ValueOp *a1, uint64_t a2)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v4 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::ValueOp>(*(**a2 + 32));
  v8[0] = a2;
  v8[1] = v4;
  v8[2] = v9;
  v8[3] = 0x400000000;
  v9[4] = v10;
  v9[5] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[8] = 4;
  v11[9] = v12;
  v11[10] = 0x100000000;
  v12[1] = v13;
  v12[2] = 0x100000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v13[4] = 0;
  v13[6] = 0;
  mlir::ODIE::Compiler::ODIX::ValueOp::build(a1, v8, v5);
  v6 = mlir::Operation::create(v8);
  mlir::OpBuilder::insert(a1, v6);
  if (*(*(v6 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id)
  {
    v6 = 0;
  }

  mlir::OperationState::~OperationState(v8);
  return v6;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t *mlir::ODIE::Compiler::ODIXBuilderContext::setOpInsertionPoint<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::ODIE::Compiler::ODIX::FunctionOp>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  while (1)
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v5)
    {
      break;
    }

    v3 = *(v5 + 16);
    if (!v3 || *(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v3 = 0;
LABEL_8:
  v13 = v3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[]((a1 + 8), &v13);
  v7 = *result;
  if (!*result)
  {
    v8 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
    v9 = v8 - 8;
    if (!v8)
    {
      v9 = 0;
    }

    v7 = v9 + 32;
    v10 = *(v9 + 40);
    if (v10 != v7)
    {
      while (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id)
      {
        v10 = *(v10 + 8);
        if (v10 == v7)
        {
          goto LABEL_16;
        }
      }

      v7 = v10;
    }

LABEL_16:
    *result = v7;
  }

  v11 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 24) = v12;
  *(a2 + 32) = v7;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::ValueOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.value";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::RegionOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.region";
    v5[3] = 11;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::ODIXBuilderContext::populateYieldDestinationsInRegion(mlir::ODIE::Compiler::ODIX::RegionOp,mlir::ValueRange)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, unint64_t a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v2 = *(*(a2 + 48) + 16);
  if (!a2 || v2 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id)
  {
    goto LABEL_12;
  }

  v5 = *a1;
  v4 = a1[1];
  v6 = *v4;
  v7 = v4[1];
  v16[0] = v17;
  v16[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v6, 0, v6, v7);
  v8 = *(v5 + 104);
  v14 = 0;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(v8, *(v5 + 120), a2, &v14);
  v10 = v14;
  if ((v9 & 1) == 0)
  {
    v15 = v14;
    v11 = *(v5 + 112);
    v12 = *(v5 + 120);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(v5 + 116) > v12 >> 3)
    {
LABEL_6:
      *(v5 + 112) = v11 + 1;
      if (*v10 != -4096)
      {
        --*(v5 + 116);
      }

      *v10 = a2;
      v10[1] = (v10 + 3);
      v10[2] = 0x600000000;
      goto LABEL_9;
    }

    llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::grow(v5 + 104, v12);
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(*(v5 + 104), *(v5 + 120), a2, &v15);
    v11 = *(v5 + 112);
    v10 = v15;
    goto LABEL_6;
  }

LABEL_9:
  llvm::SmallVectorImpl<mlir::Value>::operator=((v10 + 1), v16);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v2 = *(*(a2 + 48) + 16);
LABEL_12:
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 72 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 72 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 72 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x600000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 9;
        v16 -= 72;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 72 * v21 - 72;
    v24 = vdupq_n_s64(v23 / 0x48);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[9] = -4096;
      }

      v22 += 2;
      result += 18;
    }

    while (((v23 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

uint64_t llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::Destroy<llvm::MallocAllocator>(v5);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  JUMPOUT(0x25F891030);
}

uint64_t llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::IsolatedGroupToChainPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::IsolatedGroupToChainPattern]";
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

void mlir::ODIE::Compiler::OdixFunctionPattern::~OdixFunctionPattern(mlir::ODIE::Compiler::OdixFunctionPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::OdixFunctionPattern::matchAndRewrite(uint64_t a1, mlir::Operation *a2, int a3, mlir::StringAttr **this)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v6 = a2 + 64;
  v7 = *(a2 + 11);
  v8 = a2 + 16 * ((v7 >> 23) & 1) + 64;
  v9 = ((&v8[((v7 >> 21) & 0x7F8) + 7] & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
  if (*v9 == v9)
  {
    mlir::ConversionPatternRewriter::eraseOp(this, a2);
  }

  v11 = *(*(v8 + 1) + 8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 12);
  v26 = v28;
  v27 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), *(v11 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, v12, &v26))
  {
    v14 = *(a2 + 3);
    v15 = *&v6[16 * ((*(a2 + 11) >> 23) & 1) + 32];
    v16 = *(v15 + 24);
    v23 = *(v15 + 16);
    v17 = *(a1 + 24);
    *&v33 = v26 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v33 + 1) = v27;
    v29 = xmmword_25D0A0640;
    v18 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>((v17 & 0xFFFFFFFFFFFFFFF8), &v33, &v29);
    v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id, *(**v14 + 32));
    if (v20)
    {
      *&v33 = v14;
      *(&v33 + 1) = v19;
      v34 = &v36;
      v35 = 0x400000000;
      v37 = v39;
      v38 = 0x400000000;
      v39[4] = v40;
      v39[5] = 0x400000000;
      v40[8] = 4;
      v40[9] = v41;
      v40[10] = 0x100000000;
      v41[1] = v42;
      v41[2] = 0x100000000;
      v42[1] = 0;
      v42[2] = 0;
      v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v42[4] = 0;
      v42[6] = 0;
      mlir::ODIE::Compiler::ODIX::FunctionOp::build(this + 1, &v33, v23, v16, v18, (v12 - v13));
    }

    v32 = 1283;
    v30 = "odix.function";
    v31 = 13;
    v25 = 259;
    llvm::operator+(&v29, &v24, &v33);
    llvm::report_fatal_error(&v33, 1);
  }

  *&v33 = "Failed to convert input types";
  v36 = 259;
  *&v29 = &v33;
  v21 = this[2];
  if (v21 && *(v21 + 2) == 1)
  {
    (*(*v21 + 88))(v21, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v29);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::OdixFunctionPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::OdixFunctionPattern]";
  v6 = 103;
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

void mlir::ODIE::Compiler::GlobalConstPattern::~GlobalConstPattern(mlir::ODIE::Compiler::GlobalConstPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v15);
  v8 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v10;
  v12 = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }
}

void mlir::ODIE::Compiler::GlobalConstPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v5 = *(a1 + 104);
  v6 = *(a2 + 24);
  v7 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  ValueAttr = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v38);
  v9 = *(v38 + 2 * ((*(v38 + 11) >> 23) & 1) + 8);
  v10 = *(v5 + 216);
  if (v10)
  {
    v37 = *(a4 + 24);
    v24 = *(((v10 + 16 * ((*(v10 + 44) >> 23) & 1) + ((*(v10 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v10 + 40) + 8);
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    *(a4 + 24) = v25;
    v26 = (a4 + 24);
    *(a4 + 32) = v25 + 32;
    v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRecordOp,void>::id, *(**v6 + 32));
    if (v28)
    {
      v45 = v6;
      v46 = v27;
      v47 = v49;
      v48 = 0x400000000;
      v50 = v52;
      v51 = 0x400000000;
      v53 = v55;
      v54 = 0x400000000;
      v56 = 4;
      v57 = &v59;
      v58 = 0x100000000;
      v60 = &v62;
      v61 = 0x100000000;
      v63 = 0;
      v64 = 0;
      v65 = &mlir::detail::TypeIDResolver<void,void>::id;
      v66 = 0;
      v67 = 0;
      *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(&v45) + 8) = ValueAttr;
      *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(&v45) = v9;
      v29 = mlir::Operation::create(&v45);
      mlir::OpBuilder::insert((a4 + 8), v29);
      mlir::OperationState::~OperationState(&v45);
      v30 = *(v5 + 236);
      v31 = *(v7 + 16);
      v32 = *(v7 + 24);
      v35 = llvm::xxh3_64bits(v31, v32, v33, v34);
      *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((v5 + 224), v31, v32, v35) + 2) = v30;
      if (v37)
      {
        *v26 = v37;
      }

      else
      {
        *v26 = 0;
        *(a4 + 32) = 0;
      }

      mlir::ConversionPatternRewriter::eraseOp(a4, v38);
    }

    v44 = 1283;
    v42 = "odix.data_record";
    v36 = 16;
  }

  else
  {
    v11 = *(a4 + 32);
    while (1)
    {
      v12 = *(v11 + 16);
      if (!v12)
      {
        break;
      }

      v13 = *(v12 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v13)
      {
        break;
      }

      v11 = *(v13 + 16);
      if (!v11 || *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
LABEL_10:
    v45 = v11;
    v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[]((v5 + 32), &v45);
    v15 = *v14;
    if (!*v14)
    {
      v16 = *(((v11 + 16 * ((*(v11 + 44) >> 23) & 1) + ((*(v11 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 40) + 8);
      v17 = v16 - 8;
      if (!v16)
      {
        v17 = 0;
      }

      v15 = v17 + 32;
      v18 = *(v17 + 40);
      if (v18 != v15)
      {
        while (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataSegmentOp,void>::id)
        {
          v18 = *(v18 + 8);
          if (v18 == v15)
          {
            goto LABEL_18;
          }
        }

        v15 = v18;
      }

LABEL_18:
      *v14 = v15;
    }

    v19 = *(((v11 + 16 * ((*(v11 + 44) >> 23) & 1) + ((*(v11 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 40) + 8);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    *(a4 + 24) = v20;
    *(a4 + 32) = v15;
    v21 = *(*v5 + 24);
    v22 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataSegmentOp,void>::id, *(**v21 + 32));
    if (v23)
    {
      v45 = v21;
      v46 = v22;
      v47 = v49;
      v48 = 0x400000000;
      v50 = v52;
      v51 = 0x400000000;
      v53 = v55;
      v54 = 0x400000000;
      v56 = 4;
      v57 = &v59;
      v58 = 0x100000000;
      v60 = &v62;
      v61 = 0x100000000;
      v63 = 0;
      v64 = 0;
      v65 = &mlir::detail::TypeIDResolver<void,void>::id;
      v66 = 0;
      v67 = 0;
      mlir::OperationState::addRegion(&v45);
    }

    v44 = 1283;
    v42 = "odix.data_segment";
    v36 = 17;
  }

  v43 = v36;
  v40 = 259;
  llvm::operator+(&v41, &v39, &v45);
  llvm::report_fatal_error(&v45, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v17);
  v8 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v10;
  v14 = v9;
  v15 = v17 & 0xFFFFFFFFFFFFFFF9;
  v16 = v18;
  v11 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v17 != v19)
  {
    free(v17);
  }

  return v11;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::GlobalConstPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::GlobalConstPattern]";
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

void mlir::ODIE::Compiler::ExecAllocPattern::~ExecAllocPattern(mlir::ODIE::Compiler::ExecAllocPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::ExecAllocPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v8, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(*(a1 + 104), *(a2 + 24), *(a3 + 40), *(a3 + 48), v8, 1, a2, a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v8 & 0xFFFFFFFFFFFFFFF9, v9);
}

void mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39[8] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a7, "symbol", 6uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
    {
      v16 = Attr;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  Symbol = mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(a1, a2, v16, a8);
  mlir::SymbolTable::insert((a1 + 152), Symbol, 0);
  v19 = a8[1];
  v18 = (a8 + 1);
  v20 = *(Symbol + 2 * ((*(Symbol + 11) >> 23) & 1) + 8);
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  v33 = 261;
  v29 = v22;
  v30 = v21;
  v24 = mlir::StringAttr::get(v19, &v29, v23);
  v26 = mlir::SymbolRefAttr::get(v24, 0, 0, v25);
  v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::CallOp>(*(**a2 + 32));
  v29 = a2;
  v30 = v27;
  v31 = &v33;
  v32 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[8] = 4;
  v37[9] = v38;
  v37[10] = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v39[6] = 0;
  mlir::ODIE::Compiler::ODIX::CallOp::build(v18, &v29, v26, a3, a4, a5, a6, 0, 0, 0);
  v28 = mlir::Operation::create(&v29);
  mlir::OpBuilder::insert(v18, v28);
  mlir::OperationState::~OperationState(&v29);
}

mlir::Operation *mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v9 = a1 + 128;
  v8 = *(a1 + 128);
  v34[0] = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(v8, *(v9 + 16), a3, v34);
  v11 = v34[0];
  if (v10)
  {
    result = *(v34[0] + 8);
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v36[0] = v34[0];
  v13 = *(a1 + 136);
  v14 = *(a1 + 144);
  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_38;
  }

  if (v14 + ~v13 - *(a1 + 140) <= v14 >> 3)
  {
LABEL_38:
    llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::grow(v9, v14);
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(*(a1 + 128), *(a1 + 144), a3, v36);
    v13 = *(a1 + 136);
    v11 = v36[0];
  }

  *(a1 + 136) = v13 + 1;
  if (*v11 != -4096)
  {
    --*(a1 + 140);
  }

  *v11 = a3;
  v11[1] = 0;
LABEL_9:
  v15 = a4[3];
  v16 = a4[4];
  v17 = v16;
  while (1)
  {
    v18 = *(v17 + 16);
    if (!v18)
    {
      break;
    }

    v19 = *(v18 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v19)
    {
      break;
    }

    v17 = *(v19 + 16);
    if (!v17 || *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_16;
    }
  }

  v17 = 0;
LABEL_16:
  v36[0] = v17;
  v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[]((a1 + 56), v36);
  v21 = *v20;
  if (!*v20)
  {
    v22 = *(((v17 + 16 * ((*(v17 + 44) >> 23) & 1) + ((*(v17 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40) + 8);
    v23 = v22 - 8;
    if (!v22)
    {
      v23 = 0;
    }

    v21 = v23 + 32;
    v24 = *(v23 + 40);
    if (v24 != v21)
    {
      while (*(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
      {
        v24 = *(v24 + 8);
        if (v24 == v21)
        {
          goto LABEL_24;
        }
      }

      v21 = v24;
    }

LABEL_24:
    *v20 = v21;
  }

  v25 = *(((v17 + 16 * ((*(v17 + 44) >> 23) & 1) + ((*(v17 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40) + 8);
  if (v25)
  {
    v26 = v25 - 8;
  }

  else
  {
    v26 = 0;
  }

  a4[3] = v26;
  a4[4] = v21;
  v27 = *(a3 + 16);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id, *(**a2 + 32));
  if ((v29 & 1) == 0)
  {
    v35 = 1283;
    v34[2] = "odix.symbol";
    v34[3] = 11;
    v33 = 259;
    llvm::operator+(v34, &v32, v36);
    llvm::report_fatal_error(v36, 1);
  }

  v36[0] = a2;
  v36[1] = v28;
  v36[2] = v37;
  v36[3] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0x400000000;
  v39[8] = 4;
  v39[9] = v40;
  v39[10] = 0x100000000;
  v40[1] = v41;
  v40[2] = 0x100000000;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v41[4] = 0;
  v41[6] = 0;
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(v36) = v27;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(v36) + 8) = a3;
  v30 = mlir::Operation::create(v36);
  mlir::OpBuilder::insert((a4 + 1), v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(v36);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
  {
    result = v30;
  }

  else
  {
    result = 0;
  }

  v11[1] = result;
  if (v15)
  {
    a4[3] = v15;
    a4[4] = v16;
  }

  else
  {
    a4[3] = 0;
    a4[4] = 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::CallOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::CallOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.call";
    v5[3] = 9;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecAllocPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecAllocPattern]";
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

void mlir::ODIE::Compiler::ExecAllocConstPattern::~ExecAllocConstPattern(mlir::ODIE::Compiler::ExecAllocConstPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

void mlir::ODIE::Compiler::ExecAllocConstPattern::matchAndRewrite(uint64_t a1, unint64_t a2, const unsigned __int8 *a3, void *a4)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 104);
  v8 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = llvm::xxh3_64bits(v9, v10, a3, a4);
  v12 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((v7 + 224), v9, v10, v11) + 2);
  v13 = mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXValue(*(a1 + 104), *(a2 + 24), a4);
  v19 = v13;
  v14 = *(a2 + 24);
  v15 = mlir::ODIE::Compiler::ODIX::DataRefAttr::get((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), 0, v12, 0);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LoadDsOp,void>::id, *(**v14 + 32));
  if (v17)
  {
    v24 = v14;
    v25 = v16;
    v26[0] = v27;
    v26[1] = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[8] = 4;
    v29[9] = v30;
    v29[10] = 0x100000000;
    v30[1] = v31;
    v30[2] = 0x100000000;
    v31[1] = 0;
    v31[2] = 0;
    v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v31[4] = 0;
    v31[6] = 0;
    v22[0] = v13;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, v22, 0, v22, 1);
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>(&v24) = v15;
    v18 = mlir::Operation::create(&v24);
    mlir::OpBuilder::insert((a4 + 1), v18);
    mlir::OperationState::~OperationState(&v24);
    mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v24, *(a1 + 104), a2, &v19, 1, a4);
    mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(*(a1 + 104), *(a2 + 24), &v19, 1, v24, 1, a2, a4);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v24 & 0xFFFFFFFFFFFFFFF9, v25);
  }

  v23 = 1283;
  v22[2] = "odix.load_ds";
  v22[3] = 12;
  v21 = 259;
  llvm::operator+(v22, &v20, &v24);
  llvm::report_fatal_error(&v24, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

char *mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 24;
  v8 = *(a3 + 24);
  mlir::ODIE::Compiler::ODIXBuilderContext::setOpInsertionPoint<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::ODIE::Compiler::ODIX::FunctionOp>(a1, a3);
  v6 = mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::ValueOp>((a3 + 8), a2);
  if (v8)
  {
    *v5 = v8;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
  }

  return v6 - 16;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecAllocConstPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecAllocConstPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::ExecAllocViewPattern::~ExecAllocViewPattern(mlir::ODIE::Compiler::ExecAllocViewPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::ExecAllocViewPattern::matchAndRewrite(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v36[8] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v27, *(a1 + 104), a2, a3[7], a3[8], a4);
  v8 = *(a2 + 24);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v9 = a3[7] & 6;
    v10 = (a3[7] & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (v11)
    {
      if (v9 == 2 && v10 != 0)
      {
        v10 = v10[3];
      }
    }

    else
    {
      v10 = *v10;
    }

    v29 = v10;
    mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::Value,mlir::Value&>((a4 + 1), v8, &v29, v27);
  }

  else
  {
    v13 = mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXValue(*(a1 + 104), v8, a4);
    v14 = *(a2 + 24);
    v15 = a3[4];
    v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LoadImmOp,void>::id, *(**v14 + 32));
    if ((v17 & 1) == 0)
    {
      v26 = 1283;
      v25[2] = "odix.load_imm";
      v25[3] = 13;
      v24 = 259;
      llvm::operator+(v25, &v23, &v29);
      llvm::report_fatal_error(&v29, 1);
    }

    v29 = v14;
    v30 = v16;
    v31[0] = v32;
    v31[1] = 0x400000000;
    v32[4] = v33;
    v32[5] = 0x400000000;
    v33[4] = v34;
    v33[5] = 0x400000000;
    v34[8] = 4;
    v34[9] = v35;
    v34[10] = 0x100000000;
    v35[1] = v36;
    v35[2] = 0x100000000;
    v36[1] = 0;
    v36[2] = 0;
    v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v36[4] = 0;
    v36[6] = 0;
    v25[0] = v13;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v31, v25, 0, v25, 1);
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>(&v29) = v15;
    v18 = mlir::Operation::create(&v29);
    mlir::OpBuilder::insert((a4 + 1), v18);
    mlir::OperationState::~OperationState(&v29);
    v19 = *(a1 + 104);
    v20 = *(a2 + 24);
    v21 = (a3[7] & 0xFFFFFFFFFFFFFFF8);
    v22 = a3[7] & 6;
    if (v22 || !v21)
    {
      if (v22 == 2 && v21)
      {
        v21 = v21[3];
      }
    }

    else
    {
      v21 = *v21;
    }

    v29 = v21;
    v30 = v13;
    mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(v19, v20, &v29, 2, v27, 1, a2, a4);
  }

  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v27 & 0xFFFFFFFFFFFFFFF9, v28);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::Value,mlir::Value&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**a2 + 32));
  v10[0] = a2;
  v10[1] = v8;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::ODIE::Compiler::ODIX::MoveOp::build(a1, v10, *a3, *a4);
  v9 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v9);
  mlir::OperationState::~OperationState(v10);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::MoveOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.move";
    v5[3] = 9;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecAllocViewPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecAllocViewPattern]";
  v6 = 104;
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

void mlir::ODIE::Compiler::ExecCallPattern::~ExecCallPattern(mlir::ODIE::Compiler::ExecCallPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v15);
  v8 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v10;
  v12 = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }
}

void mlir::ODIE::Compiler::ExecCallPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v26, *(a1 + 104), a2, *(a3 + 72), *(a3 + 80), a4);
  v8 = mlir::SymbolTable::lookup((*(a1 + 104) + 152), *(*(*(a3 + 24) + 8) + 16), *(*(*(a3 + 24) + 8) + 24));
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v16 = (v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 96);
  }

  else
  {
    Attr = mlir::Operation::getAttr(a2, "symbol", 6uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
      {
        v11 = Attr;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 104);
    v13 = *(v12 + 128);
    v14 = *(v12 + 144) - 1;
    v15 = ((v11 >> 4) ^ (v11 >> 9)) & v14;
    if (*(v13 + 16 * v15) != v11)
    {
      v24 = 1;
      do
      {
        v25 = v15 + v24++;
        v15 = v25 & v14;
      }

      while (*(v13 + 16 * v15) != v11);
    }

    v16 = (*(v13 + 16 * v15 + 8) + 16 * ((*(*(v13 + 16 * v15 + 8) + 44) >> 23) & 1) + 64);
  }

  v17 = mlir::SymbolRefAttr::get(*v16, 0, 0, v9);
  v18 = *(a2 + 24);
  v19 = *(a3 + 48);
  v20 = *(a3 + 72);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72))
  {
    v21 = *(**(a4 + 8) + 608);
  }

  else
  {
    v21 = 0;
  }

  v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::CallOp>(*(**v18 + 32));
  v28[0] = v18;
  v28[1] = v22;
  v28[2] = v29;
  v28[3] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[4] = v31;
  v30[5] = 0x400000000;
  v31[8] = 4;
  v31[9] = v32;
  v31[10] = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  mlir::ODIE::Compiler::ODIX::CallOp::build(a4 + 8, v28, v17, v20, v19, v26 & 0xFFFFFFFFFFFFFFF9, v27, 0, 0, v21);
  v23 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert((a4 + 8), v23);
  mlir::OperationState::~OperationState(v28);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v26 & 0xFFFFFFFFFFFFFFF9, v27);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v17);
  v8 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v10;
  v14 = v9;
  v15 = v17 & 0xFFFFFFFFFFFFFFF9;
  v16 = v18;
  v11 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v17 != v19)
  {
    free(v17);
  }

  return v11;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecCallPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecCallPattern]";
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

void mlir::ODIE::Compiler::ExecCopyPattern::~ExecCopyPattern(mlir::ODIE::Compiler::ExecCopyPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CopyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CopyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CopyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::ExecCopyPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 104);
  v8 = *(a2 + 24);
  v9 = *(a3 + 40);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 6) != 0 || v10 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v10 != 0)
    {
      v10 = v10[3];
    }
  }

  else
  {
    v10 = *v10;
  }

  v14 = v10;
  Dst = mlir::ODIE::Compiler::Exec::CopyOpGenericAdaptor<mlir::ValueRange>::getDst(v9);
  mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(v7, v8, &v14, 1, &Dst, 1, a2, a4);
  v14 = mlir::ODIE::Compiler::Exec::CopyOpGenericAdaptor<mlir::ValueRange>::getDst(*(a3 + 40));
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v14, 1);
}

void *mlir::ODIE::Compiler::Exec::CopyOpGenericAdaptor<mlir::ValueRange>::getDst(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = 1;
  v1 = mlir::ValueRange::offset_base(v6, 1);
  v2 = v1 & 6;
  result = (v1 & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = result == 0;
  }

  if (!v4)
  {
    return *result;
  }

  if (v2 == 2 && result != 0)
  {
    return result[3];
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecCopyPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecCopyPattern]";
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

void mlir::ODIE::Compiler::TypeInferencePattern::~TypeInferencePattern(mlir::ODIE::Compiler::TypeInferencePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

void mlir::ODIE::Compiler::TypeInferencePattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 48), *(a3 + 56), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::TypeInferencePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::TypeInferencePattern]";
  v6 = 104;
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

void mlir::ODIE::Compiler::ReturnPattern::~ReturnPattern(mlir::ODIE::Compiler::ReturnPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::ReturnPattern::matchAndRewrite(int a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *this, uint64_t a5, uint64_t a6)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v8 = a2;
  while (1)
  {
    v9 = *(v8 + 2);
    if (!v9)
    {
      break;
    }

    v10 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v10)
    {
      break;
    }

    v8 = *(v10 + 16);
    if (!v8 || *(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  v23 = v8;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 17);
    if (v11)
    {
      v12 = 0;
      v13 = (*(a2 + 9) + 24);
      do
      {
        v14 = *v13;
        v13 += 4;
        v15 = *(a2 + 3);
        RemappedValue = mlir::ConversionPatternRewriter::getRemappedValue(this, v14, a3, this, a5, a6);
        NumInputs = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(&v23);
        v18 = *(((v8 + 16 * ((*(v8 + 11) >> 23) & 1) + ((*(v8 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 10) + 8);
        if (v18)
        {
          v19 = v18 - 8;
        }

        else
        {
          v19 = 0;
        }

        v20 = *(*(v19 + 48) + 8 * (v12 + NumInputs));
        v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**v15 + 32));
        v24[0] = v15;
        v24[1] = v21;
        v24[2] = v25;
        v24[3] = 0x400000000;
        v25[4] = v26;
        v25[5] = 0x400000000;
        v26[4] = v27;
        v26[5] = 0x400000000;
        v27[8] = 4;
        v27[9] = v28;
        v27[10] = 0x100000000;
        v28[1] = v29;
        v28[2] = 0x100000000;
        v29[1] = 0;
        v29[2] = 0;
        v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v29[4] = 0;
        v29[6] = 0;
        mlir::ODIE::Compiler::ODIX::MoveOp::build(this + 8, v24, RemappedValue, v20);
        v22 = mlir::Operation::create(v24);
        mlir::OpBuilder::insert((this + 8), v22);
        mlir::OperationState::~OperationState(v24);
        ++v12;
      }

      while (v11 != v12);
    }
  }

  mlir::ConversionPatternRewriter::eraseOp(this, a2);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReturnPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReturnPattern]";
  v6 = 97;
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

void mlir::ODIE::Compiler::YieldPattern::~YieldPattern(mlir::ODIE::Compiler::YieldPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::YieldPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, mlir::ConversionPatternRewriter *this)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v33 = *(a3 + 48);
  v6 = *(a1 + 104);
  v7 = *(v6 + 104);
  v8 = *(v6 + 120);
  if (v8)
  {
    v9 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v9 >> 47) ^ v9);
    v11 = (v8 - 1) & (-348639895 * ((v10 >> 47) ^ v10));
    v12 = (v7 + 72 * v11);
    v13 = *v12;
    if (*v12 == a2)
    {
      goto LABEL_8;
    }

    v14 = 1;
    while (v13 != -4096)
    {
      v15 = v11 + v14++;
      v11 = v15 & (v8 - 1);
      v12 = (v7 + 72 * v11);
      v13 = *v12;
      if (*v12 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = 0;
LABEL_8:
  v16 = (v7 + 72 * v8);
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17[1];
  v34 = *(a3 + 40);
  v35 = 0;
  v36 = v18;
  if (v33)
  {
    v19 = *(v17 + 4);
    if (v19)
    {
      v20 = v18 + 8;
      v21 = 8 * v19 - 8;
      v22 = 1;
      do
      {
        v23 = mlir::ValueRange::dereference_iterator(&v34, v22 - 1);
        v24 = *(a2 + 24);
        RemappedValue = mlir::ConversionPatternRewriter::getRemappedValue(this, v23, v25, v26, v27, v28);
        v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**v24 + 32));
        v37[0] = v24;
        v37[1] = v30;
        v37[2] = v38;
        v37[3] = 0x400000000;
        v38[4] = v39;
        v38[5] = 0x400000000;
        v39[4] = v40;
        v39[5] = 0x400000000;
        v40[8] = 4;
        v40[9] = v41;
        v40[10] = 0x100000000;
        v41[1] = v42;
        v41[2] = 0x100000000;
        v42[1] = 0;
        v42[2] = 0;
        v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v42[4] = 0;
        v42[6] = 0;
        mlir::ODIE::Compiler::ODIX::MoveOp::build(this + 8, v37, RemappedValue, *(v20 - 8));
        v31 = mlir::Operation::create(v37);
        mlir::OpBuilder::insert((this + 8), v31);
        mlir::OperationState::~OperationState(v37);
        v35 = v22;
        v36 = v20;
        if (v33 == v22)
        {
          break;
        }

        ++v22;
        v20 += 8;
        v32 = v21;
        v21 -= 8;
      }

      while (v32);
    }
  }

  mlir::ConversionPatternRewriter::eraseOp(this, a2);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::YieldPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::YieldPattern]";
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

void mlir::ODIE::Compiler::LoadPattern::~LoadPattern(mlir::ODIE::Compiler::LoadPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::LoadOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::LoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::LoadOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::LoadPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v8, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(*(a1 + 104), *(a2 + 24), *(a3 + 40), *(a3 + 48), v8, 1, a2, a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v8 & 0xFFFFFFFFFFFFFFF9, v9);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::LoadPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::LoadPattern]";
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

void mlir::ODIE::Compiler::ExecUndefPattern::~ExecUndefPattern(mlir::ODIE::Compiler::ExecUndefPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::UndefOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::UndefOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::UndefOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::ExecUndefPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecUndefPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecUndefPattern]";
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

void mlir::ODIE::Compiler::ContextInsertPattern::~ContextInsertPattern(mlir::ODIE::Compiler::ContextInsertPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

void mlir::ODIE::Compiler::ContextInsertPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v8 = *(a3 + 48);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 6) != 0 || v9 == 0)
  {
    if ((*(a3 + 48) & 6) == 2 && v9 != 0)
    {
      v9 = v9[3];
    }
  }

  else
  {
    v9 = *v9;
  }

  v12 = *(a3 + 24);
  v24 = *(a3 + 48);
  v25 = 1;
  v13 = mlir::ValueRange::offset_base(&v24, 1);
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 6) != 0 || !v14)
  {
    if ((v13 & 6) == 2 && v14)
    {
      v14 = v14[3];
    }
  }

  else
  {
    v14 = *v14;
  }

  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SetContextOp,void>::id, *(**v7 + 32));
  if (v16)
  {
    v24 = v7;
    v25 = v15;
    v26 = v28;
    v27 = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[8] = 4;
    v30[9] = v31;
    v30[10] = 0x100000000;
    v31[1] = v32;
    v31[2] = 0x100000000;
    v32[1] = 0;
    v32[2] = 0;
    v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v32[4] = 0;
    v32[6] = 0;
    mlir::ODIE::Compiler::ODIX::SetContextOp::build(a4 + 8, &v24, v9, v12, v14);
    v17 = mlir::Operation::create(&v24);
    mlir::OpBuilder::insert((a4 + 8), v17);
    mlir::OperationState::~OperationState(&v24);
    v18 = (*(a3 + 48) & 0xFFFFFFFFFFFFFFF8);
    v19 = *(a3 + 48) & 6;
    if (v19 || !v18)
    {
      if (v19 == 2)
      {
        if (v18)
        {
          v18 = v18[3];
        }
      }
    }

    else
    {
      v18 = *v18;
    }

    v24 = v18;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v24, 1);
  }

  v23 = 1283;
  v22[2] = "odix.set_context";
  v22[3] = 16;
  v21 = 259;
  llvm::operator+(v22, &v20, &v24);
  llvm::report_fatal_error(&v24, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ContextInsertPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ContextInsertPattern]";
  v6 = 104;
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

void mlir::ODIE::Compiler::ContextExtractPattern::~ContextExtractPattern(mlir::ODIE::Compiler::ContextExtractPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

void mlir::ODIE::Compiler::ContextExtractPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 104);
  v8 = *(a3 + 48) & 6;
  v9 = (*(a3 + 48) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    if (v8 == 2 && v9 != 0)
    {
      v9 = v9[3];
    }
  }

  else
  {
    v9 = *v9;
  }

  v28[0] = v9;
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v26, v7, a2, v28, 1, a4);
  v12 = *(a2 + 24);
  v13 = *(a3 + 48);
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 6) != 0 || v14 == 0)
  {
    if ((*(a3 + 48) & 6) == 2 && v14 != 0)
    {
      v14 = v14[3];
    }
  }

  else
  {
    v14 = *v14;
  }

  v17 = *(a3 + 24);
  v18 = v26;
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::GetContextOp,void>::id, *(**v12 + 32));
  if (v20)
  {
    v28[0] = v12;
    v28[1] = v19;
    v28[2] = v29;
    v28[3] = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[8] = 4;
    v31[9] = v32;
    v31[10] = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    mlir::ODIE::Compiler::ODIX::GetContextOp::build(a4 + 8, v28, v14, v17, *v18);
    v21 = mlir::Operation::create(v28);
    mlir::OpBuilder::insert((a4 + 8), v21);
    mlir::OperationState::~OperationState(v28);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v26 & 0xFFFFFFFFFFFFFFF9, v27);
  }

  v25 = 1283;
  v24[2] = "odix.get_context";
  v24[3] = 16;
  v23 = 259;
  llvm::operator+(v24, &v22, v28);
  llvm::report_fatal_error(v28, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ContextExtractPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ContextExtractPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::InitPattern::~InitPattern(mlir::ODIE::Compiler::InitPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

uint64_t mlir::ODIE::Compiler::InitPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  v7 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::UndefOp>(a4 + 8, *(**v6 + 32));
  v24 = v6;
  v25 = v8;
  v26 = v28;
  v27 = 0x400000000;
  v29 = v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v35 = 4;
  v36 = &v38;
  v37 = 0x100000000;
  v39 = &v41;
  v40 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = &mlir::detail::TypeIDResolver<void,void>::id;
  v45 = 0;
  __src = v7;
  v46 = 0;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v29, &__src, &v23);
  v9 = mlir::Operation::create(&v24);
  mlir::OpBuilder::insert((a4 + 8), v9);
  v10 = *(*(v9 + 6) + 16);
  mlir::OperationState::~OperationState(&v24);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  __src = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v23 = v11 - 16;
  v21 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(a4 + 8), 2uLL);
  v13 = mlir::ArrayAttr::get(*(a4 + 8), &v21, 1);
  v14 = *(a2 + 24);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(a4 + 8, *(**v14 + 32));
  v24 = v14;
  v25 = v15;
  v26 = v28;
  v27 = 0x400000000;
  v29 = v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v35 = 4;
  v36 = &v38;
  v37 = 0x100000000;
  v39 = &v41;
  v40 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = &mlir::detail::TypeIDResolver<void,void>::id;
  v45 = 0;
  v46 = 0;
  mlir::ODIE::Compiler::Exec::CallOp::build(a4 + 8, &v24, &__src + 2, 1, v12, 0, 0, v16, &v23, 1, v13, 0);
  v17 = mlir::Operation::create(&v24);
  mlir::OpBuilder::insert((a4 + 8), v17);
  v18 = *(*(v17 + 6) + 16);
  mlir::OperationState::~OperationState(&v24);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  (*(*a4 + 8))(a4, a2, v19);
  return 1;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::InitPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::InitPattern]";
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

void mlir::ODIE::Compiler::GetTypePattern::~GetTypePattern(mlir::ODIE::Compiler::GetTypePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::GetTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::GetTypeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::GetTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::GetTypePattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::GetTypePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::GetTypePattern]";
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

void mlir::ODIE::Compiler::IsDefinedPattern::~IsDefinedPattern(mlir::ODIE::Compiler::IsDefinedPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsDefinedOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsDefinedOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsDefinedOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::IsDefinedPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 40) & 6;
  v7 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    if (v6 == 2 && v7 != 0)
    {
      v7 = v7[3];
    }
  }

  else
  {
    v7 = *v7;
  }

  v10[1] = v4;
  v10[2] = v5;
  v10[0] = v7;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v10, 1);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::IsDefinedPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::IsDefinedPattern]";
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

void mlir::ODIE::Compiler::ConversionCastPattern::~ConversionCastPattern(mlir::ODIE::Compiler::ConversionCastPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::UnrealizedConversionCastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::UnrealizedConversionCastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::UnrealizedConversionCastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}