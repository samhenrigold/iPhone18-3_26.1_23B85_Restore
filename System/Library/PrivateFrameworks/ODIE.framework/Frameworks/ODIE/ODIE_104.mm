mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::SortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v14;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v18, *a3, *a4 - 16, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v16;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::ArgSortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v14;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v18, *a3, *a4 - 16, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v16;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::Type,mlir::Value &,mlir::ODIE::Compiler::CoreML::ReshapeOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
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
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, v14, *a3, *a4, *a5 - 16);
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

uint64_t replaceUpsampleOp(mlir::OpBuilder *a1, uint64_t *a2, unsigned int a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v5 = a2[6];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) < 4u || *(a2 + 9) >= 2u)
  {
    v76 = 257;
    emitDiag(v4, 2, &v73, &v78);
    if (v78)
    {
      mlir::Diagnostic::operator<<<35ul>(v79, "expects 4 inputs and 1 output for ");
      if (v78)
      {
        mlir::Diagnostic::operator<<(v79, v5);
        if (v78)
        {
          mlir::Diagnostic::operator<<<7ul>(v79, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 17);
    }

    else
    {
      v6 = 0;
    }

    LODWORD(v73) = v6;
    v7 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&v78, &v73) + 200);
    goto LABEL_11;
  }

  v70 = *(a2[9] + 24);
  v11 = *(v5 + 8);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v76 = 1283;
  v73 = "Input to ";
  v75[0] = v13;
  v75[1] = v12;
  v78 = &v73;
  v79[1] = " must be a shaped type";
  v80 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v70, &v78, &v67);
  if (v69 != 1)
  {
    return 0;
  }

  v14 = a2[9];
  v15 = v14[7];
  v16 = v14[15];
  v17 = *(*(*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id && (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) != 0;
  v18 = *(*(*(v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id && (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8) != 0;
  if (v17 == v18)
  {
    v76 = 257;
    emitDiag(v4, 2, &v73, &v78);
    if (v78)
    {
      mlir::Diagnostic::operator<<<51ul>(v79, "only one of size or scale_factor should be defined");
    }

    goto LABEL_31;
  }

  v19 = a3 == 0;
  v20 = !mlir::ODIE::Compiler::isConstFalse(v14[11]);
  if (v17)
  {
    if ((~*(v16 + 8) & 7) != 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = *(v21 + 8) & 7;
      if (v22 == 6)
      {
        v23 = v21 + 24 * *(v21 + 16) + 120;
      }

      else
      {
        v23 = v21 + 16 * v22 + 16;
      }
    }

    else
    {
      v23 = 0;
    }

    getTupleAsValues(&v73, v23, v4);
    v29 = v74;
    if (v74 == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v73, *v73);
      v29 = v74;
    }

    if (v29 == 2)
    {
      if (*(a2 + 9))
      {
        v30 = a2 - 2;
      }

      else
      {
        v30 = 0;
      }

      v62 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v31 = mlir::ODIE::Compiler::createCoreMLResizeByScaleOp(a1, &v62, &v70, v73, v73 + 1, v19 & v20, a3, 0, *(*(a2[6] + 8) + 16), *(*(a2[6] + 8) + 24));
      goto LABEL_48;
    }

    v72 = 257;
    emitDiag(v4, 2, v71, &v78);
    if (v78)
    {
      v35 = "Scale factor must be a scalar or a tuple of size 2";
LABEL_52:
      mlir::Diagnostic::operator<<<51ul>(v79, v35);
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  ShapeAsValue = getShapeAsValue(a1, v70);
  (*(v68 + 24))(v68, v67);
  v25 = v24;
  if ((~*(v15 + 8) & 7) != 0)
  {
    v26 = v15;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v27 = *(v26 + 8) & 7;
    if (v27 == 6)
    {
      v28 = v26 + 24 * *(v26 + 16) + 120;
    }

    else
    {
      v28 = v26 + 16 * v27 + 16;
    }
  }

  else
  {
    v28 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v28, a1);
  if ((v37 & 1) == 0)
  {
    v76 = 257;
    emitDiag(v4, 2, &v73, &v78);
    if (v78)
    {
      mlir::Diagnostic::operator<<<56ul>(v79, "Failed to convert output_sizes tuple to a 1d int tensor");
    }

LABEL_31:
    v7 = v81;
LABEL_11:
    v4 = (v7 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
    return v4;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(TupleAs1DIntTensor, &v73);
  if ((v77 & 1) == 0)
  {
    v72 = 257;
    emitDiag(v4, 2, v71, &v78);
    if (v78)
    {
      mlir::Diagnostic::operator<<<18ul>(v79, "Output sizes for ");
      if (v78)
      {
        mlir::Diagnostic::operator<<(v79, v5);
        if (v78)
        {
          mlir::Diagnostic::operator<<<35ul>(v79, " must be an int or a tuple of ints");
        }
      }
    }

    goto LABEL_80;
  }

  if (v74 == 2)
  {
    v39 = *v73;
    v38 = *(v73 + 1);
  }

  else
  {
    if (v74 != 1)
    {
      v72 = 257;
      emitDiag(v4, 2, v71, &v78);
      if (v78)
      {
        mlir::Diagnostic::operator<<<81ul>(v79, "Output sizes for upsample_bilinear2d must be an int or a tuple of ints of size 2");
      }

      goto LABEL_80;
    }

    v38 = *v73;
    v39 = *v73;
  }

  LODWORD(v78) = v39;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v78, 1, 0);
  LODWORD(v78) = v38;
  v64 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v78, 1, 0);
  v40 = mlir::ODIE::Compiler::calculateScaleFromOutputSize(a1, &ShapeAsValue, &v67, &v64, v25 - 1);
  v42 = v41;
  v62 = v40;
  v63 = v41;
  if (v69)
  {
    v60 = mlir::ODIE::Compiler::calculateScaleFromOutputSize(a1, &ShapeAsValue, &v67, &Tensor, v25 - 2);
    v61 = v43;
    if (v43 & 1) != 0 && (v42)
    {
      if (*(a2 + 9))
      {
        v44 = a2 - 2;
      }

      else
      {
        v44 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
      v46 = *(a2[6] + 8);
      v47 = *(v46 + 16);
      v58 = *(v46 + 24);
      v59 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      v31 = mlir::ODIE::Compiler::createCoreMLResizeByScaleOp(a1, &v59, &v70, &v60, &v62, v19 & v20, a3, 1, v47, v58);
LABEL_48:
      v33 = v32;
      if (v32)
      {
        v34 = v31;
      }

      else
      {
        v72 = 257;
        emitDiag(v4, 2, v71, &v78);
        if (v78)
        {
          mlir::Diagnostic::operator<<<43ul>(v79, "Failed to create coreml.resize_by_scale op");
        }

        v4 = (v81 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
        v34 = 0;
      }

      goto LABEL_81;
    }

    v72 = 257;
    emitDiag(v4, 2, v71, &v78);
    if (v78)
    {
      v35 = "Failed to calculate scales for upsample_bilinear2d";
      goto LABEL_52;
    }

LABEL_80:
    v4 = (v81 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
    v34 = 0;
    v33 = 0;
LABEL_81:
    if (v77 == 1 && v73 != v75)
    {
      free(v73);
    }

    if (v33)
    {
      v78 = v34;
      v48 = *(a2 + 9);
      if (v48)
      {
        v49 = (a2 - 2);
      }

      else
      {
        v49 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v49, v48, &v78, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v51 = *a2;
        v50 = a2[1];
        *v50 = *a2;
        *(v51 + 8) = v50;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    return v4;
  }

  v52 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(v52, v53, v54, v55, v56, v57);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v12;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, v16, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v14;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhereOp,void>::id, *(**a2 + 32));
  if ((v13 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "coreml.where";
    v19[3] = 12;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  v21[0] = a2;
  v21[1] = v12;
  v21[2] = v22;
  v21[3] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  mlir::ODIE::Compiler::CoreML::WhereOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v14 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhereOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v15;
}

uint64_t anonymous namespace::reshapeConst(uint64_t a1, const void *a2, uint64_t a3, mlir::OpBuilder *a4)
{
  v4 = a1;
  v61[8] = *MEMORY[0x277D85DE8];
  v53 = 0uLL;
  __src = &v53;
  v5 = *(a1 + 8) & 7;
  if (v5 == 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  v10 = *(v6 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v6 + 24 * *(v6 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
LABEL_16:
      if (v5 == 7)
      {
        v17 = 0;
      }

      else
      {
        v17 = v4;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = *(v17 + 8) & 7;
      if (v18 == 6)
      {
        v19 = v17 + 24 * *(v17 + 16) + 120;
        if (!v19)
        {
LABEL_22:
          v20 = (v4 + 32);
LABEL_25:
          v21 = *v20;
          v51 = 257;
          emitDiag(v21, 2, &__src, &v53);
          if (v53)
          {
            mlir::Diagnostic::operator<<<19ul>(&v53 + 8, "expect const value");
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
          return 0;
        }
      }

      else
      {
        v19 = v17 + 16 * v18 + 16;
      }

      v20 = (v19 + 24);
      goto LABEL_25;
    }
  }

  else
  {
    v12 = v6 + 16 * v10 + 16;
  }

  v13 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__src, v12);
  v5 = *(v4 + 8) & 7;
  if (!v13)
  {
    goto LABEL_16;
  }

  if (v5 == 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v4;
  }

  if (v14)
  {
    v15 = *(v14 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v14 + 24 * *(v14 + 16) + 120;
    }

    else
    {
      v16 = v14 + 16 * v15 + 16;
    }
  }

  else
  {
    v16 = 0;
  }

  Attr = mlir::Operation::getAttr(v16, "value", 5uLL);
  Raw = Attr;
  v24 = *(*Attr + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v26 = Attr;
  }

  else
  {
    v26 = 0;
  }

  v27 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27)
  {
    v28 = *v27;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v30 = mlir::detail::InterfaceMap::lookup(v28 + 8, v29);
  }

  else
  {
    v30 = 0;
  }

  v31 = (*(v30 + 24))(v30, v27);
  if (a3 != v32 || memcmp(a2, v31, 8 * a3))
  {
    v33 = (*(v30 + 8))(v30, v27);
    *&v53 = a2;
    *(&v53 + 1) = a3;
    __src = v33;
    v52 = 0;
    *&v53 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v33 + 32), &v53, &__src, &v52);
    v34 = mlir::TensorType::operator mlir::ShapedType(&v53);
    if (*(v26 + 8) != v34)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v34, v35, *(v26 + 32), *(v26 + 40));
    }

    v48 = Raw;
    v36 = (*(v30 + 8))(v30, v27);
    *&v53 = a2;
    *(&v53 + 1) = a3;
    __src = v36;
    v52 = 0;
    v37 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v36 + 32), &v53, &__src, &v52);
    v38 = *(a4 + 4);
    v39 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a4, *(**v38 + 32));
    *&v53 = v38;
    *(&v53 + 1) = v39;
    v54 = &v56;
    v55 = 0x400000000;
    v57[0] = v58;
    v57[1] = 0x400000000;
    v58[4] = v59;
    v58[5] = 0x400000000;
    v59[8] = 4;
    v59[9] = v60;
    v59[10] = 0x100000000;
    v60[1] = v61;
    v60[2] = 0x100000000;
    v61[1] = 0;
    v61[2] = 0;
    v61[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v61[4] = 0;
    v61[6] = 0;
    v41 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v48);
    if (v41)
    {
      v42 = *(v40 + 24);
    }

    else
    {
      v42 = 0;
    }

    __src = v37;
    v43 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v53);
    *v43 = v41;
    v43[1] = v42;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v57, &__src, v50);
    v44 = mlir::Operation::create(&v53);
    mlir::OpBuilder::insert(a4, v44);
    v45 = *(*(v44 + 6) + 16);
    v46 = v44 - 16;
    mlir::OperationState::~OperationState(&v53);
    if (v45 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
    {
      return v46;
    }

    else
    {
      return -16;
    }
  }

  return v4;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::createShapedZeroTensorConstant(mlir::ImplicitLocOpBuilder &,mlir::Type,mlir::ShapedType)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 32);
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

BOOL anonymous namespace::replaceQuantizeOrDequantize(uint64_t *a1, int a2, mlir::OpBuilder *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 46) & 0x80) == 0 || *(a1 + 17) != 4)
  {
    v14 = a1[3];
    v71 = 257;
    emitDiag(v14, 2, v69, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(&__src + 8, "unable to legalize TorchImport.");
      if (__src)
      {
        mlir::Diagnostic::operator<<(&__src + 8, a1[6]);
        if (__src)
        {
          mlir::Diagnostic::operator<<<38ul>(&__src + 8, "because number of inputs is incorrect");
        }
      }
    }

    goto LABEL_31;
  }

  v6 = a1[9];
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  v10 = v6[15];
  v67 = v10;
  v68 = v7;
  v11 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = *v11;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v59 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  }

  else
  {
    v59 = 0;
  }

  v15 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  v58 = a2;
  if (v15)
  {
    v16 = *v15;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = *v19;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v22 = mlir::detail::InterfaceMap::lookup(v20 + 8, v21);
  }

  else
  {
    v22 = 0;
  }

  v65 = 0;
  *&__src = &v65;
  if ((~*(v10 + 8) & 7) != 0)
  {
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
LABEL_29:
    v29 = *(a3 + 4);
    v71 = 257;
    emitDiag(v29, 2, v69, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<30ul>(&__src + 8, "A scalar int axis must exist.");
    }

LABEL_31:
    v30 = (v74 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v30;
  }

  v24 = *(v23 + 8) & 7;
  if (v24 == 6)
  {
    v25 = v23 + 24 * *(v23 + 16);
    v26 = v25 + 120;
    if (v25 == -120)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v26 = v23 + 16 * v24 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&__src, v26))
  {
    goto LABEL_29;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v65, &__src);
  *v69 = __src;
  v70 = v73;
  mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &v62);
  if (v63 > 0x40)
  {
    v27 = *v62;
    MEMORY[0x25F891010]();
    if (v27 < 0)
    {
      goto LABEL_28;
    }

LABEL_34:
    v57 = v27;
    goto LABEL_36;
  }

  if (v63)
  {
    v27 = (v62 << -v63) >> -v63;
    if (v27 < 0)
    {
LABEL_28:
      (*(v59 + 24))(v59, v11);
      v57 = v27 + v28 - 1;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v57 = 0;
LABEL_36:
  v69[0] = &v70;
  v69[1] = 0x600000000;
  v32 = (*(v18 + 24))(v18, v15);
  if (v33)
  {
    v34 = 8 * v33;
    v35 = 1;
    do
    {
      v36 = *v32++;
      v35 *= v36;
      v34 -= 8;
    }

    while (v34);
    if (v35 > 1)
    {
      goto LABEL_44;
    }
  }

  v37 = (*(v22 + 24))(v22, v19);
  if (v38)
  {
    v39 = 8 * v38;
    v40 = 1;
    do
    {
      v41 = *v37++;
      v40 *= v41;
      v39 -= 8;
    }

    while (v39);
    if (v40 >= 2)
    {
LABEL_44:
      *&__src = *((*(v59 + 24))(v59, v11) + 8 * v57);
      LODWORD(v69[1]) = 0;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(v69, &__src, &__src + 8);
    }
  }

  v66 = v42;
  if (v42)
  {
    v61 = v43;
    if (v43)
    {
      if (v58)
      {
        v44 = *(a1 + 9);
        if (v44)
        {
          v45 = a1 - 2;
        }

        else
        {
          v45 = 0;
        }

        __src = v45;
        *&v73 = v45;
        *(&v73 + 1) = v44;
        v46 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a3, *(a3 + 4), &__src, &v68, &v65, &v60, &v67);
      }

      else
      {
        v49 = *(a1 + 9);
        if (v49)
        {
          v50 = a1 - 2;
        }

        else
        {
          v50 = 0;
        }

        __src = v50;
        *&v73 = v50;
        *(&v73 + 1) = v49;
        v46 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a3, *(a3 + 4), &__src, &v68, &v65, &v60, &v67);
      }

      v51 = *(a1 + 9);
      if (v51)
      {
        v52 = a1 - 2;
      }

      else
      {
        v52 = 0;
      }

      v62 = v52;
      v63 = v51;
      v53 = *(v46 + 9);
      v54 = v46 - 16;
      if (!v53)
      {
        v54 = 0;
      }

      *&__src = v54;
      *(&__src + 1) = v53;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v62, &__src);
      if (a1[2])
      {
        a1[2] = 0;
        v56 = *a1;
        v55 = a1[1];
        *v55 = *a1;
        *(v56 + 8) = v55;
        *a1 = 0;
        a1[1] = 0;
      }

      mlir::Operation::destroy(a1);
      v30 = 1;
      goto LABEL_67;
    }

    v47 = a1[3];
    v48 = "failed to reshape zero_point";
  }

  else
  {
    v47 = a1[3];
    v48 = "failed to reshape scale";
  }

  v62 = v48;
  v64 = 259;
  emitDiag(v47, 2, &v62, &__src);
  v30 = (v74 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_67:
  if (v69[0] != &v70)
  {
    free(v69[0]);
  }

  return v30;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,void>::id, *(**a2 + 32));
  if ((v15 & 1) == 0)
  {
    v22 = 1283;
    *&v21 = "coremlax.quantize";
    *(&v21 + 1) = 17;
    v30 = 259;
    llvm::operator+(&v20, v29, v23);
    llvm::report_fatal_error(v23, 1);
  }

  v23[0] = a2;
  v23[1] = v14;
  v23[2] = v24;
  v23[3] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[8] = 4;
  v26[9] = v27;
  v26[10] = 0x100000000;
  v27[1] = v28;
  v27[2] = 0x100000000;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v28[4] = 0;
  v28[6] = 0;
  v16 = a3[1];
  v20 = *a3;
  v21 = v16;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v29, &v20);
  mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(a1, v23, v29[0], v29[1], *a4, *a5, *a6, *a7);
  v17 = mlir::Operation::create(v23);
  mlir::OpBuilder::insert(a1, v17);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,void>::id, *(**a2 + 32));
  if ((v15 & 1) == 0)
  {
    v22 = 1283;
    *&v21 = "coremlax.dequantize";
    *(&v21 + 1) = 19;
    v30 = 259;
    llvm::operator+(&v20, v29, v23);
    llvm::report_fatal_error(v23, 1);
  }

  v23[0] = a2;
  v23[1] = v14;
  v23[2] = v24;
  v23[3] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[8] = 4;
  v26[9] = v27;
  v26[10] = 0x100000000;
  v27[1] = v28;
  v27[2] = 0x100000000;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v28[4] = 0;
  v28[6] = 0;
  v16 = a3[1];
  v20 = *a3;
  v21 = v16;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v29, &v20);
  mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(a1, v23, v29[0], v29[1], *a4, *a5, *a6, *a7);
  v17 = mlir::Operation::create(v23);
  mlir::OpBuilder::insert(a1, v17);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.softmax";
    v5[3] = 14;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::Type const&,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchNormOp,void>::id, *(**a2 + 32));
  if ((v18 & 1) == 0)
  {
    v25 = 1283;
    v24[2] = "coreml.batchnorm";
    v24[3] = 16;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  v26[0] = a2;
  v26[1] = v17;
  v26[2] = v27;
  v26[3] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::BatchNormOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v19 = mlir::Operation::create(v26);
  mlir::OpBuilder::insert(a1, v19);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchNormOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v20;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v15[2] = v16;
  v15[3] = 0x400000000;
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
  v9 = a3[1];
  v13[0] = *a3;
  v13[1] = v9;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v14, v13);
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v15, v14[0], v14[1], *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], 0, 0);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
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

uint64_t **mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = result;
  v15 = 0;
  v16 = a3;
  v17 = 0;
  if (a2 && a4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v14;
      if (v7)
      {
        v9 = v14[1] & 7;
        if (v14)
        {
          v10 = v9 == 6;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = (5 - v9);
          if (v7 <= v11)
          {
            v8 = &v14[-2 * v7];
            goto LABEL_13;
          }

          v8 = &v14[-2 * v11];
          v7 -= v11;
        }

        v8 -= 3 * v7;
      }

LABEL_13:
      v13 = mlir::ValueRange::dereference_iterator(&v16, v6);
      result = mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v8, &v13);
      v7 = v15 + 1;
      v6 = v17 + 1;
      v15 = v7;
      ++v17;
    }

    while (v7 != a2 && v6 != a4);
  }

  return result;
}

void mlir::ODIE::Compiler::Transforms::createAddUniqueID(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  mlir::ODIE::Compiler::Transforms::impl::createAddUniqueID();
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::AddUniqueIDBase<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass>::AddUniqueIDBase(uint64_t a1)
{
  *(a1 + 8) = &mlir::ODIE::Compiler::Transforms::impl::AddUniqueIDBase<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass>::resolveTypeID(void)::id;
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA3670;
  *&v4 = "String tag to identify the locations added by this pass";
  *(&v4 + 1) = 55;
  v3 = "unique";
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [7]>>((a1 + 336), (a1 + 144), "tag", 3, &v4, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::~AddUniqueIDPass(mlir::ODIE::Compiler::Transforms::AddUniqueIDPass *this)
{
  *this = &unk_286EA3670;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA3670;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::runOnOperation(mlir::ODIE::Compiler::Transforms::AddUniqueIDPass *this, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v9[0] = *(***(v3 + 24) + 32);
  memset(&v9[1], 0, 24);
  v8 = 0;
  v6 = 260;
  v5[0] = this + 456;
  v7 = mlir::StringAttr::get(v9[0], v5, a3);
  v5[0] = v9;
  v5[1] = &v8;
  v5[2] = &v7;
  return mlir::detail::walk<mlir::ForwardIterator>(v3, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::runOnOperation(void)::{lambda(mlir::Operation *)#1}>, v5, 1);
}

llvm::cl::Option *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [7]>>(llvm::cl::Option *a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, const char **a6)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25[0] = a3;
  v25[1] = a4;
  v24[0] = a2;
  v24[1] = 0;
  v8 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(a1, v25, v24, a5, a6);
  v9 = v8 + 224;
  *(v8 + 232) = 0;
  *v8 = &unk_286E75DD0;
  *(v8 + 28) = &unk_286E75E50;
  v11 = *(a2 + 21);
  v10 = *(a2 + 22);
  if (v11 >= v10)
  {
    v13 = *(a2 + 20);
    v14 = (v11 - v13) >> 3;
    if ((v14 + 1) >> 61)
    {
      std::vector<mlir::detail::PassOptions::OptionBase *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v10 - v13;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::detail::PassOptions::OptionBase *>>((a2 + 160), v17);
    }

    v18 = (8 * v14);
    *v18 = v9;
    v12 = 8 * v14 + 8;
    v19 = *(a2 + 20);
    v20 = *(a2 + 21) - v19;
    v21 = v18 - v20;
    memcpy(v18 - v20, v19, v20);
    v22 = *(a2 + 20);
    *(a2 + 20) = v21;
    *(a2 + 21) = v12;
    *(a2 + 22) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v11 = v9;
    v12 = (v11 + 1);
  }

  *(a2 + 21) = v12;
  v26[0] = &unk_286EA36E0;
  v26[1] = a1;
  v26[3] = v26;
  std::function<void ()(std::string const&)>::operator=(a1 + 24, v26);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v26);
  return a1;
}

llvm::cl::Option *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(llvm::cl::Option *a1, uint64_t *a2, char **a3, _OWORD *a4, const char **a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  *(v10 + 152) = 0;
  *(v10 + 176) = 0;
  *(v10 + 136) = 0;
  *(v10 + 144) = &unk_286E79070;
  *v10 = &unk_286E792E0;
  *(v10 + 184) = &unk_286E791E0;
  *(v10 + 192) = &unk_286E75EB0;
  *(v10 + 216) = v10 + 192;
  llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(v10, a2, a3, a4, a5, v11);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, const char **a5, uint64_t a6)
{
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], a4, a5, a6);
  llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a3, a1);
  *(a1 + 32) = *a4;

  llvm::cl::initializer<char [7]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a5, a1);
}

void llvm::cl::initializer<char [7]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(const char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = strlen(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  std::string::operator=((a2 + 120), &__dst);
  *(a2 + 176) = 1;
  std::string::operator=((a2 + 152), &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA7_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA36E0;
  a2[1] = v2;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::runOnOperation(void)::{lambda(mlir::Operation *)#1}>(uint64_t ***a1, uint64_t a2, const llvm::Twine *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v17 = "op_id";
  v19[8] = 259;
  v6 = mlir::StringAttr::get(*v5, &v17, a3);
  v7 = a1[1];
  v8 = *v7;
  *v7 = (*v7 + 1);
  v9 = mlir::FileLineColRange::get(v6, v8, 0);
  v10 = mlir::NameLoc::get(*a1[2], v9);
  v11 = v10;
  v12 = *(a2 + 24);
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    v15 = v12[1];
    v16 = v12[2];
    v17 = v19;
    v18 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Location>::append<mlir::Location const*,void>(&v17, v15, &v15[8 * v16]);
    llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(&v17, v11);
    v14 = mlir::FusedLoc::get(v17, v18, 0, **a1);
    if (v17 != v19)
    {
      free(v17);
    }
  }

  else
  {
    v13 = **a1;
    v17 = *(a2 + 24);
    v18 = v10;
    v14 = mlir::FusedLoc::get(&v17, 2, 0, v13);
  }

  *(a2 + 24) = v14;
}

std::string *mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::AddUniqueIDPass(std::string *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  mlir::ODIE::Compiler::Transforms::impl::AddUniqueIDBase<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass>::AddUniqueIDBase(a1);
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::operator=<std::string>(a1 + 14, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__r_.__value_.__r.__words[0] = &unk_286EA3600;
  return a1;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapseStaticallyShapedAllocations>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapseStaticallyShapedAllocations::~CollapseStaticallyShapedAllocations(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CollapseStaticallyShapedAllocations *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapsableOpRewriter::~CollapsableOpRewriter(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CollapsableOpRewriter *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 48);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2, InterfaceFor);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapsableOpRewriter>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::CollapsableOpRewriter]";
  v6 = 140;
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::AllocOpRewriter::~AllocOpRewriter(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::AllocOpRewriter *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::AllocOpRewriter::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(v13, *(a1 + 96), a2);
  if (v14 != 1)
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v11 = *((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 48);
  v7 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(v6, &v11);
  v12 = *(v7[1] + 8 * SLODWORD(v13[0]));
  v11 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8;
  IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v13[1]);
  v8 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), *(a2 + 3), &v11, &v12, &IndexAttr);
  (*(*a3 + 8))(a3, a2, v8);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::AllocOpRewriter>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::AllocOpRewriter]";
  v6 = 134;
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

void mlir::ODIE::Compiler::Transforms::impl::createCompileForDelegates()
{
  operator new();
}

{
  operator new();
}

void mlir::ODIE::Compiler::Transforms::createCompileForDelegates(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  if (*(a1 + 16))
  {
    *(v2 + 16) = &v4;
    *a1 = v1;
    *v1 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v3 = &v4;
  }

  *__p = *(a1 + 24);
  v7 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  mlir::ODIE::Compiler::Transforms::impl::createCompileForDelegates();
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA38B8;
    mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(v2 + 888);
    mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::CompileForDelegatesBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates>::CompileForDelegatesBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA38B8;
  *&v3 = "A map of compilers to use for the given delegate tag.";
  *(&v3 + 1) = 53;
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::Option<llvm::cl::desc>(a1 + 336, (a1 + 144), &v3);
  *(a1 + 336) = &unk_286EA3928;
  *(a1 + 872) = &unk_286EA39A8;
  *&v3 = "The directory in which to place assets.";
  *(&v3 + 1) = 39;
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::Option<llvm::cl::desc>((a1 + 888), (a1 + 144), "binaryDir", 9, &v3);
  *(a1 + 888) = &unk_286EA3C60;
  *(a1 + 1424) = &unk_286EA3CE0;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::~CompileForDelegates(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CompileForDelegates *this)
{
  *this = &unk_286EA38B8;
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(this + 888);
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA38B8;
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(this + 888);
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CompileForDelegates *this)
{
  v3 = this;
  v156 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v138[1] = *(***(v4 + 24) + 32);
  v138[2] = 0;
  v139 = *(v4 + 16);
  v140 = v4;
  v138[0] = &unk_286E76228;
  memset(v149, 0, 20);
  v5 = *(this + 57);
  v6 = this + 464;
  if (v5 != (this + 464))
  {
    v7 = *(v5 + 32);
    v8 = *(v5 + 55);
    if (v8 >= 0)
    {
      v7 = v5 + 32;
    }

    v9 = *(v5 + 40);
    if (v8 >= 0)
    {
      v9 = *(v5 + 55);
    }

    *&v155 = v7;
    *(&v155 + 1) = v9;
    v10 = *(v4 + 24);
    LOBYTE(v147) = 0;
    LOBYTE(v148[0]) = 0;
    *v143 = *(**v10 + 32);
    memset(&v143[8], 0, 24);
    mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v143, v10, &v147);
  }

  v147 = 0uLL;
  v148[0] = 0;
  *v143 = v149;
  *&v143[8] = v138;
  *&v143[16] = &v147;
  *&v155 = v143;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v4, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v155, 1))
  {
    v15 = 0;
    v11 = 0;
    goto LABEL_52;
  }

  v11 = v149[0].__r_.__value_.__r.__words[0];
  if (!LODWORD(v149[0].__r_.__value_.__r.__words[1]))
  {
    LODWORD(v24) = v149[0].__r_.__value_.__r.__words[2];
    *v143 = v4;
    *&v143[16] = 0;
    *&v143[24] = 0;
LABEL_49:
    v2 = 1;
    goto LABEL_50;
  }

  v12 = v149[0].__r_.__value_.__r.__words[0] + 24 * LODWORD(v149[0].__r_.__value_.__r.__words[2]);
  v13 = v149[0].__r_.__value_.__r.__words[0];
  if (LODWORD(v149[0].__r_.__value_.__r.__words[2]))
  {
    v14 = 24 * LODWORD(v149[0].__r_.__value_.__r.__words[2]);
    v13 = v149[0].__r_.__value_.__r.__words[0];
    while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v13 += 3;
      v14 -= 24;
      if (!v14)
      {
        goto LABEL_32;
      }
    }
  }

  if (v13 == v12)
  {
LABEL_32:
    LODWORD(v24) = v149[0].__r_.__value_.__r.__words[2];
    *v143 = v4;
    *&v143[16] = 0;
    *&v143[24] = 0;
    goto LABEL_33;
  }

  do
  {
    v16 = v13;
    v17 = v13 + 3;
    v13 = v12;
    if (v17 != v12)
    {
      v13 = v17;
      while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v13 += 3;
        if (v13 == v12)
        {
          v13 = v12;
          break;
        }
      }
    }

    mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::GraphOp>((((*(v16 + 16) + 16 * ((*(*(v16 + 16) + 44) >> 23) & 1) + ((*(*(v16 + 16) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v16 + 16) + 40)), v143);
    if (*&v143[16] == v146)
    {
      v19 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v149[0].__r_.__value_.__l.__data_, v149[0].__r_.__value_.__r.__words[2], v16, v18);
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + 16);
        if (v21)
        {
          if (*(v21 + 2))
          {
            *(v21 + 2) = 0;
            v23 = *v21;
            v22 = *(v21 + 1);
            *v22 = *v21;
            *(v23 + 8) = v22;
            *v21 = 0;
            *(v21 + 1) = 0;
          }

          mlir::Operation::destroy(v21);
        }

        *v20 = xmmword_25D0A05F0;
        v149[0].__r_.__value_.__r.__words[1] = vadd_s32(v149[0].__r_.__value_.__r.__words[1], 0x1FFFFFFFFLL);
      }
    }
  }

  while (v13 != v12);
  v11 = v149[0].__r_.__value_.__r.__words[0];
  *v143 = v4;
  *&v143[16] = 0;
  *&v143[24] = 0;
  if (!LODWORD(v149[0].__r_.__value_.__r.__words[1]))
  {
    LODWORD(v24) = v149[0].__r_.__value_.__r.__words[2];
    goto LABEL_49;
  }

  LODWORD(v24) = v149[0].__r_.__value_.__r.__words[2];
  v12 = v149[0].__r_.__value_.__r.__words[0] + 24 * LODWORD(v149[0].__r_.__value_.__r.__words[2]);
LABEL_33:
  v25 = v11;
  if (v24)
  {
    v25 = v11;
    while (*v25 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v25 += 3;
      if (v25 == v12)
      {
        goto LABEL_46;
      }
    }
  }

  if (v25 != v12)
  {
    v2 = v4;
    v24 = _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__2NSD_6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_;
    while (1)
    {
      v26 = v25[2];
      *&v155 = v25 + 2;
      *(&v155 + 1) = v143;
      v154[0] = &v155;
      if (!mlir::detail::walk<mlir::ForwardIterator>(v26, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__1NSD_6CoreML6CallOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v154, 1))
      {
        break;
      }

      *&v155 = v25 + 2;
      *(&v155 + 1) = v143;
      v27 = v25[2];
      v154[0] = &v155;
      if (!mlir::detail::walk<mlir::ForwardIterator>(v27, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__2NSD_6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v154, 1))
      {
        break;
      }

      do
      {
        v25 += 3;
      }

      while (v25 != v12 && *v25 >= 0xFFFFFFFFFFFFFFFELL);
      if (v25 == v12)
      {
        v11 = v149[0].__r_.__value_.__r.__words[0];
        LODWORD(v24) = v149[0].__r_.__value_.__r.__words[2];
        v2 = LODWORD(v149[0].__r_.__value_.__r.__words[1]) == 0;
        goto LABEL_50;
      }
    }

    v11 = 0;
    v15 = 0;
    goto LABEL_51;
  }

LABEL_46:
  v2 = 0;
LABEL_50:
  memset(v149, 0, 20);
  v15 = 1;
LABEL_51:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v143[8]);
  MEMORY[0x25F891030](*&v143[8], 8);
  v1 = v24;
LABEL_52:
  MEMORY[0x25F891030](v147, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::destroyAll(v149[0].__r_.__value_.__l.__data_, v149[0].__r_.__value_.__r.__words[2]);
  result = MEMORY[0x25F891030](v149[0].__r_.__value_.__r.__words[0], 8);
  v30 = *(v3 + 5);
  if ((v15 & 1) == 0)
  {
    *(v3 + 5) = v30 | 4;
    return result;
  }

  v31 = **(***((v30 & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v137 = v11;
  v136 = v1;
  v135 = v4;
  if (*(v31 + 41) == 1)
  {
    v32 = *(v31 + 48);
    if (*(v3 + 1031) < 0)
    {
      std::string::__init_copy_ctor_external(&v142, *(v3 + 126), *(v3 + 127));
    }

    else
    {
      v142 = *(v3 + 42);
    }

    v141 = v32;
    v33 = *(v3 + 57);
    *&v147 = v148;
    *(&v147 + 1) = 0x600000000;
    if (v33 != v6)
    {
      v34 = 0;
      v35 = v33;
      do
      {
        v36 = v34;
        v37 = *(v35 + 1);
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = *(v35 + 2);
            v39 = *v38 == v35;
            v35 = v38;
          }

          while (!v39);
        }

        v34 = v36 + 1;
        v35 = v38;
      }

      while (v38 != v6);
      if (v36 >= 6)
      {
        *v143 = 0;
        v40 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v147, v148, v36 + 1, 8, v143);
        v41 = v147;
        if (DWORD2(v147))
        {
          v42 = 2 * DWORD2(v147);
          v43 = v42 * 4;
          v44 = v40;
          v45 = v147;
          do
          {
            *v44++ = *v45;
            *v45++ = 0;
            v43 -= 8;
          }

          while (v43);
          v46 = v41 - 2;
          do
          {
            v47 = *&v46[v42];
            if (v47 && !atomic_fetch_add(v47 + 1, 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(*v47 + 16))(v47);
            }

            v42 -= 2;
          }

          while (v42 * 4);
          v41 = v147;
        }

        v48 = *v143;
        if (v41 != v148)
        {
          free(v41);
        }

        *&v147 = v40;
        HIDWORD(v147) = v48;
      }

      v64 = *(v33 + 32);
      v65 = *(v33 + 55);
      if (v65 >= 0)
      {
        v64 = v33 + 32;
      }

      if (v65 < 0)
      {
        v65 = *(v33 + 40);
      }

      *v143 = v64;
      *&v143[8] = v65;
      v66 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v143, v29);
      v68 = 0;
      if (v66 && v66 != v11 + 24 * v1)
      {
        v69 = *(v33 + 55);
        v70 = *(v33 + 32);
        if (v69 >= 0)
        {
          v70 = v33 + 32;
        }

        if (v69 < 0)
        {
          v69 = *(v33 + 40);
        }

        *v143 = v70;
        *&v143[8] = v69;
        v71 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v143, v67);
        v72 = v11 + 24 * v1;
        if (v71)
        {
          v72 = v71;
        }

        v68 = *(v72 + 16);
      }

      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v149, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
      }

      else
      {
        v149[0] = v142;
      }

      if (*(v33 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v149[1], *(v33 + 32), *(v33 + 40));
      }

      else
      {
        v73 = *(v33 + 32);
        v149[1].__r_.__value_.__r.__words[2] = *(v33 + 48);
        *&v149[1].__r_.__value_.__l.__data_ = v73;
      }

      std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](&v150, v33 + 56);
      *v143 = v149[0];
      *&v143[40] = *(&v149[1].__r_.__value_.__l + 2);
      memset(v149, 0, sizeof(v149));
      v152 = v68;
      *&v143[24] = *&v149[1].__r_.__value_.__l.__data_;
      if (v151)
      {
        if (v151 == &v150)
        {
          v145 = &v144;
          (*(*v151 + 24))();
          v68 = v152;
        }

        else
        {
          v145 = v151;
          v151 = 0;
        }
      }

      else
      {
        v145 = 0;
      }

      v146 = v68;
      operator new();
    }

    DWORD2(v147) = 0;
    (*(*v32 + 32))(v32, &v141);
    v74 = v147;
    v75 = 1;
    if (DWORD2(v147))
    {
      v76 = 8 * DWORD2(v147) - 8;
      do
      {
        v77 = *v74;
        *v143 = *v74 + 24;
        v143[8] = 1;
        std::mutex::lock(*v143);
        std::__assoc_sub_state::__sub_wait(v77, v143);
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v78 = *(v77 + 16);
        std::exception_ptr::~exception_ptr(v149);
        if (v78)
        {
          std::exception_ptr::exception_ptr(v149, (v77 + 16));
          v133.__ptr_ = v149;
          std::rethrow_exception(v133);
        }

        if (v143[8] == 1)
        {
          std::mutex::unlock(*v143);
        }

        v79 = *(v77 + 140);
        if ((v79 & 1) == 0)
        {
          break;
        }

        v74 += 2;
        v80 = v76;
        v76 -= 8;
      }

      while (v80);
      v74 = v147;
      if (DWORD2(v147))
      {
        v81 = 8 * DWORD2(v147);
        v82 = v147 - 8;
        v1 = v136;
        do
        {
          v83 = *(v82 + v81);
          if (v83 && !atomic_fetch_add(v83 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v83 + 16))(v83);
          }

          v81 -= 8;
        }

        while (v81);
        v74 = v147;
        v75 = v79;
      }

      else
      {
        v75 = v79;
        v1 = v136;
      }
    }

    if (v74 != v148)
    {
      free(v74);
    }

    (*(*v141 + 32))(v141, &v141);
    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if ((v75 & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_109;
  }

  if (*(v3 + 1031) < 0)
  {
    std::string::__init_copy_ctor_external(v143, *(v3 + 126), *(v3 + 127));
  }

  else
  {
    *v143 = *(v3 + 63);
    *&v143[16] = *(v3 + 128);
  }

  v49 = *(v3 + 57);
  if (v49 == v6)
  {
    v58 = 1;
  }

  else
  {
    do
    {
      v50 = v49[4];
      v51 = *(v49 + 55);
      if (v51 >= 0)
      {
        v50 = (v49 + 4);
      }

      if (v51 < 0)
      {
        v51 = v49[5];
      }

      v149[0].__r_.__value_.__r.__words[0] = v50;
      v149[0].__r_.__value_.__l.__size_ = v51;
      v52 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v149, v29);
      v53 = 0;
      if (v52 && v52 != v11 + 24 * v1)
      {
        v54 = *(v49 + 55);
        v55 = v49[4];
        if (v54 >= 0)
        {
          v55 = (v49 + 4);
        }

        if (v54 < 0)
        {
          v54 = v49[5];
        }

        v149[0].__r_.__value_.__r.__words[0] = v55;
        v149[0].__r_.__value_.__l.__size_ = v54;
        v56 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v149, 0);
        if (v56)
        {
          v57 = v56;
        }

        else
        {
          v57 = v11 + 24 * v1;
        }

        v53 = *(v57 + 16);
      }

      if (!v58)
      {
        break;
      }

      v59 = v49[1];
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v49[2];
          v39 = *v60 == v49;
          v49 = v60;
        }

        while (!v39);
      }

      v49 = v60;
    }

    while (v60 != v6);
  }

  if ((v143[23] & 0x80000000) != 0)
  {
    operator delete(*v143);
    if (v58)
    {
      goto LABEL_109;
    }

LABEL_162:
    *(v3 + 5) |= 4uLL;
    goto LABEL_236;
  }

  if (!v58)
  {
    goto LABEL_162;
  }

LABEL_109:
  v147 = 0uLL;
  v148[0] = 0;
  if (v2)
  {
    goto LABEL_224;
  }

  v61 = v11;
  v62 = v136;
  if (v136)
  {
    v63 = 24 * v136;
    v61 = v11;
    while (*v61 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v61 += 3;
      v63 -= 24;
      if (!v63)
      {
        goto LABEL_224;
      }
    }

    v62 = v136;
  }

  v84 = (v11 + 24 * v62);
  if (v61 == v84)
  {
    goto LABEL_224;
  }

  v85 = 0;
  do
  {
    mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::GraphOp>((((v61[2] + 16 * ((*(v61[2] + 44) >> 23) & 1) + ((*(v61[2] + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v61[2] + 40)), v143);
    *&v149[0].__r_.__value_.__l.__data_ = *v143;
    *&v149[0].__r_.__value_.__r.__words[2] = *&v143[16];
    *&v149[1].__r_.__value_.__r.__words[1] = *&v143[32];
    v150 = v144;
    v86 = v146;
    while (v149[0].__r_.__value_.__r.__words[2] != v86)
    {
      v87 = (*(&v150 + 1))();
      v153[0] = 0;
      v88 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(v85, v148[0], v61, v153);
      v89 = v153[0];
      if (v88)
      {
        v90 = *(v153[0] + 16);
        goto LABEL_175;
      }

      v154[0] = v153[0];
      v91 = DWORD2(v147);
      v92 = v148[0];
      if (4 * DWORD2(v147) + 4 >= (3 * v148[0]))
      {
        v93 = 2 * v148[0];
LABEL_183:
        v134 = v3;
        v99 = (v93 - 1) | ((v93 - 1) >> 1);
        v100 = v99 | (v99 >> 2) | ((v99 | (v99 >> 2)) >> 4);
        v101 = ((v100 | (v100 >> 8)) >> 16) | v100 | (v100 >> 8);
        if ((v101 + 1) > 0x40)
        {
          v102 = (v101 + 1);
        }

        else
        {
          v102 = 64;
        }

        v148[0] = v102;
        buffer = llvm::allocate_buffer((8 * (v102 + 4 * v102)), 8uLL);
        v104 = buffer;
        *&v147 = buffer;
        v105 = 0;
        if (v85)
        {
          *(&v147 + 1) = 0;
          do
          {
            *&buffer[v105] = xmmword_25D0A05E0;
            v105 += 5;
          }

          while (5 * v102 != v105);
          if (v92)
          {
            v106 = 0;
            v107 = 40 * v92;
            v108 = v85;
            do
            {
              if (*v108 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                *&v155 = 0;
                llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(v104, v102, v108, &v155);
                v109 = v155;
                *v155 = *v108;
                *(v109 + 32) = 0;
                *(v109 + 16) = 0;
                *(v109 + 24) = 0;
                *(v109 + 16) = *(v108 + 16);
                *(v108 + 16) = 0;
                *(v109 + 24) = *(v108 + 24);
                *(v108 + 24) = 0;
                v110 = *(v109 + 28);
                *(v109 + 28) = *(v108 + 28);
                *(v108 + 28) = v110;
                v111 = *(v109 + 32);
                *(v109 + 32) = *(v108 + 32);
                *(v108 + 32) = v111;
                DWORD2(v147) = ++v106;
                MEMORY[0x25F891030](0, 8);
              }

              v108 += 40;
              v107 -= 40;
            }

            while (v107);
          }

          MEMORY[0x25F891030](v85, 8);
          v104 = v147;
          LODWORD(v102) = v148[0];
          v91 = DWORD2(v147);
        }

        else
        {
          *(&v147 + 1) = 0;
          do
          {
            *&buffer[v105] = xmmword_25D0A05E0;
            v105 += 5;
          }

          while (5 * v102 != v105);
          v91 = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(v104, v102, v61, v154);
        v89 = v154[0];
        v85 = v104;
        v3 = v134;
        goto LABEL_172;
      }

      v93 = v148[0];
      if (v148[0] + ~DWORD2(v147) - HIDWORD(v147) <= v148[0] >> 3)
      {
        goto LABEL_183;
      }

LABEL_172:
      DWORD2(v147) = v91 + 1;
      if (*v89 != -1)
      {
        --HIDWORD(v147);
      }

      v90 = 0;
      *v89 = *v61;
      *(v89 + 16) = 0;
      *(v89 + 24) = 0;
      *(v89 + 32) = 0;
LABEL_175:
      v155 = *(*(v87 + 16 * ((*(v87 + 44) >> 23) & 1) + 120) + 16);
      v142.__r_.__value_.__r.__words[0] = 0;
      v94 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(v90, *(v89 + 32), &v155, &v142);
      v95 = v142.__r_.__value_.__r.__words[0];
      if (v94)
      {
        goto LABEL_181;
      }

      v153[0] = v142.__r_.__value_.__r.__words[0];
      v96 = *(v89 + 24);
      v97 = *(v89 + 32);
      if (4 * v96 + 4 >= (3 * v97))
      {
        v98 = 2 * v97;
LABEL_196:
        v112 = *(v89 + 16);
        v113 = (v98 - 1) | ((v98 - 1) >> 1);
        v114 = v113 | (v113 >> 2) | ((v113 | (v113 >> 2)) >> 4);
        v115 = ((v114 | (v114 >> 8)) >> 16) | v114 | (v114 >> 8);
        if ((v115 + 1) > 0x40)
        {
          v116 = v115 + 1;
        }

        else
        {
          v116 = 64;
        }

        *(v89 + 32) = v116;
        v117 = llvm::allocate_buffer((24 * v116), 8uLL);
        *(v89 + 16) = v117;
        if (v112)
        {
          v118 = v3;
          *(v89 + 24) = 0;
          v119 = *(v89 + 32);
          v120 = xmmword_25D0A05E0;
          if (v119)
          {
            v121 = 24 * v119;
            do
            {
              *v117 = xmmword_25D0A05E0;
              v117 += 3;
              v121 -= 24;
            }

            while (v121);
          }

          if (v97)
          {
            v122 = 24 * v97;
            v123 = v112;
            do
            {
              if (*v123 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v154[0] = 0;
                llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(*(v89 + 16), *(v89 + 32), v123, v154);
                v124 = v154[0];
                v120 = *v123;
                *v154[0] = *v123;
                *(v124 + 16) = *(v123 + 16);
                ++*(v89 + 24);
              }

              v123 += 24;
              v122 -= 24;
            }

            while (v122);
          }

          MEMORY[0x25F891030](v112, 8, v120);
          LODWORD(v125) = *(v89 + 32);
          v3 = v118;
        }

        else
        {
          *(v89 + 24) = 0;
          v125 = *(v89 + 32);
          if (v125)
          {
            v126 = 24 * v125;
            do
            {
              *v117 = xmmword_25D0A05E0;
              v117 += 3;
              v126 -= 24;
            }

            while (v126);
          }
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(*(v89 + 16), v125, &v155, v153);
        v96 = *(v89 + 24);
        v95 = v153[0];
        goto LABEL_178;
      }

      v98 = *(v89 + 32);
      if (v97 + ~v96 - *(v89 + 28) <= v97 >> 3)
      {
        goto LABEL_196;
      }

LABEL_178:
      *(v89 + 24) = v96 + 1;
      if (*v95 != -1)
      {
        --*(v89 + 28);
      }

      *v95 = v155;
      v95[2] = 0;
LABEL_181:
      v95[2] = v87;
      mlir::Region::OpIterator::operator++(v149);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v149);
    }

    v61 += 3;
    if (v61 == v84)
    {
      v11 = v137;
    }

    else
    {
      v11 = v137;
      do
      {
        if (*v61 < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }

        v61 += 3;
      }

      while (v61 != v84);
    }
  }

  while (v61 != v84);
LABEL_224:
  v127 = *(((v135 + 16 * ((*(v135 + 44) >> 23) & 1) + ((*(v135 + 44) >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v135 + 40) + 8);
  if (v127)
  {
    v128 = v127 - 8;
  }

  else
  {
    v128 = 0;
  }

  v129 = *(v128 + 40);
  v139 = v128;
  v140 = v129;
  *v143 = &v147;
  *&v143[8] = v138;
  v149[0].__r_.__value_.__r.__words[0] = v143;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v135, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates14runOnOperationEvE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v149, 1))
  {
    *(v3 + 5) |= 4uLL;
  }

  v130 = v147;
  v1 = v136;
  if (v148[0])
  {
    v131 = 40 * v148[0];
    v132 = (v147 + 16);
    do
    {
      if (*(v132 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        MEMORY[0x25F891030](*v132, 8);
      }

      v132 += 5;
      v131 -= 40;
    }

    while (v131);
    v130 = v147;
  }

  MEMORY[0x25F891030](v130, 8);
LABEL_236:
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::destroyAll(v11, v1);
  return MEMORY[0x25F891030](v11, 8);
}

uint64_t mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::Option<llvm::cl::desc>(uint64_t a1, char *a2, _OWORD *a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = llvm::cl::Option::Option(a1, 0, 0);
  *(v6 + 128) = 0u;
  *(v6 + 120) = v6 + 128;
  *(v6 + 144) = &unk_286EA3B10;
  *v6 = &unk_286EA3AA8;
  *(v6 + 160) = v6;
  *(v6 + 168) = v6 + 184;
  *(v6 + 176) = 0x800000000;
  *(v6 + 152) = &unk_286EA3B30;
  v7 = (v6 + 504);
  *(v6 + 504) = &unk_286EA3BD0;
  *(v6 + 528) = v6 + 504;
  llvm::cl::Option::setArgStr(v6, "compilers", 9, v8, v9, v10);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, v14);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 544) = 0;
  *a1 = &unk_286EA39E8;
  *(a1 + 536) = &unk_286EA3A68;
  v14[0] = a1 + 536;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v14);
  v13[0] = &unk_286EA3C18;
  v13[1] = a1;
  v15 = v14;
  v13[3] = v13;
  v14[0] = &unk_286EA3C18;
  v14[1] = a1;
  if (v14 != v7)
  {
    v11 = *(a1 + 528);
    if (v11 == v7)
    {
      v16[0] = &unk_286EA3C18;
      v16[1] = a1;
      v15 = 0;
      (*(*v11 + 24))(v11, v14);
      (*(**(a1 + 528) + 32))(*(a1 + 528));
      *(a1 + 528) = 0;
      v15 = v14;
      (*(v16[0] + 24))(v16, v7);
      (*(v16[0] + 32))(v16);
    }

    else
    {
      *(a1 + 504) = &unk_286EA3C18;
      *(a1 + 512) = a1;
      v15 = v11;
    }

    *(a1 + 528) = v7;
  }

  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](v14);
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](v13);
  return a1;
}

uint64_t llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v8 = *(*(a1 + 160) + 24);
  v9 = v8 == 0;
  if (v8)
  {
    a4 = a6;
  }

  v20 = 1283;
  if (!v9)
  {
    a3 = a5;
  }

  v19[0] = "Cannot find option named '";
  v19[2] = a3;
  v19[3] = a4;
  v21[0] = v19;
  v21[2] = "'!";
  v22 = 770;
  v12 = llvm::errs(a1);
  v13 = llvm::cl::Option::error(a1, v21, 0, 0, v12);
  if (v13)
  {
    goto LABEL_12;
  }

  if ((a1 + 120) != &v17)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>((a1 + 120), v17, v18);
  }

  *(a1 + 12) = a2;
  v14 = *(a1 + 528);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v17);
LABEL_12:
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(&v17, v18[0]);
    return v13;
  }

  v16 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::getValueExpectedFlagDefault(v16);
}

uint64_t llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::getValueExpectedFlagDefault(uint64_t a1)
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

void mlir::Pass::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::setDefault(uint64_t a1)
{
  v1 = (a1 + 120);
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  if (v1 == &v3)
  {
    v2 = 0;
  }

  else
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>(v1, v4, v4);
    v2 = v4[0];
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(&v3, v2);
}

void mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

void mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 120);
  if (v4 != (a2 - 416))
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>(v4, *(a2 - 416), (a2 - 408));
  }

  *(a1 + 544) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 - 520), *(a1 - 512));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>((result - 416), *(a2 - 416), (a2 - 408));
  }

  *(result + 8) = *(a2 + 8);
}

void mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286EA3AA8;
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3B80;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1 + 120, *(a1 + 128));

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~opt(uint64_t a1)
{
  *a1 = &unk_286EA3AA8;
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3B80;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1 + 120, *(a1 + 128));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286EA3AA8;
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3B80;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1 + 120, *(a1 + 128));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void *mlir::detail::PassOptions::GenericOptionParser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void mlir::detail::PassOptions::GenericOptionParser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void *llvm::cl::parser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~parser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~parser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_3mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_8functionIFNS_10unique_ptrIN4llvm12MemoryBufferENS_14default_deleteISG_EEEEOSJ_RKNS_4__fs10filesystem4pathENSF_12function_refIFvRKNSF_5TwineEEEEEEENS_4lessISC_EENSA_INS_4pairIKSC_SX_EEEEEENS4_19GenericOptionParserIS14_EEEC1IJNSF_2cl4descEEEERS4_NSF_9StringRefEDpOT_EUlRKT_E_NSA_IS1J_EEFvRKS14_EE7__cloneEPNS0_6__baseIS1N_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA3C18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>(uint64_t ***a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_23;
  }

  v6 = *a1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v8 = v6[1];
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    v16 = 0;
LABEL_22:
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1, v16);
    goto LABEL_23;
  }

  v9 = std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::_DetachedTreeCache::__detach_next(v8);
  if (a2 != a3)
  {
    v10 = a2;
    do
    {
      v11 = v8;
      v8 = v9;
      std::string::operator=((v11 + 4), (v10 + 4));
      std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator=(v11 + 7, (v10 + 7));
      leaf_high = std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__find_leaf_high(v5, &v17, v11 + 4);
      std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__insert_node_at(v5, v17, leaf_high, v11);
      if (v9)
      {
        v9 = std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::_DetachedTreeCache::__detach_next(v9);
      }

      v13 = v10[1];
      if (v13)
      {
        do
        {
          a2 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          a2 = v10[2];
          v14 = *a2 == v10;
          v10 = a2;
        }

        while (!v14);
      }

      if (!v8)
      {
        break;
      }

      v10 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(v5, v8);
  if (v9)
  {
    for (i = v9[2]; i; i = i[2])
    {
      v9 = i;
    }

    a1 = v5;
    v16 = v9;
    goto LABEL_22;
  }

LABEL_23:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

llvm::cl::Option *mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::Option<llvm::cl::desc>(llvm::cl::Option *a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = a4;
  v9[0] = a2;
  v9[1] = 0;
  v7 = llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v10, v9, a5);
  *(v7 + 544) = 0;
  *v7 = &unk_286EA3D20;
  *(v7 + 67) = &unk_286EA3DA0;
  v9[0] = v7 + 536;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v9);
  v11[0] = &unk_286EA3F50;
  v11[1] = a1;
  v11[3] = v11;
  std::function<void ()(std::__fs::filesystem::path const&)>::operator=(a1 + 63, v11);
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](v11);
  return a1;
}

uint64_t llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(&__str, 0, sizeof(__str));
  v8 = llvm::cl::parser<std::__fs::filesystem::path>::parse((a1 + 152), a1, a3, a4, a5, a6);
  if ((v8 & 1) == 0)
  {
    std::string::operator=((a1 + 120), &__str);
    *(a1 + 12) = a2;
    v9 = *(a1 + 528);
    if (!v9)
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::getValueExpectedFlagDefault(v11);
    }

    (*(*v9 + 48))(v9, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::getValueExpectedFlagDefault(uint64_t a1)
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

void mlir::Pass::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

std::string *mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::copyValueFrom(std::string *a1, uint64_t a2)
{
  result = std::string::operator=(a1 + 5, (a2 - 416));
  a1[22].__r_.__value_.__s.__data_[16] = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 - 520), *(a1 - 512));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

std::string *non-virtual thunk tomlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 - 416), (a2 - 416));
  *(a1 + 8) = *(a2 + 8);
  return result;
}

llvm::cl::Option *llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(llvm::cl::Option *a1, uint64_t *a2, char **a3, _OWORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 144) = &unk_286EA3E48;
  *v8 = &unk_286EA3DE0;
  *(v8 + 160) = v8;
  *(v8 + 168) = v8 + 184;
  *(v8 + 176) = 0x800000000;
  *(v8 + 152) = &unk_286EA3E68;
  *(v8 + 504) = &unk_286EA3F08;
  *(v8 + 528) = v8 + 504;
  llvm::cl::Option::setArgStr(v8, *a2, a2[1], v9, v10, v11);
  llvm::cl::sub::apply<llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>>(a3, a1);
  *(a1 + 2) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286EA3DE0;
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3EB8;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~opt(uint64_t a1)
{
  *a1 = &unk_286EA3DE0;
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3EB8;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286EA3DE0;
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3EB8;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void *mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void *llvm::cl::parser<std::__fs::filesystem::path>::~parser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<std::__fs::filesystem::path>::~parser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

char **llvm::cl::sub::apply<llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>>(char **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void *std::function<void ()(std::__fs::filesystem::path const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_4__fs10filesystem4pathENS4_19GenericOptionParserIS8_EEEC1IJN4llvm2cl4descEEEERS4_NSD_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKS8_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA3F50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::cl::parser<std::__fs::filesystem::path>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(a1 + 1) + 24);
  v14 = 1283;
  v8 = v7 == 0;
  if (v7)
  {
    a4 = a6;
  }

  if (!v8)
  {
    a3 = a5;
  }

  v13[0] = "Cannot find option named '";
  v13[2] = a3;
  v13[3] = a4;
  v15[0] = v13;
  v15[2] = "'!";
  v16 = 770;
  v11 = llvm::errs(a1);
  return llvm::cl::Option::error(a2, v15, 0, 0, v11);
}

void llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::setDefaultImpl<std::__fs::filesystem::path,void>(std::string *a1)
{
  memset(&__str, 0, sizeof(__str));
  std::string::operator=(a1 + 5, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

double mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::GraphOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t *llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_25D0A05E0;
        result += 3;
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v21 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), v13, &v21);
          v14 = v21;
          *v21 = *v13;
          v15 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v14 + 2) = v15;
          ++*(a1 + 8);
          v16 = *(v13 + 16);
          if (v16)
          {
            if (*(v16 + 2))
            {
              *(v16 + 2) = 0;
              v18 = *v16;
              v17 = *(v16 + 1);
              *v17 = *v16;
              *(v18 + 8) = v17;
              *v16 = 0;
              *(v16 + 1) = 0;
            }

            mlir::Operation::destroy(v16);
          }
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 24 * v19;
    do
    {
      *result = xmmword_25D0A05E0;
      result += 3;
      v20 -= 24;
    }

    while (v20);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void **a1, uint64_t a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
  {
    v5 = *a1;
    {
      return 1;
    }

    else
    {
      v7 = *v5;
      v47 = a2 + 64;
      v52[0] = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 16);
      v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(*v7, *(v7 + 4), v52, v6);
      v9 = *v7 + 24 * *(v7 + 4);
      if (v8)
      {
        v9 = v8;
      }

      if (v9 != **v5 + 24 * *(*v5 + 16))
      {
        v10 = (v5[1] + 24);
        v11 = *(((*(v9 + 16) + 16 * ((*(*(v9 + 16) + 44) >> 23) & 1) + ((*(*(v9 + 16) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v9 + 16) + 40) + 8);
        if (v11)
        {
          v12 = v11 - 8;
        }

        else
        {
          v12 = 0;
        }

        *v10 = v12;
        v10[1] = v12 + 32;
        v13 = *(v5[1] + 8);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v14 = *(a2 + 68);
          v15 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 4;
        }

        else
        {
          v14 = 0;
          v15 = 4;
        }

        v16 = *(a2 + 36);
        v17 = (a2 - 16) | 6;
        if (!v16)
        {
          v17 = 6;
        }

        *&v52[0] = v15;
        *(&v52[0] + 1) = v14;
        __p = v17;
        *&__len = v16;
        v18 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v13, v52, &__p);
        v52[0] = IV;
        v52[1] = unk_25D09EB5C;
        v52[2] = IV;
        v52[3] = unk_25D09EB5C;
        v53 = 0;
        memset(&v52[4], 0, 75);
        v20 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(a2, v19);
        v22 = v21;
        v23 = v5[2];
        v54.__r_.__value_.__r.__words[0] = 0;
        v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(*v23, *(v23 + 16), v20, &v54);
        v26 = v54.__r_.__value_.__r.__words[0];
        if (v24)
        {
          v27 = *(v54.__r_.__value_.__r.__words[0] + 8);
          goto LABEL_24;
        }

        v30 = *(v23 + 16);
        __p = v54.__r_.__value_.__r.__words[0];
        v31 = *(v23 + 8);
        if (4 * v31 + 4 >= 3 * v30)
        {
          v30 *= 2;
        }

        else if (v30 + ~v31 - *(v23 + 12) > v30 >> 3)
        {
LABEL_21:
          *(v23 + 8) = v31 + 1;
          if (*v26 != -4096)
          {
            --*(v23 + 12);
          }

          v27 = 0;
          *v26 = v20;
          v26[1] = 0;
LABEL_24:
          v26[1] = v27 + 1;
          __src = v27;
          for (v32.n128_f64[0] = llvm_blake3_hasher_update(v52, &__src, 8uLL, v25); v20; v22 = v36)
          {
            v33 = (*v22)(v22, v20, v32);
            llvm_blake3_hasher_update(v52, *(v33 + 16), *(v33 + 24), v34);
            v20 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(v20, v35);
          }

          llvm_blake3_hasher_finalize_seek(v52, 0, &v54, 0x20uLL);
          __p = &v58;
          __len = xmmword_25D0A05B0;
          llvm::SmallVectorImpl<char>::resizeImpl<true>(&__p, 0x40uLL);
          v37 = 0;
          for (i = 0; i != 32; ++i)
          {
            v39 = v54.__r_.__value_.__s.__data_[i];
            *(__p + v37) = llvm::hexdigit(unsigned int,BOOL)::LUT[v39 >> 4] | 0x20;
            *(__p + v37 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v39 & 0xF] | 0x20;
            v37 += 2;
          }

          std::string::basic_string[abi:nn200100](&__dst, __p, __len);
          if (__p != &v58)
          {
            free(__p);
          }

          v40 = std::string::insert(&__dst, 0, "graph_");
          v41 = v40->__r_.__value_.__r.__words[2];
          *v49 = *&v40->__r_.__value_.__l.__data_;
          v50 = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v42 = v5[1];
          v43 = *(a2 + 24);
          v44 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v42 + 8, *(**v43 + 32));
          __p = v43;
          *&__len = v44;
          *(&__len + 1) = &v59;
          v58 = 0x400000000;
          v60 = v62;
          v61 = 0x400000000;
          v62[4] = v63;
          v62[5] = 0x400000000;
          v63[8] = 4;
          v63[9] = v64;
          v63[10] = 0x100000000;
          v64[1] = v65;
          v64[2] = 0x100000000;
          if (v50 >= 0)
          {
            v45 = v49;
          }

          else
          {
            v45 = v49[0];
          }

          v65[2] = 0;
          v65[1] = 0;
          v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v65[4] = 0;
          if (v50 >= 0)
          {
            v46 = SHIBYTE(v50);
          }

          else
          {
            v46 = v49[1];
          }

          v65[6] = 0;
          mlir::ODIE::Compiler::CoreML::GraphOp::build((v42 + 8), &__p, v45, v46, v18, 0, 0, 0, 0, 0, 0, 0);
        }

        llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v23, v30);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(*v23, *(v23 + 16), v20, &__p);
        v31 = *(v23 + 8);
        v26 = __p;
        goto LABEL_21;
      }

      v54.__r_.__value_.__r.__words[0] = "compiler not registered for delegate: ";
      v55 = 259;
      mlir::Operation::emitError(v52, a2, &v54);
      if (*&v52[0])
      {
        v28 = *(*(v47 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 16);
        v29 = *(*(v47 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 24);
        v59 = 261;
        __p = v28;
        *&__len = v29;
        mlir::Diagnostic::operator<<(v52 + 8, &__p);
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(v52);
      return 0;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Transforms::anonymous namespace::shouldSkipCompilation(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = a1 + 64 + 16 * ((v1 >> 23) & 1);
  v3 = *(v2 + 8);
  if (*(v3 + 24) == 11)
  {
    v4 = *(v3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    v8 = v5 == 0x6572707265746E49 && v6 == 0x7265746572707265;
  }

  else
  {
    v8 = 0;
  }

  v9 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  v12 = *v9 != v9 && ((v10 = v9[1]) != 0 ? (v11 = v10 - 8) : (v11 = 0), *(v11 + 32) != v11 + 32) && *(*(*(v11 + 40) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id;
  return v8 || v12;
}

void *mlir::StringAttr::str@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = *(*this + 16);
  if (v2)
  {
    return std::string::basic_string[abi:nn200100](a2, v2, *(*this + 24));
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2 - 1;
  v7 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
  v8 = a1 + 24 * v7;
  if ((llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v8, *(v8 + 8)) & 1) == 0)
  {
    v9 = 1;
    while (*v8 != -1)
    {
      v10 = v9 + 1;
      v7 = (v7 + v9) & v6;
      v8 = a1 + 24 * v7;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v8, *(v8 + 8));
      v9 = v10;
      if (isEqual)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(uint64_t a1, int a2)
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
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = v19[1];
          *v31 = *v19;
          v21[1] = v22;
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
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t std::__find[abi:nn200100]<llvm::StringRef const*,llvm::StringRef const*,std::string,std::__identity>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    if (v5 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    do
    {
      if (*(v3 + 8) == v7 && (!v7 || !memcmp(*v3, v6, v7)))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__1NSD_6CoreML6CallOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(char ****a1, mlir::Operation *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
  {
    v3 = (*a1)[1];
    v4 = ***a1;
    v20 = a2;
    ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(&v20);
    if (ResolvedCallee)
    {
      if (v18)
      {
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        std::deque<mlir::SymbolOpInterface>::push_back(&v21, &v17);
        for (i = v17; i.n128_u64[0]; std::deque<mlir::SymbolOpInterface>::push_back(&v21, &i))
        {
          v7 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(i.n128_i64[0], v6);
          i.n128_u64[0] = v7;
          i.n128_u64[1] = v8;
          if (!v7 || v7 == *v3 || !*((*v8)(v8, v7) + 24))
          {
            break;
          }
        }

        do
        {
          if (!*(&v23 + 1))
          {
            v2 = 1;
            goto LABEL_21;
          }

          v9 = 32 * (v22 - *(&v21 + 1)) - 1;
          if (v22 == *(&v21 + 1))
          {
            v9 = 0;
          }

          v10 = v23 + *(&v23 + 1) - 1;
          v11 = *(*(&v21 + 1) + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10;
          v12 = *v11;
          v13 = *(v11 + 8);
          --*(&v23 + 1);
          if (v9 - v10 >= 0x200)
          {
            operator delete(*(v22 - 8));
            *&v22 = v22 - 8;
          }
        }

        while ((v14 & 1) != 0);
        v2 = 0;
LABEL_21:
        std::deque<mlir::SymbolOpInterface>::~deque[abi:nn200100](&v21);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17.n128_u64[0] = "callee was not yet resolved";
      v19 = 259;
      mlir::Operation::emitError(&v21, v20, &v17);
      v2 = v24 ^ 1u;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    }
  }

  return v2;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::anonymous namespace::DelegatedModuleUpdater::lookupCalleeInOriginalModule(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v9 = 0uLL;
  v14 = &v9;
  v15[0] = a2;
  v15[1] = &v10;
  if (v9)
  {
    *a1 = v9;
    *(a1 + 16) = 1;
  }

  else
  {
    v13 = 257;
    emitDiag(a3, 2, &v11, &v14);
    if (v14)
    {
      mlir::Diagnostic::operator<<<30ul>(v15, "could not resolve the callee ");
      if (v14)
      {
        v11 = 0;
        v12 = v10;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, &v11, 1);
        v7 = v16 + 24 * v17;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v17;
      }
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }
}

char *mlir::ODIE::Compiler::Transforms::anonymous namespace::anonymous namespace::DelegatedModuleUpdater::lookupOrClone(uint64_t a1, uint64_t a2, mlir::Operation *a3, uint64_t (**a4)(void, mlir::Operation *), int a5)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v10 = (*a4)(a4, a3);
  v11 = mlir::SymbolTableCollection::lookupSymbolIn((a1 + 8), a2, v10);
  if (v11)
  {
    return v11;
  }

  if (!a5)
  {
    mlir::Operation::cloneWithoutRegions(a3);
    operator new();
  }

  v12 = mlir::Operation::clone(a3, 3);
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable((a1 + 8), a2);
  v14 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v14)
  {
    v15 = v14 - 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::SymbolTable::insert(SymbolTable, v12, *(v15 + 40));
  if (v16 != (*a4)(a4, a3))
  {
    v22 = "symbol ";
    v23 = 259;
    mlir::Operation::emitError(&v24, a3, &v22);
    v18 = (*a4)(a4, a3);
    if (v24)
    {
      v28 = 0;
      v29[0] = v18;
      v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v28, 1);
      v20 = v26 + 24 * v27;
      v21 = *v19;
      *(v20 + 16) = *(v19 + 16);
      *v20 = v21;
      ++v27;
      if (v24)
      {
        mlir::Diagnostic::operator<<<16ul>(&v25, "already defined");
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v28, &v24);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    mlir::Diagnostic::attachNote(v29, *(a2 + 24), 1);
  }

  return v12;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::anonymous namespace::anonymous namespace::DelegatedModuleUpdater::lookupCalleeInOriginalModule(mlir::Location,mlir::SymbolRefAttr)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v5))
  {
    return 2;
  }

  v6 = mlir::SymbolTableCollection::lookupSymbolIn(v4 + 8, a2, **(a1 + 16));
  if (v6)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = *a1;
  *v10 = v6;
  v10[1] = v8;
  return **a1 == 0;
}

__n128 std::deque<mlir::SymbolOpInterface>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<mlir::SymbolOpInterface>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void std::deque<mlir::SymbolOpInterface>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<mlir::SymbolOpInterface *>::emplace_back<mlir::SymbolOpInterface *&>(a1, &v9);
}

void std::__split_buffer<mlir::SymbolOpInterface *>::emplace_back<mlir::SymbolOpInterface *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<mlir::SymbolOpInterface *>::emplace_back<mlir::SymbolOpInterface *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<mlir::SymbolOpInterface *>::emplace_front<mlir::SymbolOpInterface *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<mlir::SymbolOpInterface *>::emplace_front<mlir::SymbolOpInterface *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::deque<mlir::SymbolOpInterface>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<mlir::SymbolOpInterface *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<mlir::SymbolOpInterface *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__2NSD_6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ******a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v4 = (*a1)[1];
    v5 = ***a1;
    v27 = a2;
    ResolvedCallee = mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(&v27);
    if (ResolvedCallee)
    {
      if (v26 == 1)
      {
        v7 = v25;
        v8 = v25 + 16;
        v9 = (((&v25[4 * ((v25[11] >> 23) & 1) + 17] + ((v25[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v25[10]);
        if (*v9 == v9)
        {
          InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v25);
          v14 = v16;
        }

        else
        {
          mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>(v9, &v21);
          if (llvm::hasSingleElement<llvm::iterator_range<mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>> &>(&v21))
          {
            v10 = v24(v22);
            Attr = mlir::Operation::getAttr(v10, "coreml.delegate_mapped_name", 0x1BuLL);
            if (Attr && (v13 = Attr, *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id))
            {
              v17 = mlir::SymbolTable::lookupSymbolIn(v5, Attr, v12);
              if (v17)
              {
                v18 = *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? v17 : 0;
                if (v18)
                {
                  mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(&v27, v18);
                  if (*&v8[4 * ((v7[11] >> 23) & 1) + 2])
                  {
                    *(v18 + 16 * ((*(v18 + 44) >> 23) & 1) + 72) = *(**(***(v18 + 24) + 32) + 608);
                  }

                  v14 = 1;
                  return v14 & 1;
                }
              }

              v28[0] = "missing symbol of name ";
              v29 = 259;
              mlir::Operation::emitError(&v30, v5, v28);
              if (v30)
              {
                mlir::Diagnostic::operator<<(v31, v13);
              }
            }

            else
            {
              v19 = "missing ";
              v20 = 259;
              mlir::Operation::emitOpError(&v30, v10, &v19);
              if (v30)
              {
                v29 = 261;
                v28[0] = "coreml.delegate_mapped_name";
                v28[1] = 27;
                mlir::Diagnostic::operator<<(v31, v28);
                if (v30)
                {
                  mlir::Diagnostic::operator<<<12ul>(v31, " attribute.");
                }
              }
            }
          }

          else
          {
            v28[0] = "expect graph to only contain one isolated group as a callee graph";
            v29 = 259;
            mlir::Operation::emitError(&v30, v7, v28);
          }

          v14 = v32 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      *&v21 = "callee was not yet resolved";
      v23 = 259;
      mlir::Operation::emitError(&v30, v27, &v21);
      v14 = v32 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    }

    return v14 & 1;
  }

  return result;
}

BOOL llvm::hasSingleElement<llvm::iterator_range<mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>> &>(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 10);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 7);
  mlir::Region::OpIterator::operator++(&v4);
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v4);
  return v5 == v2;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 24 * a2;
    v3 = (a1 + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = *v3;
        if (*v3)
        {
          if (*(v4 + 2))
          {
            *(v4 + 2) = 0;
            v6 = *v4;
            v5 = *(v4 + 1);
            *v5 = *v4;
            *(v6 + 8) = v5;
            *v4 = 0;
            *(v4 + 1) = 0;
          }

          mlir::Operation::destroy(v4);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }
}

void std::__assoc_state<llvm::LogicalResult>::set_value<llvm::LogicalResult>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:nn200100]();
    std::__throw_future_error[abi:nn200100]();
  }

  else
  {
    *(a1 + 140) = *a2;
    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void std::__deferred_assoc_state<llvm::LogicalResult,std::__async_func<std::function<llvm::LogicalResult ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_286EA3F98;
  v2 = (a1 + 24);
  std::__function::__value_func<llvm::LogicalResult ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286EA3F98;
  v2 = (a1 + 24);
  std::__function::__value_func<llvm::LogicalResult ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__deferred_assoc_state<llvm::LogicalResult,std::__async_func<std::function<llvm::LogicalResult ()(void)>>>::__execute(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    v4 = (*(*v2 + 48))(v2);
    std::__assoc_state<llvm::LogicalResult>::set_value<llvm::LogicalResult>(a1, &v4);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(v3);
  }
}

void *std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286EA3FC8;
  v2 = a1[1];
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286EA3FC8;
  v1 = a1[1];
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA3FC8;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

atomic_ullong *std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

void std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286EA4010;
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286EA4010;
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

std::string *std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EA4010;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,mlir::ModuleOp>::__tuple_impl((a2 + 32), (a1 + 32));
}

void std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::destroy(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete(a1);
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,mlir::ModuleOp>::__tuple_impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](&this[1], a2 + 24);
  this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
  return this;
}

BOOL mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)const::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1}::operator()(uint64_t a1, std::string *a2, uint64_t a3, void ***a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 1;
  }

  memset(__p, 0, 24);
  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v7 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7 < 0)
  {
    v7 = size;
  }

  std::string::append[abi:nn200100]<char const*,0>(__p, a2, (a2 + v7));
  std::__fs::filesystem::operator/[abi:nn200100](&v15, __p, a1);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  std::__fs::filesystem::__create_directories(&v15, &v14);
  if (!v14.__val_)
  {
    mlir::ODIE::Compiler::Serialization::rewriteModuleWithFxn(a4, a3);
  }

  v12 = "Failed to create directory: ";
  v13 = 259;
  mlir::Operation::emitError(__p, a4, &v12);
  if (__p[0].__r_.__value_.__r.__words[0])
  {
    mlir::Diagnostic::operator<<<std::__fs::filesystem::path const&,std::__fs::filesystem::path>(&__p[0].__r_.__value_.__l.__size_, &v15);
    if (__p[0].__r_.__value_.__r.__words[0])
    {
      mlir::Diagnostic::operator<<<7ul>(&__p[0].__r_.__value_.__l.__size_, "; ec: ");
    }
  }

  std::error_code::message(&v11, &v14);
  if (__p[0].__r_.__value_.__r.__words[0])
  {
    v17 = 260;
    v16 = &v11;
    mlir::Diagnostic::operator<<(&__p[0].__r_.__value_.__l.__size_, &v16);
  }

  v9 = (v19 & 1) == 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__pn_.__r_.__value_.__l.__data_);
  }

  return v9;
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:nn200100]@<X0>(std::__fs::filesystem::path *__return_ptr a1@<X8>, std::__fs::filesystem::path *this@<X1>, uint64_t a3@<X0>)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a1->__pn_, *a3, *(a3 + 8));
  }

  else
  {
    a1->__pn_ = *a3;
  }

  return std::__fs::filesystem::path::operator/=[abi:nn200100](a1, this);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:nn200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t mlir::Diagnostic::operator<<<std::__fs::filesystem::path const&,std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path *this)
{
  v5 = ", ";
  std::__fs::filesystem::path::begin(&v7, this);
  std::__fs::filesystem::path::end(&v6, this);
  llvm::interleave<std::__fs::filesystem::path::iterator,mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(std::__fs::filesystem::path const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(void)#1},void>(&v7, &v6, a1, a1, &v5);
  if (SHIBYTE(v6.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  return a1;
}

std::__fs::filesystem::path::iterator *llvm::interleave<std::__fs::filesystem::path::iterator,mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(std::__fs::filesystem::path const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(void)#1},void>(std::__fs::filesystem::path::iterator *result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE **a5)
{
  if (result->__path_ptr_ != *(a2 + 24) || result->__entry_.__data_ != *(a2 + 32))
  {
    v18 = v5;
    v19 = v6;
    v12 = result;
    while (1)
    {
      if (SHIBYTE(v12->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__pn_, v12->__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v12->__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p.__pn_ = v12->__stashed_elem_;
      }

      mlir::Diagnostic::operator<<<std::__fs::filesystem::path const&,std::__fs::filesystem::path>(a3, &__p);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      result = std::__fs::filesystem::path::iterator::__increment(v12);
      if (v12->__path_ptr_ == *(a2 + 24) && v12->__entry_.__data_ == *(a2 + 32))
      {
        break;
      }

      v13 = *a5;
      v14 = 1;
      v17 = 1;
      if (*v13)
      {
        __p.__pn_.__r_.__value_.__r.__words[0] = v13;
        v14 = 3;
      }

      v16 = v14;
      mlir::Diagnostic::operator<<(a4, &__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<llvm::LogicalResult ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 40 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 40 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates14runOnOperationEvE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  v67[8] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
  {
    v5 = *a1;
    {
      return 1;
    }

    v8 = *v5;
    v9 = *(*v5 + 16);
    v56 = a2 + 64;
    if (v9)
    {
      v10 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *v8;
      v14 = (v9 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(v11, v11 + v12, v6, v7);
      v15 = v13 + 40 * v14;
      if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v11, v12, *v15, *(v15 + 8)))
      {
        goto LABEL_12;
      }

      v16 = 1;
      while (*v15 != -1)
      {
        v54 = v16 + 1;
        v14 = (v14 + v16) & (v9 - 1);
        v15 = v13 + 40 * v14;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v11, v12, *v15, *(v15 + 8));
        v16 = v54;
        if (isEqual)
        {
          goto LABEL_12;
        }
      }
    }

    v15 = 0;
LABEL_12:
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = *v8 + 40 * *(v8 + 16);
    }

    Attr = mlir::Operation::getAttr(a2, "coreml.delegate_mapped_name", 0x1BuLL);
    v22 = *(v18 + 32);
    if (v22)
    {
      v23 = *(Attr + 16);
      v24 = *(Attr + 24);
      v25 = *(v18 + 16);
      v26 = v22 - 1;
      v27 = (v22 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(v23, v23 + v24, v20, v21);
      v28 = v25 + 24 * v27;
      if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v23, v24, *v28, *(v28 + 8)))
      {
LABEL_17:
        if (v28 != *(v18 + 16) + 24 * *(v18 + 32))
        {
          v30 = *(((*(v28 + 16) + 16 * ((*(*(v28 + 16) + 44) >> 23) & 1) + ((*(*(v28 + 16) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v28 + 16) + 40) + 8);
          v31 = v30 == 0;
          v32 = (v30 - 8);
          if (v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32;
          }

          v29 = v56 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
          mlir::RewriterBase::moveBlockBefore(v5[1], v33, ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), (((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
          v34 = *(((v56 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          if (v34)
          {
            v35 = v34 - 8;
          }

          else
          {
            v35 = 0;
          }

          v36 = *(v35 + 32);
          v37 = v5[1];
          *(v37 + 24) = v36[2];
          *(v37 + 32) = v36;
          v38 = v5[1];
          v39 = v36[3];
          if ((*(v36 + 46) & 0x80) != 0)
          {
            v40 = *(v36 + 17);
            v41 = v36[9] & 0xFFFFFFFFFFFFFFF9 | 2;
          }

          else
          {
            v40 = 0;
            v41 = 2;
          }

          v42 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(v38 + 8, *(**v39 + 32));
          v59[0] = v39;
          v59[1] = v42;
          v60[0] = &v61;
          v60[1] = 0x400000000;
          v62 = v64;
          v63 = 0x400000000;
          v64[4] = v65;
          v64[5] = 0x400000000;
          v65[8] = 4;
          v65[9] = v66;
          v65[10] = 0x100000000;
          v66[1] = v67;
          v66[2] = 0x100000000;
          v67[2] = 0;
          v67[1] = 0;
          v67[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v67[4] = 0;
          v67[6] = 0;
          llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v60, v41, 0, v41, v40);
          v43 = mlir::Operation::create(v59);
          mlir::OpBuilder::insert((v38 + 8), v43);
          mlir::OperationState::~OperationState(v59);
          if (v36[2])
          {
            v36[2] = 0;
            v45 = *v36;
            v44 = v36[1];
            *v44 = *v36;
            *(v45 + 8) = v44;
            *v36 = 0;
            v36[1] = 0;
          }

          mlir::Operation::destroy(v36);
          mlir::Operation::removeAttr(a2, "coreml.delegate_mapped_name", 0x1B);
          v46 = *(((v56 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          v47 = v46 - 8;
          if (!v46)
          {
            v47 = 0;
          }

          v48 = *(v47 + 40);
          v49 = (v47 + 32);
          if (v48 == v49)
          {
            return 1;
          }

          v50 = *v49;
          if (v48 == v50)
          {
            return 1;
          }

          while (*(v48[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id)
          {
            v48 = v48[1];
            if (v48 == v50)
            {
              return 1;
            }
          }

          v59[0] = "Expected ops to be replaced with a compiled binary.";
          v61 = 259;
          mlir::Operation::emitOpError(v57, a2, v59);
          v51 = v57;
          goto LABEL_41;
        }
      }

      else
      {
        v52 = 1;
        while (*v28 != -1)
        {
          v55 = v52 + 1;
          v27 = (v27 + v52) & v26;
          v28 = v25 + 24 * v27;
          v53 = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v23, v24, *v28, *(v28 + 8));
          v52 = v55;
          if (v53)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v59[0] = "Failed to find corresponding compiled Graph";
    v61 = 259;
    mlir::Operation::emitOpError(v58, a2, v59);
    v51 = v58;
LABEL_41:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v51);
    return 0;
  }

  return result;
}

std::string *llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::operator=<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 120;
  if (a1 + 120 != a2)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>((a1 + 120), *a2, (a2 + 8));
  }

  v5 = *(a1 + 528);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2);
    return v4;
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::operator=<std::__fs::filesystem::path>(v7, v8);
  }
}

std::string *llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::operator=<std::__fs::filesystem::path>(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 5, a2);
  data = a1[22].__r_.__value_.__l.__data_;
  if (data)
  {
    (*(*data + 48))(data, a2);
    return a1 + 5;
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    return mlir::ODIE::Compiler::Transforms::impl::createConstantPropagation(v6);
  }
}

uint64_t mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::runOnOperation(mlir::ODIE::Compiler::Transforms::ConstantPropagationPass *this)
{
  v107 = *MEMORY[0x277D85DE8];
  v81 = this;
  v1 = *(this + 5);
  v90[0] = 0;
  v90[1] = 0;
  v91 = 0;
  v88[0] = 0;
  v88[1] = 0;
  v89 = 0;
  v2 = v97;
  v95 = v97;
  v96 = 0x600000000;
  v98 = &v95;
  v99 = v88;
  v100[0] = v90;
  mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::runOnOperation(void)::$_0>, &v98, 1);
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  *&v103 = v86;
  v98 = &v103;
  mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms23ConstantPropagationPass14runOnOperationEvE3__1NSC_6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v98, 1);
  v83 = 0;
  v82 = 0u;
  v84 = v86;
  v85 = 0;
  if (!v96)
  {
    goto LABEL_92;
  }

  v79 = v86;
  v80 = v97;
  v3 = v95;
  v4 = (v95 + 8 * v96);
  do
  {
    v5 = *v3;
    v98 = v100;
    v99 = 0x300000000;
    v6 = *(v5 + 36);
    v7 = v5 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    v103 = v7;
    *&v104 = v7;
    *(&v104 + 1) = v6;
    v105 = 0;
    if (v6)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v103);
    }

    v93[0] = v103;
    v93[1] = v104;
    v8 = v105;
    for (i = v105; i; v8 = i)
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v8 + 16));
      if (v11)
      {
        v13 = (*(v12 + 32))(v12, v11, v90);
        if (v13)
        {
          if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
          {
            v14 = *(v8 + 16);
            v9 = (*(v14 + 46) & 0x80) != 0 ? *(v14 + 72) : 0;
            {
              v15 = *(v8 + 16);
              if ((*(v15 + 46) & 0x80) != 0)
              {
                v10 = *(v15 + 72);
              }

              else
              {
                v10 = 0;
              }

              v1 = v1 & 0xFFFFFFFF00000000 | ((v8 - v10) >> 5);
              llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v98, v15, v1);
            }
          }
        }
      }

      mlir::ResultRange::UseIterator::operator++(v93);
    }

    while (v99)
    {
      v16 = v98 + 16 * v99;
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      LODWORD(v99) = v99 - 1;
      *&v93[0] = v17;
      DWORD2(v93[0]) = v18;
      v19 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(v17);
      if (v19)
      {
        v21 = v19;
        v22 = (*(v20 + 32))(v20, v19, v90);
        if (v22)
        {
          v23 = *(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? v22 : 0;
          if (v23)
          {
            *&v103 = v23;
            v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v86, &v103);
            if (!v24 || v24 == v86[0] + 8 * v87)
            {
              v25 = *(*(v21 + 72) + 32 * v18 + 24);
              if ((~*(v25 + 8) & 7) == 0)
              {
                v25 = 0;
              }

              if (v25)
              {
                v26 = *(v25 + 8) & 7;
                if (v26 == 6)
                {
                  v27 = (v25 + 24 * *(v25 + 16) + 120);
                }

                else
                {
                  v27 = (v25 + 16 * v26 + 16);
                }
              }

              else
              {
                v27 = 0;
              }

              {
                *&v103 = v23;
                v28 = llvm::MapVector<mlir::Operation *,llvm::SmallVector<int,12u>,llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,0u>>::operator[](&v82, &v103);
                llvm::SmallVectorTemplateBase<int,true>::push_back(v28, v18);
                v29 = llvm::MapVector<mlir::Operation *,llvm::SmallVector<int,12u>,llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,0u>>::operator[](&v82, v93);
                llvm::SmallVectorTemplateBase<int,true>::push_back(v29, v18);
                v30 = ((v23 + 16 * ((*(v23 + 44) >> 23) & 1) + ((*(v23 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v23 + 40);
                v31 = *(v30 + 8);
                v32 = v31 ? v31 - 8 : 0;
                v33 = *(*(v32 + 48) + 8 * v18);
                v103 = *(***(v23 + 24) + 32);
                v34 = *(v30 + 8);
                v35 = v34 ? v34 - 8 : 0;
                v36 = *(v35 + 40);
                *&v104 = v35;
                *(&v104 + 1) = v36;
                v37 = mlir::OpBuilder::clone(&v103, v27);
                v38 = v37;
                v39 = v37[9] ? (v37 - 4) : 0;
                *&v106 = v39;
                mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v33, &v106);
                for (j = *(v38 - 2); j; j = *j)
                {
                  v41 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(j[2]);
                  if (v41)
                  {
                    v42 = j[2];
                    if ((*(v42 + 46) & 0x80) != 0)
                    {
                      v43 = *(v42 + 72);
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v33 = v33 & 0xFFFFFFFF00000000 | ((j - v43) >> 5);
                    llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v98, v41, v33);
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v98 != v100)
    {
      free(v98);
    }

    ++v3;
  }

  while (v3 != v4);
  v44 = v84;
  if (!v85)
  {
    v2 = v80;
    goto LABEL_90;
  }

  v45 = (v84 + 72 * v85);
  do
  {
    v46 = *v44;
    if (*v44)
    {
      v47 = *(*(*v44 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      v56 = v46 + 64;
      v57 = *(*(*(v46 + 64 + 16 * ((*(v46 + 44) >> 23) & 1) + 16) + 8) + 8);
      v98 = v100;
      v99 = 0x600000000;
      llvm::SmallVectorImpl<unsigned long>::assign(&v98, (v57 + 63) >> 6, 0);
      v102 = v57;
      v58 = *(v44 + 4);
      if (v58)
      {
        v59 = v44[1];
        v60 = v98;
        v61 = 4 * v58;
        do
        {
          v62 = *v59++;
          *&v60[(v62 >> 3) & 0x1FFFFFF8] |= 1 << v62;
          v61 -= 4;
        }

        while (v61);
      }

      *&v103 = &v104;
      *(&v103 + 1) = 0x600000000;
      v63 = *(*(v56 + 16 * ((*(v46 + 44) >> 23) & 1) + 16) + 8);
      v64 = mlir::filterTypesOut(*(v63 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v63 + 8), &v98, &v103);
      v65 = *(*(v56 + 16 * ((*(v46 + 44) >> 23) & 1) + 16) + 8);
      v66 = *(v65 + 12);
      v67 = (*(v65 + 16) + 8 * *(v65 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2;
      v68 = *(**v65 + 32);
      *&v93[0] = v64;
      *(&v93[0] + 1) = v69;
      *&v106 = v67;
      *(&v106 + 1) = v66;
      v70 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v68, v93, &v106);
      if (v103 != &v104)
      {
        free(v103);
      }

      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v46);
      mlir::function_interface_impl::eraseFunctionArguments(v46, InterfaceFor, &v98, v70);
    }

    else
    {
      v48 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(*v44);
      if (!v48)
      {
        v72 = *v44;
        v98 = "invalid operation to remove operands from";
        v101 = 259;
        mlir::Operation::emitError(v92, v72, &v98);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
        *(v81 + 5) |= 4uLL;
        goto LABEL_80;
      }

      v49 = v48;
      if ((*(v48 + 46) & 0x80) != 0)
      {
        v50 = *(v48 + 68);
      }

      else
      {
        v50 = 0;
      }

      v98 = v100;
      v99 = 0x600000000;
      llvm::SmallVectorImpl<unsigned long>::assign(&v98, (v50 + 63) >> 6, 0);
      v102 = v50;
      v51 = *(v44 + 4);
      if (v51)
      {
        v52 = v44[1];
        v53 = v98;
        v54 = 4 * v51;
        do
        {
          v55 = *v52++;
          *&v53[(v55 >> 3) & 0x1FFFFFF8] |= 1 << v55;
          v54 -= 4;
        }

        while (v54);
      }

      mlir::detail::OperandStorage::eraseOperands((v49 + 64), &v98);
    }

    if (v98 != v100)
    {
      free(v98);
    }

LABEL_80:
    v44 += 9;
  }

  while (v44 != v45);
  v44 = v84;
  v2 = v80;
  if (v85)
  {
    v73 = (v84 + 72 * v85 - 64);
    v74 = -72 * v85;
    do
    {
      if (v73 + 2 != *v73)
      {
        free(*v73);
      }

      v73 -= 9;
      v74 += 72;
    }

    while (v74);
    v44 = v84;
  }

LABEL_90:
  if (v44 != v79)
  {
    free(v44);
  }

LABEL_92:
  MEMORY[0x25F891030](v82, 8);
  MEMORY[0x25F891030](v86[0], 8);
  if (v95 != v2)
  {
    free(v95);
  }

  v75 = v88[0];
  if (v89)
  {
    v76 = (v88[0] + 8);
    v77 = 32 * v89;
    do
    {
      if ((*(v76 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::destroyAll(v76);
        MEMORY[0x25F891030](*v76, 8);
      }

      v76 += 4;
      v77 -= 32;
    }

    while (v77);
    v75 = v88[0];
  }

  MEMORY[0x25F891030](v75, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v90);
  return MEMORY[0x25F891030](v90[0], 8);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::shouldPropagate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v31[0] = 0;
  v31[1] = 0;
  v30[0] = v31;
  result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v30, a3);
  if (!result)
  {
    return result;
  }

  v8 = *(a4 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
  v10 = v8 - 1;
  v11 = ((v9 >> 4) ^ (v9 >> 9)) & v10;
  v12 = *(*a4 + 32 * v11);
  if (v12 != v9)
  {
    v25 = 1;
    while (v12 != -4096)
    {
      v26 = v11 + v25++;
      v11 = v26 & v10;
      v12 = *(*a4 + 32 * (v26 & v10));
      if (v12 == v9)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  v30[0] = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](a4, v30);
  v14 = *(v13 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = v14 - 1;
  v16 = v15 & (37 * a2);
  v17 = *(*v13 + 72 * v16);
  if (v17 != a2)
  {
    v27 = 1;
    while (v17 != 0x7FFFFFFF)
    {
      v28 = v16 + v27++;
      v16 = v28 & v15;
      v17 = *(*v13 + 72 * v16);
      if (v17 == a2)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v30[0] = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
  v18 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](a4, v30);
  v19 = llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::operator[](v18, &v32);
  v20 = *(v19 + 8);
  if (!v20)
  {
    return 0;
  }

  v21 = *v19;
  v22 = 8 * v20;
  while (1)
  {
    v23 = *v21;
    v24 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    result = (*(**(v23 + 48) + 32))(*(v23 + 48), v24);
    if (!result)
    {
      break;
    }

    v30[0] = 0;
    v30[1] = 0;
    v29 = v30;
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v29, v23);
    if (!result)
    {
      break;
    }

    if (v30[0] != v31[0])
    {
      return 0;
    }

    ++v21;
    v22 -= 8;
    if (!v22)
    {
      return 1;
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::MapVector<mlir::Operation *,llvm::SmallVector<int,12u>,llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,0u>>::operator[](uint64_t a1, void *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = 0;
  v18 = 0;
  v4 = &v18;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, &v13, &v18))
  {
    v5 = *(v18 + 2);
  }

  else
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a1, &v13, v18);
    *v6 = v13;
    *(v6 + 2) = v14;
    v7 = *(a1 + 24);
    v15 = v17;
    v16 = 0xC00000000;
    v18 = *a2;
    v19 = v21;
    v20 = 0xC00000000;
    v8 = *(a1 + 32);
    if (v8 >= *(a1 + 36))
    {
      if (v7 <= &v18 && v7 + 72 * v8 > &v18)
      {
        v12 = &v18 - v7;
        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,false>::grow((a1 + 24), v8 + 1);
        v7 = *(a1 + 24);
        v4 = &v12[v7];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,false>::grow((a1 + 24), v8 + 1);
        v7 = *(a1 + 24);
        v4 = &v18;
      }
    }

    v9 = (v7 + 72 * *(a1 + 32));
    *v9 = *v4;
    v9[2] = 0xC00000000;
    v9[1] = v9 + 3;
    v10 = (v9 + 1);
    if (*(v4 + 4))
    {
      llvm::SmallVectorImpl<int>::operator=(v10, (v4 + 8));
    }

    ++*(a1 + 32);
    if (v19 != v21)
    {
      free(v19);
    }

    if (v15 != v17)
    {
      free(v15);
    }

    v5 = *(a1 + 32) - 1;
    *(v6 + 2) = v5;
  }

  return *(a1 + 24) + 72 * v5 + 8;
}

void mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::~ConstantPropagationPass(mlir::ODIE::Compiler::Transforms::ConstantPropagationPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(*a1, *(a1 + 4), *a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 8;
  }

  v11 = v10;
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
    llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(*a1, *(a1 + 4), *a2, &v11);
    v6 = *(a1 + 2);
    v5 = v11;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  v8 = *a2;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = v8;
  *(v5 + 24) = 0;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::operator[](void *a1, int *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 8;
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
    llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != 0x7FFFFFFF)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x600000000;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t *llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 4;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = (v4 + 16);
      do
      {
        v20 = *(v19 - 2);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = *(v19 - 2);
          *(v31 + 24) = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v22;
          *(v21 + 8) = *(v19 - 1);
          *(v19 - 1) = 0;
          *(v21 + 16) = *v19;
          *v19 = 0;
          LODWORD(v22) = *(v21 + 20);
          *(v21 + 20) = v19[1];
          v19[1] = v22;
          LODWORD(v22) = *(v21 + 24);
          *(v21 + 24) = v19[2];
          v19[2] = v22;
          ++*(a1 + 8);
          llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::destroyAll((v19 - 2));
          MEMORY[0x25F891030](*(v19 - 1), 8);
        }

        v19 += 8;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x7FFFFFFFFFFFFFFLL;
    v26 = v25 & 0x7FFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x7FFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 4;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 4) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 8;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 72 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) - 0x7FFFFFFF) >= 2)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 72;
      v2 -= 72;
    }

    while (v2);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 72 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != 0x7FFFFFFF)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == 0x80000000;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 72 * (v13 & v4));
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

uint64_t *llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::grow(uint64_t a1, int a2)
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
      v14 = result + 18;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A0500)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 36) = 0x7FFFFFFF;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 18) = 0x7FFFFFFF;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A04F0)))).i32[1])
        {
          *v14 = 0x7FFFFFFF;
          *(v14 + 18) = 0x7FFFFFFF;
        }

        v11 += 4;
        v14 += 36;
      }

      while (((v12 / 0x48 + 4) & 0x7FFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 72 * v3;
      v18 = (v4 + 24);
      do
      {
        v19 = *(v18 - 6);
        if ((v19 - 0x7FFFFFFF) >= 2)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(*a1, *(a1 + 16), v19, &v30);
          v20 = v30;
          *v30 = *(v18 - 6);
          *(v20 + 2) = 0x600000000;
          *(v20 + 1) = v20 + 6;
          v21 = (v20 + 2);
          if (*(v18 - 2))
          {
            llvm::SmallVectorImpl<mlir::Operation *>::operator=(v21, (v18 - 4));
          }

          ++*(a1 + 8);
          v22 = *(v18 - 2);
          if (v18 != v22)
          {
            free(v22);
          }
        }

        v18 += 18;
        v17 -= 72;
      }

      while (v17);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = 72 * v23 - 72;
    v26 = vdupq_n_s64(v25 / 0x48);
    v27 = result + 18;
    do
    {
      v28 = vdupq_n_s64(v24);
      v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_25D0A0500)));
      if (vuzp1_s16(v29, *v26.i8).u8[0])
      {
        *(v27 - 36) = 0x7FFFFFFF;
      }

      if (vuzp1_s16(v29, *&v26).i8[2])
      {
        *(v27 - 18) = 0x7FFFFFFF;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_25D0A04F0)))).i32[1])
      {
        *v27 = 0x7FFFFFFF;
        *(v27 + 18) = 0x7FFFFFFF;
      }

      v24 += 4;
      v27 += 36;
    }

    while (((v25 / 0x48 + 4) & 0x7FFFFFFFFFFFFFCLL) != v24);
  }

  return result;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::ConstantPropagationPass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v47[6] = *MEMORY[0x277D85DE8];
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v5))
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(*a1, a2);
    v8 = a1 + 1;
    v7 = a1[1];
    v6 = v8[1];
    v44 = 0;
    v45 = v47;
    v46 = 0x300000000;
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v42 = v10;
    *&v43 = v10;
    *(&v43 + 1) = v9;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v42);
    }

    v40[0] = v42;
    v40[1] = v43;
    v11 = v44;
    for (i = v44; i; v11 = i)
    {
      v12 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
      if (v12 && *(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
      {
        v14 = (*(v13 + 32))(v13, v12, v6);
        v15 = *(v11 + 16);
        if ((*(v15 + 46) & 0x80) != 0)
        {
          v16 = *(v15 + 72);
        }

        else
        {
          v16 = 0;
        }

        v2 = v2 & 0xFFFFFFFF00000000 | ((v11 - v16) >> 5);
        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v45, v14, v2);
      }

      mlir::ResultRange::UseIterator::operator++(v40);
    }

    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    v17 = v46;
    if (v46)
    {
      do
      {
        v18 = v45 + 16 * v17;
        v20 = *(v18 - 2);
        v19 = *(v18 - 1);
        LODWORD(v46) = v17 - 1;
        v36 = v20;
        v37 = v19;
        if (v20)
        {
          v21 = *(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v38, &v36, v40);
          *&v40[0] = *(v20 + 64 + 16 * ((*(v20 + 44) >> 23) & 1) + 56);
          v22 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](v7, v40);
          v23 = llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::operator[](v22, &v37);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v23, a2);
          v24 = *(((v20 + 64 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v20 + 40) + 8);
          v25 = v24 ? v24 - 8 : 0;
          for (j = **(*(v25 + 48) + 8 * v37); j; j = *j)
          {
            v28 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(j[2]);
            if (v28)
            {
              v30 = v28;
              v31 = v29;
              *&v40[0] = (*(v29 + 32))(v29, v28, v6);
              v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v38, v40);
              if ((!v32 || v32 == v38[0] + 8 * v39) && *(*(v30 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
              {
                v33 = (*(v31 + 32))(v31, v30, v6);
                v34 = j[2];
                if ((*(v34 + 46) & 0x80) != 0)
                {
                  v27 = *(v34 + 72);
                }

                else
                {
                  v27 = 0;
                }

                v2 = v2 & 0xFFFFFFFF00000000 | ((j - v27) >> 5);
                llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v45, v33, v2);
              }
            }
          }
        }

        v17 = v46;
      }

      while (v46);
      v35 = v38[0];
    }

    else
    {
      v35 = 0;
    }

    MEMORY[0x25F891030](v35, 8);
    if (v45 != v47)
    {
      free(v45);
    }
  }
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms23ConstantPropagationPass14runOnOperationEvE3__1NSC_6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, mlir::SymbolTable *this)
{
  if (this)
  {
    if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v3 = *a1;
      mlir::SymbolTable::getSymbolUses(this, &v8);
      if (v10 == 1)
      {
        v4 = v8;
        v5 = v9;
        if (v8 == v9)
        {
          goto LABEL_10;
        }

        do
        {
          if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(*v4))
          {
            v6 = *v3;
            v7 = this;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v6, &v7, v11);
          }

          v4 += 2;
        }

        while (v4 != v5);
        if (v10)
        {
          v4 = v8;
LABEL_10:
          if (v4)
          {
            v9 = v4;
            operator delete(v4);
          }
        }
      }
    }
  }
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,false>::grow(char **a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 2);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 72, &v15);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = &v5[72 * v6];
    v8 = v4 + 24;
    v9 = (v5 + 8);
    do
    {
      v10 = v9 - 8;
      *(v8 - 3) = *(v9 - 8);
      *(v8 - 2) = v8;
      *(v8 - 1) = 0xC00000000;
      if (*(v9 + 8))
      {
        llvm::SmallVectorImpl<int>::operator=((v8 - 16), v9);
      }

      v8 += 72;
      v9 += 72;
    }

    while ((v10 + 72) != v7);
    v11 = *(a1 + 2);
    v5 = *a1;
    if (v11)
    {
      v12 = &v5[72 * v11 - 64];
      v13 = -72 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 9;
        v13 += 72;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v14;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::DecomposeComplex>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::DecomposeComplex::~DecomposeComplex(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DecomposeComplex *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::DecomposeComplex::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DecomposeComplex *this)
{
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v5[0] = *(***(v2 + 24) + 32);
  memset(&v5[1], 0, 24);
  v4 = v5;
  v6 = &v4;
  result = mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116DecomposeComplex14runOnOperationEvE3__0NSD_6CoreML31ComplexDecompositionOpInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v6, 1);
  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116DecomposeComplex14runOnOperationEvE3__0NSD_6CoreML31ComplexDecompositionOpInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void *a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v6 = *a1;
  if (mlir::ODIE::Compiler::isOperationDelegated(a2, v4))
  {
    return 1;
  }

  v8 = *v6;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = a2;
  return (*InterfaceFor)(InterfaceFor, a2, *v6) & 1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::DeduplicateConstantsAttrsPass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::DeduplicateConstantsAttrsPass::~DeduplicateConstantsAttrsPass(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DeduplicateConstantsAttrsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::DisallowInterpretedOpsPass::~DisallowInterpretedOpsPass(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DisallowInterpretedOpsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::DisallowInterpretedOpsPass::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DisallowInterpretedOpsPass *this)
{
  v1 = *(this + 5);
  v3 = this;
  v4 = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_126DisallowInterpretedOpsPass14runOnOperationEvE3__0NSC_6CoreML15IsolatedGroupOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
}

BOOL mlir::OperationPass<mlir::ODIE::Compiler::CoreML::GraphOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(v2 + 24);
  if (v3 != *(a1 + 24))
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(v2 + 16), *(a1 + 16), v3) == 0;
  }

  return 1;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_126DisallowInterpretedOpsPass14runOnOperationEvE3__0NSC_6CoreML15IsolatedGroupOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, mlir::Operation *this)
{
  v10[25] = *MEMORY[0x277D85DE8];
  if (this)
  {
    if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
    {
      v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
      if (*(v2 + 24) == 11)
      {
        v3 = *(v2 + 16);
        v4 = *v3;
        v5 = *(v3 + 3);
        if (v4 == 0x6572707265746E49 && v5 == 0x7265746572707265)
        {
          v7 = **a1;
          v8[16] = 257;
          mlir::Operation::emitError(&v9, this, v8);
          if (v9)
          {
            mlir::Diagnostic::operator<<<63ul>(v10, "Detected an isolated group to run on interpreter using kernels");
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
          *(v7 + 40) |= 4uLL;
        }
      }
    }
  }
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies::~ElideLogicalCopies(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::ElideLogicalCopies *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ElideLogicalCopiesBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(a2);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::ElideLogicalCopies *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  *__src = 0u;
  *v3 = 0u;
  v4 = v6;
  v5 = 0x600000000;
  v6[6] = 0;
  v6[7] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 40;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 40;
  operator new();
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::~FuseCopyIntoConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_12:
      *&v38 = "source op is not a valid ConstantOp";
      v40 = 259;
      v41 = &v38;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    *&v38 = (*(v16 + 8))(v16, v15);
    if (mlir::Type::getIntOrFloatBitWidth(&v38) <= 7)
    {
      *&v38 = "cannot optimize subbyte copies";
      v40 = 259;
      v41 = &v38;
LABEL_13:
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
      (*(*v11 + 88))(v11, v12, v13, &v41);
      return 0;
    }
  }

  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v37);
  if (!ValueAttr || (v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(ValueAttr)) == 0)
  {
    v26 = "source op does not have a valid constant";
    goto LABEL_33;
  }

  v19 = v18;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    *&v38 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = mlir::TensorType::operator mlir::ShapedType(&v38);
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v23, v24, v19[4], v19[5]);
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v26 = "failed to extract ElementsAttr from constant";
LABEL_33:
      *&v38 = v26;
      v40 = 259;
      v41 = &v38;
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(v37 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
      goto LABEL_16;
    }

    if (*(a2 + 36))
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v41 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    v28 = mlir::TensorType::operator mlir::ShapedType(&v41);
    v38 = *(v19 + 3);
    v39 = v19[5];
    Raw = mlir::DenseResourceElementsAttr::get(v28, v29, &v38);
  }

  v30 = Raw;
  if (Raw)
  {
    v31 = *Raw;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  if (v30)
  {
    v33 = *v30;
    v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
  }

  else
  {
    v35 = 0;
  }

  *&v38 = v30;
  *(&v38 + 1) = v35;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>((a3 + 1), *(a2 + 24), &v38);
  (*(*a3 + 8))(a3, a2, v36);
  return 1;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>]";
  v6 = 194;
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::~FuseCopyIntoConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_12:
      *&v38 = "source op is not a valid ConstantOp";
      v40 = 259;
      v41 = &v38;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    *&v38 = (*(v16 + 8))(v16, v15);
    if (mlir::Type::getIntOrFloatBitWidth(&v38) <= 7)
    {
      *&v38 = "cannot optimize subbyte copies";
      v40 = 259;
      v41 = &v38;
LABEL_13:
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
      (*(*v11 + 88))(v11, v12, v13, &v41);
      return 0;
    }
  }

  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v37);
  if (!ValueAttr || (v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(ValueAttr)) == 0)
  {
    v26 = "source op does not have a valid constant";
    goto LABEL_33;
  }

  v19 = v18;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    *&v38 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = mlir::TensorType::operator mlir::ShapedType(&v38);
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v23, v24, v19[4], v19[5]);
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v26 = "failed to extract ElementsAttr from constant";
LABEL_33:
      *&v38 = v26;
      v40 = 259;
      v41 = &v38;
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(v37 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
      goto LABEL_16;
    }

    if (*(a2 + 36))
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v41 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    v28 = mlir::TensorType::operator mlir::ShapedType(&v41);
    v38 = *(v19 + 3);
    v39 = v19[5];
    Raw = mlir::DenseResourceElementsAttr::get(v28, v29, &v38);
  }

  v30 = Raw;
  if (Raw)
  {
    v31 = *Raw;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  if (v30)
  {
    v33 = *v30;
    v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
  }

  else
  {
    v35 = 0;
  }

  *&v38 = v30;
  *(&v38 + 1) = v35;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>((a3 + 1), *(a2 + 24), &v38);
  (*(*a3 + 8))(a3, a2, v36);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>]";
  v6 = 200;
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>::~FuseCopyIntoConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_12:
      *&v38 = "source op is not a valid ConstantOp";
      v40 = 259;
      v41 = &v38;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    *&v38 = (*(v16 + 8))(v16, v15);
    if (mlir::Type::getIntOrFloatBitWidth(&v38) <= 7)
    {
      *&v38 = "cannot optimize subbyte copies";
      v40 = 259;
      v41 = &v38;
LABEL_13:
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
      (*(*v11 + 88))(v11, v12, v13, &v41);
      return 0;
    }
  }

  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v37);
  if (!ValueAttr || (v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(ValueAttr)) == 0)
  {
    v26 = "source op does not have a valid constant";
    goto LABEL_33;
  }

  v19 = v18;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    *&v38 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = mlir::TensorType::operator mlir::ShapedType(&v38);
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v23, v24, v19[4], v19[5]);
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v26 = "failed to extract ElementsAttr from constant";
LABEL_33:
      *&v38 = v26;
      v40 = 259;
      v41 = &v38;
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(v37 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
      goto LABEL_16;
    }

    if (*(a2 + 36))
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v41 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    v28 = mlir::TensorType::operator mlir::ShapedType(&v41);
    v38 = *(v19 + 3);
    v39 = v19[5];
    Raw = mlir::DenseResourceElementsAttr::get(v28, v29, &v38);
  }

  v30 = Raw;
  if (Raw)
  {
    v31 = *Raw;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  if (v30)
  {
    v33 = *v30;
    v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
  }

  else
  {
    v35 = 0;
  }

  *&v38 = v30;
  *(&v38 + 1) = v35;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>((a3 + 1), *(a2 + 24), &v38);
  (*(*a3 + 8))(a3, a2, v36);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>]";
  v6 = 179;
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

void mlir::ODIE::Compiler::Transforms::createExternalizeGraphs(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  mlir::ODIE::Compiler::Transforms::impl::createExternalizeGraphs();
}

void llvm::SetVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::SymbolOpInterface,0u>,llvm::DenseSet<mlir::SymbolOpInterface,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>>,0u>::insert(void *a1, uint64_t *a2)
{
  v9 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 4), *a2, &v9))
  {
    return;
  }

  v4 = v9;
  v10 = v9;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_10;
  }

  if (v6 + ~v5 - *(a1 + 3) <= v6 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 4), *a2, &v10);
    v5 = *(a1 + 2);
    v4 = v10;
  }

  *(a1 + 2) = v5 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 3);
  }

  *v4 = *a2;
  v7 = *a2;
  v8 = a2[1];

  llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back((a1 + 3), v7, v8);
}

void llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::grow(uint64_t a1, int a2)
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
      v11 = 16 * v10;
      do
      {
        *result = xmmword_25D0A0570;
        result += 2;
        v11 -= 16;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 16 * v3;
      v13 = v4;
      do
      {
        v14 = *v13;
        if ((*v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 16), v14, &v17);
          *v17 = *v13;
          ++*(a1 + 8);
        }

        v13 += 2;
        v12 -= 16;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      *result = xmmword_25D0A0570;
      result += 2;
      v16 -= 16;
    }

    while (v16);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ExternalizeGraphsBase<anonymous namespace::ExternalizeGraphsPass>::ExternalizeGraphsBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA4400;
  v5.n128_u64[0] = "Where to place the externalized graphs.";
  v5.n128_u64[1] = 39;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "output-dir", 10, &v5);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  v5.n128_u64[1] = 101;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 576), (a1 + 144), "single-file", 11, &v5);
  *(a1 + 576) = &unk_286E98FD0;
  *(a1 + 800) = &unk_286E99050;
  v5.n128_u64[0] = "If set, externalize the bodies and simply do not save them";
  v5.n128_u64[1] = 58;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 816), (a1 + 144), "remove", 6, &v5, &v4);
  *(a1 + 816) = &unk_286E76DD0;
  *(a1 + 1000) = &unk_286E76E50;
  return a1;
}

void anonymous namespace::ExternalizeGraphsPass::~ExternalizeGraphsPass(_anonymous_namespace_::ExternalizeGraphsPass *this)
{
  *this = &unk_286EA4400;
  v2 = (this + 816);
  *(this + 102) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 968);
  llvm::cl::Option::~Option(v2);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA4400;
  v2 = (this + 816);
  *(this + 102) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 968);
  llvm::cl::Option::~Option(v2);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ExternalizeGraphsPass::runOnOperation(_anonymous_namespace_::ExternalizeGraphsPass *this)
{
  v1 = this;
  v132[4] = *MEMORY[0x277D85DE8];
  v91 = 0;
  v92 = 0;
  v93 = 0x1000000000;
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(***(v2 + 3) + 32);
  mlir::CallGraph::CallGraph(&v121, v2);
  LODWORD(v103.__pn_.__r_.__value_.__l.__data_) = 0;
  *&v103.__pn_.__r_.__value_.__r.__words[1] = 0uLL;
  LODWORD(v104) = 0;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0;
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(&v103, &v124);
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v103);
  v102 = 0;
  v100 = 0u;
  __p = 0u;
  v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v103, v97))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  while (v107 - *(&v106 + 1) <= 8uLL)
  {
    v9 = **(&v106 + 1);
    v10 = *(**(&v106 + 1) + 56);
    if (v10)
    {
      v11 = *(v9 + 48);
      v12 = 8 * v10;
      while (v9 != (*v11 & 0xFFFFFFFFFFFFFFF8))
      {
        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      break;
    }

LABEL_20:
    llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v103);
    if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v103, v97))
    {
      goto LABEL_21;
    }
  }

  if (*(&v106 + 1) == v107)
  {
    goto LABEL_20;
  }

  v4 = *(&v106 + 1);
  do
  {
    for (i = **v4; ; i = *(*(v6 + 16) + 24) & 0xFFFFFFFFFFFFFFF8)
    {
      v6 = *(i + 16);
      if (v6)
      {
        if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
        {
          break;
        }
      }
    }

    v7 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72);
    ++v4;
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 == v107;
    }
  }

  while (!v8);
  if (!v7)
  {
    goto LABEL_20;
  }

  v72 = ***(&v106 + 1);
  while (1)
  {
    v73 = *(v72 + 16);
    if (v73)
    {
      if (*(*(v73 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        break;
      }
    }

    v74 = *(v73 + 16);
    if (v74)
    {
      v72 = *(v74 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v72)
      {
        continue;
      }
    }

    v73 = 0;
    break;
  }

  v96 = 257;
  mlir::Operation::emitError(&v113, v73, &v95);
  if (v113.__pn_.__r_.__value_.__r.__words[0])
  {
    mlir::Diagnostic::operator<<<33ul>(&v113.__pn_.__r_.__value_.__l.__size_, "root of illegal call cycle found");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(&__s, &v113);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v113);
  for (j = (*(&v106 + 1) + 8); j != v107; ++j)
  {
    v76 = **j;
    do
    {
      v76 = *(v76 + 16);
      if (v76 && *(*(v76 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        break;
      }

      v76 = *(v76 + 16);
      if (!v76)
      {
        break;
      }

      v76 = *(v76 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v76);
    if (*(v76 + 16 * ((*(v76 + 44) >> 23) & 1) + 72))
    {
      mlir::Diagnostic::attachNote(&__s.__pn_.__r_.__value_.__l.__size_, *(v76 + 24), 1);
    }
  }

  v13 = v120;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__s);
LABEL_22:
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (*(&v99 + 1))
  {
    *&v100 = *(&v99 + 1);
    operator delete(*(&v99 + 1));
  }

  if (v98)
  {
    *(&v98 + 1) = v98;
    operator delete(v98);
  }

  MEMORY[0x25F891030](*&v97[8], 8);
  if (v108)
  {
    *(&v108 + 1) = v108;
    operator delete(v108);
  }

  if (*(&v106 + 1))
  {
    *&v107 = *(&v106 + 1);
    operator delete(*(&v106 + 1));
  }

  if (v105)
  {
    *(&v105 + 1) = v105;
    operator delete(v105);
  }

  MEMORY[0x25F891030](v103.__pn_.__r_.__value_.__l.__size_, 8);
  if (v131 != v132)
  {
    free(v131);
  }

  if ((v129[40] & 1) == 0)
  {
    MEMORY[0x25F891030](v130, 8);
  }

  if (v128 != v129)
  {
    free(v128);
  }

  if ((v125 & 1) == 0)
  {
    MEMORY[0x25F891030](v126, 8);
  }

  llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector(&v122);
  MEMORY[0x25F891030](v121.__r_.__value_.__r.__words[0], 8);
  if (v13)
  {
    goto LABEL_122;
  }

  memset(v97, 0, 24);
  memset(&v95, 0, 20);
  v121.__r_.__value_.__r.__words[0] = v97;
  v121.__r_.__value_.__l.__size_ = &v95;
  __s.__pn_.__r_.__value_.__r.__words[0] = &v121;
  v14 = mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN4ODIE8Compiler17externalizeGraphsENS1_8ModuleOpERNS_9StringMapINS1_11OwningOpRefISE_EENS_15MallocAllocatorEEEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESX_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &__s, 1);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_109;
  }

  v17 = *v97;
  v16 = *&v97[8];
  if (*v97 == *&v97[8])
  {
    goto LABEL_109;
  }

  v89 = v1;
  v88 = v14;
  while (2)
  {
    v18 = (v17 + 6);
    if (v16 != v17 + 6)
    {
      v19 = (v17 + 6);
      while (1)
      {
        v20 = v17[5];
        do
        {
          v21 = v20[2];
          if (v21)
          {
            v22 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8;
            if (v22)
            {
              v20 = *(v22 + 16);
              if (v20)
              {
                continue;
              }
            }
          }

          goto LABEL_89;
        }

        while (*(v20[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id);
LABEL_53:
        if (v19[5] == v20)
        {
          break;
        }

        v23 = v19[5];
        while (1)
        {
          v24 = v23[2];
          if (!v24)
          {
            break;
          }

          v25 = *(v24 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (!v25)
          {
            break;
          }

          v23 = *(v25 + 16);
          if (v23 == v20 || v23 == 0)
          {
            if (!v23)
            {
              break;
            }

            goto LABEL_68;
          }
        }

        while (1)
        {
          v27 = v20[2];
          if (!v27)
          {
            break;
          }

          v28 = *(v27 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (!v28)
          {
            break;
          }

          v20 = *(v28 + 16);
          if (!v20)
          {
            break;
          }

          if (*(v20[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
          {
            goto LABEL_53;
          }
        }

LABEL_89:
        v19 += 6;
        if (v19 == v16)
        {
          goto LABEL_97;
        }
      }

LABEL_68:
      v29 = *(v19 + 8);
      if (v29)
      {
        v30 = v19[3];
        v31 = 16 * v29;
        do
        {
          llvm::SetVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::SymbolOpInterface,0u>,llvm::DenseSet<mlir::SymbolOpInterface,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>>,0u>::insert(v17, v30);
          v30 += 2;
          v31 -= 16;
        }

        while (v31);
      }

      v32 = *(v19 + 2);
      if (v32)
      {
        v33 = *(v19 + 4);
        v34 = xmmword_25D0A0570;
        if (v33 > 4 * v32 && v33 >= 0x41)
        {
          v35 = 1 << (33 - __clz(v32 - 1));
          if (v35 <= 64)
          {
            v36 = 64;
          }

          else
          {
            v36 = v35;
          }

          goto LABEL_80;
        }

LABEL_84:
        if (v33)
        {
          v39 = *v19;
          v40 = 16 * v33;
          do
          {
            *v39++ = v34;
            v40 -= 16;
          }

          while (v40);
        }

        v19[1] = 0;
      }

      else
      {
        v34 = xmmword_25D0A0570;
        if (*(v19 + 3))
        {
          v33 = *(v19 + 4);
          if (v33 <= 0x40)
          {
            goto LABEL_84;
          }

          v36 = 0;
LABEL_80:
          if (v36 == v33)
          {
            v19[1] = 0;
            v37 = 16 * v33;
            v38 = *v19;
            do
            {
              *v38++ = v34;
              v37 -= 16;
            }

            while (v37);
          }

          else
          {
            MEMORY[0x25F891030](*v19, 8, v34);
            if (v36)
            {
              v41 = (4 * v36 / 3u + 1) | ((4 * v36 / 3u + 1) >> 1);
              v42 = v41 | (v41 >> 2) | ((v41 | (v41 >> 2)) >> 4);
              LODWORD(v42) = (((v42 | (v42 >> 8)) >> 16) | v42 | (v42 >> 8)) + 1;
              *(v19 + 4) = v42;
              buffer = llvm::allocate_buffer((16 * v42), 8uLL);
              *v19 = buffer;
              v19[1] = 0;
              v44 = *(v19 + 4);
              if (v44)
              {
                v45 = 16 * v44;
                do
                {
                  *buffer = xmmword_25D0A0570;
                  buffer += 2;
                  v45 -= 16;
                }

                while (v45);
              }
            }

            else
            {
              *v19 = 0;
              v19[1] = 0;
              *(v19 + 4) = 0;
            }
          }
        }
      }

      *(v19 + 8) = 0;
      goto LABEL_89;
    }

LABEL_97:
    v17 += 6;
    if (v18 != v16)
    {
      continue;
    }

    break;
  }

  *&v103.__pn_.__r_.__value_.__l.__data_ = v3;
  v103.__pn_.__r_.__value_.__r.__words[2] = 0;
  v104 = 0;
  memset(&v121, 0, 20);
  v123 = 0;
  v122 = 0;
  v124 = 0;
  v126 = 0;
  v125 = 0;
  v127 = 0;
  v47 = *v97;
  for (k = *&v97[8]; v47 != k; v47 += 48)
  {
    memset(&__s, 0, 20);
    MEMORY[0x25F891030](0, 8);
    v48 = *(v47 + 16);
    LODWORD(__s.__pn_.__r_.__value_.__r.__words[2]) = v48;
    if (v48)
    {
      __s.__pn_.__r_.__value_.__r.__words[0] = llvm::allocate_buffer((16 * v48), 8uLL);
      __s.__pn_.__r_.__value_.__l.__size_ = *(v47 + 8);
      memcpy(__s.__pn_.__r_.__value_.__l.__data_, *v47, 16 * LODWORD(__s.__pn_.__r_.__value_.__r.__words[2]));
    }

    else
    {
      *&__s.__pn_.__r_.__value_.__l.__data_ = 0uLL;
    }

    __dst = v119;
    v118 = 0;
    v49 = *(v47 + 32);
    if (v49 && &__s != v47)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v119, *(v47 + 32), 16);
      v50 = *(v47 + 32);
      if (v50)
      {
        memcpy(__dst, *(v47 + 24), 16 * v50);
      }

      LODWORD(v118) = v49;
      v119[0] = *(v47 + 40);
      v51 = *(v119[0] + 24);
      pn.__r_.__value_.__s.__data_[0] = 0;
      pn.__r_.__value_.__s.__data_[16] = 0;
      *&v113.__pn_.__r_.__value_.__l.__data_ = *(**v51 + 32);
      v113.__pn_.__r_.__value_.__r.__words[2] = 0;
      v114 = 0;
      mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(&v113, v51, &pn);
    }

    v119[0] = *(v47 + 40);
    MEMORY[0x25F891030](__s.__pn_.__r_.__value_.__r.__words[0], 8);
  }

  MEMORY[0x25F891030](v125, 8);
  MEMORY[0x25F891030](v122, 8);
  MEMORY[0x25F891030](v121.__r_.__value_.__r.__words[0], 8);
  v1 = v89;
  v15 = v88;
LABEL_109:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v95);
  MEMORY[0x25F891030](v95.__pn_.__r_.__value_.__r.__words[0], 8);
  v52 = *v97;
  if (*v97)
  {
    v53 = *&v97[8];
    v54 = *v97;
    if (*&v97[8] != *v97)
    {
      do
      {
        v53 -= 48;
      }

      while (v53 != v52);
      v54 = *v97;
    }

    *&v97[8] = v52;
    operator delete(v54);
  }

  if (!v15)
  {
LABEL_122:
    *(v1 + 5) |= 4uLL;
    goto LABEL_123;
  }

  if (*(v1 + 936) == 1)
  {
    v55 = *(v1 + 719);
    if (v55 < 0)
    {
      v55 = *(v1 + 88);
    }

    if (v55)
    {
      v56 = *((*(v1 + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
      LOWORD(v118) = 257;
      emitDiag(v56, 1, &__s, &v121);
      if (v121.__r_.__value_.__r.__words[0])
      {
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v121);
    }
  }

  else if (HIDWORD(v92))
  {
    memset(&v103, 0, sizeof(v103));
    v61 = *(v1 + 479);
    if (v61 >= 0)
    {
      v62 = (v1 + 456);
    }

    else
    {
      v62 = *(v1 + 57);
    }

    if (v61 >= 0)
    {
      v63 = *(v1 + 479);
    }

    else
    {
      v63 = *(v1 + 58);
    }

    std::string::append[abi:nn200100]<char const*,0>(&v103.__pn_, v62, (v62 + v63));
    size = HIBYTE(v103.__pn_.__r_.__value_.__r.__words[2]);
    if ((v103.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v103.__pn_.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      __ec.__val_ = 0;
      v65 = std::system_category();
      __ec.__cat_ = v65;
      std::__fs::filesystem::__create_directories(&v103, &__ec);
      if (__ec.__val_)
      {
        v66 = *(v1 + 5);
        v113.__pn_.__r_.__value_.__r.__words[0] = "failed to create directory ";
        v115 = 259;
        mlir::Operation::emitError(&v121, (v66 & 0xFFFFFFFFFFFFFFF8), &v113);
        if (v121.__r_.__value_.__r.__words[0])
        {
          mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(&v121.__r_.__value_.__l.__size_, &v103, ", ");
          if (v121.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<3ul>(&v121.__r_.__value_.__l.__size_, ": ");
          }
        }

        std::error_code::message(v97, &__ec);
        if (v121.__r_.__value_.__r.__words[0])
        {
          LOWORD(v118) = 260;
          __s.__pn_.__r_.__value_.__r.__words[0] = v97;
          mlir::Diagnostic::operator<<(&v121.__r_.__value_.__l.__size_, &__s.__pn_.__r_.__value_.__l.__data_);
        }

        if ((v97[23] & 0x80000000) != 0)
        {
          operator delete(*v97);
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v121);
      }

      memset(v97, 0, 24);
      v67 = *(v1 + 719);
      if (v67 >= 0)
      {
        v68 = (v1 + 696);
      }

      else
      {
        v68 = *(v1 + 87);
      }

      v69 = *(v1 + 88);
      if (v67 >= 0)
      {
        v69 = *(v1 + 719);
      }

      std::string::append[abi:nn200100]<char const*,0>(v97, v68, (v68 + v69));
      v70 = v97[23];
      if (v97[23] < 0)
      {
        v70 = *&v97[8];
      }

      if (v70)
      {
        v71 = *((*(v1 + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
        __s.__pn_.__r_.__value_.__s.__data_[0] = 0;
        __s.__pn_.__r_.__value_.__s.__data_[16] = 0;
        *&v121.__r_.__value_.__l.__data_ = *(**v71 + 32);
        v122 = 0;
        v121.__r_.__value_.__r.__words[2] = 0;
        mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(&v121, v71, &__s);
      }

      if (v92)
      {
          ;
        }
      }

      else
      {
        m = v91;
      }

      v80 = v91 + 8 * v92;
      if (m != v80)
      {
        v81 = *m;
        while ((mlir::ModuleOp::verify((v81 + 8)) & 1) != 0)
        {
          v82 = *v81;
          LOWORD(v123) = 773;
          v121.__r_.__value_.__r.__words[0] = v81 + 16;
          v121.__r_.__value_.__l.__size_ = v82;
          v121.__r_.__value_.__r.__words[2] = ".mlir.bc";
          llvm::Twine::str(&v121, &v113);
          __s = v113;
          memset(&v113, 0, sizeof(v113));
          std::__fs::filesystem::operator/[abi:nn200100](&v95, &__s, &v103);
          if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v113.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v113.__pn_.__r_.__value_.__l.__data_);
          }

          std::__fs::filesystem::__status(&v95, &__ec);
          if (v121.__r_.__value_.__s.__data_[0])
          {
            __ec.__val_ = 0;
            __ec.__cat_ = v65;
            if (v121.__r_.__value_.__s.__data_[0] != 255)
            {
              v113.__pn_.__r_.__value_.__r.__words[0] = "file at ";
              v115 = 259;
              mlir::Operation::emitWarning(&v121, *(v81 + 8), &v113);
              if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&pn, v95.__pn_.__r_.__value_.__l.__data_, v95.__pn_.__r_.__value_.__l.__size_);
              }

              else
              {
                pn = v95.__pn_;
              }

              if (v121.__r_.__value_.__r.__words[0])
              {
                LOWORD(v118) = 260;
                __s.__pn_.__r_.__value_.__r.__words[0] = &pn;
                mlir::Diagnostic::operator<<(&v121.__r_.__value_.__l.__size_, &__s.__pn_.__r_.__value_.__l.__data_);
                if (v121.__r_.__value_.__r.__words[0])
                {
                  mlir::Diagnostic::operator<<<21ul>(&v121.__r_.__value_.__l.__size_, " will be overwritten");
                }
              }

              if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(pn.__r_.__value_.__l.__data_);
              }

              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v121);
            }
          }

          if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v121, v95.__pn_.__r_.__value_.__l.__data_, v95.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v121 = v95.__pn_;
          }

          if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v121;
          }

          else
          {
            v83 = v121.__r_.__value_.__r.__words[0];
          }

          if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v121.__r_.__value_.__l.__size_;
          }

          v110[0] = &unk_286EA4470;
          v110[1] = v81;
          v111 = v110;
          llvm::writeToOutput(v83, v84, v110, &__s);
          if (v111 == v110)
          {
            (*(*v111 + 32))(v111);
          }

          else if (v111)
          {
            (*(*v111 + 40))();
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          v85 = __s.__pn_.__r_.__value_.__r.__words[0];
          if (__s.__pn_.__r_.__value_.__r.__words[0])
          {
            *(v1 + 5) |= 4uLL;
            (*(*v85 + 8))(v85);
          }

          if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__pn_.__r_.__value_.__l.__data_);
          }

          if (!v85)
          {
            do
            {
              v86 = *(m + 1);
              m += 8;
              v81 = v86;
              if (v86)
              {
                v87 = v81 == -8;
              }

              else
              {
                v87 = 1;
              }
            }

            while (v87);
            if (m != v80)
            {
              continue;
            }
          }

          goto LABEL_233;
        }

        *(v1 + 5) |= 4uLL;
      }

LABEL_233:
      if ((v97[23] & 0x80000000) != 0)
      {
        operator delete(*v97);
      }
    }

    else
    {
      v77 = *(v1 + 5);
      v121.__r_.__value_.__r.__words[0] = "no output path provided for externalized graphs";
      LOWORD(v123) = 259;
      mlir::Operation::emitError(v112, (v77 & 0xFFFFFFFFFFFFFFF8), &v121);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v112);
      *(v1 + 5) |= 4uLL;
    }

    if (SHIBYTE(v103.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__pn_.__r_.__value_.__l.__data_);
    }
  }

LABEL_123:
  if (HIDWORD(v92))
  {
    v57 = v92;
    if (v92)
    {
      v58 = v91;
      do
      {
        v59 = *v58;
        if (*v58 != -8 && v59 != 0)
        {
          llvm::StringMapEntry<mlir::OwningOpRef<mlir::ModuleOp>>::Destroy<llvm::MallocAllocator>(v59);
        }

        ++v58;
        --v57;
      }

      while (v57);
    }
  }

  free(v91);
}

uint64_t mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path *this, _BYTE *a3)
{
  v6 = a3;
  std::__fs::filesystem::path::begin(&v8, this);
  std::__fs::filesystem::path::end(&v7, this);
  llvm::interleave<std::__fs::filesystem::path::iterator,mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(std::__fs::filesystem::path const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(void)#1},void>(&v8, &v7, a1, a1, &v6);
  if (SHIBYTE(v7.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  return a1;
}

void llvm::StringMapEntry<mlir::OwningOpRef<mlir::ModuleOp>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*(v1 + 2))
    {
      *(v1 + 2) = 0;
      v3 = *v1;
      v2 = *(v1 + 1);
      *v2 = *v1;
      *(v3 + 8) = v2;
      *v1 = 0;
      *(v1 + 1) = 0;
    }

    mlir::Operation::destroy(v1);
  }

  JUMPOUT(0x25F891030);
}

uint64_t std::__function::__func<anonymous namespace::ExternalizeGraphsPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::ExternalizeGraphsPass::runOnOperation(void)::$_0>,llvm::Error ()(llvm::raw_ostream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA4470;
  a2[1] = v2;
  return result;
}

void std::allocator_traits<std::allocator<anonymous namespace::ExternalModulePlan>>::destroy[abi:nn200100]<anonymous namespace::ExternalModulePlan,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  JUMPOUT(0x25F891030);
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN4ODIE8Compiler17externalizeGraphsENS1_8ModuleOpERNS_9StringMapINS1_11OwningOpRefISE_EENS_15MallocAllocatorEEEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESX_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ****a1, uint64_t a2)
{
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id && *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72))
  {
    v5 = *a1;
    v6 = **a1;
    v8 = v6[1];
    v7 = v6[2];
    if (v8 >= v7)
    {
      v10 = *v6;
      v11 = &v8[-*v6];
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4) + 1;
      if (v12 > 0x555555555555555)
      {
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = 16 * (v11 >> 4);
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *v15 = 0u;
      *(v15 + 24) = v15 + 40;
      v9 = v15 + 48;
      v16 = v15 - v11;
      if (v10 != v8)
      {
        v28 = v15 - v11;
        v29 = v15 + 48;
        v17 = 0;
        do
        {
          v18 = &v10[v17];
          *(v17 + 16) = 0;
          *(v17 + 8) = 0;
          *v17 = *&v10[v17];
          *v18 = 0;
          *(v17 + 8) = *&v10[v17 + 8];
          *(v18 + 2) = 0;
          v19 = *(v17 + 12);
          *(v17 + 12) = *&v10[v17 + 12];
          *(v18 + 3) = v19;
          v20 = *(v17 + 16);
          *(v17 + 16) = *&v10[v17 + 16];
          *(v18 + 4) = v20;
          *(v17 + 24) = v17 + 40;
          v21 = (v17 + 24);
          *(v17 + 32) = 0;
          v22 = *&v10[v17 + 32];
          if (v22 && v17 != v18)
          {
            v23 = *(v18 + 3);
            v24 = &v10[v17];
            v25 = &v10[v17 + 40];
            if (v25 == v23)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), *&v10[v17 + 32], 16);
              v27 = *(v18 + 8);
              if (v27)
              {
                memcpy(*v21, *(v18 + 3), 16 * v27);
              }

              *(v17 + 32) = v22;
            }

            else
            {
              *v21 = v23;
              v26 = *(v24 + 9);
              *(v17 + 32) = v22;
              *(v17 + 36) = v26;
              *(v18 + 3) = v25;
              *(v24 + 9) = 0;
            }

            *(v18 + 8) = 0;
          }

          *(v17 + 40) = *(v18 + 5);
          v17 += 48;
        }

        while (&v10[v17] != v8);
        do
        {
          v10 += 48;
        }

        while (v10 != v8);
        v10 = *v6;
        v9 = v29;
        v16 = v28;
      }

      *v6 = v16;
      v6[1] = v9;
      v6[2] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *v8 = 0u;
      *(v8 + 3) = v8 + 40;
      v9 = (v8 + 48);
    }

    v6[1] = v9;
    *(v9 - 8) = a2;
    return addGraphToList(a2, v5[1], (v9 - 48));
  }

  return result;
}