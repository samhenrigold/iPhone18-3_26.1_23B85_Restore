BOOL replaceGetitem(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v5 = a2[3];
    v26[0] = "expects 2 inputs and 1 output for getitem op.";
    v27[8] = 259;
    emitDiag(v5, 2, v26, &v28);
    v6 = (v31 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
    return v6;
  }

  v3 = *(a2[9] + 24);
  v26[0] = v27;
  v26[1] = 0x600000000;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v3 += 24 * *(v3 + 16) + 120;
    }

    else
    {
      v3 += 16 * v4 + 16;
    }
  }

  if ((disaggregateTupleInputs(v3, *(a1 + 32), v26) & 1) == 0)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v8 = *(a2[9] + 56);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_38;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v11 + 48) + 32))(*(v11 + 48), v12))
  {
    if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v28 = v13;
    ValueAttr = mlir::arith::ConstantOp::getValueAttr(&v28);
    v15 = *(*ValueAttr + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v17 = ValueAttr;
    }

    else
    {
      v17 = 0;
    }

    v23 = v17;
    if (v17)
    {
      mlir::DenseElementsAttr::tryGetValues<int,void>(&v23, &v28);
      if (v29)
      {
        v18 = 0;
      }

      else
      {
        v18 = v30;
      }

      v28 = *(v26[0] + *(v28 + v18));
      mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(a2 - 2, &v28);
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
      v6 = 1;
      goto LABEL_40;
    }

    v21 = a2[3];
    v22 = "Expected a DenseElementsAttr for the index in getitem op.";
    goto LABEL_39;
  }

LABEL_38:
  v21 = a2[3];
  v22 = "The index must be provided for getitem op.";
LABEL_39:
  v24 = v22;
  v25 = 259;
  emitDiag(v21, 2, &v24, &v28);
  v6 = (v31 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
LABEL_40:
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v6;
}

BOOL replaceBinaryGreaterOrEqual(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 3);
  GreaterOrEqualOps = *(a2 + 6);
  v5 = mlir::OperationName::stripDialect(&GreaterOrEqualOps);
  v7 = v5;
  v8 = v6;
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2 && *(a2 + 9) == 1)
  {
    v9 = *(a2 + 9);
    v10 = *(v9 + 24);
    v11 = *(v9 + 56);
    v30 = 1283;
    GreaterOrEqualOps = "expected ranked tensor inputs to ";
    v28 = v5;
    v29 = v6;
    mlir::ODIE::Compiler::getShapedRankedType(v10, &GreaterOrEqualOps, v22);
    v30 = 1283;
    GreaterOrEqualOps = "expected ranked tensor inputs to ";
    v28 = v7;
    v29 = v8;
    mlir::ODIE::Compiler::getShapedRankedType(v11, &GreaterOrEqualOps, v21);
    v12 = 0;
    if (v23 == 1 && (v21[16] & 1) != 0)
    {
      v13 = *(a2 - 1);
      v30 = 1283;
      GreaterOrEqualOps = "expected ranked output from ";
      v28 = v7;
      v29 = v8;
      mlir::ODIE::Compiler::getShapedRankedType((v13 & 0xFFFFFFFFFFFFFFF8), v4, &GreaterOrEqualOps, v20);
      if (v20[16] == 1 && (GreaterOrEqualOps = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, v10, v11), v27 = v14, (v14 & 1) != 0))
      {
        v15 = *(a2 + 9);
        if (v15)
        {
          v16 = (a2 - 16);
        }

        else
        {
          v16 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v16, v15, &GreaterOrEqualOps, 1);
        if (*(a2 + 2))
        {
          *(a2 + 2) = 0;
          v18 = *a2;
          v17 = *(a2 + 1);
          *v17 = *a2;
          *(v18 + 8) = v17;
          *a2 = 0;
          *(a2 + 1) = 0;
        }

        mlir::Operation::destroy(a2);
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
    v25 = 1283;
    v22[0] = "expects 2 inputs and 1 output for ";
    v23 = v5;
    v24 = v6;
    emitDiag(v4, 2, v22, &GreaterOrEqualOps);
    v12 = (v31 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&GreaterOrEqualOps);
  }

  return v12;
}

uint64_t replaceGelu(mlir::OpBuilder *a1, uint64_t *a2)
{
  v47[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1 || *(a2 + 9) != 1)
  {
    v24 = a2[3];
    v36 = 257;
    emitDiag(v24, 2, &v32, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<34ul>(v40, "expects 1 input and 1 output for ");
      if (v39)
      {
        mlir::Diagnostic::operator<<(v40, a2[6]);
      }
    }

    goto LABEL_24;
  }

  if (!llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8)))
  {
    v26 = a2[3];
    v36 = 257;
    emitDiag(v26, 2, &v32, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<40ul>(v40, "expected shaped type for the output of ");
      if (v39)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(&v32);
        mlir::Diagnostic::appendOp(v40, a2, &v32);
      }
    }

    goto LABEL_24;
  }

  Attr = mlir::Operation::getAttr(a2, "approximate", 0xBuLL);
  if (Attr && (v5 = Attr, *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id))
  {
    v28 = mlir::ODIE::Compiler::CoreML::symbolizeApproximate(*(Attr + 16), *(Attr + 24));
    if ((v28 & 0x100000000) == 0)
    {
      v29 = a2[3];
      v36 = 257;
      emitDiag(v29, 2, &v32, &v39);
      if (v39)
      {
        mlir::Diagnostic::operator<<<27ul>(v40, "Unknown approximate kind: ");
        if (v39)
        {
          v30 = *(v5 + 16);
          v31 = *(v5 + 24);
          v36 = 261;
          v32 = v30;
          v33 = v31;
          mlir::Diagnostic::operator<<(v40, &v32);
        }
      }

      goto LABEL_24;
    }

    v6 = v28;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2[9] + 24);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v8)
  {
    v27 = a2[3];
    v36 = 257;
    emitDiag(v27, 2, &v32, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<35ul>(v40, "expected shaped type for the input");
    }

LABEL_24:
    v23 = v44 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    return v23 & 1;
  }

  v9 = v8;
  v10 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*(**a2[3] + 32), v6);
  v11 = *(a1 + 4);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GELUOp,void>::id, *(**v11 + 32));
  if ((v13 & 1) == 0)
  {
    v36 = 1283;
    v34 = "coreml.gelu";
    v35 = 11;
    v38 = 259;
    llvm::operator+(&v32, &v37, &v39);
    llvm::report_fatal_error(&v39, 1);
  }

  v39 = v11;
  v40[0] = v12;
  v40[1] = v41;
  v40[2] = 0x400000000;
  v41[4] = v42;
  v41[5] = 0x400000000;
  v42[4] = v43;
  v42[5] = 0x400000000;
  v43[8] = 4;
  v44 = v46;
  v45 = 0x100000000;
  v46[1] = v47;
  v46[2] = 0x100000000;
  v47[1] = 0;
  v47[2] = 0;
  v47[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v47[4] = 0;
  v47[6] = 0;
  mlir::ODIE::Compiler::CoreML::GELUOp::build(a1, &v39, v9, v7, v10);
  v14 = mlir::Operation::create(&v39);
  mlir::OpBuilder::insert(a1, v14);
  v15 = *(*(v14 + 6) + 16);
  mlir::OperationState::~OperationState(&v39);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GELUOp,void>::id)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 9);
  if (v17)
  {
    v18 = a2 - 2;
  }

  else
  {
    v18 = 0;
  }

  v32 = v18;
  v33 = v17;
  v19 = *(v16 + 9);
  v20 = (v16 - 16);
  if (!v19)
  {
    v20 = 0;
  }

  v39 = v20;
  v40[0] = v19;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v32, &v39);
  if (a2[2])
  {
    a2[2] = 0;
    v22 = *a2;
    v21 = a2[1];
    *v21 = *a2;
    *(v22 + 8) = v21;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v23 = 1;
  return v23 & 1;
}

BOOL replaceBinaryComparisonOp<mlir::ODIE::Compiler::CoreML::GreaterOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v62[8] = *MEMORY[0x277D85DE8];
  __src = a2[6];
  v4 = mlir::OperationName::stripDialect(&__src);
  v6 = v4;
  v7 = v5;
  v8 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v48 = 1283;
    v46[0] = "expects 2 inputs and 1 output for ";
    v47[0] = v4;
    v47[1] = v5;
    emitDiag(v8, 2, v46, &__src);
    v21 = (v59 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v21;
  }

  v9 = a2[9];
  v10 = *(v9 + 24);
  v11 = *(v9 + 56);
  v12 = *(a2 - 1);
  v54 = 1283;
  __src = "expected ranked output from ";
  v52 = v4;
  v53 = v5;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v8, &__src, &v36);
  if (v37 != 1)
  {
    return 0;
  }

  v54 = 1283;
  __src = "expected ranked tensor inputs to ";
  v52 = v6;
  v53 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v41);
  v54 = 1283;
  __src = "expected ranked tensor inputs to ";
  v52 = v6;
  v53 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v11, &__src, &v38);
  if (v43 != 1 || (v40 & 1) == 0)
  {
    return 0;
  }

  v13 = (*(v39 + 8))(v39, v38);
  v15 = v41;
  v14 = v42;
  if (v13 != (*(v42 + 8))(v42, v41))
  {
    v16 = (*(v14 + 8))(v14, v15);
    v17 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v16);
    if ((v18 & 1) == 0)
    {
      v48 = 257;
      emitDiag(v8, 2, v46, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<47ul>(&v51, " Unable to cast RHS to same type as LHS of op ");
        if (__src)
        {
          v48 = 261;
          v46[0] = v6;
          v46[1] = v7;
          mlir::Diagnostic::operator<<(&v51, v46);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      return 0;
    }

    v11 = v17;
  }

  __src = v10;
  v51 = v11;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v46);
  if (v49)
  {
    v19 = *(v46[0] + 1);
    if (v7 == 2 && (*v6 == 25964 || *v6 == 29804))
    {
      v20 = *v46[0];
    }

    else
    {
      v20 = *(v46[0] + 1);
      v19 = *v46[0];
    }

    v25 = *(a1 + 4);
    v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GreaterOp>(a1, *(**v25 + 32));
    __src = v25;
    v51 = v26;
    v52 = &v54;
    v53 = 0x400000000;
    v55 = v57;
    v56 = 0x400000000;
    v57[4] = v58;
    v57[5] = 0x400000000;
    v58[8] = 4;
    v59 = v61;
    v60 = 0x100000000;
    v61[1] = v62;
    v61[2] = 0x100000000;
    v62[1] = 0;
    v62[2] = 0;
    v62[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v62[4] = 0;
    v62[6] = 0;
    mlir::ODIE::Compiler::CoreML::GreaterOp::build(a1, &__src, v36, v19, v20);
    v27 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v27);
    v28 = *(*(v27 + 6) + 16);
    v29 = v27 - 16;
    mlir::OperationState::~OperationState(&__src);
    v30 = -16;
    if (v28 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id)
    {
      v30 = v29;
    }

    v24 = v30 & 0xFFFFFFFFFFFFFF00;
    v22 = v30;
    v23 = 1;
  }

  else
  {
    v45 = 257;
    emitDiag(v8, 2, v44, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<40ul>(&v51, " Unable to broadcast LHS and RHS of op ");
      if (__src)
      {
        v45 = 261;
        v44[0] = v6;
        v44[1] = v7;
        mlir::Diagnostic::operator<<(&v51, v44);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  if (v49 == 1 && v46[0] != v47)
  {
    free(v46[0]);
  }

  __src = (v24 | v22);
  LOBYTE(v51) = v23;
  if (!v23)
  {
    return 0;
  }

  v31 = *(a2 + 9);
  if (v31)
  {
    v32 = (a2 - 2);
  }

  else
  {
    v32 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v32, v31, &__src, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v34 = *a2;
    v33 = a2[1];
    *v33 = *a2;
    *(v34 + 8) = v33;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceHardTanh(mlir::OpBuilder *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v37 = v4;
  __src = "expected ranked tensor input to sym_size.int";
  v49 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &__src, v43);
  if ((v44 & 1) == 0)
  {
    v11 = *(a2 + 24);
    v45 = 257;
    emitDiag(v11, 2, v43, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<50ul>(v48, "expected input operand be a shaped ranked tensor.");
    }

    goto LABEL_37;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 72);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) != 0)
  {
    v8 = *(v6 + 56);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16) + 120;
    }

    else
    {
      v10 = v8 + 16 * v9 + 16;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v6 + 88);
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(v10 + 48) + 32))(*(v10 + 48), v13) || ((~*(v12 + 8) & 7) != 0 ? (v14 = v12) : (v14 = 0), !v14 ? (v16 = 0) : (v15 = *(v14 + 8) & 7, v15 != 6) ? (v16 = v14 + 16 * v15 + 16) : (v16 = v14 + 24 * *(v14 + 16) + 120), v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(), ((*(**(v16 + 48) + 32))(*(v16 + 48), v17) & 1) == 0))
  {
    v45 = 257;
    emitDiag(v5, 2, v43, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<46ul>(v48, "expecting min/max to hardtanh to be constants");
    }

LABEL_37:
    v29 = (v50 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v29;
  }

  __src = v7;
  v48[0] = v4;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v43);
  __src = v12;
  v48[0] = v4;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v40);
  if (v46 == 1 && (v42 & 1) != 0)
  {
    v18 = *v40;
    v19 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, *v43[0], v4);
    v21 = v20;
    v35 = v19;
    v36 = v20;
    v33 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v18, v4);
    v34 = v22;
    if (v21 & 1) != 0 && (v22)
    {
      if (*(a2 + 36))
      {
        v23 = a2 - 16;
      }

      else
      {
        v23 = 0;
      }

      v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v32, &v37, &v35);
      v24 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::MaximumOp &,mlir::Value &>(a1, *(a1 + 4), &v32, &v31, &v33);
      v25 = *(a2 + 36);
      if (v25)
      {
        v26 = (a2 - 16);
      }

      else
      {
        v26 = 0;
      }

      v38[0] = v26;
      v38[1] = v25;
      v27 = *(v24 + 9);
      v28 = (v24 - 16);
      if (!v27)
      {
        v28 = 0;
      }

      __src = v28;
      v48[0] = v27;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v38, &__src);
      mlir::Operation::erase(a2);
      v29 = 1;
      goto LABEL_42;
    }

    v39 = 257;
    emitDiag(v5, 2, v38, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<52ul>(v48, "failed to cast min/max value to same dtype as input");
    }
  }

  else
  {
    v39 = 257;
    emitDiag(v5, 2, v38, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(v48, "Failed to fetch min/max for hardTanh");
    }
  }

  v29 = (v50 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_42:
  if (v42 == 1 && v40 != &v41)
  {
    free(v40);
  }

  if (v46 == 1 && v43[0] != &v44)
  {
    free(v43[0]);
  }

  return v29;
}

BOOL replaceHardSigmoid(mlir::OpBuilder *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v5 = *(a2 + 24);
  v6 = *(*(a2 + 48) + 8);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v83 = 1283;
  v79 = "expected ranked tensor inputs to ";
  v81 = v8;
  v82 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v79, &v74);
  if ((v76 & 1) == 0)
  {
    v51 = *(a2 + 24);
    v78 = 257;
    emitDiag(v51, 2, v77, &v79);
    if (v79)
    {
      mlir::Diagnostic::operator<<<50ul>(&v80, "expected input operand be a shaped ranked tensor.");
    }

    goto LABEL_59;
  }

  v9 = *(*(a2 + 48) + 8);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v83 = 1283;
  v79 = "expected ranked tensor outputs for ";
  v81 = v11;
  v82 = v10;
  mlir::ODIE::Compiler::getShapedRankedType(a2 - 16, &v79, v73);
  v12 = mlir::IntegerType::get(*a1, 1, 0);
  v13 = *v75;
  LOBYTE(v79) = 0;
  LOBYTE(v81) = 0;
  v72[0] = v13(v75, v74, &v79, v12);
  v72[1] = v14;
  LODWORD(v79) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v79, 1, 0);
  LODWORD(v79) = 1;
  v56 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v79, 1, 0);
  LODWORD(v79) = -3;
  v15 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v79, 1, 0);
  LODWORD(v79) = 3;
  v16 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v79, 1, 0);
  LODWORD(v79) = 6;
  v17 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v79, 1, 0);
  LODWORD(v79) = 1056964608;
  v18 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v79, 1);
  GreaterOrEqualOps = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, v15, v4);
  v70 = GreaterOrEqualOps;
  v71 = v20;
  if ((v20 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (v79)
    {
      mlir::Diagnostic::operator<<<44ul>(&v80, "failed to create lower bound check op with ");
      if (v79)
      {
        mlir::Diagnostic::operator<<(&v80, v15);
        if (v79)
        {
          mlir::Diagnostic::operator<<<6ul>(&v80, " and ");
          if (v79)
          {
            mlir::Diagnostic::operator<<(&v80, v4);
          }
        }
      }
    }

    goto LABEL_59;
  }

  v21 = GreaterOrEqualOps;
  v22 = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, v4, v16);
  v68 = v22;
  v69 = v23;
  if ((v23 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<42ul>(&v80, "failed to create ops for comparing input(");
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v80, v4);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<19ul>(&v80, ") to upper bound (");
    if (!v79)
    {
      goto LABEL_59;
    }

    v52 = v16;
    goto LABEL_30;
  }

  v24 = v22;
  v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OrOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v72, &v70, &v68);
  v26 = mlir::ODIE::Compiler::negateValue(a1, v25 - 16);
  if ((v27 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (v79)
    {
      mlir::Diagnostic::operator<<<27ul>(&v80, "failed to create negate op");
    }

    goto LABEL_59;
  }

  v28 = v26;
  DivideWithScalar = mlir::ODIE::Compiler::getDivideWithScalar(a1, v4, v17);
  if ((v30 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<42ul>(&v80, "failed to create ops for dividing input (");
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v80, v4);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<13ul>(&v80, ") by scale (");
    if (!v79)
    {
      goto LABEL_59;
    }

    v52 = v17;
    goto LABEL_30;
  }

  v31 = DivideWithScalar;
  AddWithScalar = mlir::ODIE::Compiler::getAddWithScalar(a1, DivideWithScalar, v18);
  v65 = v32;
  if ((v32 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<41ul>(&v80, "failed to create ops for adding offset (");
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v80, v18);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<13ul>(&v80, ") to input (");
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v80, v31);
    if (!v79)
    {
      goto LABEL_59;
    }

    goto LABEL_31;
  }

  v33 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v21, v4);
  if ((v34 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<20ul>(&v80, "Failed to cast op (");
    if (!v79)
    {
      goto LABEL_59;
    }

    v53 = v33;
LABEL_54:
    mlir::Diagnostic::operator<<(&v80, v53);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<15ul>(&v80, ") to type of (");
    if (!v79)
    {
      goto LABEL_59;
    }

    v52 = v4;
LABEL_30:
    mlir::Diagnostic::operator<<(&v80, v52);
    if (!v79)
    {
LABEL_59:
      v50 = (v84 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
      return v50;
    }

LABEL_31:
    mlir::Diagnostic::operator<<<2ul>(&v80, ")");
    goto LABEL_59;
  }

  v35 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v24, v4);
  if ((v36 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<20ul>(&v80, "Failed to cast op (");
    if (!v79)
    {
      goto LABEL_59;
    }

    v53 = v35;
    goto LABEL_54;
  }

  v37 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v28, v4);
  v66 = v37;
  v67 = v38;
  if ((v38 & 1) == 0)
  {
    v54 = v37;
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (!v79)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<20ul>(&v80, "Failed to cast op (");
    if (!v79)
    {
      goto LABEL_59;
    }

    v53 = v54;
    goto LABEL_54;
  }

  MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v33, Tensor);
  v41 = v40;
  v62 = MultiplyWithScalar;
  v63 = v40;
  v42 = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v35, v56);
  v44 = v43;
  v60 = v42;
  v61 = v43;
  v59 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v73, &v66, &AddWithScalar);
  if ((v41 & 1) == 0 || (v44 & 1) == 0)
  {
    v78 = 257;
    emitDiag(v5, 2, v77, &v79);
    if (v79)
    {
      mlir::Diagnostic::operator<<<40ul>(&v80, "Failed to multiple conditions with vals");
    }

    goto LABEL_59;
  }

  v58 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v73, &v62, &v60);
  v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::AddOp&,mlir::ODIE::Compiler::CoreML::MulOp &>(a1, *(a1 + 4), v73, &v58, &v59);
  v46 = *(a2 + 36);
  if (v46)
  {
    v47 = (a2 - 16);
  }

  else
  {
    v47 = 0;
  }

  v77[0] = v47;
  v77[1] = v46;
  v48 = *(v45 + 9);
  v49 = (v45 - 16);
  if (!v48)
  {
    v49 = 0;
  }

  v79 = v49;
  v80 = v48;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v77, &v79);
  mlir::Operation::erase(a2);
  return 1;
}

BOOL replaceIndex(mlir::OpBuilder *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v12 = *(a2 + 24);
    v27[0] = "expects 2 inputs and 1 output for index op";
    v28 = 259;
    emitDiag(v12, 2, v27, &v29);
LABEL_13:
    v13 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    return v13;
  }

  v4 = *(a2 - 8);
  v5 = *(a2 + 24);
  v29 = "expect output of index_put to be ranked tensor type";
  v31 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v4 & 0xFFFFFFFFFFFFFFF8), v5, &v29, v25);
  if (v26 != 1)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v29 = "expect ranked tensor type for input tensor of index op";
  v31 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v29, v24);
  if (v24[16] != 1)
  {
    return 0;
  }

  if ((~*(v8 + 8) & 7) != 0)
  {
    v9 = v8;
  }

  else
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

  getStackedIndexInfo(v22, a1, v7, v11);
  if ((v23 & 1) == 0)
  {
    v18 = *(a2 + 24);
    v28 = 257;
    emitDiag(v18, 2, v27, &v29);
    if (v29)
    {
      mlir::Diagnostic::operator<<<45ul>(v30, "failed to canonicalize & stack index tensors");
    }

    goto LABEL_13;
  }

  v20 = mlir::ODIE::Compiler::buildGatherNdFromStackedIndices(a1, v22, v25);
  v21 = v15;
  if ((v15 & 1) == 0)
  {
    v19 = *(a2 + 24);
    v28 = 257;
    emitDiag(v19, 2, v27, &v29);
    if (v29)
    {
      mlir::Diagnostic::operator<<<27ul>(v30, "failed to create gather_nd");
    }

    goto LABEL_13;
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = (a2 - 16);
  }

  else
  {
    v17 = 0;
  }

  v13 = 1;
  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v17, v16, &v20, 1);
  mlir::Operation::erase(a2);
  return v13;
}

BOOL replaceIndexPut(mlir::OpBuilder *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 3 || *(a2 + 36) != 1)
  {
    v24 = *(a2 + 24);
    v44[0] = "expect 3 inputs and 1 output for index_put op";
    v45 = 259;
    emitDiag(v24, 2, v44, &v46);
    goto LABEL_24;
  }

  v4 = *(a2 - 8);
  v5 = *(a2 + 24);
  v46 = "expect output of index_put to be ranked tensor type";
  v48 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v4 & 0xFFFFFFFFFFFFFFF8), v5, &v46, v43);
  if (v43[16] != 1)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v7 = v6[3];
  v8 = v6[7];
  v42 = v6[11];
  v9 = v42;
  v46 = "expect ranked tensor type for input & updates tensors of index_put op";
  v48 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v46, &v39);
  v46 = "expect ranked tensor type for input & updates tensors of index_put op";
  v48 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v46, &v36);
  v10 = 0;
  if (v41 == 1 && (v38 & 1) != 0)
  {
    v12 = v39;
    v11 = v40;
    if (!(*(v40 + 16))(v40, v39))
    {
      goto LABEL_27;
    }

    v13 = (*(v11 + 24))(v11, v12);
    if (v14)
    {
      v15 = 8 * v14;
      while (*v13 != 0x8000000000000000)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_27;
    }

LABEL_12:
    v17 = v36;
    v16 = v37;
    if (!(*(v37 + 16))(v37, v36))
    {
LABEL_27:
      v26 = *(a2 + 24);
      v45 = 257;
      emitDiag(v26, 2, v44, &v46);
      if (v46)
      {
        mlir::Diagnostic::operator<<<60ul>(v47, "currently only supports static shapes for input and updates");
      }

      goto LABEL_24;
    }

    v18 = (*(v16 + 24))(v16, v17);
    if (v19)
    {
      v20 = 8 * v19;
      while (*v18 != 0x8000000000000000)
      {
        ++v18;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_27;
    }

LABEL_17:
    if ((~*(v8 + 8) & 7) != 0)
    {
      v21 = v8;
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

    getStackedIndexInfo(v34, a1, v7, v23);
    if (v35)
    {
      v32 = mlir::ODIE::Compiler::buildScatterNdFromStackedIndices(a1, v34, &v42);
      v33 = v27;
      if (v27)
      {
        v28 = *(a2 + 36);
        if (v28)
        {
          v29 = (a2 - 16);
        }

        else
        {
          v29 = 0;
        }

        v10 = 1;
        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v29, v28, &v32, 1);
        mlir::Operation::erase(a2);
        return v10;
      }

      v31 = *(a2 + 24);
      v45 = 257;
      emitDiag(v31, 2, v44, &v46);
      if (v46)
      {
        mlir::Diagnostic::operator<<<31ul>(v47, "failed to create scatter_nd op");
      }
    }

    else
    {
      v30 = *(a2 + 24);
      v45 = 257;
      emitDiag(v30, 2, v44, &v46);
      if (v46)
      {
        mlir::Diagnostic::operator<<<45ul>(v47, "failed to canonicalize & stack index tensors");
      }
    }

LABEL_24:
    v10 = (v49 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  }

  return v10;
}

BOOL replaceGather(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v38[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3 && *(a2 + 9) == 1)
  {
    v4 = *(a2 + 9);
    v5 = v4[3];
    v6 = v4[11];
    v7 = v4[7];
    v8 = *(a1 + 4);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp>(*(**v8 + 32));
    v28 = v8;
    v29 = v9;
    v30 = v32;
    v31 = 0x400000000;
    v32[4] = v33;
    v32[5] = 0x400000000;
    v33[4] = v34;
    v33[5] = 0x400000000;
    v34[8] = 4;
    v35 = v37;
    v36 = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    v22 = a2 - 16;
    v23 = 0;
    v24 = a2 - 16;
    v25 = 1;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v27, &v22);
    mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::build(a1, &v28, v27[0], v27[1], v5, v6, v7);
    v10 = mlir::Operation::create(&v28);
    mlir::OpBuilder::insert(a1, v10);
    v11 = *(*(v10 + 6) + 16);
    mlir::OperationState::~OperationState(&v28);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,void>::id)
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
      v14 = (a2 - 16);
    }

    else
    {
      v14 = 0;
    }

    v22 = v14;
    v23 = v13;
    v15 = *(v12 + 9);
    v16 = (v12 - 16);
    if (!v15)
    {
      v16 = 0;
    }

    v28 = v16;
    v29 = v15;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v22, &v28);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v18 = *a2;
      v17 = *(a2 + 1);
      *v17 = *a2;
      *(v18 + 8) = v17;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v20 = *(a2 + 3);
    v22 = "expects 3 inputs and 1 output for gather op";
    v26 = 259;
    emitDiag(v20, 2, &v22, &v28);
    v19 = (v35 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  }

  return v19;
}

uint64_t replaceIndexSelect(mlir::OpBuilder *a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 3 || *(a2 + 36) != 1)
  {
    v37 = *(a2 + 24);
    v72[0] = "expects 3 inputs and 1 output for index_select op";
    v73[8] = 259;
    emitDiag(v37, 2, v72, &v75);
    v38 = (v79 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
    return v38;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 - 8);
  v75 = "expect output of index_select to be ranked tensor type";
  v78 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v4, &v75, v58);
  if (v59 != 1)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v7 = v6[3];
  v8 = v6[7];
  v56 = v8;
  v57 = v7;
  v9 = v6[11];
  v55 = v9;
  v75 = "expect ranked tensor type for input tensor of index_select op";
  v78 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v75, &v52);
  if (v54 != 1)
  {
    return 0;
  }

  v75 = "expect ranked tensor type for indices tensor of index_select op";
  v78 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v75, &v49);
  if (v51 != 1)
  {
    return 0;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v8, v72);
  if ((v74 & 1) == 0)
  {
    v71 = 257;
    emitDiag(v4, 2, &v68, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<58ul>(&v76, "Failed to extract value of argument 'dim' in index_select");
    }

    v40 = v79;
    goto LABEL_42;
  }

  v10 = (*(v50 + 24))(v50, v49);
  if (v74)
  {
    v11 = *v10;
    v12 = *v72[0];
    if ((v12 & 0x80000000) != 0)
    {
      (*(v53 + 24))(v53, v52);
      v12 += v13;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v15 = v52;
      v14 = v53;
      (*(v53 + 24))(v53, v52);
      if (v12 < v16)
      {
        (*(v14 + 24))(v14, v15);
        v75 = v77;
        v76 = 0xC00000000;
        llvm::SmallVectorImpl<int>::assign(&v75, v17, 1);
        v18 = v75;
        *(v75 + v12) = v11;
        v48 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v18, v76);
        v68 = v70;
        v69 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<int *,void>(&v68, v75, v75 + 4 * v76);
        v19 = v68;
        v20 = v69;
        v21 = mlir::IntegerType::get(*a1, 32, 1);
        v65 = mlir::RankedTensorType::get(v19, v20, v21, 0);
        v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v65, &v55, &v48);
        if (v68 != v70)
        {
          free(v68);
        }

        v68 = v70;
        v69 = 0xC00000000;
        v65 = v67;
        v66 = 0xC00000000;
        v22 = (*(v14 + 24))(v14, v15);
        v24 = v23;
        (*(v14 + 24))(v14, v15);
        if (v25 >= 1)
        {
          for (i = 0; i < v27; ++i)
          {
            if (v12 != i)
            {
              llvm::SmallVectorTemplateBase<int,true>::push_back(&v68, i);
              llvm::SmallVectorTemplateBase<int,true>::push_back(&v65, *&v22[8 * i]);
            }

            (*(v14 + 24))(v14, v15);
          }
        }

        v46 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v68, v69);
        v45 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v65, v66);
        v62 = v64;
        v63 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v62, v22, &v22[8 * v24]);
        v28 = v62;
        *(v62 + v12) = v11;
        v29 = v63;
        v30 = mlir::IntegerType::get(*a1, 32, 1);
        v61[0] = mlir::RankedTensorType::get(v28, v29, v30, 0);
        v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ReshapeOp &,mlir::Value &,mlir::Value &>(a1, v4, v61, &v47, &v45, &v46);
        v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,mlir::ShapedType &,mlir::Value &,mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp &,mlir::Value &>(a1, v4, v58, &v57, &v44, &v56);
        v32 = *(a2 + 36);
        v33 = (a2 - 16);
        if (!v32)
        {
          v33 = 0;
        }

        v60[0] = v33;
        v60[1] = v32;
        v34 = *(v31 + 9);
        v35 = (v31 - 16);
        if (!v34)
        {
          v35 = 0;
        }

        v61[0] = v35;
        v61[1] = v34;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v60, v61);
        mlir::Operation::erase(a2);
        if (v62 != v64)
        {
          free(v62);
        }

        if (v65 != v67)
        {
          free(v65);
        }

        if (v68 != v70)
        {
          free(v68);
        }

        if (v75 != v77)
        {
          free(v75);
        }

        v36 = 1;
        goto LABEL_43;
      }
    }

    v71 = 257;
    emitDiag(v4, 2, &v68, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<52ul>(&v76, "Invalid dim specified for index_select input rank: ");
    }

    (*(v53 + 24))(v53, v52);
    v68 = v41;
    v40 = *(mlir::InFlightDiagnostic::operator<<<long long>(&v75, &v68) + 200);
LABEL_42:
    v36 = v40 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
LABEL_43:
    v38 = v36 & 1;
    if (v74 == 1 && v72[0] != v73)
    {
      free(v72[0]);
    }

    return v38;
  }

  v42 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceScatter(v42, v43);
}

uint64_t replaceScatter(uint64_t **a1, uint64_t *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) < 4u || *(a2 + 9) != 1)
  {
    v28 = a2[3];
    v36 = "expects at least 4 inputs and 1 output for scatter op";
    v40 = 259;
    emitDiag(v28, 2, &v36, &v41);
    goto LABEL_23;
  }

  Attr = mlir::Operation::getAttr(a2, "reduce", 6uLL);
  if (Attr)
  {
    v5 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v30 = Attr[2];
      v31 = Attr[3];
      v32 = mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(v30, v31);
      if ((v32 & 0x100000000) != 0)
      {
        v6 = v32;
        goto LABEL_7;
      }

      if (v31 == 8 && *v30 == 0x796C7069746C756DLL)
      {
        v6 = 3;
        goto LABEL_7;
      }

      v33 = a2[3];
      v40 = 257;
      emitDiag(v33, 2, &v36, &v41);
      if (v41)
      {
        mlir::Diagnostic::operator<<<22ul>(v42, "Unknown reduce type: ");
        if (v41)
        {
          v34 = v5[2];
          v35 = v5[3];
          v40 = 261;
          v36 = v34;
          v37 = v35;
          mlir::Diagnostic::operator<<(v42, &v36);
        }
      }

LABEL_23:
      v27 = v46 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
      return v27 & 1;
    }
  }

  v6 = 0;
LABEL_7:
  v7 = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(*a1, v6);
  v8 = *(a2 + 9);
  v9 = a2[9];
  v10 = v9[3];
  v11 = v9[11];
  v12 = v9[15];
  v13 = v9[7];
  v14 = a1[4];
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp,void>::id, *(**v14 + 32));
  if ((v16 & 1) == 0)
  {
    v40 = 1283;
    v38 = "coreml.scatter_along_axis";
    v39 = 25;
    v51 = 259;
    llvm::operator+(&v36, v50, &v41);
    llvm::report_fatal_error(&v41, 1);
  }

  if (v8)
  {
    v17 = a2 - 2;
  }

  else
  {
    v17 = 0;
  }

  v41 = v14;
  v42[0] = v15;
  v42[1] = v43;
  v42[2] = 0x400000000;
  v43[4] = v44;
  v43[5] = 0x400000000;
  v44[4] = v45;
  v44[5] = 0x400000000;
  v45[8] = 4;
  v46 = v48;
  v47 = 0x100000000;
  v48[1] = v49;
  v48[2] = 0x100000000;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v49[4] = 0;
  v49[6] = 0;
  v36 = v17;
  v37 = 0;
  v38 = v17;
  v39 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v50, &v36);
  mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::build(a1, &v41, v50[0], v50[1], v10, v11, v12, v13, v7);
  v18 = mlir::Operation::create(&v41);
  mlir::OpBuilder::insert(a1, v18);
  v19 = *(*(v18 + 6) + 16);
  mlir::OperationState::~OperationState(&v41);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a2 + 9);
  if (v21)
  {
    v22 = a2 - 2;
  }

  else
  {
    v22 = 0;
  }

  v36 = v22;
  v37 = v21;
  v23 = *(v20 + 9);
  v24 = (v20 - 16);
  if (!v23)
  {
    v24 = 0;
  }

  v41 = v24;
  v42[0] = v23;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v36, &v41);
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
  v27 = 1;
  return v27 & 1;
}

uint64_t replaceLeakyRelu(mlir::OpBuilder *a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || (v3 = *(a2 + 17), (v3 - 3) <= 0xFFFFFFFD))
  {
    v4 = a2[3];
    v19 = 257;
    emitDiag(v4, 2, v18, &v20);
    if (v20)
    {
      mlir::Diagnostic::operator<<<55ul>(v21, "Expect 1 or 2 operands only for TorchImport.leaky_relu");
    }

LABEL_17:
    v15 = v21[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    return v15 & 1;
  }

  v6 = a2[9];
  v7 = *(v6 + 24);
  if (v3 == 2)
  {
    Tensor = *(v6 + 56);
  }

  else
  {
    LODWORD(v20) = 1008981770;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v20, 1);
  }

  CoreMLLeakyRelu = mlir::ODIE::Compiler::getCoreMLLeakyRelu(a1, v7, Tensor);
  if ((v10 & 1) == 0)
  {
    v16 = a2[3];
    v19 = 257;
    emitDiag(v16, 2, v18, &v20);
    if (v20)
    {
      mlir::Diagnostic::operator<<<49ul>(v21, "Failed to lower TorchImport.leaky_relu to coreml");
    }

    goto LABEL_17;
  }

  v20 = CoreMLLeakyRelu;
  v11 = *(a2 + 9);
  if (v11)
  {
    v12 = (a2 - 2);
  }

  else
  {
    v12 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v12, v11, &v20, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v14 = *a2;
    v13 = a2[1];
    *v13 = *a2;
    *(v14 + 8) = v13;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v15 = 1;
  return v15 & 1;
}

uint64_t replaceLinalgVectorNorm(mlir::OpBuilder *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v76 = *(*(*(a2 + 48) + 8) + 16);
  v2 = *(a2 + 24);
  v75 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), (v4 - 5) < 0xFFFFFFFC) || *(a2 + 36) != 1)
  {
    v80 = 257;
    emitDiag(v2, 2, &v78, __p);
    if (__p[0])
    {
      mlir::Diagnostic::operator<<<37ul>(&__p[1], "expects 1-4 inputs and 1 output for ");
      if (__p[0])
      {
        v80 = 261;
        v78 = v76;
        mlir::Diagnostic::operator<<(&__p[1], &v78);
      }
    }

    goto LABEL_10;
  }

  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  v74 = v7;
  if (v4 == 1)
  {
    LODWORD(__p[0]) = 2;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, __p, 1, 0);
    if ((*(a2 + 46) & 0x80) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Tensor = *(v6 + 56);
  }

  v11 = *(a2 + 68);
  if (v11 < 3)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v12 = *(a2 + 72);
  v13 = *(v12 + 88);
  if (v11 != 3)
  {
    v73 = *(v12 + 120);
    goto LABEL_18;
  }

LABEL_17:
  LOBYTE(__p[0]) = 0;
  v73 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, __p, 1);
LABEL_18:
  v83 = 1283;
  __p[0] = "expected ranked tensor inputs to ";
  v82 = v76;
  mlir::ODIE::Compiler::getShapedRankedType(v7, __p, &v70);
  if (v72 != 1)
  {
    return 0;
  }

  v69 = 0;
  __p[0] = &v69;
  if ((~*(Tensor + 2) & 7) != 0)
  {
    v14 = Tensor;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_53;
  }

  v15 = *(v14 + 1) & 7;
  if (v15 == 6)
  {
    v16 = &v14[24 * *(v14 + 2)];
    v17 = (v16 + 120);
    if (v16 == -120)
    {
LABEL_53:
      v41 = *(a1 + 4);
      v80 = 257;
      emitDiag(v41, 2, &v78, __p);
      if (__p[0])
      {
        mlir::Diagnostic::operator<<<26ul>(&__p[1], "A scalar order must exist");
      }

LABEL_10:
      v9 = (v84 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
      return v9;
    }
  }

  else
  {
    v17 = &v14[16 * v15 + 16];
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(__p, v17))
  {
    goto LABEL_53;
  }

  v18 = v69;
  if (mlir::DenseFPElementsAttr::classof(v69))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  ReductionDimFromTupleOrNone = v19;
  if (v19)
  {
    mlir::DenseElementsAttr::tryGetValues<float,void>(&ReductionDimFromTupleOrNone, __p);
    if (__p[1])
    {
      v20 = 0;
    }

    else
    {
      v20 = v82;
    }

    v21 = *(__p[0] + v20);
  }

  else
  {
    v39 = v69;
    if (mlir::DenseIntElementsAttr::classof(v69))
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v77 = v40;
    if (!v40)
    {
      goto LABEL_53;
    }

    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v77, __p);
    v78 = *__p;
    v79 = v82;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v78, &v66);
    if (v67 > 0x40)
    {
      v21 = *v66;
      MEMORY[0x25F891010]();
    }

    else if (v67)
    {
      v21 = ((v66 << -v67) >> -v67);
    }

    else
    {
      v21 = 0.0;
    }
  }

  if (*(a2 + 36))
  {
    v22 = a2 - 16;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v22 + 8);
  v80 = 1283;
  *&v78 = "input and output of ";
  v79 = v76;
  __p[0] = &v78;
  *&v82 = " must be ranked.";
  v83 = 770;
  mlir::ODIE::Compiler::getShapedRankedType((v23 & 0xFFFFFFFFFFFFFFF8), v2, __p, &v66);
  if (v21 != 0.0)
  {
    if (v21 == 1.0)
    {
      AbsOps = getAbsOps(a1, v76, *(&v76 + 1), &v74, &v70);
      if (v42)
      {
        goto LABEL_57;
      }

      return 0;
    }

    if (v21 == 2.0)
    {
      ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, v7, v13, v2);
      v64 = v47;
      if ((v47 & 1) == 0)
      {
        v50 = *(a2 + 24);
        v80 = 257;
        emitDiag(v50, 2, &v78, __p);
        if (__p[0])
        {
          mlir::Diagnostic::operator<<<38ul>(&__p[1], "unable to get dim tensor for input = ");
          if (__p[0])
          {
            mlir::Diagnostic::operator<<(&__p[1], v7);
          }
        }

        goto LABEL_10;
      }

      if (v68)
      {
        mlir::ImplicitLocOpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceL2Norm,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,replaceLinalgVectorNorm(mlir::ImplicitLocOpBuilder&,mlir::Operation *)::$_0>(a1, &v66, &v74, &ReductionDimFromTupleOrNone, &v73, __p);
      }

      goto LABEL_87;
    }

    if (v21 <= 10.0)
    {
      v52 = getAbsOps(a1, v76, *(&v76 + 1), &v74, &v70);
      if (v21 >= -10.0)
      {
        if ((v51 & 1) == 0)
        {
          return 0;
        }

        LOBYTE(__p[0]) = 0;
        LOBYTE(__p[1]) = 0;
        getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(a1, &v76, &v75, v52, Tensor, __p);
        if ((v54 & 1) == 0)
        {
          return 0;
        }

        if ((v68 & 1) == 0)
        {
          goto LABEL_87;
        }

        v55 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1, &v76, &v75, v53, v13, &v73, &v66);
        if ((v56 & 1) == 0)
        {
          return 0;
        }

        v57 = v55;
        LODWORD(__p[0]) = 1065353216;
        v58 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, __p, 1);
        LOBYTE(__p[0]) = 0;
        LOBYTE(__p[1]) = 0;
        v59 = getBinaryOps<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, &v76, &v75, v58, Tensor, __p);
        if ((v60 & 1) == 0)
        {
          return 0;
        }

        LOBYTE(v78) = 0;
        BYTE8(v78) = 0;
        getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(a1, &v76, &v75, v57, v59, &v78);
      }

      else
      {
        if ((v51 & 1) == 0)
        {
          return 0;
        }

        if ((v68 & 1) == 0)
        {
          goto LABEL_87;
        }

        v43 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp>(a1, &v76, &v75, v52, v13, &v73, &v66);
      }
    }

    else
    {
      v48 = getAbsOps(a1, v76, *(&v76 + 1), &v74, &v70);
      if ((v49 & 1) == 0)
      {
        return 0;
      }

      if ((v68 & 1) == 0)
      {
        goto LABEL_87;
      }

      v43 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(a1, &v76, &v75, v48, v13, &v73, &v66);
    }

LABEL_59:
    __p[0] = v43;
    LOBYTE(__p[1]) = v44;
    if (v44)
    {
      v45 = *(a2 + 36);
      if (v45)
      {
        v46 = (a2 - 16);
      }

      else
      {
        v46 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v46, v45, __p, 1);
      mlir::Operation::erase(a2);
      return 1;
    }

    return 0;
  }

  LODWORD(__p[0]) = 0;
  v24 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, __p, 1);
  v26 = v70;
  v25 = v71;
  v27 = (*(v71 + 24))(v71, v70);
  std::vector<long long>::vector[abi:nn200100]<long long const*,0>(__p, v27, &v27[v28]);
  v29 = __p[0];
  v30 = (__p[1] - __p[0]) >> 3;
  v31 = mlir::IntegerType::get(*a1, 1, 0);
  *&v78 = v29;
  *(&v78 + 1) = v30;
  ReductionDimFromTupleOrNone = v31;
  v77 = 0;
  v65 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v31 + 32), &v78, &ReductionDimFromTupleOrNone, &v77);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = mlir::TensorType::operator mlir::ShapedType(&v65);
  __p[1] = v32;
  v33 = getBinaryComparisonOps<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, &v76, &v75, v7, v24, __p);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

  v35 = v33;
  v36 = (*(v25 + 8))(v25, v26);
  AbsOps = mlir::ODIE::Compiler::castValueToElementType(a1, v35, v36);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  if (v68)
  {
    v43 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1, &v76, &v75, AbsOps, v13, &v73, &v66);
    goto LABEL_59;
  }

LABEL_87:
  v61 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceUnaryOp<mlir::ODIE::Compiler::CoreML::LogOp>(v61, v62);
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::LogOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v60[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v49 = "expected ranked tensor input to unary op";
  LOWORD(v52) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v49, &v43);
  if (v45 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v43;
    v15 = v44;
    v16 = (*(v44 + 24))(v44, v43);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v48 = 257;
      emitDiag(v18, 2, &v46, &v49);
      if (v49)
      {
        mlir::Diagnostic::operator<<<66ul>(v50, "replaceUnary encountered input and output with mismatched shape: ");
        if (v49)
        {
          LODWORD(v46) = 4;
          v47 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
          v20 = v51 + 24 * v52;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v52;
          if (v49)
          {
            mlir::Diagnostic::operator<<<5ul>(v50, " vs ");
            if (v49)
            {
              LODWORD(v46) = 4;
              v47 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
              v23 = v51 + 24 * v52;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v52;
            }
          }
        }
      }

LABEL_16:
      v10 = v57 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v42 = a2[3];
        v48 = 257;
        emitDiag(v42, 2, &v46, &v49);
        if (v49)
        {
          mlir::Diagnostic::operator<<<48ul>(v50, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(*(**v31 + 32));
    v49 = v31;
    v50[0] = v32;
    v50[1] = &v52;
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
    mlir::ODIE::Compiler::CoreML::LogOp::build(a1, &v49, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v33 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert(a1, v33);
    v34 = *(*(v33 + 6) + 16);
    mlir::OperationState::~OperationState(&v49);
    if (v34 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a2 + 9);
    if (v36)
    {
      v37 = a2 - 2;
    }

    else
    {
      v37 = 0;
    }

    v46 = v37;
    v47 = v36;
    v38 = *(v35 + 9);
    v39 = (v35 - 16);
    if (!v38)
    {
      v39 = 0;
    }

    v49 = v39;
    v50[0] = v38;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v46, &v49);
    if (a2[2])
    {
      a2[2] = 0;
      v41 = *a2;
      v40 = a2[1];
      *v40 = *a2;
      *(v41 + 8) = v40;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL replaceLogBaseN<2>(uint64_t *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v38 = v4;
  v42 = "expected ranked tensor input to log base N op";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v42, v36);
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
  v42 = "expect ranked tensor output type for log base N op";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v42, v34);
  v8 = 0;
  if (v37 != 1 || (v35 & 1) == 0)
  {
    return v8;
  }

  v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v36, &v38);
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 2, v4);
  v32 = v9;
  if ((v9 & 1) == 0)
  {
    v19 = a2[3];
    v41 = 257;
    emitDiag(v19, 2, &v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<45ul>(v43, "failed to create tensor constant with value ");
    }

    LODWORD(v28) = 2;
    v20 = mlir::InFlightDiagnostic::operator<<<int>(&v42, &v28);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<11ul>((v20 + 1), " and type ");
      if (*v21)
      {
        v39 = 4;
        v40 = v36[0];
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v39, 1);
        v23 = v21[3] + 24 * *(v21 + 8);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++*(v21 + 8);
      }
    }

    v25 = *(v21 + 200);
    goto LABEL_28;
  }

  v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v36, &TensorConstantWithSameTypeAs) - 16;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::LogOp &,mlir::Value &>(a1, a1[4], v36, &v33, &v30) - 16;
  v11 = v34[0];
  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v34[0]);
  if (v12)
  {
    v11 = (*(v13 + 8))(v13, v12);
  }

  v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v11);
  v29 = v14;
  if ((v14 & 1) == 0)
  {
    v26 = a2[3];
    v41 = 257;
    emitDiag(v26, 2, &v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<22ul>(v43, "failed to cast value ");
      if (v42)
      {
        mlir::Diagnostic::operator<<(v43, v10);
        if (v42)
        {
          mlir::Diagnostic::operator<<<31ul>(v43, " to same dtype as result type ");
          if (v42)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v43, v34);
          }
        }
      }
    }

    v25 = v45;
LABEL_28:
    v8 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    return v8;
  }

  v15 = *(a2 + 9);
  if (v15)
  {
    v16 = (a2 - 2);
  }

  else
  {
    v16 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v16, v15, &v28, 1);
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

BOOL replaceLogBaseN<10>(uint64_t *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v38 = v4;
  v42 = "expected ranked tensor input to log base N op";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v42, v36);
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
  v42 = "expect ranked tensor output type for log base N op";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v42, v34);
  v8 = 0;
  if (v37 != 1 || (v35 & 1) == 0)
  {
    return v8;
  }

  v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v36, &v38);
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 10, v4);
  v32 = v9;
  if ((v9 & 1) == 0)
  {
    v19 = a2[3];
    v41 = 257;
    emitDiag(v19, 2, &v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<45ul>(v43, "failed to create tensor constant with value ");
    }

    LODWORD(v28) = 10;
    v20 = mlir::InFlightDiagnostic::operator<<<int>(&v42, &v28);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<11ul>((v20 + 1), " and type ");
      if (*v21)
      {
        v39 = 4;
        v40 = v36[0];
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v39, 1);
        v23 = v21[3] + 24 * *(v21 + 8);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++*(v21 + 8);
      }
    }

    v25 = *(v21 + 200);
    goto LABEL_28;
  }

  v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v36, &TensorConstantWithSameTypeAs) - 16;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::LogOp &,mlir::Value &>(a1, a1[4], v36, &v33, &v30) - 16;
  v11 = v34[0];
  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v34[0]);
  if (v12)
  {
    v11 = (*(v13 + 8))(v13, v12);
  }

  v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v11);
  v29 = v14;
  if ((v14 & 1) == 0)
  {
    v26 = a2[3];
    v41 = 257;
    emitDiag(v26, 2, &v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<22ul>(v43, "failed to cast value ");
      if (v42)
      {
        mlir::Diagnostic::operator<<(v43, v10);
        if (v42)
        {
          mlir::Diagnostic::operator<<<31ul>(v43, " to same dtype as result type ");
          if (v42)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v43, v34);
          }
        }
      }
    }

    v25 = v45;
LABEL_28:
    v8 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    return v8;
  }

  v15 = *(a2 + 9);
  if (v15)
  {
    v16 = (a2 - 2);
  }

  else
  {
    v16 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v16, v15, &v28, 1);
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

BOOL replaceLog1P(mlir::OpBuilder *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v33 = "expected ranked tensor input to log1p op";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v33, v29);
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
  v33 = "expect ranked tensor output type for log1p op";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v33, v27);
  v8 = 0;
  if (v30 != 1 || (v28 & 1) == 0)
  {
    return v8;
  }

  LODWORD(v33) = 1065353216;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v33, 1);
  AddWithScalar = mlir::ODIE::Compiler::getAddWithScalar(a1, v4, Tensor);
  v26 = v10;
  if ((v10 & 1) == 0)
  {
    v20 = a2[3];
    v32 = 257;
    emitDiag(v20, 2, v31, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<15ul>(v34, "failed to add ");
      if (v33)
      {
        mlir::Diagnostic::operator<<(v34, v4);
        if (v33)
        {
          mlir::Diagnostic::operator<<<6ul>(v34, " and ");
          if (v33)
          {
            mlir::Diagnostic::operator<<(v34, Tensor);
          }
        }
      }
    }

    goto LABEL_26;
  }

  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, *(a1 + 4), v29, &AddWithScalar) - 16;
  v12 = v27[0];
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v27[0]);
  if (v13)
  {
    v12 = (*(v14 + 8))(v14, v13);
  }

  v23 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v12);
  v24 = v15;
  if ((v15 & 1) == 0)
  {
    v21 = a2[3];
    v32 = 257;
    emitDiag(v21, 2, v31, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<22ul>(v34, "failed to cast value ");
      if (v33)
      {
        mlir::Diagnostic::operator<<(v34, v11);
        if (v33)
        {
          mlir::Diagnostic::operator<<<31ul>(v34, " to same dtype as result type ");
          if (v33)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v34, v27);
          }
        }
      }
    }

LABEL_26:
    v8 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    return v8;
  }

  v16 = *(a2 + 9);
  if (v16)
  {
    v17 = (a2 - 2);
  }

  else
  {
    v17 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v17, v16, &v23, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v19 = *a2;
    v18 = a2[1];
    *v18 = *a2;
    *(v19 + 8) = v18;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v3 = *(*(a2 + 48) + 8);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v27 = *(a2 + 24);
    v49 = 257;
    emitDiag(v27, 2, v47, &__src);
    if (!__src)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<34ul>(&v52, "expect 2 inputs and 1 output for ");
    if (!__src)
    {
      goto LABEL_24;
    }

    v49 = 261;
    v47[0] = v5;
    v47[1] = v4;
LABEL_23:
    mlir::Diagnostic::operator<<(&v52, v47);
LABEL_24:
    v10 = (v56 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v10;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v55 = 1283;
  __src = "expected ranked tensor input to op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, v41);
  v55 = 1283;
  __src = "expected ranked tensor input to op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, v39);
  v10 = 0;
  if (v42 != 1 || (v40 & 1) == 0)
  {
    return v10;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 24);
  v55 = 1283;
  __src = "expected ranked tensor output from op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, &__src, &v36);
  if (v38 != 1)
  {
    return 0;
  }

  v14 = (*(v37 + 8))(v37, v36);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v14[2] & 0x3FFFFFFF) != 1)
  {
    v29 = *(a2 + 24);
    v49 = 257;
    emitDiag(v29, 2, v47, &__src);
    v49 = 1283;
    v47[0] = "expect output element type to be BOOLean for op ";
    v48[0] = v5;
    v48[1] = v4;
    if (!__src)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v35[0] = a1;
  v35[1] = &v43;
  v15 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v35, v8, v41[0], v41[1]);
  v17 = v16;
  v34 = v16;
  v18 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v35, v9, v39[0], v39[1]);
  v10 = 0;
  v32 = v19;
  if (v17 & 1) != 0 && (v19)
  {
    v20 = v18;
    __src = v15;
    v52 = v18;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v47);
    if (v50)
    {
      v21 = *(v47[0] + 1);
      v33 = *v47[0];
      v31 = v21;
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AndOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v36, &v33, &v31);
      v23 = *(v43 + 9);
      v24 = (v43 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v44 = v24;
      v45 = v23;
      v25 = *(v22 + 9);
      v26 = (v22 - 16);
      if (!v25)
      {
        v26 = 0;
      }

      __src = v26;
      v52 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v44, &__src);
      mlir::Operation::erase(v43);
      v10 = 1;
    }

    else
    {
      v30 = *(v43 + 3);
      v46 = 257;
      emitDiag(v30, 2, &v44, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<31ul>(&v52, "failed to broadcast inputs to ");
        if (__src)
        {
          v46 = 261;
          v44 = v5;
          v45 = v4;
          mlir::Diagnostic::operator<<(&v52, &v44);
          if (__src)
          {
            mlir::Diagnostic::operator<<<29ul>(&v52, " to a common shape. Inputs: ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(&v52, v15);
              if (__src)
              {
                mlir::Diagnostic::operator<<<6ul>(&v52, " and ");
                if (__src)
                {
                  mlir::Diagnostic::operator<<(&v52, v20);
                }
              }
            }
          }
        }
      }

      v10 = (v56 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v50 == 1 && v47[0] != v48)
    {
      free(v47[0]);
    }
  }

  return v10;
}

BOOL replaceLogicalNot(mlir::OpBuilder *a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v23 = "expected ranked tensor input to logical_not op";
  v25 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v23, v20);
  if (v20[16] != 1)
  {
    return 0;
  }

  v5 = *(a2 + 9) ? a2 - 2 : 0;
  v6 = v5[1];
  v7 = a2[3];
  v23 = "expected ranked tensor output from logical_not op";
  v25 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v23, &v17);
  if (v19 != 1)
  {
    return 0;
  }

  v8 = (*(v18 + 8))(v18, v17);
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v8[2] & 0x3FFFFFFF) == 1)
  {
    v23 = mlir::ODIE::Compiler::negateValue(a1, v4);
    v24[0] = v9;
    if (v9)
    {
      v10 = *(a2 + 9);
      if (v10)
      {
        v11 = (a2 - 2);
      }

      else
      {
        v11 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v11, v10, &v23, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v13 = *a2;
        v12 = a2[1];
        *v12 = *a2;
        *(v13 + 8) = v12;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    return 0;
  }

  v15 = a2[3];
  v22 = 257;
  emitDiag(v15, 2, v21, &v23);
  if (v23)
  {
    mlir::Diagnostic::operator<<<56ul>(v24, "expect output element type of logical_not to be BOOLean");
  }

  v14 = (v26 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  return v14;
}

BOOL replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v3 = *(*(a2 + 48) + 8);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v27 = *(a2 + 24);
    v49 = 257;
    emitDiag(v27, 2, v47, &__src);
    if (!__src)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<34ul>(&v52, "expect 2 inputs and 1 output for ");
    if (!__src)
    {
      goto LABEL_24;
    }

    v49 = 261;
    v47[0] = v5;
    v47[1] = v4;
LABEL_23:
    mlir::Diagnostic::operator<<(&v52, v47);
LABEL_24:
    v10 = (v56 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v10;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v55 = 1283;
  __src = "expected ranked tensor input to op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, v41);
  v55 = 1283;
  __src = "expected ranked tensor input to op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, v39);
  v10 = 0;
  if (v42 != 1 || (v40 & 1) == 0)
  {
    return v10;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 24);
  v55 = 1283;
  __src = "expected ranked tensor output from op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, &__src, &v36);
  if (v38 != 1)
  {
    return 0;
  }

  v14 = (*(v37 + 8))(v37, v36);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v14[2] & 0x3FFFFFFF) != 1)
  {
    v29 = *(a2 + 24);
    v49 = 257;
    emitDiag(v29, 2, v47, &__src);
    v49 = 1283;
    v47[0] = "expect output element type to be BOOLean for op ";
    v48[0] = v5;
    v48[1] = v4;
    if (!__src)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v35[0] = a1;
  v35[1] = &v43;
  v15 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v35, v8, v41[0], v41[1]);
  v17 = v16;
  v34 = v16;
  v18 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v35, v9, v39[0], v39[1]);
  v10 = 0;
  v32 = v19;
  if (v17 & 1) != 0 && (v19)
  {
    v20 = v18;
    __src = v15;
    v52 = v18;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v47);
    if (v50)
    {
      v21 = *(v47[0] + 1);
      v33 = *v47[0];
      v31 = v21;
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OrOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v36, &v33, &v31);
      v23 = *(v43 + 9);
      v24 = (v43 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v44 = v24;
      v45 = v23;
      v25 = *(v22 + 9);
      v26 = (v22 - 16);
      if (!v25)
      {
        v26 = 0;
      }

      __src = v26;
      v52 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v44, &__src);
      mlir::Operation::erase(v43);
      v10 = 1;
    }

    else
    {
      v30 = *(v43 + 3);
      v46 = 257;
      emitDiag(v30, 2, &v44, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<31ul>(&v52, "failed to broadcast inputs to ");
        if (__src)
        {
          v46 = 261;
          v44 = v5;
          v45 = v4;
          mlir::Diagnostic::operator<<(&v52, &v44);
          if (__src)
          {
            mlir::Diagnostic::operator<<<29ul>(&v52, " to a common shape. Inputs: ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(&v52, v15);
              if (__src)
              {
                mlir::Diagnostic::operator<<<6ul>(&v52, " and ");
                if (__src)
                {
                  mlir::Diagnostic::operator<<(&v52, v20);
                }
              }
            }
          }
        }
      }

      v10 = (v56 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v50 == 1 && v47[0] != v48)
    {
      free(v47[0]);
    }
  }

  return v10;
}

BOOL replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v3 = *(*(a2 + 48) + 8);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v27 = *(a2 + 24);
    v49 = 257;
    emitDiag(v27, 2, v47, &__src);
    if (!__src)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<34ul>(&v52, "expect 2 inputs and 1 output for ");
    if (!__src)
    {
      goto LABEL_24;
    }

    v49 = 261;
    v47[0] = v5;
    v47[1] = v4;
LABEL_23:
    mlir::Diagnostic::operator<<(&v52, v47);
LABEL_24:
    v10 = (v56 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v10;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v55 = 1283;
  __src = "expected ranked tensor input to op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, v41);
  v55 = 1283;
  __src = "expected ranked tensor input to op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, v39);
  v10 = 0;
  if (v42 != 1 || (v40 & 1) == 0)
  {
    return v10;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 24);
  v55 = 1283;
  __src = "expected ranked tensor output from op ";
  v53 = v5;
  v54 = v4;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, &__src, &v36);
  if (v38 != 1)
  {
    return 0;
  }

  v14 = (*(v37 + 8))(v37, v36);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v14[2] & 0x3FFFFFFF) != 1)
  {
    v29 = *(a2 + 24);
    v49 = 257;
    emitDiag(v29, 2, v47, &__src);
    v49 = 1283;
    v47[0] = "expect output element type to be BOOLean for op ";
    v48[0] = v5;
    v48[1] = v4;
    if (!__src)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v35[0] = a1;
  v35[1] = &v43;
  v15 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v35, v8, v41[0], v41[1]);
  v17 = v16;
  v34 = v16;
  v18 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v35, v9, v39[0], v39[1]);
  v10 = 0;
  v32 = v19;
  if (v17 & 1) != 0 && (v19)
  {
    v20 = v18;
    __src = v15;
    v52 = v18;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v47);
    if (v50)
    {
      v21 = *(v47[0] + 1);
      v33 = *v47[0];
      v31 = v21;
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::XorOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v36, &v33, &v31);
      v23 = *(v43 + 9);
      v24 = (v43 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v44 = v24;
      v45 = v23;
      v25 = *(v22 + 9);
      v26 = (v22 - 16);
      if (!v25)
      {
        v26 = 0;
      }

      __src = v26;
      v52 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v44, &__src);
      mlir::Operation::erase(v43);
      v10 = 1;
    }

    else
    {
      v30 = *(v43 + 3);
      v46 = 257;
      emitDiag(v30, 2, &v44, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<31ul>(&v52, "failed to broadcast inputs to ");
        if (__src)
        {
          v46 = 261;
          v44 = v5;
          v45 = v4;
          mlir::Diagnostic::operator<<(&v52, &v44);
          if (__src)
          {
            mlir::Diagnostic::operator<<<29ul>(&v52, " to a common shape. Inputs: ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(&v52, v15);
              if (__src)
              {
                mlir::Diagnostic::operator<<<6ul>(&v52, " and ");
                if (__src)
                {
                  mlir::Diagnostic::operator<<(&v52, v20);
                }
              }
            }
          }
        }
      }

      v10 = (v56 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v50 == 1 && v47[0] != v48)
    {
      free(v47[0]);
    }
  }

  return v10;
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::meanDimOpName)>(mlir::OpBuilder *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), v4 > 3) || (v4 ? (v5 = *(a2 + 36) == 1) : (v5 = 0), !v5))
  {
    v57 = 257;
    emitDiag(v2, 2, &v53, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<37ul>(&v49, "expects 1-3 inputs and 1 output for ");
    }

    v53 = "mean.dim";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v48, &v53) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return v7;
  }

  v10 = *(a2 + 72);
  v11 = v10[3];
  if (v4 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10[7];
    if (v4 == 3)
    {
      v13 = v10[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v48) = 0;
  v13 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v48, 1);
LABEL_17:
  v38 = v13;
  getReduceResultType(v36, a2);
  if ((v37 & 1) == 0)
  {
    v57 = 257;
    emitDiag(v2, 2, &v53, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<42ul>(&v49, "unable to figure out the result type for ");
      if (v48)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(&v53);
        mlir::Diagnostic::appendOp(&v49, a2, &v53);
      }
    }

    v6 = v52;
    goto LABEL_10;
  }

  v47 = v11;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, v11, v12, v2);
  v45 = ReductionDimFromTupleOrNone;
  v46 = v15;
  if ((v15 & 1) == 0)
  {
    v57 = 257;
    emitDiag(v2, 2, &v53, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<37ul>(&v49, " failed to infer reduction dims for ");
      if (v48)
      {
        mlir::Diagnostic::operator<<(&v49, v11);
      }
    }

    goto LABEL_50;
  }

  v48 = "Dims are not statically shaped.";
  v51 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v48, &v42);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

  v57 = 1283;
  v53 = "input and output of ";
  v55 = "mean.dim";
  v56 = 8;
  v48 = &v53;
  v50 = " must be ranked.";
  v51 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v11, &v48, &v39);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  v16 = v39;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v39);
  v19 = v16;
  if (v17)
  {
    v19 = (*(v18 + 8))(v18, v17);
  }

  v20 = v36[0];
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v36[0]);
  if (v21)
  {
    v20 = (*(v22 + 8))(v22, v21);
  }

  if (v19 == v20)
  {
    goto LABEL_31;
  }

  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v19[1] & 0x3FFFFFFF) != 1 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v20[1] & 0x3FFFFFFF) != 0x20)
  {
    v57 = 257;
    emitDiag(v2, 2, &v53, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<44ul>(&v49, "input and output types are mismatching for ");
      if (v48)
      {
        v57 = 261;
        v53 = "mean.dim";
        v54 = 8;
        mlir::Diagnostic::operator<<(&v49, &v53);
      }
    }

LABEL_50:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return 0;
  }

  v23 = mlir::IntegerType::get(*a1, 32, 1);
  v24 = *v40;
  LOBYTE(v48) = 0;
  LOBYTE(v50) = 0;
  v48 = v24(v40, v16, &v48, v23);
  v49 = v25;
  v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, *(a1 + 4), &v48, &v47) - 16;
LABEL_31:
  v26 = (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ShapedType const&,mlir::Value &,mlir::Value &,mlir::Value const&>(a1, *(a1 + 4), v36, &v47, &v45, &v38) - 16);
  v42 = v26;
  v43 = 1;
  v27 = *(a2 + 36);
  if (v27)
  {
    v28 = (a2 - 16);
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v29 = 0;
  }

  v39 = v29;
  if (v29)
  {
    v30 = *(a1 + 4);
    v53 = v26;
    mlir::OperationState::OperationState(&v48, v30, "TorchImport.tuple_construct", 0x1B, &v53, 1, &v39 + 2, 1, 0, 0, 0, 0, 0, 0);
    v31 = mlir::Operation::create(&v48);
    mlir::OpBuilder::insert(a1, v31);
    mlir::OperationState::~OperationState(&v48);
    v32 = *(a2 + 36);
    if (v32)
    {
      v33 = (a2 - 16);
    }

    else
    {
      v33 = 0;
    }

    v53 = v33;
    v54 = v32;
    v34 = v31[9];
    v35 = (v31 - 4);
    if (!v34)
    {
      v35 = 0;
    }

    v48 = v35;
    v49 = v34;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v53, &v48);
  }

  else
  {
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v42, 1);
  }

  mlir::Operation::erase(a2);
  return 1;
}

BOOL replaceMeanOp(uint64_t **a1, uint64_t *a2)
{
  v54[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1 && *(a2 + 9) == 1)
  {
    v4 = a2[3];
    v5 = *(a2[9] + 24);
    LOBYTE(v44) = 0;
    v6 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v44, 1);
    v44 = "expecting ranked tensors";
    v46 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &v44, &v38);
    v7 = 0;
    if (v40 == 1)
    {
      v41 = v43;
      v42 = 0xC00000000;
      (*(v39 + 24))(v39, v38);
      v9 = v8;
      if (v8 >= 1)
      {
        v10 = 0;
        do
        {
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v41, v10++);
        }

        while (v9 != v10);
      }

      v11 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v41, v42);
      if (*(a2 + 9))
      {
        v12 = a2 - 2;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12[1];
      v44 = "input and output of mean must be ranked.";
      v46 = 259;
      mlir::ODIE::Compiler::getShapedRankedType((v13 & 0xFFFFFFFFFFFFFFF8), v4, &v44, &v36);
      if (v37)
      {
        v14 = v36;
        v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v36);
        if (v15)
        {
          v17 = (*(v16 + 8))(v16, v15);
        }

        else
        {
          v17 = v14;
        }

        v20 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v17);
        if (v21)
        {
          v22 = v20;
          v23 = a1[4];
          v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**v23 + 32));
          v44 = v23;
          v45[0] = v24;
          v45[1] = &v46;
          v45[2] = 0x400000000;
          v47 = v49;
          v48 = 0x400000000;
          v49[4] = v50;
          v49[5] = 0x400000000;
          v50[8] = 4;
          v51 = v53;
          v52 = 0x100000000;
          v53[1] = v54;
          v53[2] = 0x100000000;
          v54[1] = 0;
          v54[2] = 0;
          v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v54[4] = 0;
          v54[6] = 0;
          mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, &v44, v14, v22, v11, v6);
          v25 = mlir::Operation::create(&v44);
          mlir::OpBuilder::insert(a1, v25);
          v26 = *(*(v25 + 6) + 16);
          mlir::OperationState::~OperationState(&v44);
          if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
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

          v34[0] = v29;
          v34[1] = v28;
          v30 = *(v27 + 9);
          v31 = (v27 - 16);
          if (!v30)
          {
            v31 = 0;
          }

          v44 = v31;
          v45[0] = v30;
          mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v34, &v44);
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
          v7 = 1;
        }

        else
        {
          v34[0] = "unable to cast input mean to output type.";
          v35 = 259;
          emitDiag(v4, 2, v34, &v44);
          v7 = (v51 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
        }
      }

      else
      {
        v7 = 0;
      }

      if (v41 != v43)
      {
        free(v41);
      }
    }
  }

  else
  {
    v18 = a2[3];
    v43[8] = 257;
    emitDiag(v18, 2, &v41, &v44);
    if (v44)
    {
      mlir::Diagnostic::operator<<<39ul>(v45, "expects 1 inputs and 1 output for mean");
    }

    v7 = (v51 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
  }

  return v7;
}

uint64_t replaceMaxPool2d(mlir::OpBuilder *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "max_pool_2d");
  v5 = validatePoolingOpInput(a2, &__p);
  v6 = v5;
  if (v48 < 0)
  {
    operator delete(__p);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "max_pool_2d");
  getPoolingOpKernelStridePadding(v42, a1, a2, v4, &__p);
  if (v48 < 0)
  {
    operator delete(__p);
  }

  if (v43 != 1)
  {
    return 0;
  }

  v39 = v42[0];
  v40 = v42[1];
  v41 = v42[2];
  __p = 0x100000001;
  TensorFromOptionalTuple = getTensorFromOptionalTuple(v4, a1, a2, 4, &__p, 2);
  v38 = v7;
  if ((v7 & 1) == 0)
  {
    v14 = *(a2 + 24);
    v45 = 257;
    emitDiag(v14, 2, v44, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<42ul>(&v47, "max_pool_2d - failed to construct padding");
    }

    goto LABEL_32;
  }

  BooleanFromOptionalTensor = getBooleanFromOptionalTensor(v4, a1, a2, 5, 0);
  v36 = v8;
  if ((v8 & 1) == 0)
  {
    v15 = *(a2 + 24);
    v45 = 257;
    emitDiag(v15, 2, v44, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<44ul>(&v47, "max_pool_2d - failed to construct ceil_mode");
    }

    goto LABEL_32;
  }

  v9 = getBooleanFromOptionalTensor(v4, a1, a2, 6, 0);
  if ((v10 & 1) == 0)
  {
    v16 = *(a2 + 24);
    v45 = 257;
    emitDiag(v16, 2, v44, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<49ul>(&v47, "max_pool_2d - failed to construct return_indices");
    }

    goto LABEL_32;
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(v9, &__p);
  if (v49[40])
  {
    v11 = *__p;
    if (__p != v49)
    {
      free(__p);
    }

    if (v11)
    {
      v12 = *(a2 + 24);
      v45 = 257;
      emitDiag(v12, 2, v44, &__p);
      if (__p)
      {
        mlir::Diagnostic::operator<<<60ul>(&v47, "max_pool_2d - do not support op with return_indices = True.");
      }

LABEL_32:
      v13 = (v49[176] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      return v13;
    }

    if (*(a2 + 36))
    {
      v17 = a2 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v34 = v18;
    if ((*v18)[17] != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v19 = *(a2 + 24);
      v44[0] = "Expected result type to be TupleType, but got ";
      v45 = 259;
      emitDiag(v19, 2, v44, &__p);
      if (__p)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(&v47, &v34);
      }

      goto LABEL_32;
    }

    v21 = *(*(a2 + 72) + 24);
    v32 = *v18[1];
    v33 = v21;
    if (BYTE8(v39) & 1) != 0 && (BYTE8(v40) & 1) != 0 && (BYTE8(v41))
    {
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v32, &v33, &v39, &v40, &v41, &TensorFromOptionalTuple, &BooleanFromOptionalTensor);
      v23 = *(a1 + 4);
      if (*(v22 + 9))
      {
        v24 = (v22 - 16);
      }

      else
      {
        v24 = 0;
      }

      v44[0] = v24;
      v13 = 1;
      mlir::OperationState::OperationState(&__p, v23, "TorchImport.tuple_construct", 0x1B, v44, 1, &v32 + 2, 1, 0, 0, 0, 0, 0, 0);
      v25 = mlir::Operation::create(&__p);
      mlir::OpBuilder::insert(a1, v25);
      mlir::OperationState::~OperationState(&__p);
      v26 = *(a2 + 36);
      if (v26)
      {
        v27 = (a2 - 16);
      }

      else
      {
        v27 = 0;
      }

      v44[0] = v27;
      v44[1] = v26;
      v28 = v25[9];
      v29 = v25 - 4;
      if (!v28)
      {
        v29 = 0;
      }

      __p = v29;
      v47 = v28;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v44, &__p);
      mlir::Operation::erase(a2);
      return v13;
    }
  }

  v30 = std::__throw_bad_optional_access[abi:nn200100]();
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::maxOpName)>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v34 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 17), v4 > 3) || (v4 ? (v5 = *(a2 + 9) == 1) : (v5 = 0), !v5))
  {
    v36 = 257;
    emitDiag(v2, 2, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<37ul>(v39, "expects 1-3 inputs and 1 output for ");
    }

    v35[0] = "max";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v38, v35) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    return v7;
  }

  v10 = a2[9];
  v11 = v10[3];
  if (v4 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10[7];
    if (v4 == 3)
    {
      v13 = v10[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v38) = 0;
  v13 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v38, 1);
LABEL_17:
  v33 = v13;
  getReduceResultType(v31, a2);
  if ((v32 & 1) == 0)
  {
    v36 = 257;
    emitDiag(v2, 2, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<42ul>(v39, "unable to figure out the result type for ");
      if (v38)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v35);
        mlir::Diagnostic::appendOp(v39, a2, v35);
      }
    }

    v6 = v40;
    goto LABEL_10;
  }

  v38 = "max";
  v39[0] = 3;
  v14 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(a1, &v38, &v34, v11, v12, &v33, v31);
  v29 = v14;
  v30 = v15;
  if ((v15 & 1) == 0)
  {
    return 0;
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

  v18 = v17[1] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v18 = 0;
  }

  v28 = v18;
  if (v18)
  {
    v19 = *(a1 + 4);
    v37 = v14;
    mlir::OperationName::OperationName(v35, "TorchImport.tuple_construct", 0x1B, *(**v19 + 32));
    mlir::OperationState::OperationState(&v38, v19, v35[0], &v37, 1, &v28 + 2, 1, v20, 0, 0, 0, 0, 0, 0);
    v21 = mlir::Operation::create(&v38);
    mlir::OpBuilder::insert(a1, v21);
    mlir::OperationState::~OperationState(&v38);
    v22 = *(a2 + 9);
    if (v22)
    {
      v23 = a2 - 2;
    }

    else
    {
      v23 = 0;
    }

    v35[0] = v23;
    v35[1] = v22;
    v24 = v21[9];
    v25 = (v21 - 4);
    if (!v24)
    {
      v25 = 0;
    }

    v38 = v25;
    v39[0] = v24;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v35, &v38);
  }

  else
  {
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v17, v16, &v29, 1);
  }

  if (a2[2])
  {
    a2[2] = 0;
    v27 = *a2;
    v26 = a2[1];
    *v26 = *a2;
    *(v27 + 8) = v26;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::minOpName)>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v34 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 17), v4 > 3) || (v4 ? (v5 = *(a2 + 9) == 1) : (v5 = 0), !v5))
  {
    v36 = 257;
    emitDiag(v2, 2, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<37ul>(v39, "expects 1-3 inputs and 1 output for ");
    }

    v35[0] = "min";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v38, v35) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    return v7;
  }

  v10 = a2[9];
  v11 = v10[3];
  if (v4 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10[7];
    if (v4 == 3)
    {
      v13 = v10[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v38) = 0;
  v13 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v38, 1);
LABEL_17:
  v33 = v13;
  getReduceResultType(v31, a2);
  if ((v32 & 1) == 0)
  {
    v36 = 257;
    emitDiag(v2, 2, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<42ul>(v39, "unable to figure out the result type for ");
      if (v38)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v35);
        mlir::Diagnostic::appendOp(v39, a2, v35);
      }
    }

    v6 = v40;
    goto LABEL_10;
  }

  v38 = "min";
  v39[0] = 3;
  v14 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp>(a1, &v38, &v34, v11, v12, &v33, v31);
  v29 = v14;
  v30 = v15;
  if ((v15 & 1) == 0)
  {
    return 0;
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

  v18 = v17[1] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v18 = 0;
  }

  v28 = v18;
  if (v18)
  {
    v19 = *(a1 + 4);
    v37 = v14;
    mlir::OperationName::OperationName(v35, "TorchImport.tuple_construct", 0x1B, *(**v19 + 32));
    mlir::OperationState::OperationState(&v38, v19, v35[0], &v37, 1, &v28 + 2, 1, v20, 0, 0, 0, 0, 0, 0);
    v21 = mlir::Operation::create(&v38);
    mlir::OpBuilder::insert(a1, v21);
    mlir::OperationState::~OperationState(&v38);
    v22 = *(a2 + 9);
    if (v22)
    {
      v23 = a2 - 2;
    }

    else
    {
      v23 = 0;
    }

    v35[0] = v23;
    v35[1] = v22;
    v24 = v21[9];
    v25 = (v21 - 4);
    if (!v24)
    {
      v25 = 0;
    }

    v38 = v25;
    v39[0] = v24;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v35, &v38);
  }

  else
  {
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v17, v16, &v29, 1);
  }

  if (a2[2])
  {
    a2[2] = 0;
    v27 = *a2;
    v26 = a2[1];
    *v26 = *a2;
    *(v27 + 8) = v26;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MaximumOp,false>(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    return 0;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = &v63[24 * v64];
      v32 = *v30;
      *(v31 + 2) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = &v63[24 * v64];
      v36 = *v34;
      *(v35 + 2) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if ((v20 & 1) == 0 || (v21 = v19, v53 = v19, v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18), (v23 & 1) == 0))
  {
    v42 = std::__throw_bad_optional_access[abi:nn200100]();
    return replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MinimumOp,false>(v42, v43);
  }

  v52 = v22;
  __src = v21;
  v61 = v22;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
  if (v59)
  {
    v24 = *v56;
    v52 = *(v56 + 1);
    v53 = v24;
    v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v53, &v52);
    v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
    v27 = (v25 - 16);
    v28 = 1;
  }

  else
  {
    v55 = 257;
    emitDiag(v45, 2, v54, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
      if (__src)
      {
        v55 = 261;
        v54[0] = v5;
        v54[1] = v6;
        mlir::Diagnostic::operator<<(&v61, v54);
        if (__src)
        {
          mlir::Diagnostic::operator<<<4ul>(&v61, " op");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  if (v59 == 1 && v56 != v58)
  {
    free(v56);
  }

  __src = (v26 | v27);
  LOBYTE(v61) = v28;
  if (!v28)
  {
    return 0;
  }

  v37 = *(a2 + 9);
  if (v37)
  {
    v38 = (a2 - 16);
  }

  else
  {
    v38 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
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

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MinimumOp,false>(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    return 0;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = &v63[24 * v64];
      v32 = *v30;
      *(v31 + 2) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = &v63[24 * v64];
      v36 = *v34;
      *(v35 + 2) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if ((v20 & 1) == 0 || (v21 = v19, v53 = v19, v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18), (v23 & 1) == 0))
  {
    v42 = std::__throw_bad_optional_access[abi:nn200100]();
    return replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MulOp,false>(v42, v43);
  }

  v52 = v22;
  __src = v21;
  v61 = v22;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
  if (v59)
  {
    v24 = *v56;
    v52 = *(v56 + 1);
    v53 = v24;
    v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v53, &v52);
    v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
    v27 = (v25 - 16);
    v28 = 1;
  }

  else
  {
    v55 = 257;
    emitDiag(v45, 2, v54, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
      if (__src)
      {
        v55 = 261;
        v54[0] = v5;
        v54[1] = v6;
        mlir::Diagnostic::operator<<(&v61, v54);
        if (__src)
        {
          mlir::Diagnostic::operator<<<4ul>(&v61, " op");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  if (v59 == 1 && v56 != v58)
  {
    free(v56);
  }

  __src = (v26 | v27);
  LOBYTE(v61) = v28;
  if (!v28)
  {
    return 0;
  }

  v37 = *(a2 + 9);
  if (v37)
  {
    v38 = (a2 - 16);
  }

  else
  {
    v38 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
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

BOOL replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MulOp,false>(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    return 0;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = &v63[24 * v64];
      v32 = *v30;
      *(v31 + 2) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = &v63[24 * v64];
      v36 = *v34;
      *(v35 + 2) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if ((v20 & 1) == 0 || (v21 = v19, v53 = v19, v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18), (v23 & 1) == 0))
  {
    v42 = std::__throw_bad_optional_access[abi:nn200100]();
    return replaceGroupNorm(v42, v43);
  }

  v52 = v22;
  __src = v21;
  v61 = v22;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
  if (v59)
  {
    v24 = *v56;
    v52 = *(v56 + 1);
    v53 = v24;
    v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v53, &v52);
    v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
    v27 = (v25 - 16);
    v28 = 1;
  }

  else
  {
    v55 = 257;
    emitDiag(v45, 2, v54, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
      if (__src)
      {
        v55 = 261;
        v54[0] = v5;
        v54[1] = v6;
        mlir::Diagnostic::operator<<(&v61, v54);
        if (__src)
        {
          mlir::Diagnostic::operator<<<4ul>(&v61, " op");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  if (v59 == 1 && v56 != v58)
  {
    free(v56);
  }

  __src = (v26 | v27);
  LOBYTE(v61) = v28;
  if (!v28)
  {
    return 0;
  }

  v37 = *(a2 + 9);
  if (v37)
  {
    v38 = (a2 - 16);
  }

  else
  {
    v38 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
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

BOOL replaceGroupNorm(mlir::OpBuilder *a1, uint64_t a2)
{
  v109 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 8)
  {
    v10 = *(a2 + 24);
    v106 = 257;
    emitDiag(v10, 2, &v103, &ShapeAsValue);
    if (ShapeAsValue)
    {
      v11 = "native_group_norm expects 8 operands";
LABEL_9:
      mlir::Diagnostic::operator<<<37ul>(&v95, v11);
    }

LABEL_10:
    v12 = (v98 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAsValue);
    return v12;
  }

  v4 = *(*(a2 + 72) + 24);
  v93 = v4;
  ShapeAsValue = "native_group_norm requires input to be a shaped type";
  v97 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &ShapeAsValue, &v90);
  if (v92 != 1)
  {
    return 0;
  }

  v5 = v90;
  v6 = v91;
  (*(v91 + 24))(v91, v90);
  v8 = v7;
  if (v7 <= 1)
  {
    v9 = *(a2 + 24);
    v106 = 257;
    emitDiag(v9, 2, &v103, &ShapeAsValue);
    if (ShapeAsValue)
    {
      mlir::Diagnostic::operator<<<50ul>(&v95, "native_group_norm expects input to have rank >= 2");
    }

    goto LABEL_10;
  }

  v13 = *(a2 + 72);
  v14 = v13[15];
  v15 = v13[19];
  v16 = v13[27];
  v88 = v16;
  v89 = v15;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v14[1] & 0xFFFFFFFFFFFFFFF8));
  if (!v17 || ((*(v18 + 24))(v18, v17), v19) || (v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 1) & 0xFFFFFFFFFFFFFFF8))) == 0 || ((*(v22 + 24))(v22, v21), v23) || (v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8))) == 0 || ((*(v25 + 24))(v25, v24), v26))
  {
    v20 = *(a2 + 24);
    v106 = 257;
    emitDiag(v20, 2, &v103, &ShapeAsValue);
    if (ShapeAsValue)
    {
      mlir::Diagnostic::operator<<<95ul>(&v95, "native_group_norm expects numBatches, numGroups, and numChannels operands to be scalar tensors");
    }

    goto LABEL_10;
  }

  v27 = *(*(a2 + 72) + 248);
  LODWORD(ShapeAsValue) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &ShapeAsValue, 1, 0);
  LODWORD(ShapeAsValue) = 0;
  v86 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &ShapeAsValue, 1);
  v103 = 1;
  v28 = mlir::IntegerType::get(*a1, 32, 1);
  ShapeAsValue = mlir::RankedTensorType::get(&v103, 1, v28, 0);
  LODWORD(v107[0]) = 1;
  v99 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v107, 1);
  v85 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value>(a1, *(a1 + 4), &ShapeAsValue, &v89, &v99);
  v29 = (*(v6 + 8))(v6, v5);
  v83[0] = a1;
  v83[1] = &v84;
  v83[2] = &v85;
  v83[3] = &v86;
  v84 = v29;
  v30 = *(*(a2 + 72) + 56);
  v82 = v30;
  if ((*(v30 + 8) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(*(v30 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v31 = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_1::operator()(v83, 1.0);
    if ((v32 & 1) == 0)
    {
      v67 = *(a2 + 24);
      v106 = 257;
      emitDiag(v67, 2, &v103, &ShapeAsValue);
      if (ShapeAsValue)
      {
        mlir::Diagnostic::operator<<<39ul>(&v95, "failed to create default weight tensor");
      }

      goto LABEL_10;
    }

    v30 = v31;
    v82 = v31;
  }

  ShapeAsValue = "weight operand must be a shaped tensor";
  v97 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v30, &ShapeAsValue, &v79);
  if (v81 != 1)
  {
    return 0;
  }

  v78 = *(*(a2 + 72) + 88);
  if ((*(v78 + 8) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(*(v78 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v33 = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_1::operator()(v83, 0.0);
    if (v34)
    {
      v78 = v33;
      goto LABEL_28;
    }

    v68 = *(a2 + 24);
    v106 = 257;
    emitDiag(v68, 2, &v103, &ShapeAsValue);
    if (ShapeAsValue)
    {
      v11 = "failed to create default bias tensor";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_28:
  ShapeAsValue = "bias operand must be a shaped tensor";
  v97 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v30, &ShapeAsValue, &v75);
  if (v77 != 1)
  {
    return 0;
  }

  v35 = mlir::IntegerType::get(*a1, 32, 1);
  ShapeAsValue = mlir::RankedTensorType::get(0, 0, v35, 0);
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &ShapeAsValue, &v89, &v88);
  v74[0] = a1;
  v74[1] = &Tensor;
  v107[0] = (v8 + 1);
  v37 = mlir::IntegerType::get(*a1, 32, 1);
  v99 = mlir::RankedTensorType::get(v107, 1, v37, 0);
  ShapeAsValue = v14;
  v95 = v88;
  v96[0] = v36 - 16;
  v96[1] = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(v74, v4);
  v103 = &ShapeAsValue;
  v104 = 4;
  v73 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(a1, *(a1 + 4), &v99, &Tensor, &v103);
  v103 = v105;
  v104 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v103, (v8 + 1));
  v38 = *(*(v6 + 24))(v6, v5);
  v39 = v103;
  *v103 = v38;
  *(v39 + 8) = vnegq_f64(0);
  if (v8 != 2)
  {
    v40 = 0;
    do
    {
      v41 = *((*(v6 + 24))(v6, v5) + 8 * v40 + 16);
      v39 = v103;
      *(v103 + 8 * v40++ + 24) = v41;
    }

    while ((v8 & 0x7FFFFFFF) - 2 != v40);
  }

  ShapeAsValue = mlir::RankedTensorType::get(v39, v104, v84, 0);
  v42 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(a1, *(a1 + 4), &ShapeAsValue, &v93, &v73) - 16;
  v43 = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(v74, v42);
  v44 = mlir::ODIE::Compiler::replaceLayerNormImpl(a1, v42, v43, v27);
  if (v45)
  {
    v72 = v44;
    ShapeAsValue = getShapeAsValue(a1, v4);
    v46 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::ShapedType &,mlir::Value &,mlir::Value>(a1, *(a1 + 4), &v90, &v72, &ShapeAsValue);
    ShapeAsValue = v96;
    v95 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&ShapeAsValue, (v8 - 2), 1);
    v47 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, ShapeAsValue, v95);
    if (ShapeAsValue != v96)
    {
      free(ShapeAsValue);
    }

    v48 = (v8 - 1);
    v102 = v48;
    v49 = mlir::IntegerType::get(*a1, 32, 1);
    v107[0] = mlir::RankedTensorType::get(&v102, 1, v49, 0);
    v99 = v89;
    v100 = v47;
    ShapeAsValue = &v99;
    v95 = 2;
    v71 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(a1, *(a1 + 4), v107, &Tensor, &ShapeAsValue);
    v99 = v101;
    v100 = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&v99, v48, 1);
    v50 = v99;
    *v99 = 0x8000000000000000;
    v51 = v100;
    v52 = (*(v80 + 8))(v80, v79);
    ShapeAsValue = mlir::RankedTensorType::get(v50, v51, v52, 0);
    v53 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(a1, *(a1 + 4), &ShapeAsValue, &v82, &v71);
    v54 = v100;
    v55 = v99;
    v56 = (*(v76 + 8))(v76, v75);
    ShapeAsValue = mlir::RankedTensorType::get(v55, v54, v56, 0);
    v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(a1, *(a1 + 4), &ShapeAsValue, &v78, &v71);
    v58 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(a1, v46 - 2, v53 - 16, v57 - 16, 1);
    if (v59)
    {
      v60 = *(a1 + 4);
      v107[0] = v58;
      v102 = v5;
      v12 = 1;
      mlir::OperationState::OperationState(&ShapeAsValue, v60, "TorchImport.tuple_construct", 0x1B, v107, 1, &v102 + 2, 1, 0, 0, 0, 0, 0, 0);
      v61 = mlir::Operation::create(&ShapeAsValue);
      mlir::OpBuilder::insert(a1, v61);
      mlir::OperationState::~OperationState(&ShapeAsValue);
      v62 = *(a2 + 36);
      v63 = (a2 - 16);
      if (!v62)
      {
        v63 = 0;
      }

      v107[0] = v63;
      v107[1] = v62;
      v64 = v61[9];
      v65 = v61 - 4;
      if (!v64)
      {
        v65 = 0;
      }

      ShapeAsValue = v65;
      v95 = v64;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v107, &ShapeAsValue);
      mlir::Operation::erase(a2);
    }

    else
    {
      v70 = *(a2 + 24);
      v108 = 257;
      emitDiag(v70, 2, v107, &ShapeAsValue);
      if (ShapeAsValue)
      {
        mlir::Diagnostic::operator<<<123ul>(&v95, "unable to decompose TorchImport.native_group_norm into sub-graph of CoreML HLO ops for weight & bias for normalized tensor");
      }

      v12 = (v98 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAsValue);
    }

    if (v99 != v101)
    {
      free(v99);
    }
  }

  else
  {
    v69 = *(a2 + 24);
    v101[8] = 257;
    emitDiag(v69, 2, &v99, &ShapeAsValue);
    if (ShapeAsValue)
    {
      mlir::Diagnostic::operator<<<111ul>(&v95, "unable to decompose TorchImport.native_group_norm into sub-graph of CoreML HLO ops for computing normalization");
    }

    v12 = (v98 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAsValue);
  }

  if (v103 != v105)
  {
    free(v103);
  }

  return v12;
}

BOOL replaceLayerNorm(mlir::OpBuilder *a1, uint64_t *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 5)
  {
    v8 = a2[3];
    v44 = 257;
    emitDiag(v8, 2, v43, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<38ul>(v47, "native_layer_norm requires 5 operands");
    }

    goto LABEL_11;
  }

  v4 = *(a2[9] + 24);
  v46 = "native_layer_norm requires input to be a shaped type";
  v48 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v46, &v40);
  if (v42 != 1)
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

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v7, a1);
  if ((v12 & 1) == 0)
  {
    v35 = a2[3];
    v44 = 257;
    emitDiag(v35, 2, v43, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<50ul>(v47, "unable to get normalized shape as a tuple of ints");
    }

    goto LABEL_11;
  }

  v13 = TupleAs1DIntTensor;
  SingleElementConstantWithDtype = *(a2[9] + 88);
  v15 = v40;
  v16 = (*(v41 + 8))(v41, v40);
  v17 = *(SingleElementConstantWithDtype + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v17)
  {
    v18 = *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    SingleElementConstantWithDtype = mlir::ODIE::Compiler::getSingleElementConstantWithDtype(a1, v16, 1.0);
  }

  v19 = a2[9];
  v20 = *(v19 + 120);
  v21 = *(v20 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v21)
  {
    v22 = *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v20 = mlir::ODIE::Compiler::getSingleElementConstantWithDtype(a1, v16, 0.0);
    v19 = a2[9];
  }

  v23 = mlir::ODIE::Compiler::replaceLayerNormImpl(a1, v4, v13, *(v19 + 152));
  if ((v24 & 1) == 0)
  {
    v36 = a2[3];
    v44 = 257;
    emitDiag(v36, 2, v43, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<111ul>(v47, "unable to decompose TorchImport.native_layer_norm into sub-graph of CoreML HLO ops for computing normalization");
    }

    goto LABEL_11;
  }

  v38 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(a1, v23, SingleElementConstantWithDtype, v20, 0);
  v39 = v25;
  if ((v25 & 1) == 0)
  {
    v37 = a2[3];
    v44 = 257;
    emitDiag(v37, 2, v43, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<123ul>(v47, "unable to decompose TorchImport.native_layer_norm into sub-graph of CoreML HLO ops for weight & bias for normalized tensor");
    }

LABEL_11:
    v9 = (v49 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    return v9;
  }

  v26 = *(a1 + 4);
  v45 = v15;
  mlir::OperationName::OperationName(v43, "TorchImport.tuple_construct", 0x1B, *(**v26 + 32));
  mlir::OperationState::OperationState(&v46, v26, v43[0], &v38, 1, &v45 + 2, 1, v27, 0, 0, 0, 0, 0, 0);
  v28 = mlir::Operation::create(&v46);
  mlir::OpBuilder::insert(a1, v28);
  mlir::OperationState::~OperationState(&v46);
  v29 = *(a2 + 9);
  v30 = a2 - 2;
  if (!v29)
  {
    v30 = 0;
  }

  v43[0] = v30;
  v43[1] = v29;
  v31 = v28[9];
  v32 = (v28 - 4);
  if (!v31)
  {
    v32 = 0;
  }

  v46 = v32;
  v47[0] = v31;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v43, &v46);
  if (a2[2])
  {
    a2[2] = 0;
    v34 = *a2;
    v33 = a2[1];
    *v33 = *a2;
    *(v34 + 8) = v33;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceBinaryComparisonOp<mlir::ODIE::Compiler::CoreML::NotEqualOp>(const char **a1, mlir::Operation *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = *(a2 + 6);
  v4 = mlir::OperationName::stripDialect(&v24);
  v23[0] = v4;
  v23[1] = v5;
  v6 = *(a2 + 3);
  v22 = v6;
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2 && *(a2 + 9) == 1)
  {
    v7 = *(a2 + 9);
    v8 = *(v7 + 24);
    v9 = *(v7 + 56);
    v10 = *(a2 - 1);
    v28 = 1283;
    v24 = "expected ranked output from ";
    v26 = v4;
    v27 = v5;
    mlir::ODIE::Compiler::getShapedRankedType((v10 & 0xFFFFFFFFFFFFFFF8), v6, &v24, v18);
    if (v19 == 1 && (v24 = getBinaryComparisonOps<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, v23, &v22, v8, v9, v18), v25 = v11, (v11 & 1) != 0))
    {
      v12 = *(a2 + 9);
      if (v12)
      {
        v13 = (a2 - 16);
      }

      else
      {
        v13 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v13, v12, &v24, 1);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v15 = *a2;
        v14 = *(a2 + 1);
        *v14 = *a2;
        *(v15 + 8) = v14;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v21 = 1283;
    v18[0] = "expects 2 inputs and 1 output for ";
    v19 = v4;
    v20 = v5;
    emitDiag(v6, 2, v18, &v24);
    v16 = (v29 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  }

  return v16;
}

BOOL replaceNeg(mlir::OpBuilder *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  __src = "expected ranked tensor input to unary op";
  v32 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &__src, v26);
  if (v27 != 1)
  {
    return 0;
  }

  v5 = a2[3];
  LODWORD(__src) = -1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  v7 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*(v9 + 8))(v9, v8);
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  v13 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v12);
  if (v14)
  {
    __src = v4;
    v31 = v13;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v26);
    if (v29)
    {
      if (*(a2 + 9))
      {
        v15 = a2 - 2;
      }

      else
      {
        v15 = 0;
      }

      __src = (v15[1] & 0xFFFFFFFFFFFFFFF8);
      v16 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, v26[0], v26[0] + 1);
      v17 = *(a2 + 9);
      if (v17)
      {
        v18 = a2 - 2;
      }

      else
      {
        v18 = 0;
      }

      v24[0] = v18;
      v24[1] = v17;
      v19 = *(v16 + 9);
      v20 = (v16 - 16);
      if (!v19)
      {
        v20 = 0;
      }

      __src = v20;
      v31 = v19;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v24, &__src);
      if (a2[2])
      {
        a2[2] = 0;
        v22 = *a2;
        v21 = a2[1];
        *v21 = *a2;
        *(v22 + 8) = v21;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v11 = 1;
    }

    else
    {
      v24[0] = "Unable to broadcast -1 and input tensor to common shape.";
      v25 = 259;
      emitDiag(v5, 2, v24, &__src);
      v11 = (v33 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v29 == 1 && v26[0] != &v27)
    {
      free(v26[0]);
    }
  }

  else
  {
    v26[0] = "can't cast value to correct element type for neg op.";
    v28 = 259;
    emitDiag(v5, 2, v26, &__src);
    v11 = (v33 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v11;
}

BOOL replaceNonZero(mlir::OpBuilder *a1, uint64_t *a2)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v33 = "expected ranked tensor input to nonzero op";
  v37 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v33, v27);
  if (v28 != 1)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  v6 = *(a2 + 9) ? a2 - 2 : 0;
  v7 = v6[1];
  v33 = "expect ranked shaped type for output of nonzero op";
  v37 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v7 & 0xFFFFFFFFFFFFFFF8), v5, &v33, &v30);
  if (v32 != 1)
  {
    return 0;
  }

  v8 = v30;
  v9 = v31;
  (*(v31 + 24))(v31, v30);
  if (v10 == 2)
  {
    v11 = (*(v9 + 8))(v9, v8);
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v11[2] != 1073741856)
    {
      v12 = mlir::IntegerType::get(*a1, 32, 1);
      v13 = *v9;
      LOBYTE(v33) = 0;
      LOBYTE(v35) = 0;
      v8 = v13(v9, v8, &v33, v12);
    }

    v14 = *(a1 + 4);
    v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NonZeroOp>(a1, *(**v14 + 32));
    v33 = v14;
    v34 = v15;
    v35 = &v37;
    v36 = 0x400000000;
    v38 = v40;
    v39 = 0x400000000;
    v40[4] = v41;
    v40[5] = 0x400000000;
    v41[8] = 4;
    v42 = v44;
    v43 = 0x100000000;
    v44[1] = v45;
    v44[2] = 0x100000000;
    v45[1] = 0;
    v45[2] = 0;
    v45[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v45[4] = 0;
    v45[6] = 0;
    mlir::ODIE::Compiler::CoreML::NonZeroOp::build(a1, &v33, v8, v4);
    v16 = mlir::Operation::create(&v33);
    mlir::OpBuilder::insert(a1, v16);
    v17 = *(*(v16 + 6) + 16);
    mlir::OperationState::~OperationState(&v33);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a2 + 9);
    if (v19)
    {
      v20 = a2 - 2;
    }

    else
    {
      v20 = 0;
    }

    v27[0] = v20;
    v27[1] = v19;
    v21 = *(v18 + 9);
    v22 = (v18 - 16);
    if (!v21)
    {
      v22 = 0;
    }

    v33 = v22;
    v34 = v21;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v27, &v33);
    if (a2[2])
    {
      a2[2] = 0;
      v24 = *a2;
      v23 = a2[1];
      *v23 = *a2;
      *(v24 + 8) = v23;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v27[0] = "output of nonzero must be of rank 2";
    v29 = 259;
    emitDiag(v5, 2, v27, &v33);
    v25 = (v42 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  return v25;
}

uint64_t replacePermute(uint64_t **a1, uint64_t *a2)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v27 = "expected ranked tensor input to permute";
  v31 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v27, v25);
  if (v26 != 1)
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
    v7 = v6 == 6 ? v5 + 24 * *(v5 + 16) + 120 : v5 + 16 * v6 + 16;
  }

  else
  {
    v7 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v7, a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = TupleAs1DIntTensor;
  if (*(a2 + 9))
  {
    v11 = a2 - 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11[1];
  v13 = a1[4];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a1, *(**v13 + 32));
  v27 = v13;
  v28 = v14;
  v29 = &v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v34[4] = v35;
  v34[5] = 0x400000000;
  v35[8] = 4;
  v35[9] = v36;
  v35[10] = 0x100000000;
  v36[1] = v37;
  v36[2] = 0x100000000;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v37[4] = 0;
  v37[6] = 0;
  mlir::ODIE::Compiler::CoreML::TransposeOp::build(a1, &v27, v12 & 0xFFFFFFFFFFFFFFF8, v4, v10);
  v15 = mlir::Operation::create(&v27);
  mlir::OpBuilder::insert(a1, v15);
  v16 = *(*(v15 + 6) + 16);
  mlir::OperationState::~OperationState(&v27);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 9);
  if (v18)
  {
    v19 = a2 - 2;
  }

  else
  {
    v19 = 0;
  }

  v25[0] = v19;
  v25[1] = v18;
  v20 = *(v17 + 9);
  v21 = (v17 - 16);
  if (!v20)
  {
    v21 = 0;
  }

  v27 = v21;
  v28 = v20;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v25, &v27);
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
  return 1;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::PowOp,false>(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v18 = *(*(*(a2 + 6) + 8) + 16);
  v17 = *(a2 + 3);
  v3 = *(a2 + 9);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v16[0] = 0;
  v16[8] = 0;
  getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(a1, &v18, &v17, v4, v5, v16);
  v7 = v6;
  result = 0;
  v14 = v7;
  v15 = v9;
  if (v9)
  {
    v10 = *(a2 + 9);
    if (v10)
    {
      v11 = (a2 - 16);
    }

    else
    {
      v11 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v11, v10, &v14, 1);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v13 = *a2;
      v12 = *(a2 + 1);
      *v12 = *a2;
      *(v13 + 8) = v12;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  return result;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::ReLUOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReLUOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.relu";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::ReLUOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReLUOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL replaceRemainder(mlir::OpBuilder *a1, mlir::Operation *this)
{
  v93 = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 2)
  {
    v4 = *(this + 9);
    v5 = *(v4 + 24);
    v6 = *(v4 + 56);
    __src = "expect shaped ranked tensor for input to TorchImport.remainder";
    LOWORD(v74[0]) = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &__src, &v64);
    __src = "expect shaped ranked tensor for input to TorchImport.remainder";
    LOWORD(v74[0]) = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v6, &__src, v62);
    v7 = 0;
    if (v65 == 1 && (v63 & 1) != 0)
    {
      if (*(this + 9))
      {
        v8 = this - 16;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v8 + 1);
      v10 = *(this + 3);
      __src = "expect shaped ranked tensor for output of TorchImport.remainder";
      LOWORD(v74[0]) = 259;
      mlir::ODIE::Compiler::getShapedRankedType((v9 & 0xFFFFFFFFFFFFFFF8), v10, &__src, &v60);
      v11 = v64;
      PromotedType = getPromotedType(v64, v62[0]);
      v58 = PromotedType;
      v59 = v13;
      if (v13)
      {
        v14 = PromotedType;
        v15 = *PromotedType;
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        v18 = (*(v17 + 8))(v17, v14);
        v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v18);
        v21 = v20;
        v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v6, v18);
        if (v21 & 1) != 0 && (v23)
        {
          v24 = v22;
          __src = v19;
          v71 = v22;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v66);
          if (v69)
          {
            v26 = *v66[0];
            v25 = *(v66[0] + 1);
            v54 = v25;
            v27 = *(*v66[0] + 8);
            v28 = *(a1 + 4);
            v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1, *(**v28 + 32));
            __src = v28;
            v71 = v29;
            v72 = v74;
            v73 = 0x400000000;
            v75 = v77;
            v76 = 0x400000000;
            v78 = v80;
            v79 = 0x400000000;
            v81 = 4;
            v82 = &v84;
            v83 = 0x100000000;
            v85 = &v87;
            v86 = 0x100000000;
            v88 = 0;
            v89 = 0;
            v90 = &mlir::detail::TypeIDResolver<void,void>::id;
            v91 = 0;
            v92 = 0;
            mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(a1, &__src, v27 & 0xFFFFFFFFFFFFFFF8, v26, v25);
            v30 = mlir::Operation::create(&__src);
            mlir::OpBuilder::insert(a1, v30);
            v31 = *(*(v30 + 6) + 16);
            mlir::OperationState::~OperationState(&__src);
            if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            v33 = *(v26 + 8);
            v34 = *(a1 + 4);
            v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**v34 + 32));
            __src = v34;
            v71 = v35;
            v72 = v74;
            v73 = 0x400000000;
            v75 = v77;
            v76 = 0x400000000;
            v78 = v80;
            v79 = 0x400000000;
            v81 = 4;
            v82 = &v84;
            v83 = 0x100000000;
            v85 = &v87;
            v86 = 0x100000000;
            v88 = 0;
            v89 = 0;
            v90 = &mlir::detail::TypeIDResolver<void,void>::id;
            v91 = 0;
            v92 = 0;
            mlir::ODIE::Compiler::CoreML::MulOp::build(a1, &__src, v33 & 0xFFFFFFFFFFFFFFF8, (v32 - 16), v54);
            v36 = mlir::Operation::create(&__src);
            mlir::OpBuilder::insert(a1, v36);
            v37 = *(*(v36 + 6) + 16);
            mlir::OperationState::~OperationState(&__src);
            if (v37 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
            {
              v36 = 0;
            }

            v38 = *(v26 + 8);
            v39 = *(a1 + 4);
            v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**v39 + 32));
            __src = v39;
            v71 = v40;
            v72 = v74;
            v73 = 0x400000000;
            v75 = v77;
            v76 = 0x400000000;
            v78 = v80;
            v79 = 0x400000000;
            v81 = 4;
            v82 = &v84;
            v83 = 0x100000000;
            v85 = &v87;
            v86 = 0x100000000;
            v88 = 0;
            v89 = 0;
            v90 = &mlir::detail::TypeIDResolver<void,void>::id;
            v91 = 0;
            v92 = 0;
            mlir::ODIE::Compiler::CoreML::SubOp::build(a1, &__src, v38 & 0xFFFFFFFFFFFFFFF8, v26, (v36 - 16));
            v41 = mlir::Operation::create(&__src);
            mlir::OpBuilder::insert(a1, v41);
            v42 = *(*(v41 + 6) + 16);
            v43 = (v41 - 16);
            mlir::OperationState::~OperationState(&__src);
            if (v42 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
            {
              v43 = -16;
            }

            v44 = (*(v61 + 8))(v61, v60);
            v45 = mlir::ODIE::Compiler::castValueToElementType(a1, v43, v44);
            if (v46)
            {
              __src = v45;
              v47 = *(this + 9);
              if (v47)
              {
                v48 = (this - 16);
              }

              else
              {
                v48 = 0;
              }

              v49 = 1;
              mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v48, v47, &__src, 1);
              mlir::Operation::erase(this);
              goto LABEL_53;
            }

            v57 = 257;
            mlir::Operation::emitError(&__src, this, &v55);
            if (__src)
            {
              mlir::Diagnostic::operator<<<17ul>(&v71, " unable to cast ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v71, v43);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<27ul>(&v71, " to same dtype as result: ");
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v71, &v60);
                  }
                }
              }
            }
          }

          else
          {
            v57 = 257;
            mlir::Operation::emitError(&__src, this, &v55);
            if (__src)
            {
              mlir::Diagnostic::operator<<<38ul>(&v71, "unable to broadcast to common shape: ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v71, v19);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<6ul>(&v71, " and ");
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<(&v71, v24);
                  }
                }
              }
            }
          }

          v49 = v82 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_53:
          if (v69 == 1 && v66[0] != &v67)
          {
            free(v66[0]);
          }

          return v49 & 1;
        }

        v68 = 257;
        mlir::Operation::emitError(&__src, this, v66);
        if (__src)
        {
          mlir::Diagnostic::operator<<<48ul>(&v71, "unable to cast inputs of TorchImport.remainder ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(&v71, v5);
            if (__src)
            {
              mlir::Diagnostic::operator<<<6ul>(&v71, " and ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v71, v6);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<19ul>(&v71, " to promoted type ");
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<<mlir::Type &>(&v71, &v58);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v68 = 257;
        mlir::Operation::emitError(&__src, this, v66);
        if (__src)
        {
          mlir::Diagnostic::operator<<<38ul>(&v71, "unable to find promoted type between ");
          if (__src)
          {
            v55 = 4;
            v56 = v11;
            v50 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v73, &v55, 1);
            v51 = v73 + 24 * v74[0];
            v52 = *v50;
            *(v51 + 16) = *(v50 + 16);
            *v51 = v52;
            ++v74[0];
            if (__src)
            {
              mlir::Diagnostic::operator<<<6ul>(&v71, " and ");
              if (__src)
              {
                mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v71, v62);
              }
            }
          }
        }
      }

      v49 = v82 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      return v49 & 1;
    }
  }

  else
  {
    v68 = 257;
    mlir::Operation::emitError(&__src, this, v66);
    if (__src)
    {
      mlir::Diagnostic::operator<<<44ul>(&v71, "expect 2 operands for TorchImport.remainder");
    }

    v7 = (v82 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v7;
}

uint64_t replaceTile(mlir::OpBuilder *a1, uint64_t *a2)
{
  v64[8] = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v3 = a2[9];
  v47 = *(v3 + 24);
  v4 = (*(v47 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = *(v3 + 56);
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
    if ((v13 & 1) == 0)
    {
      v5 = 0;
      return v5 & 1;
    }

    v14 = TupleAs1DIntTensor;
    v15 = (*(TupleAs1DIntTensor + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v15[2];
      if (v16)
      {
        v17 = 0;
        v18 = v15[1];
        while (v18[v17] != 0x8000000000000000)
        {
          if (v16 == ++v17)
          {
            if (v16 != 1)
            {
              break;
            }

            v19 = v15[3];
            if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v19[2] & 0x3FFFFFFF) != 0x20)
            {
              break;
            }

            v20 = v4[2];
            v21 = *v18;
            if (v20 < v21)
            {
              v22 = llvm::CastInfo<mlir::ShapedType,mlir::RankedTensorType,void>::doCast(v4);
              v24 = (*(v23 + 24))(v23, v22);
              v55 = v57;
              v56 = 0x600000000;
              llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v55, v24, &v24[8 * v25]);
              if (*v15[1] > v4[2])
              {
                v26 = 0;
                do
                {
                  v51 = 1;
                  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v55, v55, &v51);
                  ++v26;
                }

                while (*v15[1] - v4[2] > v26);
              }

              v51 = v53;
              v52 = 0xC00000000;
              llvm::SmallVectorImpl<int>::append<long long *,void>(&v51, v55, v55 + 8 * v56);
              v49[0] = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v51, v52, 0);
              __src[0] = mlir::RankedTensorType::get(v55, v56, v4[3], 0);
              v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v2, __src, &v47, v49) - 16;
              if (v51 != v53)
              {
                free(v51);
              }

              if (v55 != v57)
              {
                free(v55);
              }

              v20 = v4[2];
              v21 = *v15[1];
            }

            if (v20 > v21)
            {
              v55 = v57;
              v56 = 0xC00000000;
              llvm::SmallVectorImpl<int>::assign(&v55, v20 - v21, 1);
              Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v55, v56, 0);
              v28 = v4[2];
              v51 = v53;
              v52 = 0x600000000;
              llvm::SmallVectorImpl<long long>::assign(&v51, 1uLL, v28);
              LODWORD(v49[0]) = 0;
              v46 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v49, 1, 0);
              __src[0] = Tensor;
              __src[1] = v14;
              v49[0] = v50;
              v49[1] = 0x600000000;
              llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v49, __src, v49);
              __src[0] = mlir::RankedTensorType::get(v51, v52, v15[3], 0);
              v29 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, v2, __src, &v46, v49);
              v30 = *(v29 + 9);
              if (v49[0] != v50)
              {
                free(v49[0]);
              }

              if (v51 != v53)
              {
                free(v51);
              }

              v31 = v29 - 16;
              if (v55 != v57)
              {
                free(v55);
              }

              if (v30)
              {
                v14 = v31;
              }

              else
              {
                v14 = 0;
              }
            }

            if (*(a2 + 9))
            {
              v32 = a2 - 2;
            }

            else
            {
              v32 = 0;
            }

            v33 = v32[1];
            v34 = *(a1 + 4);
            v35 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TileOp,void>::id, *(**v34 + 32));
            if ((v36 & 1) == 0)
            {
              v54 = 1283;
              v53[0] = "coreml.tile";
              v53[1] = 11;
              v50[8] = 259;
              llvm::operator+(&v51, v49, &v55);
              llvm::report_fatal_error(&v55, 1);
            }

            v55 = v34;
            v56 = v35;
            v57[0] = v58;
            v57[1] = 0x400000000;
            v58[4] = v59;
            v58[5] = 0x400000000;
            v59[4] = v60;
            v59[5] = 0x400000000;
            v60[8] = 4;
            v61 = v63;
            v62 = 0x100000000;
            v63[1] = v64;
            v63[2] = 0x100000000;
            v64[1] = 0;
            v64[2] = 0;
            v64[3] = &mlir::detail::TypeIDResolver<void,void>::id;
            v64[4] = 0;
            v64[6] = 0;
            mlir::ODIE::Compiler::CoreML::TileOp::build(a1, &v55, v33 & 0xFFFFFFFFFFFFFFF8, v47, v14);
            v37 = mlir::Operation::create(&v55);
            mlir::OpBuilder::insert(a1, v37);
            v38 = *(*(v37 + 6) + 16);
            mlir::OperationState::~OperationState(&v55);
            if (v38 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TileOp,void>::id)
            {
              v39 = v37;
            }

            else
            {
              v39 = 0;
            }

            v40 = *(a2 + 9);
            if (v40)
            {
              v41 = a2 - 2;
            }

            else
            {
              v41 = 0;
            }

            v51 = v41;
            v52 = v40;
            v42 = *(v39 + 9);
            v43 = v39 - 16;
            if (!v42)
            {
              v43 = 0;
            }

            v55 = v43;
            v56 = v42;
            mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v51, &v55);
            if (a2[2])
            {
              a2[2] = 0;
              v45 = *a2;
              v44 = a2[1];
              *v44 = *a2;
              *(v45 + 8) = v44;
              *a2 = 0;
              a2[1] = 0;
            }

            mlir::Operation::destroy(a2);
            v5 = 1;
            return v5 & 1;
          }
        }
      }

      v54 = 257;
      emitDiag(v2, 2, &v51, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<52ul>(&v56, "expected dims to be a static 1D tensor of type I32.");
      }
    }

    else
    {
      v54 = 257;
      emitDiag(v2, 2, &v51, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<50ul>(&v56, "expected ranked tensor type for dims supplied to ");
        if (v55)
        {
          mlir::Diagnostic::operator<<(&v56, a2[6]);
        }
      }
    }
  }

  else
  {
    v51 = "tile op expects ranked tensor.";
    v54 = 259;
    emitDiag(v2, 2, &v51, &v55);
  }

  v5 = v61 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
  return v5 & 1;
}

uint64_t replaceRound(mlir::OpBuilder *a1, uint64_t *a2)
{
  v63[8] = *MEMORY[0x277D85DE8];
  v3 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 17)) == 0 || *(a2 + 9) >= 3u)
  {
    v53 = 257;
    emitDiag(v3, 2, v51, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(v56, "expects 1-2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v56, a2[6]);
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v56, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 17);
    }

    else
    {
      v5 = 0;
    }

    LODWORD(v51[0]) = v5;
    v6 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, v51) + 200);
    goto LABEL_11;
  }

  v10 = *(a2[9] + 24);
  v48 = v10;
  v11 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = *v11;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    v15 = *(a2 + 11);
    v46 = v11;
    v47 = v14;
    v44 = 0;
    if ((v15 & 0x800000) == 0)
    {
LABEL_40:
      v31 = *(a1 + 4);
      v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RoundOp,void>::id, *(**v31 + 32));
      if ((v33 & 1) == 0)
      {
        v53 = 1283;
        v52[0] = "coreml.round";
        v52[1] = 12;
        v50 = 259;
        llvm::operator+(v51, v49, &__src);
        llvm::report_fatal_error(&__src, 1);
      }

      __src = v31;
      v56[0] = v32;
      v56[1] = v57;
      v56[2] = 0x400000000;
      v57[4] = v58;
      v57[5] = 0x400000000;
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
      mlir::ODIE::Compiler::CoreML::RoundOp::build(a1, &__src, v46, v48);
      v34 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v34);
      v35 = *(*(v34 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RoundOp,void>::id)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0;
      }

      v45 = v36 - 16;
      if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2)
      {
        v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v46, &v45, &v44) - 16;
      }

      v37 = *(a2 + 9);
      if (v37)
      {
        v38 = (a2 - 2);
      }

      else
      {
        v38 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &v45, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v40 = *a2;
        v39 = a2[1];
        *v39 = *a2;
        *(v40 + 8) = v39;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    v16 = v14;
    v4 = *(a2 + 17);
  }

  else
  {
    v16 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
  }

  if (v4 != 2)
  {
    goto LABEL_40;
  }

  v17 = *(a2[9] + 56);
  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v18)
  {
    v53 = 257;
    emitDiag(v3, 2, v51, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<58ul>(v56, "unable to convert decimals arg of round op to Shaped type");
    }

    goto LABEL_25;
  }

  (*(v19 + 24))(v19, v18);
  if (v20)
  {
    v53 = 257;
    emitDiag(v3, 2, v51, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<56ul>(v56, "expected decimals arg of round op to be a rank-0 tensor");
    }

LABEL_25:
    v6 = v60;
LABEL_11:
    v7 = (v6 & 1) == 0;
LABEL_12:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v7;
  }

  LODWORD(__src) = 1092616192;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &__src, 1);
  v22 = (*(v16 + 8))(v16, v11);
  v23 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v22);
  if ((v24 & 1) == 0)
  {
    v28 = a2[3];
    v51[0] = "failed to cast dtype in decimals calculation to same dtype as input for round op";
    v53 = 259;
    emitDiag(v28, 2, v51, &__src);
    v7 = (v60 & 1) == 0;
    goto LABEL_12;
  }

  v7 = v23;
  v43 = v23;
  v25 = (*(v16 + 8))(v16, v11);
  v41 = mlir::ODIE::Compiler::castValueToElementType(a1, v17, v25);
  v42 = v26;
  if ((v26 & 1) == 0)
  {
    v29 = a2[3];
    v53 = 257;
    emitDiag(v29, 2, v51, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<60ul>(v56, "failed to cast decimals to same dtype as input for round op");
    }

    goto LABEL_25;
  }

  __src = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v43, &v41) - 16;
  __src = v10;
  v56[0] = v44;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v51);
  v27 = v54;
  if (v54)
  {
    v44 = *(v51[0] + 1);
    v48 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v46, &v48, &v44) - 16;
  }

  else
  {
    v30 = a2[3];
    v50 = 257;
    emitDiag(v30, 2, v49, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<61ul>(v56, "failed to broadcast decimalsFactor to inputType for round op");
    }

    v7 = (v60 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v54 == 1 && v51[0] != v52)
  {
    free(v51[0]);
  }

  if (v27)
  {
    goto LABEL_40;
  }

  return v7;
}

BOOL replaceRsqrt(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 3);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1 && *(a2 + 9) == 1)
  {
    v5 = *(a2 - 1);
    v6 = *(*(a2 + 6) + 8);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v34 = 1283;
    v30 = "expected ranked tensor result type for ";
    v32 = v8;
    v33 = v7;
    mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v3, &v30, &v24);
    if (v25 == 1)
    {
      v9 = *(*(a2 + 9) + 24);
      v10 = *(a1 + 4);
      v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RsqrtOp,void>::id, *(**v10 + 32));
      if ((v12 & 1) == 0)
      {
        v29 = 1283;
        v28[2] = "coreml.rsqrt";
        v28[3] = 12;
        v27 = 259;
        llvm::operator+(v28, &v26, &v30);
        llvm::report_fatal_error(&v30, 1);
      }

      v30 = v10;
      v31 = v11;
      v32 = &v34;
      v33 = 0x400000000;
      v35 = v37;
      v36 = 0x400000000;
      v37[4] = v38;
      v37[5] = 0x400000000;
      v38[8] = 4;
      v39 = v41;
      v40 = 0x100000000;
      v41[1] = v42;
      v41[2] = 0x100000000;
      v42[1] = 0;
      v42[2] = 0;
      v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v42[4] = 0;
      v42[6] = 0;
      mlir::ODIE::Compiler::CoreML::RsqrtOp::build(a1, &v30, v24, v9);
      v13 = mlir::Operation::create(&v30);
      mlir::OpBuilder::insert(a1, v13);
      v14 = *(*(v13 + 6) + 16);
      mlir::OperationState::~OperationState(&v30);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RsqrtOp,void>::id)
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
        v17 = (a2 - 16);
      }

      else
      {
        v17 = 0;
      }

      v28[0] = v17;
      v28[1] = v16;
      v18 = *(v15 + 9);
      v19 = (v15 - 16);
      if (!v18)
      {
        v19 = 0;
      }

      v30 = v19;
      v31 = v18;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v28, &v30);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v21 = *a2;
        v20 = *(a2 + 1);
        *v20 = *a2;
        *(v21 + 8) = v20;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = 257;
    emitDiag(v3, 2, v28, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<34ul>(&v31, "expects 1 input and 1 output for ");
      if (v30)
      {
        mlir::Diagnostic::operator<<(&v31, *(a2 + 6));
      }
    }

    v22 = (v39 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

  return v22;
}

BOOL replaceScalarTensor(mlir::OpBuilder *a1, uint64_t *a2)
{
  v73[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 9) != 1 || (*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v4 = a2[3];
    v5 = "expects 1 input and 1 output for scalar tensor";
    goto LABEL_7;
  }

  v3 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = a2[3];
    v5 = "output type must be a ranked tensor type";
LABEL_7:
    __src = v5;
    v60 = 259;
    emitDiag(v4, 2, &__src, &v63);
    v6 = (v70 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
    return v6;
  }

  v9 = *(a2[9] + 24);
  v10 = (a2 - 2);
  v11 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v57 = 1;
    v56 = 0;
    llvm::APFloat::APFloat(&v61, 0.0);
    v13 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    v63 = 0uLL;
    __src = v13;
    v53 = 0;
    v55 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v13 + 32), &v63, &__src, &v53);
    *&v63 = &v56;
    v14 = *(v9 + 8) & 7;
    if (v14 == 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v9;
    }

    if (!v15)
    {
      goto LABEL_35;
    }

    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16);
      v18 = (v17 + 120);
      if (v17 == -120)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v18 = (v15 + 16 * v16 + 16);
    }

    if (mlir::detail::constant_int_value_binder::match(&v63, v18))
    {
      v24 = mlir::TensorType::operator mlir::ShapedType(&v55);
      v53 = mlir::DenseElementsAttr::get(v24, v25, &v56, 1);
      v26 = *(a1 + 4);
      v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**v26 + 32));
      *&v63 = v26;
      *(&v63 + 1) = v27;
      v64 = &v66;
      v65 = 0x400000000;
      v67[0] = v68;
      v67[1] = 0x400000000;
      v68[4] = v69;
      v68[5] = 0x400000000;
      v69[8] = 4;
      v70 = v72;
      v71 = 0x100000000;
      v72[1] = v73;
      v72[2] = 0x100000000;
      v73[1] = 0;
      v73[2] = 0;
      v73[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v73[4] = 0;
      v73[6] = 0;
      v28 = v55;
      v30 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
      if (v30)
      {
        v31 = *(v29 + 24);
      }

      else
      {
        v31 = 0;
      }

      __src = v28;
      v46 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v63);
      *v46 = v30;
      v46[1] = v31;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v67, &__src, v59);
      v43 = mlir::Operation::create(&v63);
      mlir::OpBuilder::insert(a1, v43);
      if (*(*(v43 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
      {
        v43 = 0;
      }

      mlir::OperationState::~OperationState(&v63);
      goto LABEL_58;
    }

    v14 = *(v9 + 8) & 7;
LABEL_35:
    v53 = &v61;
    if (v14 == 7)
    {
      v32 = 0;
    }

    else
    {
      v32 = v9;
    }

    if (!v32)
    {
      goto LABEL_52;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16);
      v35 = v34 + 120;
      if (v34 == -120)
      {
LABEL_52:
        v44 = a2[3];
        v45 = "expects constant int/float scalar for scalar tensor";
LABEL_53:
        __src = v45;
        v60 = 259;
        emitDiag(v44, 2, &__src, &v63);
        v6 = (v70 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
LABEL_68:
        llvm::APFloat::Storage::~Storage(&v61);
        if (v57 >= 0x41 && v56)
        {
          MEMORY[0x25F891010](v56, 0x1000C8000313F17);
        }

        return v6;
      }
    }

    else
    {
      v35 = v32 + 16 * v33 + 16;
    }

    *&v63 = 0;
    __src = &v63;
    if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&__src, v35))
    {
      goto LABEL_52;
    }

    v36 = *(v35 - 8) & 0xFFFFFFFFFFFFFFF8;
    v37 = *v36;
    v38 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v37 + 8, v38))
    {
      v39 = *(*v36 + 136);
      if (v39 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v39 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_52;
      }
    }

    if (!mlir::detail::constant_float_value_binder::match(&v53, v63))
    {
      goto LABEL_52;
    }

    v41 = mlir::TensorType::operator mlir::ShapedType(&v55);
    *&v63 = mlir::DenseElementsAttr::get(v41, v42, &v61, 1);
    v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::RankedTensorType &,mlir::DenseFPElementsAttr>(a1, *(a1 + 4), &v55, &v63);
LABEL_58:
    v47 = v3[3];
    if (v47 == *((*(v43 - 1) & 0xFFFFFFFFFFFFFFF8) + 24))
    {
      v53 = (v43 - 16);
      v54 = 1;
    }

    else
    {
      v53 = mlir::ODIE::Compiler::castValueToElementType(a1, v43 - 16, v47);
      v54 = v48;
      if ((v48 & 1) == 0)
      {
        v44 = a2[3];
        v45 = "unable to cast constant op to output's element type";
        goto LABEL_53;
      }
    }

    v49 = *(a2 + 9);
    if (v49)
    {
      v50 = (a2 - 2);
    }

    else
    {
      v50 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v50, v49, &v53, 1);
    if (a2[2])
    {
      a2[2] = 0;
      v52 = *a2;
      v51 = a2[1];
      *v51 = *a2;
      *(v52 + 8) = v51;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v6 = 1;
    goto LABEL_68;
  }

  v19 = v3[3];
  if (v19 == v11[3])
  {
    v61 = *(a2[9] + 24);
    v21 = 1;
    v62 = 1;
  }

  else
  {
    v61 = mlir::ODIE::Compiler::castValueToElementType(a1, *(a2[9] + 24), v19);
    v62 = v20;
    if ((v20 & 1) == 0)
    {
      v4 = a2[3];
      v5 = "unable to cast input to output's element type";
      goto LABEL_7;
    }

    v21 = *(a2 + 9);
    if (!v21)
    {
      v10 = 0;
    }
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v10, v21, &v61, 1);
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
  return 1;
}

BOOL replaceSelect(uint64_t *a1, uint64_t *a2)
{
  v50[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 9) == 1 && (*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v4 = *(a2[9] + 56);
    v5 = mlir::IntegerType::get(*a1, 32, 1);
    v6 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v5);
    v8 = v7;
    v9 = *(a2[9] + 88);
    v10 = mlir::IntegerType::get(*a1, 32, 1);
    v11 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v10);
    v12 = 0;
    if (v13 & 1) != 0 && (v8)
    {
      v14 = v11;
      v15 = *(a2[9] + 24);
      v38 = "TorchImport.select expects ranked tensor input";
      v42 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v15, &v38, &v33);
      if (v35 == 1)
      {
        (*(v34 + 24))(v34, v33);
        v17 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v6, v16);
        if (*(a2 + 9))
        {
          v18 = a2 - 2;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18[1];
        v20 = a1[4];
        v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**v20 + 32));
        v38 = v20;
        v39 = v21;
        v40 = &v42;
        v41 = 0x400000000;
        v43 = v45;
        v44 = 0x400000000;
        v45[4] = v46;
        v45[5] = 0x400000000;
        v46[8] = 4;
        v47 = v49;
        v48 = 0x100000000;
        v49[1] = v50;
        v49[2] = 0x100000000;
        v50[1] = 0;
        v50[2] = 0;
        v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v50[4] = 0;
        v50[6] = 0;
        mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, &v38, v19 & 0xFFFFFFFFFFFFFFF8, v15, v17, v14);
        v22 = mlir::Operation::create(&v38);
        mlir::OpBuilder::insert(a1, v22);
        v23 = *(*(v22 + 6) + 16);
        mlir::OperationState::~OperationState(&v38);
        if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
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
          v26 = a2 - 2;
        }

        else
        {
          v26 = 0;
        }

        v37[0] = v26;
        v37[1] = v25;
        v27 = *(v24 + 9);
        v28 = (v24 - 16);
        if (!v27)
        {
          v28 = 0;
        }

        v38 = v28;
        v39 = v27;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v37, &v38);
        if (a2[2])
        {
          a2[2] = 0;
          v30 = *a2;
          v29 = a2[1];
          *v29 = *a2;
          *(v30 + 8) = v29;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
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
    v31 = a2[3];
    v33 = "expects 3 inputs and 1 output for Select";
    v36 = 259;
    emitDiag(v31, 2, &v33, &v38);
    v12 = (v47 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  }

  return v12;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SigmoidOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SigmoidOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.sigmoid";
      v52 = 14;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::SigmoidOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SigmoidOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceSlice(uint64_t **a1, uint64_t *a2)
{
  v50[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 17), (v3 - 6) >= 0xFFFFFFFB))
  {
    v7 = 24;
    v8 = *(a2 + 17);
    while (1)
    {
      v9 = *(a2[9] + v7);
      v40 = "expected ranked tensor input to slice";
      v42 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v9, &v40, v37);
      if ((v38 & 1) == 0)
      {
        v19 = a2[3];
        v39 = 257;
        emitDiag(v19, 2, v37, &v40);
        if (v40)
        {
          mlir::Diagnostic::operator<<<50ul>(v41, "expected input operand be a shaped ranked tensor.");
        }

        goto LABEL_19;
      }

      if (v7 != 24)
      {
        v10 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v10 = 0;
        }

        if (v10[2])
        {
          break;
        }

        v11 = v10[3];
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v11[2] & 0x3FFFFFFF) != 0x20)
        {
          break;
        }
      }

      v7 += 32;
      if (!--v8)
      {
        v12 = a2[9];
        v13 = *(v12 + 24);
        v14 = *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        if ((v3 - 1) <= 1)
        {
          v15 = create1DTensorConstantWithElement<int>(a1, 0, *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
          goto LABEL_25;
        }

        v15 = get1DTensorOfIntegersExceptAtOneIndex(a1, *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), 0, *(v12 + 56), *(v12 + 88), a2[3]);
        if (v3 == 4)
        {
          v20 = get1DTensorOfIntegersExceptAtOneIndex(a1, v14, 0x7FFFFFFF, *(a2[9] + 56), *(a2[9] + 120), a2[3]);
LABEL_26:
          v21 = v20;
          v22 = create1DTensorConstantWithElement<int>(a1, 1, v14);
        }

        else
        {
          if (v3 == 3)
          {
LABEL_25:
            v20 = create1DTensorConstantWithElement<int>(a1, 0x7FFFFFFF, v14);
            goto LABEL_26;
          }

          v21 = get1DTensorOfIntegersExceptAtOneIndex(a1, v14, 0x7FFFFFFF, *(a2[9] + 56), *(a2[9] + 120), a2[3]);
          v22 = get1DTensorOfIntegersExceptAtOneIndex(a1, v14, 1, *(a2[9] + 56), *(a2[9] + 152), a2[3]);
        }

        v23 = v22;
        if (*(a2 + 9))
        {
          v24 = a2 - 2;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24[1];
        v26 = a1[4];
        v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**v26 + 32));
        v40 = v26;
        v41[0] = v27;
        v41[1] = &v42;
        v41[2] = 0x400000000;
        v43 = v45;
        v44 = 0x400000000;
        v45[4] = v46;
        v45[5] = 0x400000000;
        v46[8] = 4;
        v47 = v49;
        v48 = 0x100000000;
        v49[1] = v50;
        v49[2] = 0x100000000;
        v50[1] = 0;
        v50[2] = 0;
        v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v50[4] = 0;
        v50[6] = 0;
        mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, &v40, v25 & 0xFFFFFFFFFFFFFFF8, v13, v15, v21, v23);
        v28 = mlir::Operation::create(&v40);
        mlir::OpBuilder::insert(a1, v28);
        v29 = *(*(v28 + 6) + 16);
        mlir::OperationState::~OperationState(&v40);
        if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        v31 = *(a2 + 9);
        if (v31)
        {
          v32 = a2 - 2;
        }

        else
        {
          v32 = 0;
        }

        v37[0] = v32;
        v37[1] = v31;
        v33 = *(v30 + 9);
        v34 = (v30 - 16);
        if (!v33)
        {
          v34 = 0;
        }

        v40 = v34;
        v41[0] = v33;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v37, &v40);
        if (a2[2])
        {
          a2[2] = 0;
          v36 = *a2;
          v35 = a2[1];
          *v35 = *a2;
          *(v36 + 8) = v35;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
        v17 = 1;
        return v17 & 1;
      }
    }

    v16 = a2[3];
    v39 = 257;
    emitDiag(v16, 2, v37, &v40);
    if (!v40)
    {
      goto LABEL_19;
    }

    v5 = "expected operands other than the input to be 0D tensors.";
LABEL_18:
    mlir::Diagnostic::operator<<<57ul>(v41, v5);
  }

  else
  {
    v4 = a2[3];
    v39 = 257;
    emitDiag(v4, 2, v37, &v40);
    if (v40)
    {
      v5 = "slice expects at least 1 operands and at most 5 operands";
      goto LABEL_18;
    }
  }

LABEL_19:
  v17 = v47 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
  return v17 & 1;
}

uint64_t replaceSliceScatter(uint64_t **a1, uint64_t *a2)
{
  v52[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 17), (v3 - 7) >= 0xFFFFFFFB))
  {
    v6 = 0;
    v7 = 24;
    while (1)
    {
      v8 = *(a2[9] + v7);
      v42 = "expected ranked tensor input to slice_scatter";
      v44 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v8, &v42, v39);
      if (v40 != 1)
      {
        v20 = 0;
        return v20 & 1;
      }

      if (v6 >= 2)
      {
        v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8));
        v11 = v10;
        (*(v10 + 24))(v10, v9);
        if (v12)
        {
          break;
        }

        v13 = (*(v11 + 8))(v11, v9);
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v13[2] & 0x3FFFFFFF) != 0x20)
        {
          break;
        }
      }

      ++v6;
      v7 += 32;
      if (v3 == v6)
      {
        v14 = a2[9];
        v15 = *(v14 + 24);
        v16 = *((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        v17 = *(v14 + 56);
        if ((v3 & 6) == 2)
        {
          v18 = create1DTensorConstantWithElement<int>(a1, 0, *((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
          goto LABEL_21;
        }

        v18 = get1DTensorOfIntegersExceptAtOneIndex(a1, *((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), 0, *(v14 + 88), *(v14 + 120), a2[3]);
        if (v3 == 5)
        {
          v22 = get1DTensorOfIntegersExceptAtOneIndex(a1, v16, 0x7FFFFFFF, *(a2[9] + 88), *(a2[9] + 152), a2[3]);
LABEL_22:
          v23 = v22;
          v24 = create1DTensorConstantWithElement<int>(a1, 1, v16);
        }

        else
        {
          if (v3 == 4)
          {
LABEL_21:
            v22 = create1DTensorConstantWithElement<int>(a1, 0x7FFFFFFF, v16);
            goto LABEL_22;
          }

          v23 = get1DTensorOfIntegersExceptAtOneIndex(a1, v16, 0x7FFFFFFF, *(a2[9] + 88), *(a2[9] + 152), a2[3]);
          v24 = get1DTensorOfIntegersExceptAtOneIndex(a1, v16, 1, *(a2[9] + 88), *(a2[9] + 184), a2[3]);
        }

        v25 = v24;
        if (*(a2 + 9))
        {
          v26 = a2 - 2;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26[1];
        v28 = a1[4];
        updated = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1, *(**v28 + 32));
        v42 = v28;
        v43[0] = updated;
        v43[1] = &v44;
        v43[2] = 0x400000000;
        v45 = v47;
        v46 = 0x400000000;
        v47[4] = v48;
        v47[5] = 0x400000000;
        v48[8] = 4;
        v49 = v51;
        v50 = 0x100000000;
        v51[1] = v52;
        v51[2] = 0x100000000;
        v52[1] = 0;
        v52[2] = 0;
        v52[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v52[4] = 0;
        v52[6] = 0;
        mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(a1, &v42, v27 & 0xFFFFFFFFFFFFFFF8, v15, v18, v23, v25, v17);
        v30 = mlir::Operation::create(&v42);
        mlir::OpBuilder::insert(a1, v30);
        v31 = *(*(v30 + 6) + 16);
        mlir::OperationState::~OperationState(&v42);
        if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        v33 = *(a2 + 9);
        if (v33)
        {
          v34 = a2 - 2;
        }

        else
        {
          v34 = 0;
        }

        v39[0] = v34;
        v39[1] = v33;
        v35 = *(v32 + 9);
        v36 = (v32 - 16);
        if (!v35)
        {
          v36 = 0;
        }

        v42 = v36;
        v43[0] = v35;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v39, &v42);
        if (a2[2])
        {
          a2[2] = 0;
          v38 = *a2;
          v37 = a2[1];
          *v37 = *a2;
          *(v38 + 8) = v37;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
        v20 = 1;
        return v20 & 1;
      }
    }

    v19 = a2[3];
    v41 = 257;
    emitDiag(v19, 2, v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<89ul>(v43, "expected operands other than the input & src of slice_scatter to be 0D tensor of int32_t");
    }
  }

  else
  {
    v4 = a2[3];
    v41 = 257;
    emitDiag(v4, 2, v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<65ul>(v43, "slice_scatter expects at least 2 operands and at most 6 operands");
    }
  }

  v20 = v49 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  return v20 & 1;
}

BOOL replaceSplitWithSizes(uint64_t **a1, uint64_t *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || (v3 = *(a2 + 17), (v3 - 4) < 0xFFFFFFFE) || *(a2 + 9) != 1)
  {
    v9 = a2[3];
    v38[0] = "expects 2-3 inputs and 1 output for split_with_sizes.";
    v40 = 259;
    emitDiag(v9, 2, v38, &v41);
LABEL_11:
    v10 = (v48 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    return v10;
  }

  v5 = *(a2[9] + 24);
  v41 = "expected ranked tensor input to split_with_sizes";
  v43 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v41, v38);
  if (v39 != 1)
  {
    return 0;
  }

  v6 = *(a2[9] + 56);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    v8 = v7 == 6 ? v6 + 24 * *(v6 + 16) + 120 : v6 + 16 * v7 + 16;
  }

  else
  {
    v8 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v8, a1);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = TupleAs1DIntTensor;
  if (v3 == 3)
  {
    Tensor = *(a2[9] + 88);
    v41 = "expected ranked tensor dim input to split_with_sizes";
    v43 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(Tensor, &v41, v38);
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    LODWORD(v41) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v41, 1, 0);
  }

  v16 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v37 = v16;
  if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v17 = a2[3];
    v38[0] = "Expected result type to be TupleType, but got ";
    v40 = 259;
    emitDiag(v17, 2, v38, &v41);
    if (v41)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v42, &v37);
    }

    goto LABEL_11;
  }

  v19 = v16[1];
  v18 = v16[2];
  v20 = a1[4];
  v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SplitOp>(*(**v20 + 32));
  v41 = v20;
  v42[0] = v21;
  v42[1] = &v43;
  v42[2] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  v46[4] = v47;
  v46[5] = 0x400000000;
  v47[8] = 4;
  v48 = v50;
  v49 = 0x100000000;
  v50[1] = v51;
  v50[2] = 0x100000000;
  *&v51[8] = 0u;
  v52 = &mlir::detail::TypeIDResolver<void,void>::id;
  v53 = 0;
  v54 = 0;
  mlir::ODIE::Compiler::CoreML::SplitOp::build(a1, &v41, v19 & 0xFFFFFFFFFFFFFFF9 | 2, v18, v5, v13, Tensor);
  v22 = mlir::Operation::create(&v41);
  mlir::OpBuilder::insert(a1, v22);
  v23 = *(*(v22 + 6) + 16);
  mlir::OperationState::~OperationState(&v41);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = a1[4];
  v26 = *(v24 + 9);
  v27 = (v24 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = 4;
  }

  mlir::OperationName::OperationName(v38, "TorchImport.tuple_construct", 0x1B, *(**v25 + 32));
  mlir::OperationState::OperationState(&v41, v25, v38[0], v28, v26, &v37 + 2, 1, v29, 0, 0, 0, 0, 0, 0);
  v30 = mlir::Operation::create(&v41);
  mlir::OpBuilder::insert(a1, v30);
  mlir::OperationState::~OperationState(&v41);
  v31 = *(a2 + 9);
  if (v31)
  {
    v32 = a2 - 2;
  }

  else
  {
    v32 = 0;
  }

  v38[0] = v32;
  v38[1] = v31;
  v33 = v30[9];
  v34 = (v30 - 4);
  if (!v33)
  {
    v34 = 0;
  }

  v41 = v34;
  v42[0] = v33;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v38, &v41);
  if (a2[2])
  {
    a2[2] = 0;
    v36 = *a2;
    v35 = a2[1];
    *v35 = *a2;
    *(v36 + 8) = v35;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceSign(mlir::OpBuilder *a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v14 = a2[3];
    v15 = "expects only 1 input for TorchImport.sign";
    goto LABEL_16;
  }

  v4 = *(a2[9] + 24);
  v24[0] = "expect ranked tensor type for input of TorchImport.sign op";
  v25 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, v24, v21);
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
  v24[0] = "expect output of TorchImport.sign to be ranked tensor type";
  v25 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, v24, v19);
  v8 = 0;
  if (v20 == 1 && (v21[16] & 1) != 0)
  {
    SignOfTensor = mlir::ODIE::Compiler::getSignOfTensor(a1, v4, v19[0], v19[1]);
    v18 = v9;
    if (v9)
    {
      v10 = *(a2 + 9);
      if (v10)
      {
        v11 = (a2 - 2);
      }

      else
      {
        v11 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v11, v10, &SignOfTensor, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v13 = *a2;
        v12 = a2[1];
        *v12 = *a2;
        *(v13 + 8) = v12;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      return 1;
    }

    v14 = a2[3];
    v15 = "failed to create coreml ops for lowering sign operation.";
LABEL_16:
    v22 = v15;
    v23 = 259;
    emitDiag(v14, 2, &v22, v24);
    v8 = (v26 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
  }

  return v8;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SinOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.sin";
      v52 = 10;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::SinOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SinhOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinhOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.sinh";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::SinhOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinhOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SqrtOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v60[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v49 = "expected ranked tensor input to unary op";
  LOWORD(v52) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v49, &v43);
  if (v45 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v43;
    v15 = v44;
    v16 = (*(v44 + 24))(v44, v43);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v48 = 257;
      emitDiag(v18, 2, &v46, &v49);
      if (v49)
      {
        mlir::Diagnostic::operator<<<66ul>(v50, "replaceUnary encountered input and output with mismatched shape: ");
        if (v49)
        {
          LODWORD(v46) = 4;
          v47 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
          v20 = v51 + 24 * v52;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v52;
          if (v49)
          {
            mlir::Diagnostic::operator<<<5ul>(v50, " vs ");
            if (v49)
            {
              LODWORD(v46) = 4;
              v47 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
              v23 = v51 + 24 * v52;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v52;
            }
          }
        }
      }

LABEL_16:
      v10 = v57 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v42 = a2[3];
        v48 = 257;
        emitDiag(v42, 2, &v46, &v49);
        if (v49)
        {
          mlir::Diagnostic::operator<<<48ul>(v50, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SqrtOp>(a1, *(**v31 + 32));
    v49 = v31;
    v50[0] = v32;
    v50[1] = &v52;
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
    mlir::ODIE::Compiler::CoreML::SqrtOp::build(a1, &v49, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v33 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert(a1, v33);
    v34 = *(*(v33 + 6) + 16);
    mlir::OperationState::~OperationState(&v49);
    if (v34 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a2 + 9);
    if (v36)
    {
      v37 = a2 - 2;
    }

    else
    {
      v37 = 0;
    }

    v46 = v37;
    v47 = v36;
    v38 = *(v35 + 9);
    v39 = (v35 - 16);
    if (!v38)
    {
      v39 = 0;
    }

    v49 = v39;
    v50[0] = v38;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v46, &v49);
    if (a2[2])
    {
      a2[2] = 0;
      v41 = *a2;
      v40 = a2[1];
      *v40 = *a2;
      *(v41 + 8) = v40;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceSqueeze(uint64_t *a1, uint64_t *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v12 = a2[3];
    v68 = 257;
    emitDiag(v12, 2, &v65, &v70);
    if (v70)
    {
      mlir::Diagnostic::operator<<<43ul>(&v71, "expects 2 inputs and 1 output for squeeze.");
    }

    goto LABEL_12;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v54 = v5;
  v6 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = v6[2];
    if (!v15)
    {
LABEL_18:
      v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v19 = mlir::detail::InterfaceMap::lookup(v7 + 8, v18);
      v20 = (*(v19 + 24))(v19, v6);
      v70 = &v72;
      v71 = 0xC00000000;
      llvm::SmallVectorImpl<int>::append<long long const*,void>(&v70, v20, &v20[8 * v21]);
      Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v70, v71, 1);
      v65 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v65, &v54, &Tensor);
      v23 = *(a2 + 9);
      if (v23)
      {
        v24 = a2 - 2;
      }

      else
      {
        v24 = 0;
      }

      v62 = v24;
      v63 = v23;
      v25 = *(v22 + 9);
      v26 = v22 - 16;
      if (!v25)
      {
        v26 = 0;
      }

      v65 = v26;
      v66 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v62, &v65);
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
      if (v70 != &v72)
      {
        free(v70);
      }

      return 1;
    }

    v16 = v6[1];
    v17 = 8 * v15;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = a2[3];
  v61 = v5;
  v9 = *(v4 + 56);
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
  v59 = TupleAs1DIntTensor;
  v60 = v30;
  if ((v30 & 1) == 0)
  {
    v65 = "expecting constant squeeze dimensions.";
    v68 = 259;
    emitDiag(v8, 2, &v65, &v70);
LABEL_12:
    v13 = (v75 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v70);
    return v13;
  }

  v31 = TupleAs1DIntTensor;
  v70 = "expecting ranked input type to squeeze.";
  LOWORD(v74) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v70, &Tensor);
  if (v58 != 1)
  {
    return 0;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v31, &v65);
  if ((v69 & 1) == 0)
  {
    v62 = "expecting constant squeeze dimensions.";
    v64 = 259;
    emitDiag(v8, 2, &v62, &v70);
LABEL_50:
    v46 = v75;
    goto LABEL_51;
  }

  v33 = Tensor;
  v32 = v57;
  (*(v57 + 24))(v57, Tensor);
  if (v69)
  {
    if (!v66)
    {
LABEL_42:
      v70 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      v40 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v70, &v61, &v59);
      v41 = *(a2 + 9);
      v42 = a2 - 2;
      if (!v41)
      {
        v42 = 0;
      }

      v62 = v42;
      v63 = v41;
      v43 = *(v40 + 9);
      v44 = v40 - 16;
      if (!v43)
      {
        v44 = 0;
      }

      v70 = v44;
      v71 = v43;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v62, &v70);
      mlir::Operation::erase(a2);
      v45 = 1;
      goto LABEL_52;
    }

    v35 = v34;
    v36 = v65;
    v37 = 4 * v66;
    while (1)
    {
      v38 = *v36;
      if ((*v36 & 0x80000000) != 0)
      {
        (*(v32 + 24))(v32, v33);
        v38 += v39;
      }

      if ((v38 & 0x80000000) != 0 || v35 <= v38)
      {
        break;
      }

      if (*((*(v32 + 24))(v32, v33) + 8 * v38) == 0x8000000000000000)
      {
        v64 = 257;
        emitDiag(v8, 2, &v62, &v70);
        if (v70)
        {
          mlir::Diagnostic::operator<<<44ul>(&v71, "Cannot specify dynamically sized dimension ");
          if (v70)
          {
            LODWORD(v62) = 2;
            v63 = v38;
            v49 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v73, &v62, 1);
            v50 = v73 + 24 * v74;
            v51 = *v49;
            *(v50 + 16) = *(v49 + 16);
            *v50 = v51;
            ++v74;
            if (v70)
            {
              mlir::Diagnostic::operator<<<33ul>(&v71, " as target of squeeze operation.");
              if (v70)
              {
                mlir::Diagnostic::operator<<<42ul>(&v71, "Specified dims should be of static size 1");
              }
            }
          }
        }

        goto LABEL_50;
      }

      ++v36;
      v37 -= 4;
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    v64 = 257;
    emitDiag(v8, 2, &v62, &v70);
    if (v70)
    {
      mlir::Diagnostic::operator<<<32ul>(&v71, "Specified dim must be in range ");
    }

    v62 = -v35;
    v47 = mlir::InFlightDiagnostic::operator<<<long long>(&v70, &v62);
    v48 = v47;
    if (*v47)
    {
      mlir::Diagnostic::operator<<<5ul>((v47 + 1), " to ");
    }

    v55 = v35 - 1;
    v46 = *(mlir::InFlightDiagnostic::operator<<<long long>(v48, &v55) + 200);
LABEL_51:
    v45 = v46 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v70);
LABEL_52:
    v13 = v45 & 1;
    if (v69 == 1 && v65 != &v67)
    {
      free(v65);
    }

    return v13;
  }

  v52 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceBinaryOp<mlir::ODIE::Compiler::CoreML::SubOp,true>(v52, v53);
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::SubOp,true>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *(a2[6] + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = a2[9];
  v8 = v7[3];
  v9 = v7[7];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v10 = v7[11];
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = a2[3];
  v62 = v7[7];
  v63 = v8;
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor x input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, &v59);
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor y input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v56);
  if (v61 != 1 || (v58 & 1) == 0)
  {
    return 0;
  }

  v52 = v11;
  v51 = v10;
  v54 = v12;
  v14 = v59;
  v13 = v60;
  v15 = (*(v60 + 8))(v60, v59);
  v16 = v57;
  v53 = v56;
  v17 = (*(v57 + 8))(v57);
  PromotedType = getPromotedType(v15, v17);
  if ((v19 & 1) == 0)
  {
    v73[8] = 257;
    emitDiag(v54, 2, &v71, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v76, "Unable to get promoted type between ");
    }

    v33 = (*(v13 + 8))(v13, v14);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v35 = &v78[24 * v79];
      v36 = *v34;
      *(v35 + 2) = *(v34 + 16);
      *v35 = v36;
      ++v79;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v76, " and ");
      }
    }

    v37 = (*(v16 + 8))(v16, v53);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v37;
      v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v39 = &v78[24 * v79];
      v40 = *v38;
      *(v39 + 2) = *(v38 + 16);
      *v39 = v40;
      ++v79;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return 0;
  }

  v20 = PromotedType;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, PromotedType);
  if ((v22 & 1) == 0 || (v23 = v21, v63 = v21, v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20), (v25 & 1) == 0))
  {
    v49 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v62 = v24;
  __src = v23;
  v76 = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v71);
  if ((v74 & 1) == 0)
  {
    v69 = 257;
    emitDiag(v54, 2, &v66, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v76, " Unable to broadcast LHS and RHS of ");
      if (__src)
      {
        v69 = 261;
        v66 = v5;
        v67 = v6;
        mlir::Diagnostic::operator<<(&v76, &v66);
        if (__src)
        {
          mlir::Diagnostic::operator<<<4ul>(&v76, " op");
        }
      }
    }

    goto LABEL_30;
  }

  v26 = *v71;
  v27 = *(v71 + 1);
  v62 = v27;
  v63 = v26;
  if (!v52)
  {
LABEL_40:
    v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v63, &v62);
    v42 = (v43 - 16) & 0xFFFFFFFFFFFFFF00;
    v41 = (v43 - 16);
    v31 = 1;
    goto LABEL_41;
  }

  v28 = (*(v16 + 8))(v16, v53);
  v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v51, v28);
  if ((v30 & 1) == 0)
  {
    v69 = 257;
    emitDiag(v54, 2, &v66, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<49ul>(&v76, "Failed to cast alpha to rhs element type for op ");
      if (__src)
      {
        v69 = 261;
        v66 = v5;
        v67 = v6;
        mlir::Diagnostic::operator<<(&v76, &v66);
      }
    }

LABEL_30:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v41 = 0;
    v31 = 0;
    goto LABEL_31;
  }

  __src = v27;
  v76 = v29;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v66);
  v31 = v70;
  if (v70)
  {
    v32 = *(v66 + 1);
    __src = *v66;
    v64[0] = v32;
    v55 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
    v62 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v54, &v55, &__src, v64) - 16;
  }

  else
  {
    v65 = 257;
    emitDiag(v54, 2, v64, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<41ul>(&v76, "Unable to broadcast RHS and alpha of op ");
      if (__src)
      {
        v65 = 261;
        v64[0] = v5;
        v64[1] = v6;
        mlir::Diagnostic::operator<<(&v76, v64);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v70 == 1 && v66 != &v68)
  {
    free(v66);
  }

  if (v31)
  {
    goto LABEL_40;
  }

  v41 = 0;
LABEL_31:
  v42 = 0;
LABEL_41:
  if (v74 == 1 && v71 != v73)
  {
    free(v71);
  }

  __src = (v42 | v41);
  LOBYTE(v76) = v31;
  if (!v31)
  {
    return 0;
  }

  v44 = *(a2 + 9);
  if (v44)
  {
    v45 = (a2 - 2);
  }

  else
  {
    v45 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v45, v44, &__src, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v47 = *a2;
    v46 = a2[1];
    *v46 = *a2;
    *(v47 + 8) = v46;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::sumOpName)>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v34 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 17), v4 > 3) || (v4 ? (v5 = *(a2 + 9) == 1) : (v5 = 0), !v5))
  {
    v36 = 257;
    emitDiag(v2, 2, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<37ul>(v39, "expects 1-3 inputs and 1 output for ");
    }

    v35[0] = "sum.dim_intlist";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v38, v35) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    return v7;
  }

  v10 = a2[9];
  v11 = v10[3];
  if (v4 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10[7];
    if (v4 == 3)
    {
      v13 = v10[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v38) = 0;
  v13 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v38, 1);
LABEL_17:
  v33 = v13;
  getReduceResultType(v31, a2);
  if ((v32 & 1) == 0)
  {
    v36 = 257;
    emitDiag(v2, 2, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<42ul>(v39, "unable to figure out the result type for ");
      if (v38)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v35);
        mlir::Diagnostic::appendOp(v39, a2, v35);
      }
    }

    v6 = v40;
    goto LABEL_10;
  }

  v38 = "sum.dim_intlist";
  v39[0] = 15;
  v14 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1, &v38, &v34, v11, v12, &v33, v31);
  v29 = v14;
  v30 = v15;
  if ((v15 & 1) == 0)
  {
    return 0;
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

  v18 = v17[1] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v18 = 0;
  }

  v28 = v18;
  if (v18)
  {
    v19 = *(a1 + 4);
    v37 = v14;
    mlir::OperationName::OperationName(v35, "TorchImport.tuple_construct", 0x1B, *(**v19 + 32));
    mlir::OperationState::OperationState(&v38, v19, v35[0], &v37, 1, &v28 + 2, 1, v20, 0, 0, 0, 0, 0, 0);
    v21 = mlir::Operation::create(&v38);
    mlir::OpBuilder::insert(a1, v21);
    mlir::OperationState::~OperationState(&v38);
    v22 = *(a2 + 9);
    if (v22)
    {
      v23 = a2 - 2;
    }

    else
    {
      v23 = 0;
    }

    v35[0] = v23;
    v35[1] = v22;
    v24 = v21[9];
    v25 = (v21 - 4);
    if (!v24)
    {
      v25 = 0;
    }

    v38 = v25;
    v39[0] = v24;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v35, &v38);
  }

  else
  {
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v17, v16, &v29, 1);
  }

  if (a2[2])
  {
    a2[2] = 0;
    v27 = *a2;
    v26 = a2[1];
    *v26 = *a2;
    *(v27 + 8) = v26;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  return 1;
}

BOOL replaceSymSize(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v26 = v4;
  *&v32 = "expected ranked tensor input to sym_size.int";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v32, v27);
  if (v28)
  {
    v5 = *(a2 + 3);
    v31 = *((*(v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v6 = mlir::IntegerType::get(*a1, 32, 1);
    *&v32 = &v31;
    *(&v32 + 1) = 1;
    v27[0] = v6;
    v30 = 0;
    *&v32 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v32, v27, &v30);
    v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, v5, &v32, &v26);
    LODWORD(v32) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v32, 1, 0);
    v9 = mlir::IntegerType::get(*a1, 32, 1);
    v32 = 0uLL;
    v27[0] = v9;
    v30 = 0;
    v10 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v32, v27, &v30);
    v11 = *(*(a2 + 9) + 56);
    v12 = *(a1 + 4);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**v12 + 32));
    *&v32 = v12;
    *(&v32 + 1) = v13;
    v33 = &v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0x400000000;
    v38[4] = v39;
    v38[5] = 0x400000000;
    v39[8] = 4;
    v40 = v42;
    v41 = 0x100000000;
    v42[1] = v43;
    v42[2] = 0x100000000;
    v43[1] = 0;
    v43[2] = 0;
    v43[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v43[4] = 0;
    v43[6] = 0;
    mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, &v32, v10, v7 - 16, Tensor, v11);
    v14 = mlir::Operation::create(&v32);
    mlir::OpBuilder::insert(a1, v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v32);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 9);
    v18 = (a2 - 16);
    if (!v17)
    {
      v18 = 0;
    }

    v27[0] = v18;
    v27[1] = v17;
    v19 = *(v16 + 9);
    v20 = v16 - 16;
    if (!v19)
    {
      v20 = 0;
    }

    *&v32 = v20;
    *(&v32 + 1) = v19;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v27, &v32);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v22 = *a2;
      v21 = *(a2 + 1);
      *v21 = *a2;
      *(v22 + 8) = v21;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  else
  {
    v24 = *(a2 + 3);
    v29 = 257;
    emitDiag(v24, 2, v27, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<50ul>(&v32 + 8, "expected input operand be a shaped ranked tensor.");
    }

    v23 = (v40 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  }

  return v23;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::TanOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.tan";
      v52 = 10;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::TanOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::TanhOp>(mlir::OpBuilder *a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v54 = "expected ranked tensor input to unary op";
  LOWORD(v57) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v54, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v53 = 257;
      emitDiag(v18, 2, &v49, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<66ul>(v55, "replaceUnary encountered input and output with mismatched shape: ");
        if (v54)
        {
          LODWORD(v49) = 4;
          v50 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
          v20 = v56 + 24 * v57;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v57;
          if (v54)
          {
            mlir::Diagnostic::operator<<<5ul>(v55, " vs ");
            if (v54)
            {
              LODWORD(v49) = 4;
              v50 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, &v49, 1);
              v23 = v56 + 24 * v57;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v57;
            }
          }
        }
      }

LABEL_16:
      v10 = v62 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return v10 & 1;
    }

    v26 = (*(v9 + 8))(v9, v6);
    if (v26 != (*(v15 + 8))(v15, v14))
    {
      v27 = (*(v9 + 8))(v9, v6);
      v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v27);
      if ((v29 & 1) == 0)
      {
        v43 = a2[3];
        v53 = 257;
        emitDiag(v43, 2, &v49, &v54);
        if (v54)
        {
          mlir::Diagnostic::operator<<<48ul>(v55, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v28;
    }

    v30 = *(v4 + 8);
    v31 = *(a1 + 4);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanhOp,void>::id, *(**v31 + 32));
    if ((v33 & 1) == 0)
    {
      v53 = 1283;
      v51 = "coreml.tanh";
      v52 = 11;
      v48 = 259;
      llvm::operator+(&v49, &v47, &v54);
      llvm::report_fatal_error(&v54, 1);
    }

    v54 = v31;
    v55[0] = v32;
    v55[1] = &v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v62 = v64;
    v63 = 0x100000000;
    v64[1] = v65;
    v64[2] = 0x100000000;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v65[4] = 0;
    v65[6] = 0;
    mlir::ODIE::Compiler::CoreML::TanhOp::build(a1, &v54, v30 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v54);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanhOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v50 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v54 = v40;
    v55[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v49, &v54);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}