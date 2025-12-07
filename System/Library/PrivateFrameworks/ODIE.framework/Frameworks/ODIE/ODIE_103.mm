uint64_t replaceTopK(mlir::OpBuilder *a1, uint64_t a2)
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4);
  v78 = v3;
  if ((*(a2 + 46) & 0x80) == 0 || (v5 = *(a2 + 68), v5 - 6 <= 0xFFFFFFFB))
  {
    v84 = 257;
    emitDiag(v3, 2, &v81, v92);
    if (v92[0])
    {
      mlir::Diagnostic::operator<<<41ul>(&v92[1], "topk op expects between 2 and 5 operands");
    }

    goto LABEL_21;
  }

  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  if (*(*(*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = 0;
  }

  v77 = v8;
  if (!v8)
  {
    v18 = "topk op expects ranked tensor input";
LABEL_20:
    v81 = v18;
    v84 = 259;
    emitDiag(v3, 2, &v81, v92);
LABEL_21:
    v19 = (v103 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
    return v19;
  }

  v9 = *(v8 + 16);
  v75 = *(v6 + 56);
  v76 = &v78;
  v88[0] = &unk_286EA3570;
  v88[3] = v88;
  v10 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v75, "k", 1, v88, "si32", 4);
  std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v88);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  LODWORD(v92[0]) = -1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v92, 1, 0);
  if (v5 < 3)
  {
    v12 = Tensor;
    goto LABEL_23;
  }

  v12 = *(*(a2 + 72) + 88);
  v87[0] = &unk_286EA3570;
  v87[3] = v87;
  v13 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v12, "dimension", 9, v87, "si32", 4);
  std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v87);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v92[0] = 0;
  v92[1] = 0;
  v81 = v92;
  if ((~*(v12 + 8) & 7) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v81, v17))
  {
LABEL_69:
    v3 = v78;
    v18 = "topk op expects dimension operand to be a constant";
    goto LABEL_20;
  }

LABEL_23:
  v20 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v12, v9);
  LOBYTE(v92[0]) = 1;
  v21 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, v92, 1);
  if (v5 < 4)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(*(a2 + 72) + 120);
    v86[0] = &unk_286EA35B8;
    v86[3] = v86;
    v23 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v22, "descending", 10, v86, "i1", 2);
    std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v86);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v92[0]) = 1;
  mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, v92, 1);
  if (v5 >= 5)
  {
    v24 = *(*(a2 + 72) + 152);
    v85[0] = &unk_286EA35B8;
    v85[3] = v85;
    v25 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v24, "sorted", 6, v85, "i1", 2);
    std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v85);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v20;
  LOBYTE(v92[0]) = 0;
  v68 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, v92, 1);
  v27 = mlir::IntegerType::get(*a1, 32, 1);
  v28 = *(a1 + 4);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SortOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v84 = 1283;
    v83[0] = "coreml.sort";
    v65 = 11;
    goto LABEL_72;
  }

  v92[0] = v28;
  v92[1] = v29;
  v93 = v95;
  v94 = 0x400000000;
  v96 = v98;
  v97 = 0x400000000;
  v99 = v101;
  v100 = 0x400000000;
  v102 = 4;
  v103 = &v105;
  v104 = 0x100000000;
  v106 = &v108;
  v107 = 0x100000000;
  v110 = 0;
  v109 = 0;
  v111 = &mlir::detail::TypeIDResolver<void,void>::id;
  v112 = 0;
  v113 = 0;
  mlir::ODIE::Compiler::CoreML::SortOp::build(a1, v92, v8, v7, v20, v22, v68);
  v31 = mlir::Operation::create(v92);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(v92);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SortOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v74 = v33;
  *v92 = *(v8 + 8);
  LOBYTE(v93) = 1;
  v34 = mlir::TensorType::cloneWith(&v77, v92, v27);
  v35 = *(a1 + 4);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArgSortOp,void>::id, *(**v35 + 32));
  if ((v37 & 1) == 0)
  {
    v84 = 1283;
    v83[0] = "coreml.argsort";
    v65 = 14;
LABEL_72:
    v83[1] = v65;
    v91 = 259;
    llvm::operator+(&v81, &v89, v92);
    llvm::report_fatal_error(v92, 1);
  }

  v92[0] = v35;
  v92[1] = v36;
  v93 = v95;
  v94 = 0x400000000;
  v96 = v98;
  v97 = 0x400000000;
  v99 = v101;
  v100 = 0x400000000;
  v102 = 4;
  v103 = &v105;
  v104 = 0x100000000;
  v106 = &v108;
  v107 = 0x100000000;
  v110 = 0;
  v109 = 0;
  v111 = &mlir::detail::TypeIDResolver<void,void>::id;
  v112 = 0;
  v113 = 0;
  mlir::ODIE::Compiler::CoreML::ArgSortOp::build(a1, v92, v34, v7, v26, v22, v68);
  v38 = mlir::Operation::create(v92);
  mlir::OpBuilder::insert(a1, v38);
  v39 = *(*(v38 + 6) + 16);
  mlir::OperationState::~OperationState(v92);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArgSortOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v73 = v40;
  v72 = create1DTensorConstantWithElement<int>(a1, 0, v9);
  v71 = create1DTensorConstantWithElement<int>(a1, 1, v9);
  v81 = v83;
  v82 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::assign(&v81, v9, 0);
  mlir::ODIE::Compiler::extract1DIntVector<int>(v26, v92);
  if (v96)
  {
    v41 = *v92[0];
    if (v92[0] != &v93)
    {
      free(v92[0]);
    }

    if (v9 > 0)
    {
      for (i = 0; i != v9; ++i)
      {
        if (v41 == i)
        {
          v79 = 0;
          v80 = 1;
          v92[0] = &v80;
          v92[1] = 1;
          v89 = v27;
          v92[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v27 + 32), v92, &v89, &v79);
          LODWORD(v79) = 1;
          v89 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v79, 1);
          v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v92, &v75, &v89);
          *(v81 + v41) = v43 - 16;
        }

        else
        {
          LODWORD(v92[0]) = 0x7FFFFFFF;
          v44 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v92, 1);
          *(v81 + i) = v44;
        }
      }
    }

    v79 = 0;
    v80 = v9;
    v92[0] = &v80;
    v92[1] = 1;
    v89 = v27;
    v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v27 + 32), v92, &v89, &v79);
    LODWORD(v92[0]) = 0;
    v46 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v92, 1, 0);
    v47 = *(a1 + 4);
    v48 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**v47 + 32));
    v92[0] = v47;
    v92[1] = v48;
    v93 = v95;
    v94 = 0x400000000;
    v96 = v98;
    v97 = 0x400000000;
    v99 = v101;
    v100 = 0x400000000;
    v102 = 4;
    v103 = &v105;
    v104 = 0x100000000;
    v106 = &v108;
    v107 = 0x100000000;
    v110 = 0;
    v109 = 0;
    v111 = &mlir::detail::TypeIDResolver<void,void>::id;
    v112 = 0;
    v113 = 0;
    mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v92, v45, v46, v81 & 0xFFFFFFFFFFFFFFF9, v82);
    v49 = mlir::Operation::create(v92);
    mlir::OpBuilder::insert(a1, v49);
    v50 = *(*(v49 + 6) + 16);
    mlir::OperationState::~OperationState(v92);
    if (v50 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    v79 = v51 - 16;
    if (*(a2 + 36))
    {
      v52 = a2 - 16;
    }

    else
    {
      v52 = 0;
    }

    v53 = (*(v52 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v53 = 0;
    }

    v80 = v53;
    if (v53 && v53[2] == 2)
    {
      v54 = v53[1];
      v55 = *v54;
      v69 = v54[1];
      v70 = v55;
      v56 = (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::SortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v70, &v74, &v72, &v79, &v71) - 16);
      v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::ArgSortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v69, &v73, &v72, &v79, &v71);
      v58 = *(a1 + 4);
      v89 = v56;
      v90 = v57 - 16;
      v19 = 1;
      mlir::OperationState::OperationState(v92, v58, "TorchImport.tuple_construct", 0x1B, &v89, 2, &v80 + 2, 1, 0, 0, 0, 0, 0, 0);
      v59 = mlir::Operation::create(v92);
      mlir::OpBuilder::insert(a1, v59);
      mlir::OperationState::~OperationState(v92);
      v60 = *(a2 + 36);
      if (v60)
      {
        v61 = (a2 - 16);
      }

      else
      {
        v61 = 0;
      }

      v89 = v61;
      v90 = v60;
      v62 = v59[9];
      v63 = v59 - 4;
      if (!v62)
      {
        v63 = 0;
      }

      v92[0] = v63;
      v92[1] = v62;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v89, v92);
      mlir::Operation::erase(a2);
    }

    else
    {
      v89 = "topk op expects result type to be a tuple containing two elements.";
      v91 = 259;
      emitDiag(v78, 2, &v89, v92);
      v19 = (v103 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
    }

    if (v81 != v83)
    {
      free(v81);
    }

    return v19;
  }

  v66 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceTrueDiv(v66, v67);
}

uint64_t replaceTrueDiv(uint64_t *a1, uint64_t *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v12 = a2[3];
    v34 = 257;
    emitDiag(v12, 2, v33, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<42ul>(v36, "expect 2 operands for TorchImport.truediv");
    }

    goto LABEL_10;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v31 = *(v4 + 56);
  v6 = v31;
  v32 = v5;
  v35 = "expected shaped type for input to TorchImport.truediv";
  v37 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v35, v30);
  v35 = "expected shaped type for other to TorchImport.truediv";
  v37 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v35, v29);
  v35 = "expected shaped type for output of TorchImport.truediv";
  v37 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v35, v27);
  v7 = 0;
  if (v30[16] != 1 || (v29[16] & 1) == 0 || (v28 & 1) == 0)
  {
    return v7 & 1;
  }

  v8 = v27[0];
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v27[0]);
  if (v9)
  {
    v11 = (*(v10 + 8))(v10, v9);
  }

  else
  {
    v11 = v8;
  }

  v14 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v11);
  if ((v15 & 1) == 0)
  {
    v24 = a2[3];
    v34 = 257;
    emitDiag(v24, 2, v33, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<16ul>(v36, "unable to cast ");
      if (v35)
      {
        v25 = v5;
LABEL_29:
        mlir::Diagnostic::operator<<(v36, v25);
        if (v35)
        {
          mlir::Diagnostic::operator<<<19ul>(v36, " to same dtype as ");
          if (v35)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v36, v27);
          }
        }
      }
    }

LABEL_10:
    v7 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    return v7 & 1;
  }

  v32 = v14;
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
  if (v16)
  {
    v8 = (*(v17 + 8))(v17, v16);
  }

  v18 = mlir::ODIE::Compiler::castValueToElementType(a1, v6, v8);
  if ((v19 & 1) == 0)
  {
    v26 = a2[3];
    v34 = 257;
    emitDiag(v26, 2, v33, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<16ul>(v36, "unable to cast ");
      if (v35)
      {
        v25 = v6;
        goto LABEL_29;
      }
    }

    goto LABEL_10;
  }

  v31 = v18;
  v35 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v27, &v32, &v31) - 16;
  v20 = *(a2 + 9);
  if (v20)
  {
    v21 = (a2 - 2);
  }

  else
  {
    v21 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v21, v20, &v35, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v23 = *a2;
    v22 = a2[1];
    *v22 = *a2;
    *(v23 + 8) = v22;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v7 = 1;
  return v7 & 1;
}

uint64_t replaceUnsqueeze(uint64_t *a1, uint64_t *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v40 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unsqueeze";
  v57 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v40, &v54, &v50);
  if (v52 != 1)
  {
    return 0;
  }

  v4 = *(a2 - 1);
  v5 = a2[3];
  v54 = "expected shaped type for the output";
  v57 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v4 & 0xFFFFFFFFFFFFFFF8), v5, &v54, &v37);
  if (v39 != 1)
  {
    return 0;
  }

  v6 = v37;
  v7 = v38;
  if (!(*(v38 + 16))(v38, v37))
  {
LABEL_18:
    v25 = a2[3];
    v49 = *(a2[9] + 24);
    v54 = "expecting ranked input type to unsqueeze";
    v57 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v49, &v54, v47);
    if (v48 == 1)
    {
      v46 = *(a2[9] + 56);
      v54 = "expecting ranked dim tensor to unsqueeze";
      v57 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v46, &v54, &Tensor);
      if (v45)
      {
        v27 = Tensor;
        v26 = v44;
        (*(v44 + 24))(v44, Tensor);
        if (!v28)
        {
          v29 = (*(v26 + 8))(v26, v27);
          if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v29[2] & 0x3FFFFFFF) == 0x20)
          {
            v30 = 1;
            LODWORD(v54) = 1;
            v42 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v54, 1);
            v54 = (*(v42 + 1) & 0xFFFFFFFFFFFFFFF8);
            v41 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v54, &v46, &v42);
            if (*(a2 + 9))
            {
              v31 = a2 - 2;
            }

            else
            {
              v31 = 0;
            }

            v54 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v32 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::Type,mlir::Value &,mlir::ODIE::Compiler::CoreML::ReshapeOp &>(a1, a1[4], &v54, &v49, &v41);
            v33 = *(a2 + 9);
            if (v33)
            {
              v34 = a2 - 2;
            }

            else
            {
              v34 = 0;
            }

            v50 = v34;
            v51 = v33;
            v35 = *(v32 + 9);
            v36 = v32 - 16;
            if (!v35)
            {
              v36 = 0;
            }

            v54 = v36;
            v55 = v35;
            mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v54);
            mlir::Operation::erase(a2);
            return v30 & 1;
          }
        }

        v53 = 257;
        emitDiag(v25, 2, &v50, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<42ul>(&v55, "expecting scalar i32 unsqueeze dimension.");
        }
      }

      else
      {
        v53 = 257;
        emitDiag(v25, 2, &v50, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<41ul>(&v55, "expecting ranked dim tensor to unsqueeze");
        }
      }

      v30 = v58 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v30 & 1;
    }

    return 0;
  }

  v8 = (*(v7 + 24))(v7, v6);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

LABEL_8:
  v11 = *v6;
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  v14 = (*(v13 + 24))(v13, v6);
  v54 = v56;
  v55 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v54, v14, &v14[8 * v15]);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v54, v55, 0);
  v16 = a2[3];
  v50 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v17 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v16, &v50, &v40, &Tensor);
  v18 = *(a2 + 9);
  if (v18)
  {
    v19 = a2 - 2;
  }

  else
  {
    v19 = 0;
  }

  v47[0] = v19;
  v47[1] = v18;
  v20 = *(v17 + 9);
  v21 = (v17 - 16);
  if (!v20)
  {
    v21 = 0;
  }

  v50 = v21;
  v51 = v20;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v47, &v50);
  if (a2[2])
  {
    a2[2] = 0;
    v23 = *a2;
    v22 = a2[1];
    *v22 = *a2;
    *(v23 + 8) = v22;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  if (v54 != v56)
  {
    free(v54);
  }

  return 1;
}

BOOL replaceView(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v45 = *(*(a2 + 9) + 24);
  *&v55 = "expected ranked tensor input to view";
  v58 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v45, &v55, &v42);
  if (v44 != 1)
  {
    return 0;
  }

  v5 = v42;
  v4 = v43;
  if ((*(v43 + 16))(v43, v42))
  {
    v6 = (*(v4 + 24))(v4, v5);
    if (v7)
    {
      v8 = 8 * v7;
      while (*v6 != 0x8000000000000000)
      {
        ++v6;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_12;
    }

LABEL_7:
    v9 = *(*(a2 + 9) + 56);
    if ((~*(v9 + 8) & 7) == 0)
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(v9 + 8) & 7;
      if (v10 == 6)
      {
        v11 = v9 + 24 * *(v9 + 16) + 120;
      }

      else
      {
        v11 = v9 + 16 * v10 + 16;
      }
    }

    else
    {
      v11 = 0;
    }

    TupleAs1DIntTensor = getTupleAs1DIntTensor(v11, a1);
    if (v33)
    {
      v47[0] = TupleAs1DIntTensor;
      *&v55 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v55, &v45, v47);
      v35 = *(a2 + 9);
      if (v35)
      {
        v36 = a2 - 16;
      }

      else
      {
        v36 = 0;
      }

      v51 = v36;
      v52 = v35;
      v37 = *(v34 + 9);
      v38 = v34 - 16;
      if (!v37)
      {
        v38 = 0;
      }

      *&v55 = v38;
      *(&v55 + 1) = v37;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v51, &v55);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v40 = *a2;
        v39 = *(a2 + 1);
        *v39 = *a2;
        *(v40 + 8) = v39;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    return 0;
  }

LABEL_12:
  v12 = *(a2 + 3);
  v13 = *(*(a2 + 9) + 56);
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }
  }

  else
  {
    v15 = 0;
  }

  getTupleAsValues(&v51, v15, *(a2 + 3));
  if (v54)
  {
    LODWORD(v55) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v55, 1, 0);
    v50 = v52;
    v16 = mlir::IntegerType::get(*a1, 32, 1);
    *&v55 = &v50;
    *(&v55 + 1) = 1;
    v47[0] = v16;
    v49 = 0;
    *&v55 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v55, v47, &v49);
    v17 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, v12, &v55, &Tensor, &v51);
    v18 = *(a2 - 1);
    v19 = *(*(a2 + 9) + 24);
    v20 = *(a1 + 4);
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**v20 + 32));
    *&v55 = v20;
    *(&v55 + 1) = v21;
    v56 = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, &v55, v18 & 0xFFFFFFFFFFFFFFF8, v19, v17 - 16);
    v22 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v22);
    v23 = *(*(v22 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 9);
    if (v25)
    {
      v26 = (a2 - 16);
    }

    else
    {
      v26 = 0;
    }

    v47[0] = v26;
    v47[1] = v25;
    v27 = *(v24 + 9);
    v28 = v24 - 16;
    if (!v27)
    {
      v28 = 0;
    }

    *&v55 = v28;
    *(&v55 + 1) = v27;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v47, &v55);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v30 = *a2;
      v29 = *(a2 + 1);
      *v29 = *a2;
      *(v30 + 8) = v29;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    v31 = 1;
  }

  else
  {
    v47[0] = "Failed to fetch tuple inputs.";
    v48 = 259;
    emitDiag(v12, 2, v47, &v55);
    v31 = (v63 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
  }

  if (v54 == 1 && v51 != &v53)
  {
    free(v51);
  }

  return v31;
}

BOOL replaceViewAsComplex(mlir::OpBuilder *a1, uint64_t *a2)
{
  v60[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v30 = *(a1 + 4);
    v47 = 257;
    emitDiag(v30, 2, &v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<42ul>(&v49, "view_as_complex expects exactly 1 operand");
    }

    goto LABEL_23;
  }

  v41 = *(a2[9] + 24);
  v48 = "expected ranked tensor input to view_as_complex";
  v52 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v41, &v48, &v38);
  if ((v40 & 1) == 0)
  {
    v31 = *(a1 + 4);
    v47 = 257;
    emitDiag(v31, 2, &v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<53ul>(&v49, "view_as_complex expects input as shaped, ranked type");
    }

LABEL_23:
    v29 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return v29;
  }

  v5 = v38;
  v4 = v39;
  v6 = (*(v39 + 24))(v39, v38);
  v44 = v46;
  v45 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, v6, &v6[8 * v7]);
  v8 = v44;
  if (*(v44 + v45 - 1) == 2)
  {
    LODWORD(v45) = v45 - 1;
    v9 = v45;
    v10 = (*(v4 + 8))(v4, v5);
    v11 = *v4;
    v48 = v8;
    v49 = v9;
    LOBYTE(v50) = 1;
    v37[0] = v11(v4, v5, &v48, v10);
    v37[1] = v12;
    (*(v4 + 24))(v4, v5);
    LODWORD(v48) = v13 - 1;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v48, 1, 0);
    LODWORD(v48) = 0;
    v35 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v48, 1, 0);
    LODWORD(v48) = 1;
    v34 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v48, 1, 0);
    v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v37, &v41, &Tensor, &v35);
    v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v37, &v41, &Tensor, &v34);
    if (*(a2 + 9))
    {
      v16 = a2 - 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16[1];
    v18 = *(a1 + 4);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a1, *(**v18 + 32));
    v48 = v18;
    v49 = Complex;
    v50 = &v52;
    v51 = 0x400000000;
    v53 = v55;
    v54 = 0x400000000;
    v55[4] = v56;
    v55[5] = 0x400000000;
    v56[8] = 4;
    v57 = v59;
    v58 = 0x100000000;
    v59[1] = v60;
    v59[2] = 0x100000000;
    v60[1] = 0;
    v60[2] = 0;
    v60[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v60[4] = 0;
    v60[6] = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(a1, &v48, v17 & 0xFFFFFFFFFFFFFFF8, v14 - 16, v15 - 16);
    v20 = mlir::Operation::create(&v48);
    mlir::OpBuilder::insert(a1, v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(&v48);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a2 + 9);
    if (v23)
    {
      v24 = a2 - 2;
    }

    else
    {
      v24 = 0;
    }

    v42[0] = v24;
    v42[1] = v23;
    v25 = *(v22 + 9);
    v26 = (v22 - 16);
    if (!v25)
    {
      v26 = 0;
    }

    v48 = v26;
    v49 = v25;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v42, &v48);
    if (a2[2])
    {
      a2[2] = 0;
      v28 = *a2;
      v27 = a2[1];
      *v27 = *a2;
      *(v28 + 8) = v27;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v29 = 1;
  }

  else
  {
    v33 = *(a1 + 4);
    v43 = 257;
    emitDiag(v33, 2, v42, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<52ul>(&v49, "view_as_complex expects operand's shape to end in 2");
    }

    v29 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v29;
}

uint64_t replaceViewAsReal(mlir::OpBuilder *a1, uint64_t *a2)
{
  v53[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v8 = *(a1 + 4);
    v41 = 257;
    emitDiag(v8, 2, &v38, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<39ul>(&v43, "view_as_real expects exactly 1 operand");
    }

    goto LABEL_11;
  }

  v36 = *(a2[9] + 24);
  __src = "expected ranked tensor input to view_as_real";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v36, &__src, &v33);
  if ((v35 & 1) == 0)
  {
    v9 = *(a1 + 4);
    v41 = 257;
    emitDiag(v9, 2, &v38, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<50ul>(&v43, "view_as_real expects input as shaped, ranked type");
    }

    goto LABEL_11;
  }

  v5 = v33;
  v4 = v34;
  v6 = (*(v34 + 8))(v34, v33);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v7 = *(a1 + 4);
    v41 = 257;
    emitDiag(v7, 2, &v38, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<53ul>(&v43, "view_as_real expects input with complex element type");
    }

LABEL_11:
    v10 = v50 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v10 & 1;
  }

  v12 = v6[1];
  v13 = *v4;
  LOBYTE(__src) = 0;
  LOBYTE(v44[0]) = 0;
  v32[0] = v13(v4, v5, &__src, v12);
  v32[1] = v14;
  v15 = (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(a1, *(a1 + 4), v32, &v36) - 16);
  v16 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(a1, *(a1 + 4), v32, &v36);
  __src = v15;
  v43 = v16 - 16;
  v38 = v40;
  v39 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v38, &__src, v44);
  (*(v4 + 24))(v4, v5);
  LODWORD(__src) = v17;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  if (*(a2 + 9))
  {
    v19 = a2 - 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19[1];
  v21 = *(a1 + 4);
  v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::StackOp>(a1, *(**v21 + 32));
  __src = v21;
  v43 = v22;
  v44[0] = &v45;
  v44[1] = 0x400000000;
  v46 = v48;
  v47 = 0x400000000;
  v48[4] = v49;
  v48[5] = 0x400000000;
  v49[8] = 4;
  v50 = v52;
  v51 = 0x100000000;
  v52[1] = v53;
  v52[2] = 0x100000000;
  v53[1] = 0;
  v53[2] = 0;
  v53[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v53[4] = 0;
  v53[6] = 0;
  mlir::ODIE::Compiler::CoreML::StackOp::build(a1, &__src, v20 & 0xFFFFFFFFFFFFFFF8, Tensor, v38 & 0xFFFFFFFFFFFFFFF9, v39);
  v23 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&__src);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a2 + 9);
  if (v26)
  {
    v27 = a2 - 2;
  }

  else
  {
    v27 = 0;
  }

  v37[0] = v27;
  v37[1] = v26;
  v28 = *(v25 + 9);
  v29 = (v25 - 16);
  if (!v28)
  {
    v29 = 0;
  }

  __src = v29;
  v43 = v28;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v37, &__src);
  if (a2[2])
  {
    a2[2] = 0;
    v31 = *a2;
    v30 = a2[1];
    *v30 = *a2;
    *(v31 + 8) = v30;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  if (v38 != v40)
  {
    free(v38);
  }

  v10 = 1;
  return v10 & 1;
}

BOOL replaceWhere(mlir::OpBuilder *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 3 && *(a2 + 36) == 1)
  {
    v4 = *(a2 + 72);
    v5 = v4[3];
    v6 = v4[7];
    v22 = v6;
    v23 = v5;
    v7 = v4[11];
    v21 = v7;
    __src = "expected ranked tensor input to where op";
    v33 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &__src, v27);
    if (v28 == 1 && (__src = "expected ranked tensor input to where op", v33 = 259, mlir::ODIE::Compiler::getShapedRankedType(v6, &__src, v24), v25 == 1) && (__src = "expected ranked tensor input to where op", v33 = 259, mlir::ODIE::Compiler::getShapedRankedType(v7, &__src, v19), (v20 & 1) != 0))
    {
      __src = v5;
      v32[0] = v6;
      v32[1] = v7;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 3uLL, a1, v27);
      if (v30)
      {
        v8 = *v27[0];
        v22 = *(v27[0] + 1);
        v23 = v8;
        v21 = *(v27[0] + 2);
        if (*(a2 + 36))
        {
          v9 = a2 - 16;
        }

        else
        {
          v9 = 0;
        }

        v19[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v19, &v23, &v22, &v21);
        v11 = *(a2 + 36);
        if (v11)
        {
          v12 = (a2 - 16);
        }

        else
        {
          v12 = 0;
        }

        v24[0] = v12;
        v24[1] = v11;
        v13 = *(v10 + 9);
        v14 = (v10 - 16);
        if (!v13)
        {
          v14 = 0;
        }

        __src = v14;
        v32[0] = v13;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v24, &__src);
        mlir::Operation::erase(a2);
        v15 = 1;
      }

      else
      {
        v18 = *(a2 + 24);
        v26 = 257;
        emitDiag(v18, 2, v24, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(v32, " cannot broadcast inputs of where to same shape.");
        }

        v15 = (v34 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      }

      if (v30 == 1 && v27[0] != &v28)
      {
        free(v27[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = *(a2 + 24);
    v27[0] = "expects 3 inputs and 1 output for Where.";
    v29 = 259;
    emitDiag(v16, 2, v27, &__src);
    v15 = (v34 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v15;
}

uint64_t replaceConstantPad(uint64_t *a1, uint64_t *a2)
{
  v63[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 3)
  {
    v8 = a2[3];
    v47 = "expect 3 operands for TorchImport.constant_pad_nd";
    v49[8] = 259;
    emitDiag(v8, 2, &v47, &v51);
    v9 = (v60 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    return v9;
  }

  v4 = *(a2[9] + 24);
  v51 = "TorchImport.constant_pad_nd requires input to be a shaped type";
  v55 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v51, &v41);
  if (v43 != 1)
  {
    return 0;
  }

  v5 = *(a2[9] + 56);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16) + 120;
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }
  }

  else
  {
    v7 = 0;
  }

  getTupleAsInts(&v47, v7, a2[3]);
  if ((v50 & 1) == 0)
  {
    v34 = a2[3];
    v44 = "failed to retrieve padding lengths as a list of int32";
    v46[8] = 259;
    emitDiag(v34, 2, &v44, &v51);
    v9 = (v60 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
LABEL_37:
    if (v50 == 1 && v47 != v49)
    {
      free(v47);
    }

    return v9;
  }

  (*(v42 + 24))(v42, v41);
  v11 = v10;
  v44 = v46;
  v45 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v44, 2 * v10, 0);
  if (!v48)
  {
LABEL_18:
    v16 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, *(a2[9] + 88), v4);
    if (v17)
    {
      v18 = v16;
      v19 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v44, v45);
      v20 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*a1, 1u);
      if (*(a2 + 9))
      {
        v21 = a2 - 2;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21[1];
      v23 = a1[4];
      v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PadOp>(*(**v23 + 32));
      v51 = v23;
      v52 = v24;
      v53 = &v55;
      v54 = 0x400000000;
      v56 = v58;
      v57 = 0x400000000;
      v58[4] = v59;
      v58[5] = 0x400000000;
      v59[8] = 4;
      v60 = v62;
      v61 = 0x100000000;
      v62[1] = v63;
      v62[2] = 0x100000000;
      v63[1] = 0;
      v63[2] = 0;
      v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v63[4] = 0;
      v63[6] = 0;
      mlir::ODIE::Compiler::CoreML::PadOp::build(a1, &v51, v22 & 0xFFFFFFFFFFFFFFF8, v4, v19, v18, v20);
      v25 = mlir::Operation::create(&v51);
      mlir::OpBuilder::insert(a1, v25);
      v26 = *(*(v25 + 6) + 16);
      mlir::OperationState::~OperationState(&v51);
      if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PadOp,void>::id)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      v28 = *(a2 + 9);
      if (v28)
      {
        v29 = a2 - 2;
      }

      else
      {
        v29 = 0;
      }

      v39[0] = v29;
      v39[1] = v28;
      v30 = *(v27 + 9);
      v31 = (v27 - 16);
      if (!v30)
      {
        v31 = 0;
      }

      v51 = v31;
      v52 = v30;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v39, &v51);
      if (a2[2])
      {
        a2[2] = 0;
        v33 = *a2;
        v32 = a2[1];
        *v32 = *a2;
        *(v33 + 8) = v32;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v9 = 1;
    }

    else
    {
      v35 = a2[3];
      v39[0] = "failed to cast padding value to same dtype as input";
      v40 = 259;
      emitDiag(v35, 2, v39, &v51);
      v9 = (v60 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    }

    if (v44 != v46)
    {
      free(v44);
    }

    goto LABEL_37;
  }

  if (v50 == 1)
  {
    v12 = 0;
    v13 = v47;
    v14 = v44 + 8 * v11 - 4;
    do
    {
      v15 = &v13[4 * v12];
      *(v14 - 1) = *v15;
      *v14 = *(v15 + 1);
      v14 -= 2;
      v12 += 2;
    }

    while (v12 < v48);
    goto LABEL_18;
  }

  v37 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceLutToDense(v37, v38);
}

uint64_t replaceLutToDense(mlir::OpBuilder *a1, uint64_t *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 3)
  {
    return 0;
  }

  v4 = *(a2 + 9);
  v5 = a2[9];
  v6 = v5[3];
  v7 = v5[7];
  v8 = v5[11];
  v9 = *(a1 + 4);
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id, *(**v9 + 32));
  if ((v11 & 1) == 0)
  {
    v27 = 1283;
    v25 = "coremlax.constexpr_lut_to_dense";
    v26 = 31;
    v38 = 259;
    llvm::operator+(&v23, v37, &v28);
    llvm::report_fatal_error(&v28, 1);
  }

  if (v4)
  {
    v12 = a2 - 2;
  }

  else
  {
    v12 = 0;
  }

  v28 = v9;
  v29 = v10;
  v30 = v32;
  v31 = 0x400000000;
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
  v23 = v12;
  v24 = 0;
  v25 = v12;
  v26 = v4;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v37, &v23);
  mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::build(a1, &v28, v37[0], v37[1], v6, v7, v8);
  v13 = mlir::Operation::create(&v28);
  mlir::OpBuilder::insert(a1, v13);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(&v28);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a2 + 9);
  if (v16)
  {
    v17 = a2 - 2;
  }

  else
  {
    v17 = 0;
  }

  v23 = v17;
  v24 = v16;
  v18 = *(v15 + 9);
  v19 = (v15 - 16);
  if (!v18)
  {
    v19 = 0;
  }

  v28 = v19;
  v29 = v18;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v23, &v28);
  if (a2[2])
  {
    a2[2] = 0;
    v21 = *a2;
    v20 = a2[1];
    *v20 = *a2;
    *(v21 + 8) = v20;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

uint64_t replaceBlockwiseShiftScale(mlir::OpBuilder *a1, uint64_t *a2)
{
  v113 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 17);
    if (v4 == 2)
    {
      v11 = a2[9];
      v6 = *(v11 + 24);
      v7 = *(v11 + 56);
      v12 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      v13 = *v12;
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
      v16 = (*(v15 + 8))(v15, v12);
      v17 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v17)
      {
        v18 = *v17;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
      }

      else
      {
        v20 = 0;
      }

      v81 = v16;
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v81);
      v22 = (*(v20 + 24))(v20, v17);
      if (v23)
      {
        v24 = 8 * v23;
        v25 = 1;
        do
        {
          v26 = *v22++;
          v25 *= v26;
          v24 -= 8;
        }

        while (v24);
      }

      else
      {
        v25 = 1;
      }

      v27 = v25 * IntOrFloatBitWidth;
      if ((v27 & 7) != 0)
      {
        v28 = (v27 >> 3) + 1;
      }

      else
      {
        v28 = v27 >> 3;
      }

      if (v28)
      {
        operator new();
      }

      v80 = a1;
      *&v87 = (*(v20 + 24))(v20, v17);
      *(&v87 + 1) = v29;
      v82 = v16;
      v109 = 0;
      *&v87 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v87, &v82, &v109);
      v30 = mlir::TensorType::operator mlir::ShapedType(&v87);
      v34 = v33;
      v35 = *(a1 + 4);
      v36 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**v35 + 32));
      *&v87 = v35;
      *(&v87 + 1) = v36;
      v88 = v90;
      v89 = 0x400000000;
      v91 = v93;
      v92 = 0x400000000;
      v94 = v96;
      v95 = 0x400000000;
      v97 = 4;
      v98 = &v100;
      v99 = 0x100000000;
      v101 = &v103;
      v102 = 0x100000000;
      v104 = 0;
      v105 = 0;
      v106 = &mlir::detail::TypeIDResolver<void,void>::id;
      v107 = 0;
      v108 = 0;
      if (ElementsAttr)
      {
        v37 = *(v34 + 24);
      }

      else
      {
        v37 = 0;
      }

      mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, &v87, ElementsAttr, v37);
      v38 = mlir::Operation::create(&v87);
      mlir::OpBuilder::insert(a1, v38);
      v39 = *(*(v38 + 6) + 16);
      v40 = v38 - 16;
      mlir::OperationState::~OperationState(&v87);
      if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
      {
        v8 = v40;
      }

      else
      {
        v8 = -16;
      }

      goto LABEL_27;
    }

    if (v4 == 3)
    {
      v5 = a2[9];
      v6 = v5[3];
      v7 = v5[7];
      v8 = v5[11];
LABEL_27:
      v41 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v41)
      {
        v42 = *v41;
        v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v44 = mlir::detail::InterfaceMap::lookup(v42 + 8, v43);
      }

      else
      {
        v44 = 0;
      }

      v79 = v6;
      v45 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v45)
      {
        v46 = *v45;
        v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v10 = mlir::detail::InterfaceMap::lookup(v46 + 8, v47);
      }

      else
      {
        v10 = 0;
      }

      v48 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v48)
      {
        v49 = *v48;
        v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v51 = mlir::detail::InterfaceMap::lookup(v49 + 8, v50);
      }

      else
      {
        v51 = 0;
      }

      (*(v10 + 24))(v10, v45);
      if (v52)
      {
        goto LABEL_45;
      }

      (*(v44 + 24))(v44, v41);
      v110 = 0;
      v111 = 0;
      v109 = 0;
      if (v53)
      {
        std::vector<long long>::__vallocate[abi:nn200100](&v109, v53);
      }

      v56 = v55;
      if (v55)
      {
        v7 = v54;
      }

      else
      {
        v57 = a2[3];
        v82 = "failed to reshape scale";
        v86 = 259;
        emitDiag(v57, 2, &v82, &v87);
        v10 = (v98 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
      }

      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      if (v56)
      {
LABEL_45:
        (*(v51 + 24))(v51, v48);
        if (v58)
        {
          goto LABEL_54;
        }

        (*(v44 + 24))(v44, v41);
        v110 = 0;
        v111 = 0;
        v109 = 0;
        if (v59)
        {
          std::vector<long long>::__vallocate[abi:nn200100](&v109, v59);
        }

        v62 = v61;
        if (v61)
        {
          v8 = v60;
        }

        else
        {
          v63 = a2[3];
          v82 = "failed to reshape offset";
          v86 = 259;
          emitDiag(v63, 2, &v82, &v87);
          v10 = (v98 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
        }

        if (v109)
        {
          v110 = v109;
          operator delete(v109);
        }

        if (v62)
        {
LABEL_54:
          v64 = *(a2 + 9);
          v65 = *(a1 + 4);
          v66 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id, *(**v65 + 32));
          if ((v67 & 1) == 0)
          {
            v86 = 1283;
            v84 = "coremlax.constexpr_blockwise_shift_scale";
            v85 = 40;
            v112 = 259;
            llvm::operator+(&v82, &v109, &v87);
            llvm::report_fatal_error(&v87, 1);
          }

          if (v64)
          {
            v68 = a2 - 2;
          }

          else
          {
            v68 = 0;
          }

          *&v87 = v65;
          *(&v87 + 1) = v66;
          v88 = v90;
          v89 = 0x400000000;
          v91 = v93;
          v92 = 0x400000000;
          v94 = v96;
          v95 = 0x400000000;
          v97 = 4;
          v98 = &v100;
          v99 = 0x100000000;
          v101 = &v103;
          v102 = 0x100000000;
          v104 = 0;
          v105 = 0;
          v106 = &mlir::detail::TypeIDResolver<void,void>::id;
          v107 = 0;
          v108 = 0;
          v82 = v68;
          v83 = 0;
          v84 = v68;
          v85 = v64;
          mlir::TypeRange::TypeRange<mlir::ResultRange>(&v109, &v82);
          mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::build(a1, &v87, v109, v110, v79, v7, v8);
          v69 = mlir::Operation::create(&v87);
          mlir::OpBuilder::insert(a1, v69);
          v70 = *(*(v69 + 6) + 16);
          mlir::OperationState::~OperationState(&v87);
          if (v70 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id)
          {
            v71 = v69;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(a2 + 9);
          if (v72)
          {
            v73 = a2 - 2;
          }

          else
          {
            v73 = 0;
          }

          v82 = v73;
          v83 = v72;
          v74 = *(v71 + 9);
          v75 = v71 - 16;
          if (!v74)
          {
            v75 = 0;
          }

          *&v87 = v75;
          *(&v87 + 1) = v74;
          mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v82, &v87);
          if (a2[2])
          {
            a2[2] = 0;
            v77 = *a2;
            v76 = a2[1];
            *v76 = *a2;
            *(v77 + 8) = v76;
            *a2 = 0;
            a2[1] = 0;
          }

          mlir::Operation::destroy(a2);
          return 1;
        }
      }

      return v10;
    }
  }

  v9 = a2[3];
  v86 = 257;
  emitDiag(v9, 2, &v82, &v87);
  if (v87)
  {
    mlir::Diagnostic::operator<<<101ul>(&v87 + 8, "unable to legalize TorchImport.constexpr_blockwise_shift_scale because number of inputs is incorrect");
  }

  v10 = (v98 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
  return v10;
}

BOOL replaceSparseToDense(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 9);
    v6 = *(v5 + 24);
    v7 = *(v5 + 56);
    v8 = *(a1 + 4);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,void>::id, *(**v8 + 32));
    if ((v10 & 1) == 0)
    {
      v28 = 1283;
      v26 = "coremlax.constexpr_sparse_to_dense";
      v27 = 34;
      v39 = 259;
      llvm::operator+(&v24, v38, &v29);
      llvm::report_fatal_error(&v29, 1);
    }

    if (v4)
    {
      v11 = (a2 - 16);
    }

    else
    {
      v11 = 0;
    }

    v29 = v8;
    v30[0] = v9;
    v30[1] = v31;
    v30[2] = 0x400000000;
    v31[4] = v32;
    v31[5] = 0x400000000;
    v32[4] = v33;
    v32[5] = 0x400000000;
    v33[8] = 4;
    v34 = v36;
    v35 = 0x100000000;
    v36[1] = v37;
    v36[2] = 0x100000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v37[4] = 0;
    v37[6] = 0;
    v24 = v11;
    v25 = 0;
    v26 = v11;
    v27 = v4;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v38, &v24);
    mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::build(a1, &v29, v38[0], v38[1], v6, v7);
    v12 = mlir::Operation::create(&v29);
    mlir::OpBuilder::insert(a1, v12);
    v13 = *(*(v12 + 6) + 16);
    mlir::OperationState::~OperationState(&v29);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a2 + 9);
    if (v15)
    {
      v16 = (a2 - 16);
    }

    else
    {
      v16 = 0;
    }

    v24 = v16;
    v25 = v15;
    v17 = *(v14 + 9);
    v18 = (v14 - 16);
    if (!v17)
    {
      v18 = 0;
    }

    v29 = v18;
    v30[0] = v17;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v24, &v29);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v20 = *a2;
      v19 = *(a2 + 1);
      *v19 = *a2;
      *(v20 + 8) = v19;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v22 = *(a2 + 3);
    v28 = 257;
    emitDiag(v22, 2, &v24, &v29);
    if (v29)
    {
      mlir::Diagnostic::operator<<<95ul>(v30, "unable to legalize TorchImport.constexpr_sparse_to_dense because number of inputs is incorrect");
    }

    v21 = (v34 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  return v21;
}

uint64_t replaceLocalScalarDense(uint64_t *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v27 = a2[3];
    v42 = 257;
    emitDiag(v27, 2, v41, v43);
    if (*&v43[0])
    {
      mlir::Diagnostic::operator<<(v43 + 8, a2[6]);
      if (*&v43[0])
      {
        mlir::Diagnostic::operator<<<26ul>(v43 + 8, " expects a single operand");
      }
    }

    goto LABEL_26;
  }

  v4 = *(a2[9] + 24);
  v39 = v4;
  *&v43[0] = "expected ranked tensor input to _local_scalar_dense";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, v43, &v36);
  if (*(a2 + 9))
  {
    v5 = a2 - 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5[1];
  v7 = a2[3];
  *&v43[0] = "expected ranked tensor type as output of _local_scalar_dense";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, v43, &v33);
  v8 = 0;
  if (v38 == 1 && (v35 & 1) != 0)
  {
    v10 = v36;
    v9 = v37;
    v11 = (*(v37 + 24))(v37, v36);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = 8 * v12;
    v14 = 1;
    do
    {
      v15 = *v11++;
      v14 *= v15;
      v13 -= 8;
    }

    while (v13);
    if (v14 != 1)
    {
      v29 = a2[3];
      v42 = 257;
      emitDiag(v29, 2, v41, v43);
      if (*&v43[0])
      {
        mlir::Diagnostic::operator<<(v43 + 8, a2[6]);
        if (*&v43[0])
        {
          mlir::Diagnostic::operator<<<30ul>(v43 + 8, " expects single element input");
        }
      }
    }

    else
    {
LABEL_12:
      (*(v9 + 24))(v9, v10);
      if (v16 && ((*(v9 + 24))(v9, v10), v17 != 1))
      {
        v31 = a2[3];
        v42 = 257;
        emitDiag(v31, 2, v41, v43);
        if (*&v43[0])
        {
          mlir::Diagnostic::operator<<(v43 + 8, a2[6]);
          if (*&v43[0])
          {
            mlir::Diagnostic::operator<<<24ul>(v43 + 8, " expects 0D or 1D input");
          }
        }
      }

      else
      {
        (*(v9 + 24))(v9, v10);
        if (v18)
        {
          LODWORD(v43[0]) = 0;
          v32 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v43, 1);
          v19 = (*(v9 + 8))(v9, v10);
          v43[0] = 0uLL;
          v40 = 0;
          v41[0] = v19;
          *&v43[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v19 + 32), v43, v41, &v40);
          v4 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], v43, &v39, &v32) - 16;
        }

        v20 = (*(v34 + 8))(v34, v33);
        v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v20);
        if (v22)
        {
          *&v43[0] = v21;
          v23 = *(a2 + 9);
          if (v23)
          {
            v24 = (a2 - 2);
          }

          else
          {
            v24 = 0;
          }

          mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v24, v23, v43, 1);
          if (a2[2])
          {
            a2[2] = 0;
            v26 = *a2;
            v25 = a2[1];
            *v25 = *a2;
            *(v26 + 8) = v25;
            *a2 = 0;
            a2[1] = 0;
          }

          mlir::Operation::destroy(a2);
          v8 = 1;
          return v8 & 1;
        }

        v30 = a2[3];
        v42 = 257;
        emitDiag(v30, 2, v41, v43);
        if (*&v43[0])
        {
          mlir::Diagnostic::operator<<<16ul>(v43 + 8, "failed to cast ");
          if (*&v43[0])
          {
            mlir::Diagnostic::operator<<(v43 + 8, v4);
            if (*&v43[0])
            {
              mlir::Diagnostic::operator<<<19ul>(v43 + 8, " to same dtype as ");
              if (*&v43[0])
              {
                mlir::Diagnostic::operator<<<mlir::ShapedType &>(v43 + 8, &v33);
              }
            }
          }
        }
      }
    }

LABEL_26:
    v8 = v45 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v43);
  }

  return v8 & 1;
}

BOOL replaceLogSoftmax(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v32 = *(a2 + 6);
  v5 = mlir::OperationName::stripDialect(&v32);
  v41[0] = 1283;
  v37 = "expected ranked tensor input to ";
  v39 = v5;
  v40 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v37, &v33);
  if (v35 != 1)
  {
    return 0;
  }

  v7 = *(*(a2 + 9) + 56);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v8 && ((*(v9 + 24))(v9, v8), !v10))
  {
    v16 = *(a2 - 1);
    v17 = *(a1 + 4);
    v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(*(**v17 + 32));
    v37 = v17;
    v38 = v18;
    v39 = v41;
    v40 = 0x400000000;
    v42 = v44;
    v43 = 0x400000000;
    v45 = v47;
    v46 = 0x400000000;
    v48 = 4;
    v49 = &v51;
    v50 = 0x100000000;
    v52 = &v54;
    v53 = 0x100000000;
    v55 = 0;
    v56 = 0;
    v57 = &mlir::detail::TypeIDResolver<void,void>::id;
    v58 = 0;
    v59 = 0;
    mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(a1, &v37, v16 & 0xFFFFFFFFFFFFFFF8, v4, v7);
    v19 = mlir::Operation::create(&v37);
    mlir::OpBuilder::insert(a1, v19);
    v20 = *(*(v19 + 6) + 16);
    mlir::OperationState::~OperationState(&v37);
    if (v20 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id)
    {
      v19 = 0;
    }

    v21 = *(a1 + 4);
    v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(*(**v21 + 32));
    v37 = v21;
    v38 = v22;
    v39 = v41;
    v40 = 0x400000000;
    v42 = v44;
    v43 = 0x400000000;
    v45 = v47;
    v46 = 0x400000000;
    v48 = 4;
    v49 = &v51;
    v50 = 0x100000000;
    v52 = &v54;
    v53 = 0x100000000;
    v55 = 0;
    v56 = 0;
    v57 = &mlir::detail::TypeIDResolver<void,void>::id;
    v58 = 0;
    v59 = 0;
    mlir::ODIE::Compiler::CoreML::LogOp::build(a1, &v37, v16 & 0xFFFFFFFFFFFFFFF8, (v19 - 16));
    v23 = mlir::Operation::create(&v37);
    mlir::OpBuilder::insert(a1, v23);
    v24 = *(*(v23 + 6) + 16);
    mlir::OperationState::~OperationState(&v37);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a2 + 9);
    v27 = (a2 - 16);
    if (!v26)
    {
      v27 = 0;
    }

    v33 = v27;
    v34 = v26;
    v28 = *(v25 + 9);
    v29 = (v25 - 16);
    if (!v28)
    {
      v29 = 0;
    }

    v37 = v29;
    v38 = v28;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v33, &v37);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v31 = *a2;
      v30 = *(a2 + 1);
      *v30 = *a2;
      *(v31 + 8) = v30;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v11 = *(a2 + 3);
    v36 = 257;
    emitDiag(v11, 2, &v33, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<25ul>(&v38, "expected 0-D tensor for ");
    }

    v32 = *(a2 + 6);
    v12 = mlir::OperationName::stripDialect(&v32);
    if (v37)
    {
      v36 = 261;
      v33 = v12;
      v34 = v13;
      mlir::Diagnostic::operator<<(&v38, &v33);
      if (v37)
      {
        mlir::Diagnostic::operator<<<11ul>(&v38, " dimension");
      }
    }

    v14 = (v49 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
  }

  return v14;
}

BOOL replaceBatchNormNoTraining(mlir::Builder *a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 7 || *(a2 + 36) != 1)
  {
    v5 = *(a2 + 24);
    v6 = "expects 7 inputs and 1 output for batchnorm.";
LABEL_8:
    v54[0] = v6;
    v55 = 259;
    emitDiag(v5, 2, v54, &OneAttr);
    goto LABEL_9;
  }

  v3 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v53 = v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v4 = *(a2 + 24);
    v54[0] = "Expected result type to be TupleType, but got ";
    v55 = 259;
    emitDiag(v4, 2, v54, &OneAttr);
    if (OneAttr)
    {
      LODWORD(v56) = 4;
      v57 = v3;
LABEL_16:
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v60, &v56, 1);
      v14 = v60 + 24 * v61;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v61;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v3[2] != 3)
  {
    v11 = *(a2 + 24);
    v54[0] = "Expected result TupleType to have 3 elements, but got ";
    v55 = 259;
    emitDiag(v11, 2, v54, &OneAttr);
    if (OneAttr)
    {
      v12 = v3[2];
      LODWORD(v56) = 5;
      v57 = v12;
      goto LABEL_16;
    }

LABEL_9:
    v7 = (v62 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&OneAttr);
    return v7;
  }

  v9 = v3[1];
  v10 = *(v9 + 8);
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_13;
  }

  v16 = v10[2];
  if (!v16)
  {
    goto LABEL_13;
  }

  v18 = v10[1];
  v19 = 8 * v16;
  v20 = 1;
  do
  {
    v21 = *v18++;
    v20 *= v21;
    v19 -= 8;
  }

  while (v19);
  if (v20)
  {
LABEL_13:
    v5 = *(a2 + 24);
    v6 = "Expected the 1st element of the result TupleType to be empty";
    goto LABEL_8;
  }

  v22 = *(v9 + 16);
  if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v23 = v22[2];
  if (!v23)
  {
    goto LABEL_22;
  }

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
  if (v26)
  {
LABEL_22:
    v5 = *(a2 + 24);
    v6 = "Expected the 2nd element of the result TupleType to be empty";
    goto LABEL_8;
  }

  v28 = *(a2 + 72);
  v29 = v28[3];
  v56 = v28[7];
  v30 = v28[11];
  v31 = v28[15];
  v51 = v31;
  v52 = v30;
  v50 = v28[19];
  v32 = v28[27];
  if (*(*(*(v56 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v48 = v28[27];
    v33 = v31;
    OneAttr = mlir::Builder::getOneAttr(a1, (*(v31 + 8) & 0xFFFFFFFFFFFFFFF8));
    v59 = v34;
    v56 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(a1, *(a1 + 4), &OneAttr) - 16;
    OneAttr = mlir::Builder::getZeroAttr(a1, (*(v33 + 8) & 0xFFFFFFFFFFFFFFF8));
    v59 = v35;
    v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(a1, *(a1 + 4), &OneAttr);
    v32 = v48;
    v52 = v36 - 16;
  }

  v37 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v32, v29);
  if ((v38 & 1) == 0)
  {
    v5 = *(a2 + 24);
    v6 = "unable to cast eps to input's element type";
    goto LABEL_8;
  }

  v49 = v37;
  v39 = v3[1];
  OneAttr = *(*(a2 + 72) + 24);
  v40 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::Type const&,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&>(a1, *(a1 + 4), v39, &OneAttr, &v56, &v52, &v51, &v50, &v49);
  v41 = *(a1 + 4);
  if (*(v40 + 9))
  {
    v42 = (v40 - 16);
  }

  else
  {
    v42 = 0;
  }

  v54[0] = v42;
  v7 = 1;
  mlir::OperationState::OperationState(&OneAttr, v41, "TorchImport.tuple_construct", 0x1B, v54, 1, &v53 + 2, 1, 0, 0, 0, 0, 0, 0);
  v43 = mlir::Operation::create(&OneAttr);
  mlir::OpBuilder::insert(a1, v43);
  mlir::OperationState::~OperationState(&OneAttr);
  v44 = *(a2 + 36);
  if (v44)
  {
    v45 = (a2 - 16);
  }

  else
  {
    v45 = 0;
  }

  v54[0] = v45;
  v54[1] = v44;
  v46 = v43[9];
  v47 = (v43 - 4);
  if (!v46)
  {
    v47 = 0;
  }

  OneAttr = v47;
  v59 = v46;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v54, &OneAttr);
  mlir::Operation::erase(a2);
  return v7;
}

BOOL replaceSoftmax(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v31 = "expected ranked tensor input to softmax";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v31, &v26);
  if (v28 != 1)
  {
    return 0;
  }

  v5 = *(*(a2 + 9) + 56);
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v6 && ((*(v7 + 24))(v7, v6), !v8))
  {
    (*(v27 + 24))(v27, v26);
    v13 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v5, v12);
    v14 = *(a2 - 1);
    v15 = *(a1 + 4);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(*(**v15 + 32));
    v31 = v15;
    v32[0] = v16;
    v32[1] = &v33;
    v32[2] = 0x400000000;
    v34 = v36;
    v35 = 0x400000000;
    v36[4] = v37;
    v36[5] = 0x400000000;
    v37[8] = 4;
    v38 = v40;
    v39 = 0x100000000;
    v40[1] = v41;
    v40[2] = 0x100000000;
    v41[1] = 0;
    v41[2] = 0;
    v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v41[4] = 0;
    v41[6] = 0;
    mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(a1, &v31, v14 & 0xFFFFFFFFFFFFFFF8, v4, v13);
    v17 = mlir::Operation::create(&v31);
    mlir::OpBuilder::insert(a1, v17);
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v31);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a2 + 9);
    if (v20)
    {
      v21 = (a2 - 16);
    }

    else
    {
      v21 = 0;
    }

    v29[0] = v21;
    v29[1] = v20;
    v22 = *(v19 + 9);
    v23 = (v19 - 16);
    if (!v22)
    {
      v23 = 0;
    }

    v31 = v23;
    v32[0] = v22;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v29, &v31);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v25 = *a2;
      v24 = *(a2 + 1);
      *v24 = *a2;
      *(v25 + 8) = v24;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v9 = *(a2 + 3);
    v30 = 257;
    emitDiag(v9, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected 0-D tensor for softmax dimension");
    }

    v10 = (v38 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  }

  return v10;
}

uint64_t replaceWithInputOrCast(uint64_t *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
    if (v4 == *(a2 + 36))
    {
      v27 = *(a2 + 72);
      *&v28 = v27;
      *(&v28 + 1) = v4;
      v5 = (a2 - 16);
      v6 = (a2 - 16);
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!*(a2 + 36))
  {
    v4 = 0;
    v27 = 0u;
    v28 = 0u;
    v5 = (a2 - 16);
LABEL_4:
    v6 = 0;
LABEL_5:
    v22 = v6;
    v23 = 0;
    v24 = v6;
    v25 = v4;
    v7 = mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(&v27, &v22);
    if (v7)
    {
      return replaceWithInput(v7, a2);
    }

    v9 = *(a2 + 36);
    if (v9)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    v27 = v10;
    *&v28 = v10;
    *(&v28 + 1) = v9;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v11 = *(a2 + 72);
      v12 = *(a2 + 68);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v22 = v11;
    v23 = v12;
    v13 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(a1, a1[4], &v27, &v22);
    v14 = *(a2 + 36);
    if (v14)
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v22 = v15;
    v23 = v14;
    v16 = *(v13 + 9);
    v17 = v13 - 16;
    if (!v16)
    {
      v17 = 0;
    }

    *&v27 = v17;
    *(&v27 + 1) = v16;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v22, &v27);
    if (*(a2 + 16))
    {
      *(a2 + 16) = 0;
      v19 = *a2;
      v18 = *(a2 + 8);
      *v18 = *a2;
      *(v19 + 8) = v18;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  v20 = *(a2 + 24);
  v26 = 257;
  emitDiag(v20, 2, &v22, &v27);
  if (v27)
  {
    mlir::Diagnostic::operator<<<89ul>(&v27 + 8, "cannot replace an op with its operands if the number of operands and results don't match");
  }

  v8 = (v29 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  return v8;
}

BOOL replaceYield(mlir::OpBuilder *a1, uint64_t *a2)
{
  v33[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 9))
  {
    v3 = a2[3];
    *&v20[0] = "expect 0 results for Yield op";
    v21 = 259;
    emitDiag(v3, 2, v20, &v23);
    v4 = (v30 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  }

  else
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 17);
      v7 = a2[9] & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v6 = 0;
      v7 = 2;
    }

    v8 = *(a1 + 4);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a1, *(**v8 + 32));
    v23 = v8;
    v24 = v9;
    v25 = v27;
    v26 = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[8] = 4;
    v30 = v32;
    v31 = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    memset(v20, 0, sizeof(v20));
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v22, v20);
    mlir::ODIE::Compiler::CoreML::YieldOp::build(a1, &v23, v22[0], v22[1], v7, v6, 0, 0);
    v10 = mlir::Operation::create(&v23);
    mlir::OpBuilder::insert(a1, v10);
    v11 = *(*(v10 + 6) + 16);
    mlir::OperationState::~OperationState(&v23);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a2 + 9);
    if (v13)
    {
      v14 = a2 - 2;
    }

    else
    {
      v14 = 0;
    }

    *&v20[0] = v14;
    *(&v20[0] + 1) = v13;
    v15 = *(v12 + 9);
    v16 = (v12 - 16);
    if (!v15)
    {
      v16 = 0;
    }

    v23 = v16;
    v24 = v15;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v20, &v23);
    if (a2[2])
    {
      a2[2] = 0;
      v18 = *a2;
      v17 = a2[1];
      *v17 = *a2;
      *(v18 + 8) = v17;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  return v4;
}

unint64_t getAbsOps(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v40 = 1283;
  v36 = "expected ranked tensor inputs to ";
  v38 = a2;
  v39 = a3;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &v36, v41);
  if (v42 != 1)
  {
    return 0;
  }

  LODWORD(v36) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v36, 1, 0);
  GreaterOrEqualOps = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, *a4, Tensor);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = GreaterOrEqualOps;
  v13 = mlir::ODIE::Compiler::negateValue(a1, GreaterOrEqualOps);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 1, *a4);
  v33 = v16;
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v30 = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, -1, *a4);
  v31 = v17;
  if (v17 & 1) != 0 && (v36 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v12, *a4), v37 = v18, (v18) && (v34 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v15, *a4), v35 = v19, (v19))
  {
    v29 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v41, &v36, &TensorConstantWithSameTypeAs);
    v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v41, &v34, &v30);
    v27 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::MulOp &,mlir::ODIE::Compiler::CoreML::MulOp &>(a1, *(a1 + 4), v41, &v29, &v28);
    v20 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value const&,mlir::ODIE::Compiler::CoreML::AddOp &>(a1, *(a1 + 4), v41, a4, &v27) - 16;
    v21 = (*(*(a5 + 8) + 8))();
    v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v20, v21);
    if (v23)
    {
      v24 = v22 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  return v24 | v25;
}

unint64_t mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(mlir::OpBuilder *a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  LODWORD(v12[0]) = a2;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v12, 1, 0);
  v6 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, a3);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v11[0] = v6;
  v11[1] = a3;
  mlir::ODIE::Compiler::getBroadcastedValues(v11, 2uLL, a1, v12);
  if (v13[48] == 1)
  {
    v8 = *v12[0] & 0xFFFFFFFFFFFFFF00;
    v9 = *v12[0];
    if (v12[0] != v13)
    {
      free(v12[0]);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::MulOp &,mlir::ODIE::Compiler::CoreML::MulOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v14, *a3, *a4 - 16, *a5 - 16);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value const&,mlir::ODIE::Compiler::CoreML::AddOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
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
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v14, *a3, *a4, *a5 - 16);
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

unint64_t getPromotedType(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && (PromotedType = getPromotedType(a1[1], a2[1]), (v8 & 1) != 0))
    {
      v9 = a2 & 0xFFFFFFFFFFFFFF00;
      if (PromotedType == v3[1])
      {
        v9 = v3 & 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        LOBYTE(v3) = a2;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
      v9 = 0;
    }
  }

  else
  {
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
    if (v4)
    {
      v6 = (*(v5 + 8))(v5, v4);
    }

    else
    {
      v6 = v3;
    }

    v24 = v6;
    v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
    if (v10)
    {
      v12 = (*(v11 + 8))(v11, v10);
    }

    else
    {
      v12 = a2;
    }

    v23 = v12;
    v13 = *v6;
    v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v13 + 8, v14) || (v15 = *v12, v16 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v15 + 8, v16)))
    {
      v17 = *v6;
      v18 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      if (mlir::detail::InterfaceMap::lookup(v17 + 8, v18) || (v20 = *v12, v21 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v20 + 8, v21)))
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v24);
        if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(&v23))
        {
          v3 = a2;
        }
      }

      else
      {
        v3 = a2;
      }
    }

    v9 = v3 & 0xFFFFFFFFFFFFFF00;
  }

  return v9 | v3;
}

void *mlir::InFlightDiagnostic::append<llvm::StringRef const&>(void *a1, const char **a2)
{
  if (*a1)
  {
    v6 = 261;
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    mlir::Diagnostic::operator<<((a1 + 1), v5);
  }

  return a1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

uint64_t insertMatmul(void ***a1, uint64_t a2, uint64_t a3)
{
  v62[8] = *MEMORY[0x277D85DE8];
  *&v53 = "expected matmul lhs input to be shaped + ranked";
  v56 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v53, &v50);
  if ((v52[0] & 1) == 0 || (v6 = v50, v7 = v51, *&v53 = "expected matmul rhs input to be shaped + ranked", v56 = 259, mlir::ODIE::Compiler::getShapedRankedType(a3, &v53, &v50), (v52[0] & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = v50;
  v9 = v51;
  (*(v7 + 24))(v7, v6);
  v11 = v10;
  (*(v9 + 24))(v9, v8);
  if (v12 != v11)
  {
    v31 = a1[4];
    v56 = 257;
    emitDiag(v31, 2, &v53, &v50);
    if (v50)
    {
      mlir::Diagnostic::operator<<<46ul>(&v51, "rank did not match between matmul lhs and rhs");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, &v50);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    if ((~*(a2 + 8) & 7) != 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_26;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16) + 120;
      if (!v34)
      {
LABEL_26:
        v35 = (a2 + 32);
        goto LABEL_29;
      }
    }

    else
    {
      v34 = v32 + 16 * v33 + 16;
    }

    v35 = (v34 + 24);
LABEL_29:
    mlir::Diagnostic::attachNote(&v53 + 1, *v35, 1);
  }

  v45 = a1;
  v46 = a2;
  v47 = a3;
  v49 = 0;
  (*(v7 + 24))(v7, v6);
  if (v13 >= 3)
  {
    v14 = 0;
    v15 = v13 - 2;
    while (1)
    {
      if (*((*(v7 + 24))(v7, v6) + 8 * v14) != 0x8000000000000000 && *((*(v9 + 24))(v9, v8) + 8 * v14) != 0x8000000000000000)
      {
        v16 = *((*(v7 + 24))(v7, v6) + 8 * v14);
        if (v16 != *((*(v9 + 24))(v9, v8) + 8 * v14))
        {
          break;
        }
      }

      v49 = ++v14;
      if (v15 == v14)
      {
        goto LABEL_10;
      }
    }

    v41 = v45[4];
    v56 = 257;
    emitDiag(v41, 2, &v53, &v50);
    if (v50)
    {
      mlir::Diagnostic::operator<<<11ul>(&v51, "dimension ");
    }

    v42 = mlir::InFlightDiagnostic::operator<<<long long &>(&v50, &v49);
    v43 = v42;
    if (*v42)
    {
      mlir::Diagnostic::operator<<<42ul>((v42 + 1), " did not match between matmul lhs and rhs");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, v43);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    if ((~*(a2 + 8) & 7) != 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      goto LABEL_49;
    }

    v38 = *(v37 + 8) & 7;
    if (v38 == 6)
    {
      v39 = v37 + 24 * *(v37 + 16) + 120;
      if (!v39)
      {
LABEL_49:
        v40 = (a2 + 32);
        goto LABEL_52;
      }

LABEL_51:
      v40 = (v39 + 24);
LABEL_52:
      mlir::Diagnostic::attachNote(&v53 + 1, *v40, 1);
    }

LABEL_50:
    v39 = v37 + 16 * v38 + 16;
    goto LABEL_51;
  }

LABEL_10:
  if (*((*(v7 + 24))(v7, v6) + 8 * (v11 - 1)) != 0x8000000000000000 && *((*(v9 + 24))(v9, v8) + 8 * (v11 - 2)) != 0x8000000000000000)
  {
    v17 = *((*(v7 + 24))(v7, v6) + 8 * (v11 - 1));
    if (v17 != *((*(v9 + 24))(v9, v8) + 8 * (v11 - 2)))
    {
      v36 = v45[4];
      v56 = 257;
      emitDiag(v36, 2, &v53, &v50);
      if (v50)
      {
        mlir::Diagnostic::operator<<<79ul>(&v51, "expected last dimension of matmul lhs to match second-to-last dimension of rhs");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, &v50);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
      if ((~*(a2 + 8) & 7) != 0)
      {
        v37 = a2;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        v38 = *(v37 + 8) & 7;
        if (v38 != 6)
        {
          goto LABEL_50;
        }

        v39 = v37 + 24 * *(v37 + 16) + 120;
        if (v39)
        {
          goto LABEL_51;
        }
      }

      v40 = (a2 + 32);
      goto LABEL_52;
    }
  }

  v18 = (*(v7 + 24))(v7, v6);
  v50 = v52;
  v51 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v50, v18, &v18[8 * v19]);
  (*(v9 + 24))(v9, v8);
  v21 = *((*(v9 + 24))(v9, v8) + 8 * (v20 - 1));
  v22 = v50;
  v23 = v51;
  *(v50 + v51 - 1) = v21;
  v24 = (*(v7 + 8))(v7, v6);
  *&v53 = v22;
  *(&v53 + 1) = v23;
  v48 = 0;
  v49 = v24;
  v25 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v53, &v49, &v48);
  v26 = v45[4];
  v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(v45, *(**v26 + 32));
  *&v53 = v26;
  *(&v53 + 1) = v27;
  v54 = &v56;
  v55 = 0x400000000;
  v57 = v59;
  v58 = 0x400000000;
  v59[4] = v60;
  v59[5] = 0x400000000;
  v60[8] = 4;
  v60[9] = v61;
  v60[10] = 0x100000000;
  v61[1] = v62;
  v61[2] = 0x100000000;
  v62[1] = 0;
  v62[2] = 0;
  v62[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v62[4] = 0;
  v62[6] = 0;
  mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v45, &v53, v25, v46, v47);
  v28 = mlir::Operation::create(&v53);
  mlir::OpBuilder::insert(v45, v28);
  v29 = *(*(v28 + 6) + 16);
  v30 = (v28 - 16);
  mlir::OperationState::~OperationState(&v53);
  if (v29 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
  {
    v30 = -16;
  }

  if (v50 != v52)
  {
    free(v50);
  }

  return v30;
}

char *getAxesForTotalReduction(mlir::OpBuilder *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = "Expect input to be a ranked tensor type for torch.any";
  v19[8] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v17, &v14);
  if (v16 != 1)
  {
    return 0;
  }

  v4 = v14;
  v3 = v15;
  (*(v15 + 24))(v15, v14);
  v17 = v19;
  v18 = 0xC00000000;
  llvm::SmallVectorImpl<int>::resizeImpl<false>(&v17, v5);
  (*(v3 + 24))(v3, v4);
  v7 = v6;
  v8 = v17;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      *(v8 + v9) = v9;
      ++v9;
      (*(v3 + 24))(v3, v4);
      v11 = v10;
      v8 = v17;
    }

    while (v11 > v9);
  }

  v12 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v8, v18);
  if (v17 != v19)
  {
    free(v17);
  }

  return v12;
}

BOOL replaceAnyImpl(mlir::OpBuilder *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72[8] = *MEMORY[0x277D85DE8];
  v57 = a4;
  v9 = a2 - 2;
  if (*(a2 + 9))
  {
    v10 = a2 - 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v10[1] & 0xFFFFFFFFFFFFFFF8));
  v13 = v12;
  v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v16 = v15;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v14)
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || v17 == 0)
  {
    v21 = a2[3];
    v61 = 257;
    emitDiag(v21, 2, v60, &v63);
    if (v63)
    {
      mlir::Diagnostic::operator<<<69ul>(&v63 + 8, "Expect ranked tensor types for all inputs and output of torch.any op");
    }

    goto LABEL_39;
  }

  v22 = v17;
  v23 = v18;
  (*(v18 + 24))(v18, v17);
  if (v24 >= 2)
  {
    v25 = a2[3];
    v61 = 257;
    emitDiag(v25, 2, v60, &v63);
    if (v63)
    {
      mlir::Diagnostic::operator<<<32ul>(&v63 + 8, "Expect axes rank to be 0D or 1D");
    }

LABEL_39:
    v51 = (v69 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
    return v51;
  }

  if (!v24)
  {
    LODWORD(v63) = 1;
    v56 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v63, 1);
    v62 = 1;
    v26 = (*(v23 + 8))(v23, v22);
    *&v63 = &v62;
    *(&v63 + 1) = 1;
    v60[0] = v26;
    v58[0] = 0;
    *&v63 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v26 + 32), &v63, v60, v58);
    v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v63, &v57, &v56) - 16;
  }

  v27 = (*(v16 + 8))(v16, v14);
  if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v27[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(a1, a3);
    if ((v29 & 1) == 0)
    {
      v52 = a2[3];
      v61 = 257;
      emitDiag(v52, 2, v60, &v63);
      if (v63)
      {
        mlir::Diagnostic::operator<<<41ul>(&v63 + 8, "unable to compare input tensor with zero");
      }

      goto LABEL_39;
    }

    a3 = ComparisonWithZero;
  }

  v30 = (*(v13 + 24))(v13, v11);
  v32 = v31;
  v33 = mlir::IntegerType::get(*(**a2[3] + 32), 1, 0);
  *&v63 = v30;
  *(&v63 + 1) = v32;
  v60[0] = v33;
  v58[0] = 0;
  v34 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v33 + 32), &v63, v60, v58);
  v35 = a1;
  v36 = *(a1 + 4);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AnyOp,void>::id, *(**v36 + 32));
  if ((v38 & 1) == 0)
  {
    v61 = 1283;
    v60[2] = "coreml.any";
    v60[3] = 10;
    v59 = 259;
    llvm::operator+(v60, v58, &v63);
    llvm::report_fatal_error(&v63, 1);
  }

  *&v63 = v36;
  *(&v63 + 1) = v37;
  v64 = v66;
  v65 = 0x400000000;
  v66[4] = v67;
  v66[5] = 0x400000000;
  v67[4] = v68;
  v67[5] = 0x400000000;
  v68[8] = 4;
  v69 = v71;
  v70 = 0x100000000;
  v71[1] = v72;
  v71[2] = 0x100000000;
  v72[1] = 0;
  v72[2] = 0;
  v72[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v72[4] = 0;
  v72[6] = 0;
  mlir::ODIE::Compiler::CoreML::AnyOp::build(a1, &v63, v34, a3, v57, a5);
  v39 = mlir::Operation::create(&v63);
  mlir::OpBuilder::insert(v35, v39);
  v40 = *(*(v39 + 6) + 16);
  mlir::OperationState::~OperationState(&v63);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AnyOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v42 = (v41 - 16);
  v58[0] = (v41 - 16);
  v43 = (*(v16 + 8))(v16, v14);
  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v43[2] == -2147483640)
  {
    v44 = (*(v16 + 8))(v16, v14);
    v45 = mlir::ODIE::Compiler::castValueToElementType(v35, v42, v44);
    if ((v46 & 1) == 0)
    {
      v54 = a2[3];
      v61 = 257;
      emitDiag(v54, 2, v60, &v63);
      if (v63)
      {
        mlir::Diagnostic::operator<<<33ul>(&v63 + 8, "Unable to cast result to u8 type");
      }

      goto LABEL_39;
    }

    v58[0] = v45;
  }

  v47 = *(a2 + 9);
  if (v47)
  {
    v48 = v9;
  }

  else
  {
    v48 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v48, v47, v58, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v50 = *a2;
    v49 = a2[1];
    *v49 = *a2;
    *(v50 + 8) = v49;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

unint64_t getTupleAs1DIntTensor(uint64_t a1, mlir::OpBuilder *a2)
{
  v2 = a2;
  v31 = *MEMORY[0x277D85DE8];
  getTupleAsInts(&v27, a1, *(a2 + 4));
  if (v30 == 1)
  {
    v23 = v28;
    v4 = mlir::IntegerType::get(*v2, 32, 1);
    *&v24 = &v23;
    *(&v24 + 1) = 1;
    v18[0] = v4;
    v20 = 0;
    v18[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v4 + 32), &v24, v18, &v20);
    v5 = mlir::TensorType::operator mlir::ShapedType(v18);
    *&v24 = mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, v27, 4 * v28);
    v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(v2, *(v2 + 4), &v24);
    if (*(v7 + 9))
    {
      v2 = (v7 - 16);
    }

    else
    {
      v2 = 0;
    }

    v8 = v2 & 0xFFFFFFFFFFFFFF00;
    goto LABEL_19;
  }

  getTupleAsValues(&v24, a1, *(v2 + 4));
  if (v26 != 1)
  {
    goto LABEL_15;
  }

  if (DWORD2(v24))
  {
    v9 = v24;
    v10 = 8 * DWORD2(v24);
    while (1)
    {
      v11 = *v9;
      v18[0] = "Expect element in tuple to be a shaped, ranked type";
      v19 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v11, v18, &v20);
      if (v22 != 1)
      {
        break;
      }

      v13 = v20;
      v12 = v21;
      (*(v21 + 24))(v21, v20);
      if (v14)
      {
        break;
      }

      v15 = (*(v12 + 8))(v12, v13);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v15[2] & 0x3FFFFFFF) != 0x20)
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    LOBYTE(v2) = 0;
    v8 = 0;
    goto LABEL_16;
  }

LABEL_14:
  LODWORD(v20) = 0;
  v18[0] = mlir::ODIE::Compiler::createTensorConstant<int>(v2, &v20, 1, 0);
  v16 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(v2, *(v2 + 4), v18, &v24);
  LOBYTE(v2) = v16 - 16;
  v8 = (v16 - 16) & 0xFFFFFFFFFFFFFF00;
LABEL_16:
  if (v26 == 1 && v24 != &v25)
  {
    free(v24);
  }

LABEL_19:
  if (v30 == 1 && v27 != &v29)
  {
    free(v27);
  }

  return v8 | v2;
}

void getTupleAsInts(uint64_t a1, uint64_t a2, void **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  getTupleAsValues(&v24, a2, a3);
  if (v27 == 1)
  {
    v21 = v23;
    v22 = 0xC00000000;
    if (v25)
    {
      v4 = v24;
      v5 = v24 + 8 * v25;
      do
      {
        v6 = *v4;
        v17 = 0;
        v18 = &v17;
        if ((~*(v6 + 8) & 7) == 0)
        {
          v6 = 0;
        }

        if (!v6)
        {
          goto LABEL_24;
        }

        v7 = *(v6 + 8) & 7;
        if (v7 == 6)
        {
          v8 = v6 + 24 * *(v6 + 16);
          v9 = v8 + 120;
          if (v8 == -120)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v9 = v6 + 16 * v7 + 16;
        }

        if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v18, v9))
        {
          goto LABEL_24;
        }

        v10 = (*(*(v17 + 16) + 24))();
        if (v11)
        {
          v12 = 8 * v11;
          v13 = 1;
          do
          {
            v14 = *v10++;
            v13 *= v14;
            v12 -= 8;
          }

          while (v12);
          if (v13 != 1)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(*(v17 + 16) + 8))();
        if (mlir::Type::getIntOrFloatBitWidth(&v18) != 32)
        {
LABEL_24:
          *a1 = 0;
          *(a1 + 64) = 0;
          goto LABEL_27;
        }

        mlir::DenseElementsAttr::tryGetValues<int,void>(&v17, &v18);
        if (v19)
        {
          v15 = 0;
        }

        else
        {
          v15 = v20;
        }

        llvm::SmallVectorTemplateBase<int,true>::push_back(&v21, *(v18 + v15));
        ++v4;
      }

      while (v4 != v5);
      v16 = v22;
      *a1 = a1 + 16;
      *(a1 + 8) = 0xC00000000;
      if (v16)
      {
        llvm::SmallVectorImpl<int>::operator=(a1, &v21);
      }
    }

    else
    {
      *a1 = a1 + 16;
      *(a1 + 8) = 0xC00000000;
    }

    *(a1 + 64) = 1;
LABEL_27:
    if (v21 != v23)
    {
      free(v21);
    }

    if ((v27 & 1) != 0 && v24 != &v26)
    {
      free(v24);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 64) = 0;
  }
}

void getTupleAsValues(uint64_t a1, uint64_t a2, void **a3)
{
  v10[24] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 72);
      v6 = *(a2 + 68);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v8 = v10;
    v9 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v8, v5, 0, v5, v6);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v9)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v8);
    }

    *(a1 + 64) = 1;
    if (v8 != v10)
    {
      free(v8);
    }
  }

  else
  {
    v7[16] = 257;
    emitDiag(a3, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<55ul>(&v9, "cannot convert a tuple of unknown origin into a tensor");
    }

    *a1 = 0;
    *(a1 + 64) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v12, *a3, *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8));
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
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

uint64_t replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v46[8] = *MEMORY[0x277D85DE8];
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = *v8;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(v11 + 8))(v11, v8);
  v13 = (*(a4 + 8))(a4, a3);
  PromotedType = getPromotedType(v12, v13);
  if (v15)
  {
    v16 = PromotedType;
    if (v12 != PromotedType)
    {
      v17 = *a1;
      *&v37 = (*(v11 + 24))(v11, v8);
      *(&v37 + 1) = v18;
      v33 = v16;
      v36 = 0;
      v19 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v37, &v33, &v36);
      v20 = *(v17 + 4);
      v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(v17, *(**v20 + 32));
      *&v37 = v20;
      *(&v37 + 1) = v21;
      v38 = &v40;
      v39 = 0x400000000;
      v41 = v43;
      v42 = 0x400000000;
      v43[4] = v44;
      v43[5] = 0x400000000;
      v44[8] = 4;
      v44[9] = v45;
      v44[10] = 0x100000000;
      v45[1] = v46;
      v45[2] = 0x100000000;
      v46[1] = 0;
      v46[2] = 0;
      v46[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v46[4] = 0;
      v46[6] = 0;
      mlir::ODIE::Compiler::CoreML::CastOp::build(v17, &v37, v19, v6);
      v22 = mlir::Operation::create(&v37);
      mlir::OpBuilder::insert(v17, v22);
      v23 = *(*(v22 + 6) + 16);
      v6 = (v22 - 16);
      mlir::OperationState::~OperationState(&v37);
      if (v23 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
      {
        return -16;
      }
    }
  }

  else
  {
    v24 = **(a1 + 8);
    v35 = 257;
    emitDiag(v24, 2, &v33, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<37ul>(&v37 + 8, "Unable to get promoted type between ");
      if (v37)
      {
        LODWORD(v33) = 4;
        v34 = v12;
        v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v33, 1);
        v26 = v39 + 24 * v40;
        v27 = *v25;
        *(v26 + 16) = *(v25 + 16);
        *v26 = v27;
        ++v40;
        if (v37)
        {
          mlir::Diagnostic::operator<<<6ul>(&v37 + 8, " and ");
        }
      }
    }

    v28 = (*(a4 + 8))(a4, a3);
    if (v37)
    {
      LODWORD(v33) = 4;
      v34 = v28;
      v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v33, 1);
      v30 = v39 + 24 * v40;
      v31 = *v29;
      *(v30 + 16) = *(v29 + 16);
      *v30 = v31;
      ++v40;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    return 0;
  }

  return v6;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RangeOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RangeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::RangeOp::build(a1, v16, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id)
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

uint64_t validatePoolingOpInput(uint64_t a1, const void **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 46) & 0x80) != 0 && (*(a1 + 68) - 8) > 0xFFFFFFF9)
  {
    v5 = *(*(a1 + 72) + 24);
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    std::string::basic_string[abi:nn200100](__p, v6 + 37);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, " expects shaped tensor type for input");
    v16[12] = 260;
    v15 = __p;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &v15, v12);
    v4 = v13;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = *(a1 + 24);
    v14 = 257;
    emitDiag(v3, 2, v12, &v15);
    if (v15)
    {
      v14 = 260;
      v12[0] = a2;
      mlir::Diagnostic::operator<<(v16, v12);
      if (v15)
      {
        mlir::Diagnostic::operator<<<34ul>(v16, " expects between 2 and 7 operands");
      }
    }

    v4 = (v17 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  }

  return v4;
}

void getPoolingOpKernelStridePadding(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = a4;
  v36[25] = *MEMORY[0x277D85DE8];
  v10 = *(*(a3 + 72) + 56);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v10 + 8) & 7;
    if (v11 == 6)
    {
      v12 = v10 + 24 * *(v10 + 16) + 120;
    }

    else
    {
      v12 = v10 + 16 * v11 + 16;
    }
  }

  else
  {
    v12 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v12, a2);
  v15 = v14;
  if (v14)
  {
    v16 = TupleAs1DIntTensor;
    mlir::ODIE::Compiler::extract1DIntVector<int>(TupleAs1DIntTensor, &v30);
    if ((v34 & 1) == 0)
    {
      v24 = *(a3 + 24);
      v29 = 257;
      emitDiag(v24, 2, v28, &v35);
      if (v35)
      {
        v29 = 260;
        v28[0] = a5;
        mlir::Diagnostic::operator<<(v36, v28);
        if (v35)
        {
          mlir::Diagnostic::operator<<<42ul>(v36, " - kernel size is expected to be constant");
        }
      }

      goto LABEL_27;
    }

    TensorFromOptionalTuple = getTensorFromOptionalTuple(v6, a2, a3, 2, v30, v31);
    v19 = v18;
    if (v18)
    {
      v20 = TensorFromOptionalTuple;
      v35 = 0;
      v21 = getTensorFromOptionalTuple(v6, a2, a3, 3, &v35, 2);
      if (v22)
      {
        *a1 = v16;
        *(a1 + 8) = v15;
        *(a1 + 16) = v20;
        *(a1 + 24) = v19;
        *(a1 + 32) = v21;
        *(a1 + 40) = v22;
        *(a1 + 48) = 1;
        goto LABEL_28;
      }

      v27 = *(a3 + 24);
      v29 = 257;
      emitDiag(v27, 2, v28, &v35);
      if (!v35 || (v29 = 260, v28[0] = a5, mlir::Diagnostic::operator<<(v36, v28), !v35))
      {
LABEL_27:
        *a1 = 0;
        *(a1 + 48) = 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
LABEL_28:
        if (v34 == 1 && v30 != &v32)
        {
          free(v30);
        }

        return;
      }

      v26 = " - failed to construct padding";
    }

    else
    {
      v25 = *(a3 + 24);
      v29 = 257;
      emitDiag(v25, 2, v28, &v35);
      if (!v35)
      {
        goto LABEL_27;
      }

      v29 = 260;
      v28[0] = a5;
      mlir::Diagnostic::operator<<(v36, v28);
      if (!v35)
      {
        goto LABEL_27;
      }

      v26 = " - failed to construct strides";
    }

    mlir::Diagnostic::operator<<<31ul>(v36, v26);
    goto LABEL_27;
  }

  v23 = *(a3 + 24);
  v33 = 257;
  emitDiag(v23, 2, &v30, &v35);
  if (v35)
  {
    v33 = 260;
    v30 = a5;
    mlir::Diagnostic::operator<<(v36, &v30);
    if (v35)
    {
      mlir::Diagnostic::operator<<<39ul>(v36, " - unable to parse kernel size operand");
    }
  }

  *a1 = 0;
  *(a1 + 48) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
}

char *getBooleanFromOptionalTensor(unsigned int a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 <= a4)
  {
    v13[0] = a5;
    return mlir::ODIE::Compiler::createTensorConstant<BOOL>(a2, v13, 1);
  }

  else
  {
    v6 = *(*(a3 + 72) + 32 * a4 + 24);
    v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v7 || ((*(v8 + 24))(v8, v7), v9))
    {
      v10 = *(a3 + 24);
      v12[16] = 257;
      emitDiag(v10, 2, v12, v13);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
      return 0;
    }
  }

  return v6;
}

char *getTensorFromOptionalTuple(unsigned int a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, llvm::hashing::detail::hash_state *a5, uint64_t a6)
{
  if (a1 <= a4)
  {
    return mlir::ODIE::Compiler::create1DTensorConstant<int>(a2, a5, a6);
  }

  v9 = *(*(a3 + 72) + 32 * a4 + 24);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16) + 120;
    }

    else
    {
      v11 = v9 + 16 * v10 + 16;
    }
  }

  else
  {
    v11 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v11, a2);
  v12 = TupleAs1DIntTensor;
  if (v14)
  {
    v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(TupleAs1DIntTensor + 8) & 0xFFFFFFFFFFFFFFF8));
    v17 = (*(v16 + 24))(v16, v15);
    if (v18)
    {
      v19 = 8 * v18;
      v20 = 1;
      do
      {
        v21 = *v17++;
        v20 *= v21;
        v19 -= 8;
      }

      while (v19);
      if (v20 <= 0)
      {
        return mlir::ODIE::Compiler::create1DTensorConstant<int>(a2, a5, a6);
      }
    }
  }

  return v12;
}

unint64_t mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(void *a1, uint64_t **this, uint64_t **a3)
{
  v6 = *this;
  v7 = *(**this + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((*(v6 + 8) + 2147483632) <= 0x30 ? (v22 = ((1 << (*(v6 + 8) - 16)) & 0x1000000010001) == 0) : (v22 = 1), v22))
  {
    v8 = *a3;
    v9 = *(**a3 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((*(v8 + 8) + 2147483632) <= 0x30 ? (v23 = ((1 << (*(v8 + 8) - 16)) & 0x1000000010001) == 0) : (v23 = 1), v23))
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        LOBYTE(v8) = 0;
        v24 = 0;
        return v24 | v8;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v6 + 8) == -2147483640)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v25 = *(v8 + 8), v25 >> 30 != 2) || (v25 & 0x3FFFFFFF) != 8;
        if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v6 + 8) == 1073741832)
        {
          if (v21)
          {
LABEL_72:
            if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v8 + 8) == -2147483647)
            {
              v24 = v6 & 0xFFFFFFFFFFFFFF00;
              LOBYTE(v8) = *this;
              return v24 | v8;
            }

            IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(this);
            if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(a3))
            {
              v8 = *a3;
            }

            else
            {
              v8 = *this;
            }

LABEL_78:
            v24 = v8 & 0xFFFFFFFFFFFFFF00;
            return v24 | v8;
          }

LABEL_80:
          v8 = mlir::IntegerType::get(a1, 16, 1);
          v24 = v8 & 0xFFFFFFFFFFFFFF00;
          return v24 | v8;
        }
      }

      if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        goto LABEL_71;
      }

      v26 = *(v8 + 8);
      if (v26 >> 30 != 1)
      {
        goto LABEL_71;
      }

      if ((v26 & 0x3FFFFFFF) != 8)
      {
        v21 = 1;
      }

      if (v21)
      {
LABEL_71:
        if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v6 + 8) == -2147483647)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      goto LABEL_80;
    }
  }

  v24 = v6 & 0xFFFFFFFFFFFFFF00;
  if (v6 == *a3)
  {
    v8 = *this;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if (v6 != *a3)
  {
    v24 = 0;
  }

  return v24 | v8;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BitwiseAndOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.bitwise_and";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BitwiseOrOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.bitwise_or";
    v6[3] = 17;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BitwiseXorOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.bitwise_xor";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t disaggregateTupleInputs(uint64_t a1, void **a2, unsigned int *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v19 = 257;
    emitDiag(a2, 2, v18, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<55ul>(&v21, "cannot convert a tuple of unknown origin into a tensor");
    }

    goto LABEL_14;
  }

  __src = *(a1 + 48);
  v5 = mlir::OperationName::stripDialect(&__src);
  if (v6 != 15 || (*v5 == 0x6F635F656C707574 ? (v7 = *(v5 + 7) == 0x7463757274736E6FLL) : (v7 = 0), !v7))
  {
    v8 = *(a1 + 24);
    v19 = 257;
    emitDiag(v8, 2, v18, &__src);
    if (__src)
    {
    }

    v17 = *(a1 + 48);
    v9 = mlir::OperationName::stripDialect(&v17);
    if (__src)
    {
      v19 = 261;
      v18[0] = v9;
      v18[1] = v10;
      mlir::Diagnostic::operator<<(&v21, v18);
      if (__src)
      {
      }
    }

LABEL_14:
    v11 = v22[184] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v11 & 1;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 68);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  __src = v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&__src, v13, 0, v13, v14);
  v15 = __src;
  v16 = __src + 8 * v21;
  a3[2] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(a3, v15, v16);
  if (__src != v22)
  {
    free(__src);
  }

  v11 = 1;
  return v11 & 1;
}

char *mlir::ODIE::Compiler::insertComparisonOp<mlir::ODIE::Compiler::CoreML::MinimumOp>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v17 = a2;
  v10 = (*(a5 + 8))(a5, a4);
  v11 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v10);
  if (v12)
  {
    v16 = v11;
    __src = a2;
    v24[0] = v11;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v20);
    if (v22)
    {
      v13 = *v20[0];
      v16 = *(v20[0] + 1);
      v17 = v13;
      __src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v17, &v16) - 16;
    }

    else
    {
      v19 = 257;
      emitDiag(a6, 2, v18, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<58ul>(v24, "unable to broadcast min value and input to a common shape");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v14 = 0;
    }

    if (v22 == 1 && v20[0] != v21)
    {
      free(v20[0]);
    }
  }

  else
  {
    v21[8] = 257;
    emitDiag(a6, 2, v20, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<51ul>(v24, "unable to cast value to same element type as input");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  return v14;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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

char *buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp>(mlir::OpBuilder *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  v15 = a2;
  v143[8] = *MEMORY[0x277D85DE8];
  v108 = a4;
  v109 = a2;
  v17 = *(a1 + 4);
  *&v135 = "expects shaped type for convolution transpose input";
  v137 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v135, &v105);
  *&v135 = "expects shaped type for convolution transpose input";
  v137 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a3, &v135, v104);
  if (v107 != 1 || (v104[16] & 1) == 0)
  {
    LOBYTE(v110) = 0;
    LOBYTE(v111) = 0;
    return v110;
  }

  v18 = *(a8 + 8);
  v97 = a3;
  v98 = a5;
  v19 = 0;
  if (v18)
  {
    v20 = *a8;
    do
    {
      v21 = *v20++;
      v19 |= v21 > 0;
      --v18;
    }

    while (v18);
  }

  v23 = v105;
  v22 = v106;
  (*(v106 + 24))(v106, v105);
  v132 = v134;
  v133 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v132, 2 * v24, 0);
  (*(v22 + 24))(v22, v23);
  v130[0] = v131;
  v130[1] = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(v130, 2 * v25, 0);
  (*(v22 + 24))(v22, v23);
  v127 = v129;
  v128 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v127, 2 * v26, 0);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, *a6, *(a6 + 8), 0);
  if (v19)
  {
    TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 0, Tensor);
    if ((v29 & 1) == 0)
    {
      v126[8] = 257;
      emitDiag(v17, 2, &v124, &v135);
      if (v135)
      {
        mlir::Diagnostic::operator<<<48ul>(&v135 + 8, "Failed to set padding to 0 for conv_transpose2d");
      }

      v110 = 0;
      LOBYTE(v111) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v135);
      goto LABEL_57;
    }

    if (*(a6 + 8))
    {
      v30 = 0;
      v31 = *a6;
      v32 = v127 + 20;
      do
      {
        v33 = *(v31 + v30);
        *(v32 - 1) = v33;
        *v32 = v33;
        ++v30;
        v32 += 2;
      }

      while (v30 < *(a6 + 8));
    }

    if (*(a8 + 8))
    {
      v34 = 0;
      v35 = *a8;
      v36 = v130[0] + 20;
      do
      {
        *v36 = v35[v34];
        v36 += 2;
        ++v34;
      }

      while (v34 < *(a8 + 8));
    }

    v96 = TensorConstantWithSameTypeAs;
    if (v128 >= 5)
    {
      v37 = 0;
      v38 = 0;
      v39 = v127;
      v40 = v130[0];
      v41 = 4;
      v42 = v132;
      do
      {
        v43 = v39[v41];
        v44 = v40[v41];
        v45 = v43 - v44;
        if (v43 >= v44)
        {
          v39[v41] = v45;
          v46 = v42[v41];
        }

        else
        {
          v46 = v44 - v43;
          v42[v41] = v46;
          v45 = v39[v41];
        }

        v37 |= v46 > 0;
        v38 |= v45 > 0;
        ++v41;
      }

      while (v41 < v128);
      if (v37)
      {
        v94 = v17;
        v47 = (*(v22 + 24))(v22, v23);
        v124 = v126;
        v125 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v124, v47, &v47[8 * v48]);
        if (v133)
        {
          v49 = 0;
          v50 = 1;
          do
          {
            if (*((*(v22 + 24))(v22, v23) + v49) != 0x8000000000000000)
            {
              *(v124 + v49) += *(v132 + v50) + *(v132 + v49);
            }

            v51 = v50 + 1;
            v50 += 2;
            v49 += 8;
          }

          while (v51 < v133);
        }

        *&v114 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*a1, 1u);
        v52 = v124;
        v53 = v125;
        v54 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
        v55 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v54);
        v57 = v55;
        if (v55)
        {
          v55 = (*(v56 + 8))(v56, v55);
        }

        v89 = v57 ? v55 : v54;
        *&v135 = v52;
        *(&v135 + 1) = v53;
        v120 = v89;
        v117 = 0;
        *&v103 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v89 + 32), &v135, &v120, &v117);
        v113 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v132, v133, 0);
        LODWORD(v135) = 0;
        v90 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v135, 1, 0);
        v91 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v90, v15);
        v93 = v92;
        v117 = v91;
        LOBYTE(v118) = v92;
        if (v92)
        {
          v17 = v94;
          v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PadOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::PaddingModeAttr &>(a1, v94, &v103, &v109, &v113, &v117, &v114) - 16;
          v109 = v15;
        }

        else
        {
          v123 = 257;
          v17 = v94;
          emitDiag(v94, 2, &v120, &v135);
          if (v135)
          {
            mlir::Diagnostic::operator<<<58ul>(&v135 + 8, "Failed to create padding constant with same type as input");
          }

          v110 = 0;
          LOBYTE(v111) = 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v135);
        }

        if (v124 != v126)
        {
          free(v124);
        }

        if ((v93 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    v96 = Tensor;
  }

  v38 = 0;
LABEL_31:
  v58 = (*(*(a10 + 1) + 24))();
  v124 = v126;
  v125 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v124, v58, &v58[8 * v59]);
  v103 = *a10;
  if (v38)
  {
    v95 = a7;
    v60 = v17;
    if (v128)
    {
      v61 = 0;
      v62 = 1;
      do
      {
        if (*((*(*(a10 + 1) + 24))() + v61) != 0x8000000000000000)
        {
          *(v124 + v61) += *(v127 + v62) + *(v127 + v61);
        }

        v63 = v62 + 1;
        v62 += 2;
        v61 += 8;
      }

      while (v63 < v128);
    }

    v64 = v124;
    v65 = v125;
    v66 = (*(*(a10 + 1) + 8))();
    *&v135 = v64;
    *(&v135 + 1) = v65;
    v120 = v66;
    v117 = 0;
    *&v135 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v66 + 32), &v135, &v120, &v117);
    *&v103 = mlir::TensorType::operator mlir::ShapedType(&v135);
    *(&v103 + 1) = v67;
    v17 = v60;
    a7 = v95;
  }

  (*(v22 + 24))(v22, v23);
  v69 = create1DTensorConstantWithElement<int>(a1, -1, v68);
  v70 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp,void>::id, *(**v17 + 32));
  if ((v71 & 1) == 0)
  {
    v123 = 1283;
    v122[0] = "coreml.conv_transpose3d";
    v122[1] = 23;
    v119[8] = 259;
    llvm::operator+(&v120, &v117, &v135);
    llvm::report_fatal_error(&v135, 1);
  }

  *&v135 = v17;
  *(&v135 + 1) = v70;
  v136[0] = &v137;
  v136[1] = 0x400000000;
  v138 = v140;
  v139 = 0x400000000;
  v140[4] = v141;
  v140[5] = 0x400000000;
  v141[8] = 4;
  v141[9] = v142;
  v141[10] = 0x100000000;
  v142[1] = v143;
  v142[2] = 0x100000000;
  v143[2] = 0;
  v143[1] = 0;
  v143[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v143[4] = 0;
  v143[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp::build(a1, &v135, v103, v15, v97, v98, v96, a7, v69, a9);
  v72 = mlir::Operation::create(&v135);
  mlir::OpBuilder::insert(a1, v72);
  v73 = *(*(v72 + 6) + 16);
  mlir::OperationState::~OperationState(&v135);
  if (v73 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp,void>::id)
  {
    v74 = v72;
  }

  else
  {
    v74 = 0;
  }

  v102 = v74 - 16;
  v110 = addBiasToConv(a1, &v102, &v108, &v103);
  LOBYTE(v111) = v75;
  if (v38)
  {
    (*(v22 + 24))(v22, v23);
    *&v135 = v136;
    *(&v135 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v135, v76, 0);
    (*(v22 + 24))(v22, v23);
    v120 = v122;
    v121 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v120, v77, 0);
    (*(v22 + 24))(v22, v23);
    v117 = v119;
    v118 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v117, v78, 1);
    if (DWORD2(v135))
    {
      v79 = 0;
      v80 = v135;
      v81 = v120;
      v82 = (v127 + 4);
      do
      {
        *(v80 + 4 * v79) = *(v82 - 1);
        v83 = *v82;
        v82 += 2;
        v81[v79++] = v83;
      }

      while (v79 < DWORD2(v135));
    }

    (*(*(a10 + 1) + 24))();
    v116 = v84;
    v85 = mlir::IntegerType::get(*a1, 32, 1);
    *&v114 = &v116;
    *(&v114 + 1) = 1;
    v112 = 0;
    v113 = v85;
    *&v114 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v85 + 32), &v114, &v113, &v112);
    v101 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, *(a1 + 4), &v114, &v110);
    v116 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v135, DWORD2(v135));
    v100 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v117, v118);
    v99 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v120, v121);
    (*(*(a10 + 1) + 24))();
    v115 = v86;
    v87 = mlir::IntegerType::get(*a1, 32, 1);
    *&v114 = &v115;
    *(&v114 + 1) = 1;
    v112 = 0;
    v113 = v87;
    v113 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v87 + 32), &v114, &v113, &v112);
    *&v114 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::GetShapeOp &,mlir::Value &>(a1, v17, &v113, &v101, &v99);
    v110 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::SubOp &,mlir::Value &>(a1, v17, a10, &v110, &v116, &v114, &v100) - 16;
    LOBYTE(v111) = 1;
    if (v117 != v119)
    {
      free(v117);
    }

    if (v120 != v122)
    {
      free(v120);
    }

    if (v135 != v136)
    {
      free(v135);
    }
  }

  if (v124 != v126)
  {
    free(v124);
  }

LABEL_57:
  if (v127 != v129)
  {
    free(v127);
  }

  if (v130[0] != v131)
  {
    free(v130[0]);
  }

  if (v132 != v134)
  {
    free(v132);
  }

  return v110;
}

char *buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(mlir::OpBuilder *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  v15 = a2;
  v142[8] = *MEMORY[0x277D85DE8];
  v108 = a4;
  v109 = a2;
  v17 = *(a1 + 4);
  *&v134 = "expects shaped type for convolution transpose input";
  v136 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v134, &v105);
  *&v134 = "expects shaped type for convolution transpose input";
  v136 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a3, &v134, v104);
  if (v107 != 1 || (v104[16] & 1) == 0)
  {
    LOBYTE(v110) = 0;
    LOBYTE(v111) = 0;
    return v110;
  }

  v18 = *(a8 + 8);
  v97 = a5;
  v98 = a7;
  v96 = a3;
  v19 = 0;
  if (v18)
  {
    v20 = *a8;
    do
    {
      v21 = *v20++;
      v19 |= v21 > 0;
      --v18;
    }

    while (v18);
  }

  v23 = v105;
  v22 = v106;
  (*(v106 + 24))(v106, v105);
  v131 = v133;
  v132 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v131, 2 * v24, 0);
  (*(v22 + 24))(v22, v23);
  v129[0] = v130;
  v129[1] = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(v129, 2 * v25, 0);
  (*(v22 + 24))(v22, v23);
  v126 = v128;
  v127 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v126, 2 * v26, 0);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, *a6, *(a6 + 8), 0);
  if (v19)
  {
    TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 0, Tensor);
    if ((v29 & 1) == 0)
    {
      v125[8] = 257;
      emitDiag(v17, 2, &v123, &v134);
      if (v134)
      {
        mlir::Diagnostic::operator<<<48ul>(&v134 + 8, "Failed to set padding to 0 for conv_transpose2d");
      }

      v110 = 0;
      LOBYTE(v111) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v134);
      goto LABEL_57;
    }

    if (*(a6 + 8))
    {
      v30 = 0;
      v31 = *a6;
      v32 = v126 + 20;
      do
      {
        v33 = *(v31 + v30);
        *(v32 - 1) = v33;
        *v32 = v33;
        ++v30;
        v32 += 2;
      }

      while (v30 < *(a6 + 8));
    }

    if (*(a8 + 8))
    {
      v34 = 0;
      v35 = *a8;
      v36 = v129[0] + 20;
      do
      {
        *v36 = v35[v34];
        v36 += 2;
        ++v34;
      }

      while (v34 < *(a8 + 8));
    }

    v93 = TensorConstantWithSameTypeAs;
    if (v127 >= 5)
    {
      v37 = 0;
      v38 = 0;
      v39 = v126;
      v40 = v129[0];
      v41 = 4;
      v42 = v131;
      do
      {
        v43 = v39[v41];
        v44 = v40[v41];
        v45 = v43 - v44;
        if (v43 >= v44)
        {
          v39[v41] = v45;
          v46 = v42[v41];
        }

        else
        {
          v46 = v44 - v43;
          v42[v41] = v46;
          v45 = v39[v41];
        }

        v37 |= v46 > 0;
        v38 |= v45 > 0;
        ++v41;
      }

      while (v41 < v127);
      if (v37)
      {
        v94 = v17;
        v47 = (*(v22 + 24))(v22, v23);
        v123 = v125;
        v124 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v123, v47, &v47[8 * v48]);
        if (v132)
        {
          v49 = 0;
          v50 = 1;
          do
          {
            if (*((*(v22 + 24))(v22, v23) + v49) != 0x8000000000000000)
            {
              *(v123 + v49) += *(v131 + v50) + *(v131 + v49);
            }

            v51 = v50 + 1;
            v50 += 2;
            v49 += 8;
          }

          while (v51 < v132);
        }

        *&v114 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*a1, 1u);
        v52 = v123;
        v53 = v124;
        v54 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
        v55 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v54);
        v57 = v55;
        if (v55)
        {
          v55 = (*(v56 + 8))(v56, v55);
        }

        v88 = v57 ? v55 : v54;
        *&v134 = v52;
        *(&v134 + 1) = v53;
        v120 = v88;
        v117 = 0;
        *&v103 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v88 + 32), &v134, &v120, &v117);
        v113 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v131, v132, 0);
        LODWORD(v134) = 0;
        v89 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v134, 1, 0);
        v90 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v89, v15);
        v92 = v91;
        v117 = v90;
        LOBYTE(v118) = v91;
        if (v91)
        {
          v17 = v94;
          v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PadOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::PaddingModeAttr &>(a1, v94, &v103, &v109, &v113, &v117, &v114) - 16;
          v109 = v15;
        }

        else
        {
          v122[8] = 257;
          emitDiag(v94, 2, &v120, &v134);
          if (v134)
          {
            mlir::Diagnostic::operator<<<58ul>(&v134 + 8, "Failed to create padding constant with same type as input");
          }

          v110 = 0;
          LOBYTE(v111) = 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v134);
          v17 = v94;
        }

        if (v123 != v125)
        {
          free(v123);
        }

        if ((v92 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    v93 = Tensor;
  }

  v38 = 0;
LABEL_31:
  v58 = (*(*(a10 + 1) + 24))();
  v123 = v125;
  v124 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v123, v58, &v58[8 * v59]);
  v103 = *a10;
  v95 = v17;
  if (v38)
  {
    if (v127)
    {
      v60 = 0;
      v61 = 1;
      do
      {
        if (*((*(*(a10 + 1) + 24))() + v60) != 0x8000000000000000)
        {
          *(v123 + v60) += *(v126 + v61) + *(v126 + v60);
        }

        v62 = v61 + 1;
        v61 += 2;
        v60 += 8;
      }

      while (v62 < v127);
    }

    v63 = v123;
    v64 = v124;
    v65 = (*(*(a10 + 1) + 8))();
    *&v134 = v63;
    *(&v134 + 1) = v64;
    v120 = v65;
    v117 = 0;
    *&v134 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v65 + 32), &v134, &v120, &v117);
    v66 = mlir::TensorType::operator mlir::ShapedType(&v134);
    *&v103 = v66;
    *(&v103 + 1) = v67;
    v17 = v95;
  }

  else
  {
    v66 = v103;
  }

  (*(v22 + 24))(v22, v23);
  v69 = create1DTensorConstantWithElement<int>(a1, -1, v68);
  v70 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(a1, *(**v17 + 32));
  *&v134 = v17;
  *(&v134 + 1) = v70;
  v135[0] = &v136;
  v135[1] = 0x400000000;
  v137 = v139;
  v138 = 0x400000000;
  v139[4] = v140;
  v139[5] = 0x400000000;
  v140[8] = 4;
  v140[9] = v141;
  v140[10] = 0x100000000;
  v141[1] = v142;
  v141[2] = 0x100000000;
  v142[2] = 0;
  v142[1] = 0;
  v142[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v142[4] = 0;
  v142[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp::build(a1, &v134, v66, v15, v96, v97, v93, v98, v69, a9);
  v71 = mlir::Operation::create(&v134);
  mlir::OpBuilder::insert(a1, v71);
  v72 = *(*(v71 + 6) + 16);
  mlir::OperationState::~OperationState(&v134);
  if (v72 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp,void>::id)
  {
    v73 = v71;
  }

  else
  {
    v73 = 0;
  }

  v102 = v73 - 16;
  v110 = addBiasToConv(a1, &v102, &v108, &v103);
  LOBYTE(v111) = v74;
  if (v38)
  {
    (*(v22 + 24))(v22, v23);
    *&v134 = v135;
    *(&v134 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v134, v75, 0);
    (*(v22 + 24))(v22, v23);
    v120 = v122;
    v121 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v120, v76, 0);
    (*(v22 + 24))(v22, v23);
    v117 = v119;
    v118 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v117, v77, 1);
    if (DWORD2(v134))
    {
      v78 = 0;
      v79 = v134;
      v80 = v120;
      v81 = (v126 + 4);
      do
      {
        *(v79 + 4 * v78) = *(v81 - 1);
        v82 = *v81;
        v81 += 2;
        v80[v78++] = v82;
      }

      while (v78 < DWORD2(v134));
    }

    (*(*(a10 + 1) + 24))();
    v116 = v83;
    v84 = mlir::IntegerType::get(*a1, 32, 1);
    *&v114 = &v116;
    *(&v114 + 1) = 1;
    v112 = 0;
    v113 = v84;
    *&v114 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v84 + 32), &v114, &v113, &v112);
    v101 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, *(a1 + 4), &v114, &v110);
    v116 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v134, DWORD2(v134));
    v100 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v117, v118);
    v99 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v120, v121);
    (*(*(a10 + 1) + 24))();
    v115 = v85;
    v86 = mlir::IntegerType::get(*a1, 32, 1);
    *&v114 = &v115;
    *(&v114 + 1) = 1;
    v112 = 0;
    v113 = v86;
    v113 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v86 + 32), &v114, &v113, &v112);
    *&v114 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::GetShapeOp &,mlir::Value &>(a1, v95, &v113, &v101, &v99);
    v110 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::SubOp &,mlir::Value &>(a1, v95, a10, &v110, &v116, &v114, &v100) - 16;
    LOBYTE(v111) = 1;
    if (v117 != v119)
    {
      free(v117);
    }

    if (v120 != v122)
    {
      free(v120);
    }

    if (v134 != v135)
    {
      free(v134);
    }
  }

  if (v123 != v125)
  {
    free(v123);
  }

LABEL_57:
  if (v126 != v128)
  {
    free(v126);
  }

  if (v129[0] != v130)
  {
    free(v129[0]);
  }

  if (v131 != v133)
  {
    free(v131);
  }

  return v110;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PadOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::PaddingModeAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PadOp>(*(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::PadOp::build(a1, v18, *a3, *a4, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PadOp,void>::id)
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

char *create1DTensorConstantWithElement<int>(mlir::OpBuilder *a1, int a2, unint64_t a3)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v6, a3, a2);
  v4 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v6, v7);
  if (v6 != v8)
  {
    free(v6);
  }

  return v4;
}

char *addBiasToConv(mlir::OpBuilder *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v46[6] = *MEMORY[0x277D85DE8];
  if (*(*(*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    return *a2;
  }

  v8 = *(a1 + 4);
  v9 = (*(a4[1] + 24))();
  v11 = v9;
  v44 = v46;
  v45 = 0xC00000000;
  v41 = v43;
  v42 = 0x600000000;
  switch(v10)
  {
    case 3:
      v30 = v8;
      v18 = *(v9 + 8);
      LODWORD(__src) = 1;
      *(&__src + 4) = v18 | 0x100000000;
      LODWORD(v45) = 0;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v44, &__src, &__src + 12);
      v19 = *(v11 + 8);
      *&__src = 1;
      *(&__src + 1) = v19;
      v38.i64[0] = 1;
      LODWORD(v42) = 0;
      v14 = &v38.i64[1];
      goto LABEL_9;
    case 4:
      v30 = v8;
      v16 = *(v9 + 8);
      LODWORD(__src) = 1;
      DWORD1(__src) = v16;
      *(&__src + 1) = 0x100000001;
      LODWORD(v45) = 0;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v44, &__src, &v38);
      v17 = *(v11 + 8);
      *&__src = 1;
      *(&__src + 1) = v17;
      v38 = vdupq_n_s64(1uLL);
      LODWORD(v42) = 0;
      v14 = &v39;
      goto LABEL_9;
    case 5:
      v30 = v8;
      v12 = *(v9 + 8);
      LODWORD(__src) = 1;
      DWORD1(__src) = v12;
      *(&__src + 1) = 0x100000001;
      v38.i32[0] = 1;
      LODWORD(v45) = 0;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v44, &__src, &v38.i8[4]);
      v13 = *(v11 + 8);
      *&__src = 1;
      *(&__src + 1) = v13;
      v38 = vdupq_n_s64(1uLL);
      v39 = 1;
      LODWORD(v42) = 0;
      v14 = &v40;
LABEL_9:
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v41, &__src, v14);
      v31 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v44, v45);
      v20 = v41;
      v21 = v42;
      v22 = (*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
      v25 = v23;
      if (v23)
      {
        v23 = (*(v24 + 8))(v24, v23);
      }

      if (v25)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      *&__src = v20;
      *(&__src + 1) = v21;
      v34[0] = v26;
      v32[0] = 0;
      *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v26 + 32), &__src, v34, v32);
      v27 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, a3, &v31);
      v28 = *a2;
      *&__src = v27 - 16;
      *(&__src + 1) = v28;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v34);
      if (v36)
      {
        *&__src = *v34[0];
        v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), a4, a2, &__src) - 16;
      }

      else
      {
        v33 = 257;
        emitDiag(v30, 2, v32, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<51ul>(&__src + 8, "Failed to broadcast bias for convolution operation");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v15 = 0;
      }

      if (v36 == 1 && v34[0] != v35)
      {
        free(v34[0]);
      }

      goto LABEL_23;
  }

  v34[0] = "Can't reshape convolution bias, input is not 3D/4D/5D";
  v35[8] = 259;
  emitDiag(v8, 2, v34, &__src);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v15 = 0;
LABEL_23:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v15;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::GetShapeOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::SubOp::build(a1, v14, *a3, *a4 - 16, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::SubOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7)
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
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v18, *a3, *a4, *a5, *a6 - 16, *a7);
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PadOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PadOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.pad";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::Conv2dOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::Conv2dOp>(a1, *(**a2 + 32));
  v21[0] = a2;
  v21[1] = v17;
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
  mlir::ODIE::Compiler::CoreML::Conv2dOp::build(a1, v21, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v18 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v19;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::FlatSymbolRefAttr &,llvm::SmallVector<mlir::Type,6u> &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(a1, v14, *a3, *a4 & 0xFFFFFFFFFFFFFFF9 | 2, *(a4 + 8), *a5 & 0xFFFFFFFFFFFFFFF9, *(a5 + 8));
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
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

mlir::Operation *getBinaryOps<mlir::ODIE::Compiler::CoreML::DivideOp>(mlir::OpBuilder *a1, const char **a2, void ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = *MEMORY[0x277D85DE8];
  v69 = a5;
  v70 = a4;
  v12 = *a2;
  v13 = a2[1];
  __src = "expected ranked tensor x input to ";
  v83 = v12;
  v84 = v13;
  LOWORD(v85) = 1283;
  mlir::ODIE::Compiler::getShapedRankedType(a4, &__src, &v66);
  LOWORD(v85) = 1283;
  v14 = *a2;
  v15 = a2[1];
  __src = "expected ranked tensor y input to ";
  v83 = v14;
  v84 = v15;
  mlir::ODIE::Compiler::getShapedRankedType(a5, &__src, &v63);
  v16 = 0;
  if (v68 != 1)
  {
    v17 = 0;
    return (v17 | v16);
  }

  v17 = 0;
  if ((v65 & 1) == 0)
  {
    return (v17 | v16);
  }

  v18 = a6;
  v19 = a3;
  v21 = v66;
  v20 = v67;
  v22 = (*(v67 + 8))(v67, v66);
  v23 = v64;
  v61 = v63;
  v24 = (*(v64 + 8))(v64);
  PromotedType = getPromotedType(v22, v24);
  if ((v26 & 1) == 0)
  {
    v42 = *v19;
    v79[8] = 257;
    emitDiag(v42, 2, &v77, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v82, "Unable to get promoted type between ");
    }

    v43 = (*(v20 + 8))(v20, v21);
    if (__src)
    {
      LODWORD(v77) = 4;
      v78 = v43;
      v44 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v84, &v77, 1);
      v45 = v84 + 24 * v85;
      v46 = *v44;
      *(v45 + 16) = *(v44 + 16);
      *v45 = v46;
      ++v85;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v82, " and ");
      }
    }

    v47 = (*(v23 + 8))(v23, v61);
    if (__src)
    {
      LODWORD(v77) = 4;
      v78 = v47;
      v48 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v84, &v77, 1);
      v49 = v84 + 24 * v85;
      v50 = *v48;
      *(v49 + 16) = *(v48 + 16);
      *v49 = v50;
      ++v85;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v16 = 0;
    v17 = 0;
    return (v17 | v16);
  }

  v27 = PromotedType;
  v28 = mlir::ODIE::Compiler::castValueToElementType(a1, a4, PromotedType);
  if (v29)
  {
    v30 = v28;
    v70 = v28;
    v31 = mlir::ODIE::Compiler::castValueToElementType(a1, a5, v27);
    if (v32)
    {
      v69 = v31;
      __src = v30;
      v82 = v31;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v77);
      if (v80)
      {
        v33 = *v77;
        v34 = *(v77 + 1);
        v69 = v34;
        v70 = v33;
        if (*(v18 + 8) != 1)
        {
LABEL_36:
          v55 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v70, &v69);
          v17 = (v55 - 16) & 0xFFFFFFFFFFFFFF00;
          v16 = (v55 - 16);
LABEL_37:
          if (v80 == 1 && v77 != v79)
          {
            free(v77);
          }

          return (v17 | v16);
        }

        v35 = *v18;
        v36 = (*(v23 + 8))(v23, v61);
        v37 = mlir::ODIE::Compiler::castValueToElementType(a1, v35, v36);
        if (v38)
        {
          __src = v34;
          v82 = v37;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v73);
          v39 = v76;
          if (v76)
          {
            v40 = *(v73[0] + 1);
            __src = *v73[0];
            v71[0] = v40;
            v41 = *v19;
            v62 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
            v69 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v41, &v62, &__src, v71) - 16;
          }

          else
          {
            v54 = *v19;
            v72 = 257;
            emitDiag(v54, 2, v71, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<41ul>(&v82, "Unable to broadcast RHS and alpha of op ");
            }

            mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
          }

          if (v76 == 1 && v73[0] != &v74)
          {
            free(v73[0]);
          }

          if (v39)
          {
            goto LABEL_36;
          }

LABEL_28:
          v16 = 0;
          v17 = 0;
          goto LABEL_37;
        }

        v53 = *v19;
        v75 = 257;
        emitDiag(v53, 2, v73, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&v82, "Failed to cast alpha to rhs element type for op ");
        }

        mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
      }

      else
      {
        v51 = *v19;
        v75 = 257;
        emitDiag(v51, 2, v73, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v82, " Unable to broadcast LHS and RHS of ");
        }

        v52 = mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
        if (*v52)
        {
          mlir::Diagnostic::operator<<<4ul>((v52 + 1), " op");
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      goto LABEL_28;
    }
  }

  v57 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::Value &,mlir::Value &>(v57, v58, v59, v60);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FillOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FillOp,void>::id, *(**a2 + 32));
  if ((v11 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "coreml.fill";
    v17[3] = 11;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  v19[0] = a2;
  v19[1] = v10;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::ODIE::Compiler::CoreML::FillOp::build(a1, v19, *a3, *a4, *a5);
  v12 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FillOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v13;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.exp";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ModuloOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ModuloOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ModuloOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.modulo";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id)
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

BOOL replaceFullImpl(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v5 = a2 - 2;
  if (*(a2 + 9))
  {
    v6 = a2 - 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = (v6[1] & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  v26[0] = v7;
  v26[1] = v10;
  v11 = *(a2[9] + 56);
  v12 = (*(v10 + 8))(v10, v7);
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v12);
  v25 = v13;
  if (v13)
  {
    v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FillOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v26, &v27, &v24);
    v15 = *(a2 + 9);
    if (v15)
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    v28[0] = v16;
    v28[1] = v15;
    v17 = *(v14 + 9);
    v18 = (v14 - 16);
    if (!v17)
    {
      v18 = 0;
    }

    v30 = v18;
    v31[0] = v17;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v28, &v30);
    if (a2[2])
    {
      a2[2] = 0;
      v20 = *a2;
      v19 = a2[1];
      *v19 = *a2;
      *(v20 + 8) = v19;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v22 = a2[3];
    v29 = 257;
    emitDiag(v22, 2, v28, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<40ul>(v31, "unable to cast scalar to result's dtype");
    }

    v21 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

  return v21;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MaximumOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::MaximumOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MinimumOp::build(a1, v14, *a3, *a4 - 16, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OrOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OrOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::OrOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::AddOp&,mlir::ODIE::Compiler::CoreML::MulOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v14, *a3, *a4 - 16, *a5 - 16);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

void getStackedIndexInfo(_BYTE *a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4)
{
  v39[24] = *MEMORY[0x277D85DE8];
  v8 = *((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v28 = v8;
  if (!a4 || (v37 = *(a4 + 48), v9 = mlir::OperationName::stripDialect(&v37), v10 != 15) || (*v9 == 0x6F635F656C707574 ? (v11 = *(v9 + 7) == 0x7463757274736E6FLL) : (v11 = 0), !v11))
  {
    v12 = *(a4 + 24);
    v32 = 257;
    emitDiag(v12, 2, &v29, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<66ul>(&v38, "expect indices of index/index_put op to come from tuple construct");
    }

LABEL_9:
    LOBYTE(v29) = 0;
    v34 = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    goto LABEL_10;
  }

  v13 = *(a4 + 44);
  if ((v13 & 0x800000) != 0)
  {
    v14 = *(a4 + 68);
  }

  else
  {
    v14 = 0;
  }

  if (v8 < v14)
  {
    v15 = *(a2 + 4);
    v32 = 257;
    emitDiag(v15, 2, &v29, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<17ul>(&v38, "require at most ");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<long long &>(&v37, &v28);
    v17 = v16;
    if (*v16)
    {
      mlir::Diagnostic::operator<<<32ul>((v16 + 1), " elements in indices, but have ");
    }

    if ((*(a4 + 46) & 0x80) != 0)
    {
      v18 = *(a4 + 68);
    }

    else
    {
      v18 = 0;
    }

    LODWORD(v35[0]) = v18;
    mlir::InFlightDiagnostic::operator<<<unsigned int>(v17, v35);
    goto LABEL_9;
  }

  v37 = v39;
  v38 = 0x600000000;
  v35[0] = v36;
  v35[1] = 0x600000000;
  if ((v13 & 0x800000) != 0)
  {
    v19 = *(a4 + 68);
    if (v19)
    {
      v20 = (*(a4 + 72) + 24);
      do
      {
        v21 = *v20;
        v22 = *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v22)
        {
          v23 = *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v37, 0);
          v27 = (a2 + 32);
        }

        else
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v37, *v20);
          if ((~*(v21 + 8) & 7) != 0)
          {
            v24 = v21;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v25 = *(v24 + 8) & 7;
            if (v25 != 6)
            {
              v26 = v24 + 16 * v25 + 16;
LABEL_46:
              v27 = (v26 + 24);
              goto LABEL_47;
            }

            v26 = v24 + 24 * *(v24 + 16) + 120;
            if (v26)
            {
              goto LABEL_46;
            }
          }

          v27 = (v21 + 32);
        }

LABEL_47:
        llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(v35, *v27);
        v20 += 4;
        --v19;
      }

      while (v19);
    }
  }

  mlir::ODIE::Compiler::getSanitizedIndices(a2, &v37, v35, a3, 1, &v29);
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37 != v39)
  {
    free(v37);
  }

LABEL_10:
  if (v34 == 1)
  {
    v37 = v39;
    v38 = 0x600000000;
    if (v30)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v37, &v29);
    }

    mlir::ODIE::Compiler::getStackedInfoFromSanitizedIndices(a2, a3, &v37, v33, a1);
    if (v37 != v39)
    {
      free(v37);
    }

    if ((v34 & 1) != 0 && v29 != &v31)
    {
      free(v29);
    }
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.gather_along_axis";
    v5[3] = 24;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ReshapeOp &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(a1, v16, *a3, *a4 - 16, *a5, *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,mlir::ShapedType &,mlir::Value &,mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp>(*(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::build(a1, v16, *a3, *a4, *a5 - 16, *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,void>::id)
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

void llvm::SmallVectorImpl<long long>::append<int *,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 2);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    v7 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 2);
}

unint64_t getBinaryComparisonOps<mlir::ODIE::Compiler::CoreML::NotEqualOp>(const char **a1, const char **a2, void ***a3, const char *a4, uint64_t a5, uint64_t *a6)
{
  v56[8] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = a2[1];
  __src = "expected ranked tensor inputs to ";
  v48 = v12;
  v49 = v13;
  v50 = 1283;
  mlir::ODIE::Compiler::getShapedRankedType(a4, &__src, &v38);
  v50 = 1283;
  v14 = *a2;
  v15 = a2[1];
  __src = "expected ranked tensor inputs to ";
  v48 = v14;
  v49 = v15;
  mlir::ODIE::Compiler::getShapedRankedType(a5, &__src, &v35);
  v16 = 0;
  if (v40 != 1)
  {
    v17 = 0;
    return v17 | v16;
  }

  v17 = 0;
  if (v37)
  {
    v18 = (*(v36 + 8))(v36, v35);
    v20 = v38;
    v19 = v39;
    if (v18 == (*(v39 + 8))(v39, v38))
    {
LABEL_6:
      __src = a4;
      v47 = a5;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v43);
      if (v45)
      {
        v24 = *v43[0];
        if (a2[1] == 2 && (**a2 == 25964 || **a2 == 29804))
        {
          v25 = *(v43[0] + 1);
        }

        else
        {
          v25 = *v43[0];
          v24 = *(v43[0] + 1);
        }

        v28 = a1[4];
        v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, *(**v28 + 32));
        __src = v28;
        v47 = v29;
        v48 = &v50;
        v49 = 0x400000000;
        v51 = v53;
        v52 = 0x400000000;
        v53[4] = v54;
        v53[5] = 0x400000000;
        v54[8] = 4;
        v54[9] = v55;
        v54[10] = 0x100000000;
        v55[1] = v56;
        v55[2] = 0x100000000;
        v56[1] = 0;
        v56[2] = 0;
        v56[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v56[4] = 0;
        v56[6] = 0;
        mlir::ODIE::Compiler::CoreML::NotEqualOp::build(a1, &__src, *a6, v25, v24);
        v30 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert(a1, v30);
        v31 = *(*(v30 + 6) + 16);
        v32 = v30 - 16;
        mlir::OperationState::~OperationState(&__src);
        v33 = -16;
        if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id)
        {
          v33 = v32;
        }

        v17 = v33 & 0xFFFFFFFFFFFFFF00;
        v16 = v33;
      }

      else
      {
        v26 = *a3;
        v42 = 257;
        emitDiag(v26, 2, v41, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<40ul>(&v47, " Unable to broadcast LHS and RHS of op ");
        }

        mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v16 = 0;
        v17 = 0;
      }

      if (v45 == 1 && v43[0] != v44)
      {
        free(v43[0]);
      }

      return v17 | v16;
    }

    v21 = (*(v19 + 8))(v19, v20);
    v22 = mlir::ODIE::Compiler::castValueToElementType(a1, a5, v21);
    if (v23)
    {
      a5 = v22;
      goto LABEL_6;
    }

    v27 = *a3;
    v44[8] = 257;
    emitDiag(v27, 2, v43, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<47ul>(&v47, " Unable to cast RHS to same type as LHS of op ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v16 = 0;
    v17 = 0;
  }

  return v17 | v16;
}

char *getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(mlir::OpBuilder *a1, const char **a2, void ***a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v9 = a4;
  v58[8] = *MEMORY[0x277D85DE8];
  v41 = a4;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, a4, a5, *a3);
  if ((v14 & 1) == 0)
  {
    v35 = *a3;
    v47 = 257;
    emitDiag(v35, 2, v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<37ul>(&v49, " failed to infer reduction dims for ");
      if (v48)
      {
        mlir::Diagnostic::operator<<(&v49, v9);
      }
    }

    goto LABEL_25;
  }

  v15 = ReductionDimFromTupleOrNone;
  v48 = "Dims are not statically shaped.";
  v52 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v48, v40);
  if (v40[16] != 1)
  {
    return 0;
  }

  v47 = 1283;
  v16 = *a2;
  v17 = a2[1];
  v44[0] = "input and output of ";
  v45 = v16;
  v46 = v17;
  v48 = v44;
  v50 = " must be ranked.";
  v52 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v48, &v37);
  if (v39 != 1)
  {
    return 0;
  }

  v18 = v37;
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v37);
  v21 = v18;
  if (v19)
  {
    v21 = (*(v20 + 8))(v20, v19);
  }

  v22 = *a7;
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a7);
  if (v23)
  {
    v22 = (*(v24 + 8))(v24, v23);
  }

  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 1 || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v22[1] & 0x3FFFFFFF) != 0x20)
  {
    v36 = *a3;
    v47 = 257;
    emitDiag(v36, 2, v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<44ul>(&v49, "input and output types are mismatching for ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&v48, a2);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return 0;
  }

  v25 = mlir::IntegerType::get(*a1, 32, 1);
  v26 = *v38;
  LOBYTE(v48) = 0;
  LOBYTE(v50) = 0;
  v48 = v26(v38, v18, &v48, v25);
  v49 = v27;
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, *(a1 + 4), &v48, &v41) - 16;
LABEL_14:
  v28 = *(a1 + 4);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceSumOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v47 = 1283;
    v45 = "coreml.reduce_sum";
    v46 = 17;
    v43 = 259;
    llvm::operator+(v44, &v42, &v48);
    llvm::report_fatal_error(&v48, 1);
  }

  v48 = v28;
  v49 = v29;
  v50 = &v52;
  v51 = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::ReduceSumOp::build(a1, &v48, *a7, v9, v15, *a6);
  v31 = mlir::Operation::create(&v48);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = v31 - 16;
  mlir::OperationState::~OperationState(&v48);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceSumOp,void>::id)
  {
    return v33;
  }

  else
  {
    return -16;
  }
}

unint64_t getReductionDimFromTupleOrNone(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = a3;
  if (!a3 || ((v6 = *(a3 + 8), (v6 & 0xFFFFFFFFFFFFFFF8) != 0) ? (v7 = *(*(v6 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id) : (v7 = 0), v7))
  {
    v42 = "expecting ranked tensors";
    v44[8] = 259;
    mlir::ODIE::Compiler::getShapedRankedType(a2, &v42, &__src);
    if (v36)
    {
      v42 = v44;
      v43 = 0xC00000000;
      (*(*(&__src + 1) + 24))(*(&__src + 1), __src);
      v12 = v11;
      if (v11 >= 1)
      {
        v13 = 0;
        do
        {
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v42, v13++);
        }

        while (v12 != v13);
      }

      v14 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v42, v43);
      if (v42 != v44)
      {
        free(v42);
      }

      goto LABEL_28;
    }

LABEL_39:
    v25 = 0;
    v24 = 0;
    return v24 | v25;
  }

  v9 = *(a3 + 8) & 7;
  if (v9 == 6)
  {
    v10 = a3 + 24 * *(a3 + 16) + 120;
  }

  else
  {
    v10 = a3 + 16 * v9 + 16;
  }

  v42 = *(v10 + 48);
  v15 = mlir::OperationName::stripDialect(&v42);
  if (v16 != 15 || (*v15 == 0x6F635F656C707574 ? (v17 = *(v15 + 7) == 0x7463757274736E6FLL) : (v17 = 0), !v17))
  {
    LODWORD(__src) = 1;
    v42 = v44;
    v43 = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v42, &__src, &__src + 4);
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v42, v43, 1);
    v41 = 1;
    v18 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v18);
    v21 = v19;
    if (v19)
    {
      v19 = (*(v20 + 8))(v20, v19);
    }

    if (v21)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    *&__src = &v41;
    *(&__src + 1) = 1;
    v39 = 0;
    v40 = v22;
    *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v22 + 32), &__src, &v40, &v39);
    v23 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v38, &Tensor);
    if (v42 != v44)
    {
      free(v42);
    }

    v14 = v23 - 16;
    goto LABEL_28;
  }

  v26 = 0;
  v27 = *(a3 + 8) & 7;
  v28 = v27 == 7;
  if (v27 == 7)
  {
    v29 = 0;
  }

  else
  {
    v29 = a3;
  }

  if (!v28)
  {
    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v26 = v29 + 24 * *(v29 + 16) + 120;
    }

    else
    {
      v26 = v29 + 16 * v30 + 16;
    }
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v26, a1);
  if ((v32 & 1) == 0)
  {
    *&__src = "Invalid dims for reduce operation.";
    v37 = 259;
    emitDiag(a4, 2, &__src, &v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    goto LABEL_39;
  }

  v14 = TupleAs1DIntTensor;
LABEL_28:
  v24 = v14 & 0xFFFFFFFFFFFFFF00;
  v25 = v14;
  return v24 | v25;
}

void mlir::ImplicitLocOpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceL2Norm,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,replaceLinalgVectorNorm(mlir::ImplicitLocOpBuilder&,mlir::Operation *)::$_0>(mlir::OpBuilder *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void (*a6)(mlir::ODIE::Compiler::CoreML::ReduceL2Norm *this, mlir::OpBuilder *a2, mlir::Block *a3))
{
  v24[8] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 4);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceL2Norm,void>::id, *(**v12 + 32));
  if (v14)
  {
    v19[0] = v12;
    v19[1] = v13;
    v19[2] = v20;
    v19[3] = 0x400000000;
    v20[4] = v21;
    v20[5] = 0x400000000;
    v21[4] = v22;
    v21[5] = 0x400000000;
    v22[8] = 4;
    v22[9] = v23;
    v22[10] = 0x100000000;
    v23[1] = v24;
    v23[2] = 0x100000000;
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v24[4] = 0;
    v24[6] = 0;
    mlir::ODIE::Compiler::CoreML::ReduceL2Norm::build(a1, v19, *a2, *a3, *a4, *a5, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Block &)>::callback_fn<replaceLinalgVectorNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0>, a6);
  }

  v18 = 1283;
  v17[2] = "coreml.decomposable.reduce_l2_norm";
  v17[3] = 34;
  v16 = 259;
  llvm::operator+(v17, &v15, v19);
  llvm::report_fatal_error(v19, 1);
}

void getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(mlir::OpBuilder *a1, const char **a2, void ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = *MEMORY[0x277D85DE8];
  v64 = a5;
  v65 = a4;
  v12 = *a2;
  v13 = a2[1];
  __src = "expected ranked tensor x input to ";
  v78 = v12;
  v79 = v13;
  LOWORD(v80) = 1283;
  mlir::ODIE::Compiler::getShapedRankedType(a4, &__src, &v61);
  LOWORD(v80) = 1283;
  v14 = *a2;
  v15 = a2[1];
  __src = "expected ranked tensor y input to ";
  v78 = v14;
  v79 = v15;
  mlir::ODIE::Compiler::getShapedRankedType(a5, &__src, &v58);
  if (v63 != 1 || (v60 & 1) == 0)
  {
    return;
  }

  v16 = a6;
  v17 = a3;
  v19 = v61;
  v18 = v62;
  v20 = (*(v62 + 8))(v62, v61);
  v21 = v59;
  v56 = v58;
  v22 = (*(v59 + 8))(v59);
  PromotedType = getPromotedType(v20, v22);
  if (v24)
  {
    v25 = PromotedType;
    v26 = mlir::ODIE::Compiler::castValueToElementType(a1, a4, PromotedType);
    if ((v27 & 1) == 0 || (v28 = v26, v65 = v26, v29 = mlir::ODIE::Compiler::castValueToElementType(a1, a5, v25), (v30 & 1) == 0))
    {
      v53 = std::__throw_bad_optional_access[abi:nn200100]();
      mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::Value &>(v53, v54, v55);
      return;
    }

    v64 = v29;
    __src = v28;
    v77 = v29;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v72);
    if (v75)
    {
      v31 = *v72;
      v32 = *(v72 + 1);
      v64 = v32;
      v65 = v31;
      if (*(v16 + 8) != 1)
      {
LABEL_36:
        mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v65, &v64);
        goto LABEL_37;
      }

      v33 = *v16;
      v34 = (*(v21 + 8))(v21, v56);
      v35 = mlir::ODIE::Compiler::castValueToElementType(a1, v33, v34);
      if (v36)
      {
        __src = v32;
        v77 = v35;
        mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v68);
        v37 = v71;
        if (v71)
        {
          v38 = *(v68[0] + 1);
          __src = *v68[0];
          v66[0] = v38;
          v39 = *v17;
          v57 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
          v64 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v39, &v57, &__src, v66) - 16;
        }

        else
        {
          v52 = *v17;
          v67 = 257;
          emitDiag(v52, 2, v66, &__src);
          if (__src)
          {
            mlir::Diagnostic::operator<<<41ul>(&v77, "Unable to broadcast RHS and alpha of op ");
          }

          mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        }

        if (v71 == 1 && v68[0] != &v69)
        {
          free(v68[0]);
        }

        if (!v37)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v51 = *v17;
      v70 = 257;
      emitDiag(v51, 2, v68, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<49ul>(&v77, "Failed to cast alpha to rhs element type for op ");
      }

      mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
    }

    else
    {
      v49 = *v17;
      v70 = 257;
      emitDiag(v49, 2, v68, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<37ul>(&v77, " Unable to broadcast LHS and RHS of ");
      }

      v50 = mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
      if (*v50)
      {
        mlir::Diagnostic::operator<<<4ul>((v50 + 1), " op");
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_37:
    if (v75 == 1 && v72 != v74)
    {
      free(v72);
    }

    return;
  }

  v40 = *v17;
  v74[8] = 257;
  emitDiag(v40, 2, &v72, &__src);
  if (__src)
  {
    mlir::Diagnostic::operator<<<37ul>(&v77, "Unable to get promoted type between ");
  }

  v41 = (*(v18 + 8))(v18, v19);
  if (__src)
  {
    LODWORD(v72) = 4;
    v73 = v41;
    v42 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v79, &v72, 1);
    v43 = v79 + 24 * v80;
    v44 = *v42;
    *(v43 + 16) = *(v42 + 16);
    *v43 = v44;
    ++v80;
    if (__src)
    {
      mlir::Diagnostic::operator<<<6ul>(&v77, " and ");
    }
  }

  v45 = (*(v21 + 8))(v21, v56);
  if (__src)
  {
    LODWORD(v72) = 4;
    v73 = v45;
    v46 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v79, &v72, 1);
    v47 = v79 + 24 * v80;
    v48 = *v46;
    *(v47 + 16) = *(v46 + 16);
    *v47 = v48;
    ++v80;
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a1, *(**a2 + 32));
  v8[0] = a2;
  v8[1] = v6;
  v9[0] = v10;
  v9[1] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[8] = 4;
  v12[9] = v13;
  v12[10] = 0x100000000;
  v13[1] = v14;
  v13[2] = 0x100000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v14[4] = 0;
  v14[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v9, a3, 0, a3, 1);
  v7 = mlir::Operation::create(v8);
  mlir::OpBuilder::insert(a1, v7);
  mlir::OperationState::~OperationState(v8);
}

char *getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(mlir::OpBuilder *a1, const char **a2, void ***a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v9 = a4;
  v58[8] = *MEMORY[0x277D85DE8];
  v41 = a4;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, a4, a5, *a3);
  if ((v14 & 1) == 0)
  {
    v35 = *a3;
    v47 = 257;
    emitDiag(v35, 2, v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<37ul>(&v49, " failed to infer reduction dims for ");
      if (v48)
      {
        mlir::Diagnostic::operator<<(&v49, v9);
      }
    }

    goto LABEL_25;
  }

  v15 = ReductionDimFromTupleOrNone;
  v48 = "Dims are not statically shaped.";
  v52 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v48, v40);
  if (v40[16] != 1)
  {
    return 0;
  }

  v47 = 1283;
  v16 = *a2;
  v17 = a2[1];
  v44[0] = "input and output of ";
  v45 = v16;
  v46 = v17;
  v48 = v44;
  v50 = " must be ranked.";
  v52 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v48, &v37);
  if (v39 != 1)
  {
    return 0;
  }

  v18 = v37;
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v37);
  v21 = v18;
  if (v19)
  {
    v21 = (*(v20 + 8))(v20, v19);
  }

  v22 = *a7;
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a7);
  if (v23)
  {
    v22 = (*(v24 + 8))(v24, v23);
  }

  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 1 || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v22[1] & 0x3FFFFFFF) != 0x20)
  {
    v36 = *a3;
    v47 = 257;
    emitDiag(v36, 2, v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<44ul>(&v49, "input and output types are mismatching for ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&v48, a2);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return 0;
  }

  v25 = mlir::IntegerType::get(*a1, 32, 1);
  v26 = *v38;
  LOBYTE(v48) = 0;
  LOBYTE(v50) = 0;
  v48 = v26(v38, v18, &v48, v25);
  v49 = v27;
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, *(a1 + 4), &v48, &v41) - 16;
LABEL_14:
  v28 = *(a1 + 4);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v47 = 1283;
    v45 = "coreml.reduce_max";
    v46 = 17;
    v43 = 259;
    llvm::operator+(v44, &v42, &v48);
    llvm::report_fatal_error(&v48, 1);
  }

  v48 = v28;
  v49 = v29;
  v50 = &v52;
  v51 = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::ReduceMaxOp::build(a1, &v48, *a7, v9, v15, *a6);
  v31 = mlir::Operation::create(&v48);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = v31 - 16;
  mlir::OperationState::~OperationState(&v48);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,void>::id)
  {
    return v33;
  }

  else
  {
    return -16;
  }
}

char *getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp>(mlir::OpBuilder *a1, const char **a2, void ***a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v9 = a4;
  v58[8] = *MEMORY[0x277D85DE8];
  v41 = a4;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, a4, a5, *a3);
  if ((v14 & 1) == 0)
  {
    v35 = *a3;
    v47 = 257;
    emitDiag(v35, 2, v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<37ul>(&v49, " failed to infer reduction dims for ");
      if (v48)
      {
        mlir::Diagnostic::operator<<(&v49, v9);
      }
    }

    goto LABEL_25;
  }

  v15 = ReductionDimFromTupleOrNone;
  v48 = "Dims are not statically shaped.";
  v52 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v48, v40);
  if (v40[16] != 1)
  {
    return 0;
  }

  v47 = 1283;
  v16 = *a2;
  v17 = a2[1];
  v44[0] = "input and output of ";
  v45 = v16;
  v46 = v17;
  v48 = v44;
  v50 = " must be ranked.";
  v52 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v48, &v37);
  if (v39 != 1)
  {
    return 0;
  }

  v18 = v37;
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v37);
  v21 = v18;
  if (v19)
  {
    v21 = (*(v20 + 8))(v20, v19);
  }

  v22 = *a7;
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a7);
  if (v23)
  {
    v22 = (*(v24 + 8))(v24, v23);
  }

  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 1 || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v22[1] & 0x3FFFFFFF) != 0x20)
  {
    v36 = *a3;
    v47 = 257;
    emitDiag(v36, 2, v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<44ul>(&v49, "input and output types are mismatching for ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&v48, a2);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return 0;
  }

  v25 = mlir::IntegerType::get(*a1, 32, 1);
  v26 = *v38;
  LOBYTE(v48) = 0;
  LOBYTE(v50) = 0;
  v48 = v26(v38, v18, &v48, v25);
  v49 = v27;
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, *(a1 + 4), &v48, &v41) - 16;
LABEL_14:
  v28 = *(a1 + 4);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMinOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v47 = 1283;
    v45 = "coreml.reduce_min";
    v46 = 17;
    v43 = 259;
    llvm::operator+(v44, &v42, &v48);
    llvm::report_fatal_error(&v48, 1);
  }

  v48 = v28;
  v49 = v29;
  v50 = &v52;
  v51 = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::ReduceMinOp::build(a1, &v48, *a7, v9, v15, *a6);
  v31 = mlir::Operation::create(&v48);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = v31 - 16;
  mlir::OperationState::~OperationState(&v48);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMinOp,void>::id)
  {
    return v33;
  }

  else
  {
    return -16;
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PowOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::PowOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PowOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.pow";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.log";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(*(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::LogOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::LogOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v14, *a3, *a4 - 16, *a5);
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

uint64_t replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(mlir::OpBuilder **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[25] = *MEMORY[0x277D85DE8];
  v6 = (*(a4 + 8))(a4, a3);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v6[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(*a1, a2);
    if (v8)
    {
      return ComparisonWithZero;
    }

    else
    {
      v9 = *(*a1[1] + 24);
      v11[16] = 257;
      emitDiag(v9, 2, v11, &v12);
      if (v12)
      {
        mlir::Diagnostic::operator<<<32ul>(v13, "unable to compare input tensor ");
        if (v12)
        {
          mlir::Diagnostic::operator<<(v13, a2);
          if (v12)
          {
            mlir::Diagnostic::operator<<<11ul>(v13, " with zero");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
      return 0;
    }
  }

  return a2;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AndOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AndOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AndOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id)
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

uint64_t replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(mlir::OpBuilder **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[25] = *MEMORY[0x277D85DE8];
  v6 = (*(a4 + 8))(a4, a3);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v6[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(*a1, a2);
    if (v8)
    {
      return ComparisonWithZero;
    }

    else
    {
      v9 = *(*a1[1] + 24);
      v11[16] = 257;
      emitDiag(v9, 2, v11, &v12);
      if (v12)
      {
        mlir::Diagnostic::operator<<<32ul>(v13, "unable to compare input tensor ");
        if (v12)
        {
          mlir::Diagnostic::operator<<(v13, a2);
          if (v12)
          {
            mlir::Diagnostic::operator<<<11ul>(v13, " with zero");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
      return 0;
    }
  }

  return a2;
}

uint64_t replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(mlir::OpBuilder **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[25] = *MEMORY[0x277D85DE8];
  v6 = (*(a4 + 8))(a4, a3);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v6[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(*a1, a2);
    if (v8)
    {
      return ComparisonWithZero;
    }

    else
    {
      v9 = *(*a1[1] + 24);
      v11[16] = 257;
      emitDiag(v9, 2, v11, &v12);
      if (v12)
      {
        mlir::Diagnostic::operator<<<32ul>(v13, "unable to compare input tensor ");
        if (v12)
        {
          mlir::Diagnostic::operator<<(v13, a2);
          if (v12)
          {
            mlir::Diagnostic::operator<<<11ul>(v13, " with zero");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
      return 0;
    }
  }

  return a2;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::XorOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::XorOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::XorOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::XorOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::XorOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::XorOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.xor";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void getReduceResultType(mlir::Operation *a1, uint64_t a2)
{
  if (*(a2 + 36))
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(**(v4 + 8));
    if (v9)
    {
      *a1 = v9;
      *(a1 + 1) = v10;
      *(a1 + 16) = 1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v5 = *(a2 + 24);
    v6 = *(*(a2 + 48) + 8);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v12 = 1283;
    v11[0] = "input and output of ";
    v11[2] = v8;
    v11[3] = v7;
    v13[0] = v11;
    v13[2] = " must be ranked.";
    v14 = 770;
    mlir::ODIE::Compiler::getShapedRankedType(v4, v5, v13, a1);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ShapedType const&,mlir::Value &,mlir::Value &,mlir::Value const&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, v16, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,void>::id, *(**a2 + 32));
  if ((v18 & 1) == 0)
  {
    v25 = 1283;
    v24[2] = "coreml.max_pool_2d";
    v24[3] = 18;
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
  mlir::ODIE::Compiler::CoreML::MaxPool2dOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v19 = mlir::Operation::create(v26);
  mlir::OpBuilder::insert(a1, v19);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MaximumOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MinimumOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
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

uint64_t replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_1::operator()(uint64_t a1, float a2)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v21 = a2;
  v24 = 1;
  v4 = *(**v3 + 440);
  *&v25 = &v24;
  *(&v25 + 1) = 1;
  v22 = 0;
  v23 = v4;
  v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v4 + 32), &v25, &v23, &v22);
  v5 = mlir::TensorType::operator mlir::ShapedType(&v23);
  *&v25 = mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, &v21, 4);
  v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(v3, v3[4], &v25);
  v8 = mlir::ODIE::Compiler::castValueToElementType(*a1, v7 - 16, **(a1 + 8));
  if (v9)
  {
    v24 = 0x8000000000000000;
    v10 = *a1;
    v11 = **(a1 + 8);
    *&v25 = &v24;
    *(&v25 + 1) = 1;
    v22 = 0;
    v23 = v11;
    v12 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v25, &v23, &v22);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = v10[4];
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(v10, *(**v15 + 32));
    *&v25 = v15;
    *(&v25 + 1) = v16;
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
    mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(v10, &v25, v12, v8, *v14 - 16, *v13);
    v17 = mlir::Operation::create(&v25);
    mlir::OpBuilder::insert(v10, v17);
    v18 = *(*(v17 + 6) + 16);
    v19 = v17 - 16;
    mlir::OperationState::~OperationState(&v25);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
    {
      return v19;
    }

    else
    {
      return -16;
    }
  }

  return v8;
}

char *replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(mlir::OpBuilder **a1, uint64_t a2)
{
  v35[8] = *MEMORY[0x277D85DE8];
  ShapeAsValue = getShapeAsValue(*a1, a2);
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
  (*(v8 + 24))(v8, v5);
  v9 = *a1;
  v11 = v10 - 2;
  LODWORD(v28) = 2;
  DWORD1(v28) = v10 - 2;
  v12 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v9, &v28, 2);
  v13 = *a1;
  v26 = 2;
  v14 = mlir::IntegerType::get(*v13, 32, 1);
  *&v28 = &v26;
  *(&v28 + 1) = 1;
  v27[0] = v14;
  v24 = 0;
  v27[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v14 + 32), &v28, v27, &v24);
  v25 = v11;
  v15 = mlir::IntegerType::get(**a1, 32, 1);
  *&v28 = &v25;
  *(&v28 + 1) = 1;
  v23 = 0;
  v24 = v15;
  v27[1] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v15 + 32), &v28, &v24, &v23);
  v16 = a1[1];
  v17 = *(v13 + 4);
  v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SplitOp>(*(**v17 + 32));
  *&v28 = v17;
  *(&v28 + 1) = v18;
  v29 = v31;
  v30 = 0x400000000;
  v31[4] = v32;
  v31[5] = 0x400000000;
  v32[4] = v33;
  v32[5] = 0x400000000;
  v33[8] = 4;
  v33[9] = v34;
  v33[10] = 0x100000000;
  v34[1] = v35;
  v34[2] = 0x100000000;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v35[4] = 0;
  v35[6] = 0;
  mlir::ODIE::Compiler::CoreML::SplitOp::build(v13, &v28, v27 + 2, 2, ShapeAsValue, v12, *v16);
  v19 = mlir::Operation::create(&v28);
  mlir::OpBuilder::insert(v13, v19);
  v20 = *(*(v19 + 6) + 16);
  v21 = v19 - 32;
  mlir::OperationState::~OperationState(&v28);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id)
  {
    return v21;
  }

  else
  {
    return -32;
  }
}

char *getShapeAsValue(mlir::OpBuilder *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  (*(v6 + 24))(v6, v3);
  v14[0] = v7;
  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v13 = v14;
  *(&v13 + 1) = 1;
  v11 = 0;
  v12 = v8;
  *&v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v13, &v12, &v11);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, *(a1 + 4), &v13, &v10) - 16;
}

uint64_t mlir::Diagnostic::operator<<<95ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SplitOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.split";
    v5[3] = 12;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v14, *a3, *a4, *a5 - 16);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::ShapedType &,mlir::Value &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

uint64_t *llvm::CastInfo<mlir::ShapedType,mlir::RankedTensorType,void>::doCast(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return a1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PowOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::PowOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::RankedTensorType &,mlir::DenseFPElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v8;
  v18[2] = &v19;
  v18[3] = 0x400000000;
  v20[0] = v21;
  v20[1] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  v9 = *a3;
  v11 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a4);
  if (v11)
  {
    v12 = *(v10 + 24);
  }

  else
  {
    v12 = 0;
  }

  v17 = v9;
  v13 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(v18);
  *v13 = v11;
  v13[1] = v12;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v20, &v17, v18);
  v14 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

mlir::Operation *get1DTensorOfIntegersExceptAtOneIndex(mlir::OpBuilder *a1, int64_t a2, int a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v88 = *MEMORY[0x277D85DE8];
  v59 = a4;
  v66 = 0uLL;
  *&v64 = &v66;
  if ((~*(a4 + 2) & 7) != 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(v12 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v12 + 24 * *(v12 + 16);
      v15 = v14 + 120;
      if (v14 == -120)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = v12 + 16 * v13 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v15))
    {
      goto LABEL_27;
    }

    v66 = 0uLL;
    *&v64 = &v66;
    v16 = (~*(a5 + 8) & 7) != 0 ? a5 : 0;
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = *(v16 + 8) & 7;
    if (v17 == 6)
    {
      v18 = v16 + 24 * *(v16 + 16);
      v19 = v18 + 120;
      if (v18 == -120)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = v16 + 16 * v17 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v19))
    {
      *&v64 = v65;
      *(&v64 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::assign(&v64, a2, a3);
      mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &v66);
      if (v70)
      {
        v20 = *v66;
        if (v66 != &v67)
        {
          free(v66);
        }

        mlir::ODIE::Compiler::extract1DIntVector<int>(a5, &v66);
        if (v70)
        {
          v21 = v66;
          v22 = v64;
          *(v64 + 4 * ((v20 % a2 + a2) % a2)) = *v66;
          if (v21 != &v67)
          {
            free(v21);
            v22 = v64;
          }

          v23 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v22, DWORD2(v64));
          if (v64 != v65)
          {
            free(v64);
          }

          return v23;
        }
      }

      goto LABEL_63;
    }
  }

LABEL_27:
  v24 = create1DTensorConstantWithElement<int>(a1, 1, 1uLL);
  v58 = v24;
  v66 = 0uLL;
  *&v64 = &v66;
  if ((~*(v8 + 2) & 7) != 0)
  {
    v25 = v8;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = *(v25 + 1) & 7;
  if (v26 == 6)
  {
    v27 = &v25[24 * *(v25 + 2)];
    v28 = (v27 + 120);
    if (v27 == -120)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v28 = &v25[16 * v26 + 16];
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v28))
  {
LABEL_48:
    v31 = v65;
    *&v64 = v65;
    *(&v64 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v64, a2, a3);
    v55 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v64, DWORD2(v64));
    *&v66 = v8;
    if (!*((*(v8 + 1) & 0xFFFFFFFFFFFFFFF8) + 16))
    {
      v61 = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
      v8 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a6, &v61, &v66, &v58) - 16;
    }

    v59 = v8;
    *&v66 = a5;
    if (!*((*(a5 + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
    {
      v61 = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
      a5 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a6, &v61, &v66, &v58) - 16;
    }

    Tensor = create1DTensorConstantWithElement<int>(a1, a2, 1uLL);
    v63 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v59, &Tensor);
    v37 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::ModuloOp &,mlir::Value &>(a1, *(a1 + 4), &v63, &Tensor);
    v38 = *(a1 + 4);
    v39 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ModuloOp>(a1, *(**v38 + 32));
    *&v66 = v38;
    *(&v66 + 1) = v39;
    v67 = v69;
    v68 = 0x400000000;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = 4;
    v77 = &v79;
    v78 = 0x100000000;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = 0;
    v84 = 0;
    v85 = &mlir::detail::TypeIDResolver<void,void>::id;
    v86 = 0;
    v87 = 0;
    mlir::ODIE::Compiler::CoreML::ModuloOp::build(a1, &v66, v37 - 16, Tensor);
    v40 = mlir::Operation::create(&v66);
    mlir::OpBuilder::insert(a1, v40);
    v41 = *(*(v40 + 6) + 16);
    mlir::OperationState::~OperationState(&v66);
    if (v41 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    v56 = v42;
    v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::ModuloOp &,mlir::Value &>(a1, *(a1 + 4), &v56, &v58);
    v62 = a2;
    v44 = mlir::IntegerType::get(*a1, 32, 1);
    *&v66 = &v62;
    *(&v66 + 1) = 1;
    v60 = 0;
    v61 = v44;
    v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v44 + 32), &v66, &v61, &v60);
    v46 = *(a1 + 4);
    updated = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1, *(**v46 + 32));
    *&v66 = v46;
    *(&v66 + 1) = updated;
    v67 = v69;
    v68 = 0x400000000;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = 4;
    v77 = &v79;
    v78 = 0x100000000;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = 0;
    v84 = 0;
    v85 = &mlir::detail::TypeIDResolver<void,void>::id;
    v86 = 0;
    v87 = 0;
    mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(a1, &v66, v45, v55, (v42 - 16), v43 - 16, v58, a5);
    v48 = mlir::Operation::create(&v66);
    mlir::OpBuilder::insert(a1, v48);
    if (*(*(v48 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
    {
      v35 = v48;
    }

    else
    {
      v35 = 0;
    }

    mlir::OperationState::~OperationState(&v66);
    v36 = v64;
LABEL_59:
    if (v36 != v31)
    {
      free(v36);
    }

    return (v35 - 16);
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &v66);
  if (v70)
  {
    v29 = *v66;
    if (v66 != &v67)
    {
      free(v66);
    }

    v30 = (v29 % a2 + a2) % a2;
    v31 = &v67;
    *&v66 = &v67;
    *(&v66 + 1) = 0x600000000;
    if (v30 >= 1)
    {
      *&v64 = v65;
      *(&v64 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::assign(&v64, v30, a3);
      v32 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v64, DWORD2(v64));
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v66, v32);
      if (v64 != v65)
      {
        free(v64);
      }
    }

    *&v64 = a5;
    if (!*((*(a5 + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
    {
      v61 = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
      a5 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a6, &v61, &v64, &v58) - 16;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v66, a5);
    if (v30 < a2 - 1)
    {
      *&v64 = v65;
      *(&v64 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::assign(&v64, ~v30 + a2, a3);
      v33 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v64, DWORD2(v64));
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v66, v33);
      if (v64 != v65)
      {
        free(v64);
      }
    }

    LODWORD(v64) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v64, 1, 0);
    v63 = a2;
    v34 = mlir::IntegerType::get(*a1, 32, 1);
    *&v64 = &v63;
    *(&v64 + 1) = 1;
    v60 = 0;
    v61 = v34;
    *&v64 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &v64, &v61, &v60);
    v35 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, a6, &v64, &Tensor, &v66);
    v36 = v66;
    goto LABEL_59;
  }

LABEL_63:
  v50 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(v50, v51, v52, v53, v54);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::ModuloOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v12, *a3 - 16, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::SubOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
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

uint64_t replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(void ****a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v11 = **a1;
    v19 = 257;
    emitDiag(v11, 2, &v17, &v20);
    if (!v20)
    {
      goto LABEL_15;
    }

    mlir::Diagnostic::operator<<<43ul>(v21, "topk op expects ranked tensor for operand ");
    if (!v20)
    {
      goto LABEL_15;
    }

    v19 = 261;
    v17 = a3;
    v18 = a4;
LABEL_5:
    mlir::Diagnostic::operator<<(v21, &v17);
LABEL_15:
    v14 = v21[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    return v14 & 1;
  }

  if (v10[2])
  {
    goto LABEL_10;
  }

  v20 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!a5)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25CFE04B0);
  }

  if (((*(*a5 + 48))(a5, &v20) & 1) == 0)
  {
LABEL_10:
    v15 = **a1;
    v19 = 257;
    emitDiag(v15, 2, &v17, &v20);
    if (!v20)
    {
      goto LABEL_15;
    }

    mlir::Diagnostic::operator<<<25ul>(v21, "topk op expects operand ");
    if (!v20)
    {
      goto LABEL_15;
    }

    v19 = 261;
    v17 = a3;
    v18 = a4;
    mlir::Diagnostic::operator<<(v21, &v17);
    if (!v20)
    {
      goto LABEL_15;
    }

    mlir::Diagnostic::operator<<<26ul>(v21, " to be a scalar of type: ");
    if (!v20)
    {
      goto LABEL_15;
    }

    v19 = 261;
    v17 = a6;
    v18 = a7;
    goto LABEL_5;
  }

  v14 = 1;
  return v14 & 1;
}

BOOL std::__function::__func<replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0,std::allocator<replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0>,BOOL ()(mlir::RankedTensorType)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v3 = v2[2], v3 >> 30 == 1))
  {
    return (v3 & 0x3FFFFFFF) == 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](uint64_t a1)
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