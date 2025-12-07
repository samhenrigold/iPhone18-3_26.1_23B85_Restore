void mlir::ODIE::Compiler::CoreMLAX::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_10028D2F4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_10028D2F4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t sub_10028D2F4(mlir::Operation *this, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  Encoding = mlir::RankedTensorType::getEncoding(&v58);
  if (!Encoding || *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v37 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
    v57 = v37;
    v38 = mlir::RankedTensorType::getEncoding(&v57);
    if (!v38 || *(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v39 = *a2;
  {
    sub_1002AAABC();
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v39 + 8);
    v42 = *(v39 + 16);
    if (v42)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = 0;
    goto LABEL_64;
  }

  v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_36:
  v43 = v41;
  v44 = v42;
  do
  {
    v45 = v44 >> 1;
    v46 = &v43[2 * (v44 >> 1)];
    v48 = *v46;
    v47 = v46 + 2;
    v44 += ~(v44 >> 1);
    if (v48 < v40)
    {
      v43 = v47;
    }

    else
    {
      v44 = v45;
    }
  }

  while (v44);
  if (v43 == &v41[2 * v42] || *v43 != v40)
  {
    goto LABEL_62;
  }

  v49 = v43[1];
LABEL_64:
  v61[0] = a2;
  v61[1] = v49;
  v55[0] = mlir::ShapedType::getElementType(v61);
  if (mlir::Type::isF16(v55) || mlir::Type::isF32(v55) || mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

LABEL_2:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(v61, this, v55);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v10 = &v58;
    v11 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v11 = v62;
        v10 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = &v58;
        v11 = v62;
      }
    }

    v12 = &v11[24 * v63];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v15 = &v58;
      v16 = v62;
      if (v14 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v14 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v16 = v62;
          v15 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v15 = &v58;
          v16 = v62;
        }
      }

      v17 = &v16[24 * v63];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 120;
        v20 = &v58;
        v21 = v62;
        if (v19 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v19 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v21 = v62;
            v20 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v20 = &v58;
            v21 = v62;
          }
        }

        v22 = &v21[24 * v63];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v63;
        if (v61[0])
        {
          v24 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v25 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v25 = v62;
              v24 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = &v58;
              v25 = v62;
            }
          }

          v26 = &v25[24 * v63];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v63;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v69;
      v31 = __p;
      if (v69 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v69 = v29;
      operator delete(v31);
    }

    v32 = v66;
    if (v66)
    {
      v33 = v67;
      v34 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v66;
      }

      v67 = v32;
      operator delete(v34);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CastOp::parse(mlir::ODIE::Compiler::CoreMLAX::CastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10028DF9C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10028E5B0(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10028DF9C(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10028E5B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v29 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30[0] = sub_100227728(&v29);
  v30[1] = v4;
  Shape = mlir::ShapedType::getShape(v30);
  v7 = v6;
  v28 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v26[0] = sub_100227728(&v28);
  v26[1] = v8;
  v9 = mlir::ShapedType::getShape(v26);
  if (v7 == v10 && !memcmp(Shape, v9, 8 * v7))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v26[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v27 = 259;
    mlir::OpState::emitOpError(v30, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
      }

      v21 = __p;
      if (__p)
      {
        v22 = v36;
        v23 = __p;
        if (v36 != __p)
        {
          do
          {
            v22 = sub_10005BEF4(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v36 = v21;
        operator delete(v23);
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_48;
      }

      v24 = v34;
      v18 = v33;
      if (v34 == v33)
      {
        goto LABEL_47;
      }

      do
      {
        v25 = *--v24;
        *v24 = 0;
        if (v25)
        {
          operator delete[]();
        }
      }

      while (v24 != v16);
      goto LABEL_46;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
    v27 = 259;
    mlir::OpState::emitOpError(v30, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
      }

      v13 = __p;
      if (__p)
      {
        v14 = v36;
        v15 = __p;
        if (v36 != __p)
        {
          do
          {
            v14 = sub_10005BEF4(v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v36 = v13;
        operator delete(v15);
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_48;
      }

      v17 = v34;
      v18 = v33;
      if (v34 == v33)
      {
LABEL_47:
        v34 = v16;
        operator delete(v18);
        result = v12;
LABEL_48:
        if (v31 != &v32)
        {
          free(v31);
          return v12;
        }

        return result;
      }

      do
      {
        v19 = *--v17;
        *v17 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v17 != v16);
LABEL_46:
      v18 = v33;
      goto LABEL_47;
    }
  }

  return result;
}

BOOL sub_10028DF9C(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v58 = v7;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v58 + 8);
    v15 = *(v58 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v64[0] = a2;
  v64[1] = v22;
  v59[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isUnsignedInteger(v59, 4) || mlir::Type::isSignedInteger(v59, 4) || mlir::Type::isUnsignedInteger(v59, 8) || mlir::Type::isSignedInteger(v59, 8))
  {
    return 1;
  }

  v23 = *(*v59[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isF16(v59))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v59);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_34:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(v64, a1, v59);
  if (v64[0])
  {
    v61 = 3;
    v62 = " #";
    v63 = 2;
    v28 = &v61;
    v29 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v54 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v29 = v65;
        v28 = (v65 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v28 = &v61;
        v29 = v65;
      }
    }

    v30 = &v29[24 * v66];
    v31 = *v28;
    *(v30 + 2) = *(v28 + 2);
    *v30 = v31;
    v32 = ++v66;
    if (v64[0])
    {
      v61 = 5;
      v62 = a5;
      v33 = &v61;
      v34 = v65;
      if (v32 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v32 > &v61)
        {
          v55 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v34 = v65;
          v33 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v33 = &v61;
          v34 = v65;
        }
      }

      v35 = &v34[24 * v66];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      v37 = ++v66;
      if (v64[0])
      {
        v61 = 3;
        v62 = " must be tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v63 = 213;
        v38 = &v61;
        v39 = v65;
        if (v37 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v37 > &v61)
          {
            v56 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v39 = v65;
            v38 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v38 = &v61;
            v39 = v65;
          }
        }

        v40 = &v39[24 * v66];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v66;
        if (v64[0])
        {
          v42 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v43 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v57 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v43 = v65;
              v42 = (v65 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v42 = &v61;
              v43 = v65;
            }
          }

          v44 = &v43[24 * v66];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v66;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
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

    v46 = __p;
    if (__p)
    {
      v47 = v72;
      v48 = __p;
      if (v72 != __p)
      {
        do
        {
          v47 = sub_10005BEF4(v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v72 = v46;
      operator delete(v48);
    }

    v49 = v69;
    if (v69)
    {
      v50 = v70;
      v51 = v69;
      if (v70 != v69)
      {
        do
        {
          v52 = *--v50;
          *v50 = 0;
          if (v52)
          {
            operator delete[]();
          }
        }

        while (v50 != v49);
        v51 = v69;
      }

      v70 = v49;
      operator delete(v51);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v27;
}

BOOL sub_10028E5B0(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v7;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v61);
  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isF16(v56))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v56);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_24:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v61, a1, v56);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v25 = &v58;
    v26 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v26 = v62;
        v25 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = &v58;
        v26 = v62;
      }
    }

    v27 = &v26[24 * v63];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v30 = &v58;
      v31 = v62;
      if (v29 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v29 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v31 = v62;
          v30 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v30 = &v58;
          v31 = v62;
        }
      }

      v32 = &v31[24 * v63];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v60 = 81;
        v35 = &v58;
        v36 = v62;
        if (v34 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v34 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v36 = v62;
            v35 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
        if (v61[0])
        {
          v39 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v40 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v40 = v62;
              v39 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = &v58;
              v40 = v62;
            }
          }

          v41 = &v40[24 * v63];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v63;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = sub_10005BEF4(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v47;
          *v47 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v47 != v46);
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v24;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::parse(mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1002AAABC();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

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
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v16 = v10[1];
      goto LABEL_20;
    }

LABEL_18:
    v16 = 0;
LABEL_20:
    v64[0] = v3;
    v64[1] = v16;
    v59[0] = mlir::ShapedType::getElementType(v64);
    if (mlir::Type::isUnsignedInteger(v59, 1) || mlir::Type::isUnsignedInteger(v59, 2) || mlir::Type::isUnsignedInteger(v59, 3) || mlir::Type::isUnsignedInteger(v59, 4) || mlir::Type::isUnsignedInteger(v59, 6) || mlir::Type::isUnsignedInteger(v59, 8))
    {
      goto LABEL_56;
    }
  }

  v60 = 261;
  v59[0] = "operand";
  v59[1] = 7;
  mlir::Operation::emitOpError(v64, v2, v59);
  if (v64[0])
  {
    v61 = 3;
    v62 = " #";
    v63 = 2;
    v17 = &v61;
    v18 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v55 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v18 = v65;
        v17 = (v65 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v17 = &v61;
        v18 = v65;
      }
    }

    v19 = &v18[24 * v66];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    v21 = ++v66;
    if (v64[0])
    {
      v61 = 5;
      v62 = 0;
      v22 = &v61;
      v23 = v65;
      if (v21 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v21 > &v61)
        {
          v56 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v21 + 1, 24);
          v23 = v65;
          v22 = (v65 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v21 + 1, 24);
          v22 = &v61;
          v23 = v65;
        }
      }

      v24 = &v23[24 * v66];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v66;
      if (v64[0])
      {
        v61 = 3;
        v62 = " must be tensor of 1-bit unsigned integer or 2-bit unsigned integer or 3-bit unsigned integer or 4-bit unsigned integer or 6-bit unsigned integer or 8-bit unsigned integer values, but got ";
        v63 = 188;
        v27 = &v61;
        v28 = v65;
        if (v26 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v26 > &v61)
          {
            v57 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v26 + 1, 24);
            v28 = v65;
            v27 = (v65 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v26 + 1, 24);
            v27 = &v61;
            v28 = v65;
          }
        }

        v29 = &v28[24 * v66];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v66;
        if (v64[0])
        {
          v31 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, v3);
          v32 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v58 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v32 = v65;
              v31 = (v65 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v31 = &v61;
              v32 = v65;
            }
          }

          v33 = &v32[24 * v66];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v66;
        }
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
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

    v36 = __p;
    if (__p)
    {
      v37 = v72;
      v38 = __p;
      if (v72 != __p)
      {
        do
        {
          v37 = sub_10005BEF4(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v72 = v36;
      operator delete(v38);
    }

    v39 = v69;
    if (v69)
    {
      v40 = v70;
      v41 = v69;
      if (v70 != v69)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v69;
      }

      v70 = v39;
      operator delete(v41);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  if (!v35)
  {
    return 0;
  }

LABEL_56:
  if (!sub_10028F588(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10028FB7C(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v43 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
  if (!sub_10028F588(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
  {
    return 1;
  }

  v59[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
  v60 = 259;
  mlir::OpState::emitOpError(v64, this, v59);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  v47 = result;
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
    result = v47;
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
      result = v47;
    }

    v48 = __p;
    if (__p)
    {
      v49 = v72;
      v50 = __p;
      if (v72 != __p)
      {
        do
        {
          v49 = sub_10005BEF4(v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v72 = v48;
      operator delete(v50);
      result = v47;
    }

    v51 = v69;
    if (v69)
    {
      v52 = v70;
      v53 = v69;
      if (v70 != v69)
      {
        do
        {
          v54 = *--v52;
          *v52 = 0;
          if (v54)
          {
            operator delete[]();
          }
        }

        while (v52 != v51);
        v53 = v69;
      }

      v70 = v51;
      operator delete(v53);
      result = v47;
    }

    if (v65 != v68)
    {
      free(v65);
      return v47;
    }
  }

  return result;
}

BOOL sub_10028F588(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_32;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v58 = v7;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v58 + 8);
    v15 = *(v58 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v64[0] = a2;
  v64[1] = v22;
  v59[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isUnsignedInteger(v59, 8) || mlir::Type::isSignedInteger(v59, 8))
  {
    return 1;
  }

  v23 = *(*v59[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isF16(v59))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v59);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_32:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(v64, a1, v59);
  if (v64[0])
  {
    v61 = 3;
    v62 = " #";
    v63 = 2;
    v28 = &v61;
    v29 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v54 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v29 = v65;
        v28 = (v65 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v28 = &v61;
        v29 = v65;
      }
    }

    v30 = &v29[24 * v66];
    v31 = *v28;
    *(v30 + 2) = *(v28 + 2);
    *v30 = v31;
    v32 = ++v66;
    if (v64[0])
    {
      v61 = 5;
      v62 = a5;
      v33 = &v61;
      v34 = v65;
      if (v32 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v32 > &v61)
        {
          v55 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v34 = v65;
          v33 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v33 = &v61;
          v34 = v65;
        }
      }

      v35 = &v34[24 * v66];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      v37 = ++v66;
      if (v64[0])
      {
        v61 = 3;
        v62 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v63 = 163;
        v38 = &v61;
        v39 = v65;
        if (v37 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v37 > &v61)
          {
            v56 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v39 = v65;
            v38 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v38 = &v61;
            v39 = v65;
          }
        }

        v40 = &v39[24 * v66];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v66;
        if (v64[0])
        {
          v42 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v43 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v57 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v43 = v65;
              v42 = (v65 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v42 = &v61;
              v43 = v65;
            }
          }

          v44 = &v43[24 * v66];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v66;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
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

    v46 = __p;
    if (__p)
    {
      v47 = v72;
      v48 = __p;
      if (v72 != __p)
      {
        do
        {
          v47 = sub_10005BEF4(v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v72 = v46;
      operator delete(v48);
    }

    v49 = v69;
    if (v69)
    {
      v50 = v70;
      v51 = v69;
      if (v70 != v69)
      {
        do
        {
          v52 = *--v50;
          *v50 = 0;
          if (v52)
          {
            operator delete[]();
          }
        }

        while (v50 != v49);
        v51 = v69;
      }

      v70 = v49;
      operator delete(v51);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v27;
}

BOOL sub_10028FB7C(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v12 = a1;
  {
    v55 = v9;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v61);
  isSignedInteger = mlir::Type::isSignedInteger(v56, 32);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_22:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v61, a1, v56);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v25 = &v58;
    v26 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v26 = v62;
        v25 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = &v58;
        v26 = v62;
      }
    }

    v27 = &v26[24 * v63];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v30 = &v58;
      v31 = v62;
      if (v29 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v29 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v31 = v62;
          v30 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v30 = &v58;
          v31 = v62;
        }
      }

      v32 = &v31[24 * v63];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of 32-bit signed integer values, but got ";
        v60 = 57;
        v35 = &v58;
        v36 = v62;
        if (v34 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v34 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v36 = v62;
            v35 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
        if (v61[0])
        {
          v39 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v40 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v40 = v62;
              v39 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = &v58;
              v40 = v62;
            }
          }

          v41 = &v40[24 * v63];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v63;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = sub_10005BEF4(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v47;
          *v47 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v47 != v46);
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v24;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::parse(mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = *(v4 + 8);
      v33 = *(v4 + 16);
      if (!v33)
      {
        goto LABEL_70;
      }
    }

    else
    {
      sub_1002AAABC();
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = *(v4 + 8);
      v33 = *(v4 + 16);
      if (!v33)
      {
        goto LABEL_70;
      }
    }

    v34 = v32;
    v35 = v33;
    do
    {
      v36 = v35 >> 1;
      v37 = &v34[2 * (v35 >> 1)];
      v39 = *v37;
      v38 = v37 + 2;
      v35 += ~(v35 >> 1);
      if (v39 < v31)
      {
        v34 = v38;
      }

      else
      {
        v35 = v36;
      }
    }

    while (v35);
    if (v34 != &v32[2 * v33] && *v34 == v31)
    {
      v54 = v34[1];
      v148 = v3;
      v149 = v54;
      if (!mlir::ShapedType::hasRank(&v148))
      {
        goto LABEL_2;
      }

LABEL_73:
      v55 = *v3;
      {
        v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v57 = *(v55 + 8);
        v58 = *(v55 + 16);
        if (!v58)
        {
          goto LABEL_179;
        }
      }

      else
      {
        sub_1002AAABC();
        v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v57 = *(v55 + 8);
        v58 = *(v55 + 16);
        if (!v58)
        {
          goto LABEL_179;
        }
      }

      v59 = v57;
      v60 = v58;
      do
      {
        v61 = v60 >> 1;
        v62 = &v59[2 * (v60 >> 1)];
        v64 = *v62;
        v63 = v62 + 2;
        v60 += ~(v60 >> 1);
        if (v64 < v56)
        {
          v59 = v63;
        }

        else
        {
          v60 = v61;
        }
      }

      while (v60);
      if (v59 != &v57[2 * v58] && *v59 == v56)
      {
        v117 = v59[1];
        v142 = v3;
        v143 = v117;
        mlir::ShapedType::getShape(&v142);
        if (v118 != 1)
        {
          goto LABEL_2;
        }

LABEL_182:
        v119 = *v3;
        {
          v120 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v121 = *(v119 + 8);
          v122 = *(v119 + 16);
          if (!v122)
          {
            goto LABEL_195;
          }
        }

        else
        {
          sub_1002AAABC();
          v120 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v121 = *(v119 + 8);
          v122 = *(v119 + 16);
          if (!v122)
          {
            goto LABEL_195;
          }
        }

        v123 = v121;
        v124 = v122;
        do
        {
          v125 = v124 >> 1;
          v126 = &v123[2 * (v124 >> 1)];
          v128 = *v126;
          v127 = v126 + 2;
          v124 += ~(v124 >> 1);
          if (v128 < v120)
          {
            v123 = v127;
          }

          else
          {
            v124 = v125;
          }
        }

        while (v124);
        if (v123 != &v121[2 * v122] && *v123 == v120)
        {
          v130 = v123[1];
LABEL_197:
          v145 = v3;
          v146 = v130;
          ElementType = mlir::ShapedType::getElementType(&v145);
          if (mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 8))
          {
            goto LABEL_41;
          }

          v131 = *(*ElementType + 136);
          v132 = v131 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v131 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
          v133 = v132 || v131 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
          if (v133 || mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
          {
            goto LABEL_41;
          }

          goto LABEL_2;
        }

LABEL_195:
        v130 = 0;
        goto LABEL_197;
      }

LABEL_179:
      v142 = v3;
      v143 = 0;
      mlir::ShapedType::getShape(&v142);
      if (v116 != 1)
      {
        goto LABEL_2;
      }

      goto LABEL_182;
    }

LABEL_70:
    v148 = v3;
    v149 = 0;
    if (!mlir::ShapedType::hasRank(&v148))
    {
      goto LABEL_2;
    }

    goto LABEL_73;
  }

LABEL_2:
  v144 = 261;
  v142 = "operand";
  v143 = 7;
  mlir::Operation::emitOpError(&v148, v2, &v142);
  if (v148)
  {
    LODWORD(v145) = 3;
    v146 = " #";
    v147 = 2;
    v5 = &v145;
    v6 = v150;
    if (v151 >= v152)
    {
      if (v150 <= &v145 && v150 + 24 * v151 > &v145)
      {
        v129 = &v145 - v150;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v6 = v150;
        v5 = v150 + v129;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v5 = &v145;
        v6 = v150;
      }
    }

    v7 = &v6[24 * v151];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v151;
    if (v148)
    {
      LODWORD(v145) = 5;
      v146 = 0;
      v10 = &v145;
      v11 = v150;
      if (v9 >= v152)
      {
        if (v150 <= &v145 && v150 + 24 * v9 > &v145)
        {
          v134 = &v145 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v9 + 1, 24);
          v11 = v150;
          v10 = v150 + v134;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v9 + 1, 24);
          v10 = &v145;
          v11 = v150;
        }
      }

      v12 = &v11[24 * v151];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v151;
      if (v148)
      {
        LODWORD(v145) = 3;
        v146 = " must be 1D tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v147 = 216;
        v15 = &v145;
        v16 = v150;
        if (v14 >= v152)
        {
          if (v150 <= &v145 && v150 + 24 * v14 > &v145)
          {
            v136 = &v145 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v14 + 1, 24);
            v16 = v150;
            v15 = v150 + v136;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v14 + 1, 24);
            v15 = &v145;
            v16 = v150;
          }
        }

        v17 = &v16[24 * v151];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v151;
        if (v148)
        {
          v19 = &v145;
          mlir::DiagnosticArgument::DiagnosticArgument(&v145, v3);
          v20 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v145 && v150 + 24 * v151 > &v145)
            {
              v138 = &v145 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v20 = v150;
              v19 = v150 + v138;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v19 = &v145;
              v20 = v150;
            }
          }

          v21 = &v20[24 * v151];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v151;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v159 == 1)
  {
    if (v158 != &v159)
    {
      free(v158);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v157;
      v26 = __p;
      if (v157 != __p)
      {
        do
        {
          v25 = sub_10005BEF4(v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v157 = v24;
      operator delete(v26);
    }

    v27 = v154;
    if (v154)
    {
      v28 = v155;
      v29 = v154;
      if (v155 != v154)
      {
        do
        {
          v30 = *--v28;
          *v28 = 0;
          if (v30)
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = v154;
      }

      v155 = v27;
      operator delete(v29);
    }

    if (v150 != v153)
    {
      free(v150);
    }
  }

  if (!v23)
  {
    return 0;
  }

LABEL_41:
  v40 = *this;
  v41 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v42 = *v41;
  v43 = *(*v41 + 136);
  if (v43 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v43 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      if (!v47)
      {
        goto LABEL_85;
      }
    }

    else
    {
      sub_1002AAABC();
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      if (!v47)
      {
        goto LABEL_85;
      }
    }

    v48 = v46;
    v49 = v47;
    do
    {
      v50 = v49 >> 1;
      v51 = &v48[2 * (v49 >> 1)];
      v53 = *v51;
      v52 = v51 + 2;
      v49 += ~(v49 >> 1);
      if (v53 < v45)
      {
        v48 = v52;
      }

      else
      {
        v49 = v50;
      }
    }

    while (v49);
    if (v48 != &v46[2 * v47] && *v48 == v45)
    {
      v65 = v48[1];
LABEL_87:
      v148 = v41;
      v149 = v65;
      v142 = mlir::ShapedType::getElementType(&v148);
      if (mlir::Type::isUnsignedInteger(&v142, 1))
      {
        goto LABEL_118;
      }

      goto LABEL_88;
    }

LABEL_85:
    v65 = 0;
    goto LABEL_87;
  }

LABEL_88:
  v144 = 261;
  v142 = "operand";
  v143 = 7;
  mlir::Operation::emitOpError(&v148, v40, &v142);
  if (v148)
  {
    LODWORD(v145) = 3;
    v146 = " #";
    v147 = 2;
    v66 = &v145;
    v67 = v150;
    if (v151 >= v152)
    {
      if (v150 <= &v145 && v150 + 24 * v151 > &v145)
      {
        v135 = &v145 - v150;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v67 = v150;
        v66 = v150 + v135;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v66 = &v145;
        v67 = v150;
      }
    }

    v68 = &v67[24 * v151];
    v69 = *v66;
    *(v68 + 2) = *(v66 + 2);
    *v68 = v69;
    v70 = ++v151;
    if (v148)
    {
      LODWORD(v145) = 5;
      v146 = 1;
      v71 = &v145;
      v72 = v150;
      if (v70 >= v152)
      {
        if (v150 <= &v145 && v150 + 24 * v70 > &v145)
        {
          v137 = &v145 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v70 + 1, 24);
          v72 = v150;
          v71 = v150 + v137;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v70 + 1, 24);
          v71 = &v145;
          v72 = v150;
        }
      }

      v73 = &v72[24 * v151];
      v74 = *v71;
      *(v73 + 2) = *(v71 + 2);
      *v73 = v74;
      v75 = ++v151;
      if (v148)
      {
        LODWORD(v145) = 3;
        v146 = " must be tensor of 1-bit unsigned integer values, but got ";
        v147 = 58;
        v76 = &v145;
        v77 = v150;
        if (v75 >= v152)
        {
          if (v150 <= &v145 && v150 + 24 * v75 > &v145)
          {
            v139 = &v145 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v75 + 1, 24);
            v77 = v150;
            v76 = v150 + v139;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v75 + 1, 24);
            v76 = &v145;
            v77 = v150;
          }
        }

        v78 = &v77[24 * v151];
        v79 = *v76;
        *(v78 + 2) = *(v76 + 2);
        *v78 = v79;
        ++v151;
        if (v148)
        {
          v80 = &v145;
          mlir::DiagnosticArgument::DiagnosticArgument(&v145, v41);
          v81 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v145 && v150 + 24 * v151 > &v145)
            {
              v140 = &v145 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v81 = v150;
              v80 = v150 + v140;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v80 = &v145;
              v81 = v150;
            }
          }

          v82 = &v81[24 * v151];
          v83 = *v80;
          *(v82 + 2) = *(v80 + 2);
          *v82 = v83;
          ++v151;
        }
      }
    }
  }

  v84 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v159 == 1)
  {
    if (v158 != &v159)
    {
      free(v158);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v157;
      v87 = __p;
      if (v157 != __p)
      {
        do
        {
          v86 = sub_10005BEF4(v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v157 = v85;
      operator delete(v87);
    }

    v88 = v154;
    if (v154)
    {
      v89 = v155;
      v90 = v154;
      if (v155 != v154)
      {
        do
        {
          v91 = *--v89;
          *v89 = 0;
          if (v91)
          {
            operator delete[]();
          }
        }

        while (v89 != v88);
        v90 = v154;
      }

      v155 = v88;
      operator delete(v90);
    }

    if (v150 != v153)
    {
      free(v150);
    }
  }

  if (!v84)
  {
    return 0;
  }

LABEL_118:
  if (*(*this + 9))
  {
    v92 = *this - 16;
  }

  else
  {
    v92 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v92, 0);
  if (!sub_10028DF9C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v145 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v148 = sub_100227728(&v145);
  v149 = v94;
  Shape = mlir::ShapedType::getShape(&v148);
  v97 = v96;
  ElementType = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v142 = sub_100227728(&ElementType);
  v143 = v98;
  v99 = mlir::ShapedType::getShape(&v142);
  if (v97 == v100 && !memcmp(Shape, v99, 8 * v97))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v142 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v144 = 259;
    mlir::OpState::emitOpError(&v148, this, &v142);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
    v102 = result;
    if (v148)
    {
      mlir::InFlightDiagnostic::report(&v148);
      result = v102;
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
        result = v102;
      }

      v111 = __p;
      if (__p)
      {
        v112 = v157;
        v113 = __p;
        if (v157 != __p)
        {
          do
          {
            v112 = sub_10005BEF4(v112 - 1);
          }

          while (v112 != v111);
          v113 = __p;
        }

        v157 = v111;
        operator delete(v113);
        result = v102;
      }

      v106 = v154;
      if (!v154)
      {
        goto LABEL_162;
      }

      v114 = v155;
      v108 = v154;
      if (v155 == v154)
      {
        goto LABEL_161;
      }

      do
      {
        v115 = *--v114;
        *v114 = 0;
        if (v115)
        {
          operator delete[]();
        }
      }

      while (v114 != v106);
      goto LABEL_160;
    }
  }

  else
  {
    v142 = "failed to verify that Result 0 and operand 1 must have the same shape.";
    v144 = 259;
    mlir::OpState::emitOpError(&v148, this, &v142);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
    v102 = result;
    if (v148)
    {
      mlir::InFlightDiagnostic::report(&v148);
      result = v102;
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
        result = v102;
      }

      v103 = __p;
      if (__p)
      {
        v104 = v157;
        v105 = __p;
        if (v157 != __p)
        {
          do
          {
            v104 = sub_10005BEF4(v104 - 1);
          }

          while (v104 != v103);
          v105 = __p;
        }

        v157 = v103;
        operator delete(v105);
        result = v102;
      }

      v106 = v154;
      if (!v154)
      {
        goto LABEL_162;
      }

      v107 = v155;
      v108 = v154;
      if (v155 == v154)
      {
LABEL_161:
        v155 = v106;
        operator delete(v108);
        result = v102;
LABEL_162:
        if (v150 != v153)
        {
          free(v150);
          return v102;
        }

        return result;
      }

      do
      {
        v109 = *--v107;
        *v107 = 0;
        if (v109)
        {
          operator delete[]();
        }
      }

      while (v107 != v106);
LABEL_160:
      v108 = v154;
      goto LABEL_161;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::parse(mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_1002915DC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_100291C2C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t sub_1002915DC(mlir::Operation *this, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  Encoding = mlir::RankedTensorType::getEncoding(&v58);
  if (!Encoding || *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v37 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
    v57 = v37;
    v38 = mlir::RankedTensorType::getEncoding(&v57);
    if (!v38 || *(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v39 = *a2;
  {
    sub_1002AAABC();
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v39 + 8);
    v42 = *(v39 + 16);
    if (v42)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = 0;
    goto LABEL_64;
  }

  v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_36:
  v43 = v41;
  v44 = v42;
  do
  {
    v45 = v44 >> 1;
    v46 = &v43[2 * (v44 >> 1)];
    v48 = *v46;
    v47 = v46 + 2;
    v44 += ~(v44 >> 1);
    if (v48 < v40)
    {
      v43 = v47;
    }

    else
    {
      v44 = v45;
    }
  }

  while (v44);
  if (v43 == &v41[2 * v42] || *v43 != v40)
  {
    goto LABEL_62;
  }

  v49 = v43[1];
LABEL_64:
  v61[0] = a2;
  v61[1] = v49;
  v55[0] = mlir::ShapedType::getElementType(v61);
  if (mlir::Type::isF16(v55) || mlir::Type::isF32(v55) || mlir::Type::isSignedInteger(v55, 4) || mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

LABEL_2:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(v61, this, v55);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v10 = &v58;
    v11 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v11 = v62;
        v10 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = &v58;
        v11 = v62;
      }
    }

    v12 = &v11[24 * v63];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v15 = &v58;
      v16 = v62;
      if (v14 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v14 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v16 = v62;
          v15 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v15 = &v58;
          v16 = v62;
        }
      }

      v17 = &v16[24 * v63];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 144;
        v20 = &v58;
        v21 = v62;
        if (v19 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v19 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v21 = v62;
            v20 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v20 = &v58;
            v21 = v62;
          }
        }

        v22 = &v21[24 * v63];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v63;
        if (v61[0])
        {
          v24 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v25 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v25 = v62;
              v24 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = &v58;
              v25 = v62;
            }
          }

          v26 = &v25[24 * v63];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v63;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v69;
      v31 = __p;
      if (v69 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v69 = v29;
      operator delete(v31);
    }

    v32 = v66;
    if (v66)
    {
      v33 = v67;
      v34 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v66;
      }

      v67 = v32;
      operator delete(v34);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v28;
}

uint64_t sub_100291C2C(mlir::Operation *this, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v61 = a2;
  Encoding = mlir::RankedTensorType::getEncoding(&v61);
  if (Encoding)
  {
    if (*(*Encoding + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v37 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
  v60 = v37;
  v38 = mlir::RankedTensorType::getEncoding(&v60);
  if (v38)
  {
    if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v39 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
  v59 = v39;
  v40 = mlir::RankedTensorType::getEncoding(&v59);
  if (v40)
  {
    if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v41 = *a2;
  {
    sub_1002AAABC();
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (v44)
    {
      goto LABEL_41;
    }

LABEL_67:
    v51 = 0;
    goto LABEL_69;
  }

  v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (!v44)
  {
    goto LABEL_67;
  }

LABEL_41:
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
    goto LABEL_67;
  }

  v51 = v45[1];
LABEL_69:
  v64[0] = a2;
  v64[1] = v51;
  v57[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v57) || mlir::Type::isF32(v57) || mlir::Type::isSignedInteger(v57, 4) || mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 32))
  {
    return 1;
  }

LABEL_2:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v64, this, v57);
  if (v64[0])
  {
    LODWORD(v61) = 3;
    v62 = " #";
    v63 = 2;
    v10 = &v61;
    v11 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v53 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v11 = v65;
        v10 = (v65 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v10 = &v61;
        v11 = v65;
      }
    }

    v12 = &v11[24 * v66];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v66;
    if (v64[0])
    {
      LODWORD(v61) = 5;
      v62 = a5;
      v15 = &v61;
      v16 = v65;
      if (v14 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v14 > &v61)
        {
          v54 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v14 + 1, 24);
          v16 = v65;
          v15 = (v65 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v14 + 1, 24);
          v15 = &v61;
          v16 = v65;
        }
      }

      v17 = &v16[24 * v66];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v66;
      if (v64[0])
      {
        LODWORD(v61) = 3;
        v62 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v63 = 144;
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
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v66;
        if (v64[0])
        {
          v24 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v25 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v56 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v25 = v65;
              v24 = (v65 + v56);
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
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v66;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
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

    v29 = __p;
    if (__p)
    {
      v30 = v72;
      v31 = __p;
      if (v72 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v72 = v29;
      operator delete(v31);
    }

    v32 = v69;
    if (v69)
    {
      v33 = v70;
      v34 = v69;
      if (v70 != v69)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v69;
      }

      v70 = v32;
      operator delete(v34);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::parse(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_100291C2C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_1002915DC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::parse(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002929C0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10028E5B0(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_1002929C0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_10028FB7C(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_10028E5B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL sub_1002929C0(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v56 = v7;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ShapedType::getElementType(v62);
  if (mlir::Type::isSignedInteger(v57, 4) || mlir::Type::isUnsignedInteger(v57, 8) || mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  v23 = *(*v57[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (v24)
  {
    return 1;
  }

LABEL_29:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v62, a1, v57);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v26 = &v59;
    v27 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v27 = v63;
        v26 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = &v59;
        v27 = v63;
      }
    }

    v28 = &v27[24 * v64];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    v30 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v31 = &v59;
      v32 = v63;
      if (v30 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v30 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v32 = v63;
          v31 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v31 = &v59;
          v32 = v63;
        }
      }

      v33 = &v32[24 * v64];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type values, but got ";
        v61 = 138;
        v36 = &v59;
        v37 = v63;
        if (v35 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v35 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v37 = v63;
            v36 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v36 = &v59;
            v37 = v63;
          }
        }

        v38 = &v37[24 * v64];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v64;
        if (v62[0])
        {
          v40 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v41 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v41 = v63;
              v40 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = &v59;
              v41 = v63;
            }
          }

          v42 = &v41[24 * v64];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v64;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v70;
      v46 = __p;
      if (v70 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v70 = v44;
      operator delete(v46);
    }

    v47 = v67;
    if (v67)
    {
      v48 = v68;
      v49 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v67;
      }

      v68 = v47;
      operator delete(v49);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10028E5B0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10028E5B0(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10029332C(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_10028FB7C(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_10029332C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL sub_10029332C(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_28;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v56 = v7;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ShapedType::getElementType(v62);
  if (mlir::Type::isUnsignedInteger(v57, 8) || mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  v23 = *(*v57[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (v24)
  {
    return 1;
  }

LABEL_28:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v62, a1, v57);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v26 = &v59;
    v27 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v27 = v63;
        v26 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = &v59;
        v27 = v63;
      }
    }

    v28 = &v27[24 * v64];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    v30 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v31 = &v59;
      v32 = v63;
      if (v30 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v30 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v32 = v63;
          v31 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v31 = &v59;
          v32 = v63;
        }
      }

      v33 = &v32[24 * v64];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type values, but got ";
        v61 = 114;
        v36 = &v59;
        v37 = v63;
        if (v35 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v35 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v37 = v63;
            v36 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v36 = &v59;
            v37 = v63;
          }
        }

        v38 = &v37[24 * v64];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v64;
        if (v62[0])
        {
          v40 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v41 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v41 = v63;
              v40 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = &v59;
              v41 = v63;
            }
          }

          v42 = &v41[24 * v64];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v64;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v70;
      v46 = __p;
      if (v70 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v70 = v44;
      operator delete(v46);
    }

    v47 = v67;
    if (v67)
    {
      v48 = v68;
      v49 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v67;
      }

      v68 = v47;
      operator delete(v49);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_10028D2F4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_10028D2F4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::parse(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_1002572C8(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001EFDBC(a2, Results, v8);
          v9 = sub_100257520(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

const char *sub_10029419C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp]";
  v6 = 130;
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

const char *sub_1002944D8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp]";
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

const char *sub_100294814()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp]";
  v6 = 136;
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

const char *sub_100294D24()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp]";
  v6 = 129;
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

const char *sub_100294E8C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp]";
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

mlir::Diagnostic *sub_100294F0C@<X0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = 257;
  return mlir::OpState::emitError(v2, v4, a2);
}

mlir::Diagnostic *sub_100294F3C@<X0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = 257;
  return mlir::OpState::emitError(v2, v4, a2);
}

uint64_t *sub_100294F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(*v19 + 36);
  v22 = *v19 - 16;
  if (!v21)
  {
    v22 = 0;
  }

  a18 = v22;
  a19 = v21;

  return mlir::ResultRange::getTypes(&a10, &a18);
}

llvm::raw_ostream *sub_100294FBC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return sub_100257B04(v2, va1, va);
}

uint64_t *sub_100294FD8@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va, va1);
}

uint64_t sub_10029500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return mlir::DictionaryAttr::getValue(&a14);
}

unint64_t sub_100295024()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

void mlir::ODIE::Compiler::CoreMLAX::getStrides(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a1;
  Shape = mlir::RankedTensorType::getShape(&v19);
  Encoding = mlir::RankedTensorType::getEncoding(&v19);
  if (Encoding)
  {
    v5 = *(*Encoding + 136);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
    v7 = v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id ? Encoding : 0;
    v18 = v7;
    if (v6)
    {
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v18, Shape, a2);
      return;
    }
  }

  mlir::RankedTensorType::getShape(&v19);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v9 = v8 + 1;
  if (v8 == -1)
  {
    return;
  }

  if (v9 < 7)
  {
    v10 = 0;
    v11 = v8 + 1;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v8 + 1, 8);
    v10 = *(a2 + 2);
    v11 = v9 - v10;
    if (v9 == v10)
    {
      goto LABEL_13;
    }
  }

  bzero((*a2 + 8 * v10), 8 * v11);
LABEL_13:
  *(a2 + 2) = v9;
  if (v9)
  {
    v12 = v9;
    v13 = *a2;
    *(*a2 + 8 * (v9 - 1)) = 1;
    if (v9 != 1)
    {
      v14 = 0;
      v15 = v13 - 16;
      v16 = 1;
      do
      {
        v17 = *(Shape - 16 + 8 * v12);
        v14 |= v17 == 0x8000000000000000;
        v16 *= v17;
        if (v14)
        {
          v16 = 0x8000000000000000;
        }

        *(v15 + 8 * v12--) = v16;
      }

      while (v12 != 1);
    }
  }
}

uint64_t mlir::ODIE::Compiler::getHandleForToken(uint64_t a1)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    v2 = *(*(result + 48) + 16);
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
    {
      return *(*(result + 72) + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::getSymbolicTypeAffineMap(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  result = mlir::RankedTensorType::getEncoding(&v3);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return a1 == a2;
  }

  Encoding = mlir::RankedTensorType::getEncoding(&v18);
  if (Encoding)
  {
    v8 = *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
    v9 = mlir::RankedTensorType::getEncoding(&v17);
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (!v8)
    {
      goto LABEL_14;
    }

    return a1 == a2;
  }

  v8 = 1;
  v9 = mlir::RankedTensorType::getEncoding(&v17);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (((v8 ^ (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)) & 1) == 0)
  {
    return a1 == a2;
  }

LABEL_14:
  ElementType = mlir::RankedTensorType::getElementType(&v18);
  if (ElementType == mlir::RankedTensorType::getElementType(&v17) && (Shape = mlir::RankedTensorType::getShape(&v18), v13 = v12, v14 = mlir::RankedTensorType::getShape(&v17), v13 == v15))
  {
    return memcmp(Shape, v14, 8 * v13) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a2 == i)
      {
        break;
      }

      v8 = mlir::TypeRange::dereference_iterator(a1, i);
      v9 = mlir::TypeRange::dereference_iterator(a3, i);
      result = mlir::ODIE::Compiler::areTypesCompatible(v8, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v22 = this;
  if (this)
  {
    this = sub_100296458(this);
  }

  v21[0] = v2;
  v21[1] = this;
  v20 = v21;
  if (!sub_1002956DC(v2, 0, sub_100296FE8, &v20))
  {
    return 0;
  }

  v19 = v21;
  v3 = v2[11];
  v4 = 1;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v6 = (v5 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v23 = v25;
      v24 = 0x300000000;
      v7 = *(v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      do
      {
        v10 = (v7 - 8);
        if (!v7)
        {
          v10 = 0;
        }

        if (v10[4] != v10 + 4)
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v12 = v11;
          if (sub_100296D3C(v11))
          {
            v13 = sub_100296D3C(v12);
            if (v12)
            {
              v8 = v24;
              if (v24 >= HIDWORD(v24))
              {
                v17 = v13;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 16);
                v13 = v17;
                v8 = v24;
              }

              v9 = (v23 + 16 * v8);
              *v9 = v12;
              v9[1] = v13;
              LODWORD(v24) = v24 + 1;
            }
          }
        }

        v7 = *(v7 + 1);
      }

      while (v7 != v5);
      if (!v24)
      {
        break;
      }

      v18[0] = &v23;
      v18[1] = &v19;
      v18[2] = &v22;
      v18[3] = v5;
      v14 = !sub_1002956DC(v22, v5, sub_100297094, v18);
      v15 = v23;
      if (v23 != v25)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v14 != 3 && v14)
      {
        return 0;
      }

      v5 = (v5 + 24);
      if (v5 == v6)
      {
        return 1;
      }
    }

    v14 = 3;
    v15 = v23;
    if (v23 == v25)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v15);
    goto LABEL_25;
  }

  return v4;
}

BOOL sub_1002956DC(mlir::Operation *a1, mlir::Region *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, unint64_t), uint64_t a4)
{
  if (a1)
  {
    v6 = sub_100296458(a1);
  }

  else
  {
    v6 = 0;
  }

  v125 = v127;
  v126 = 0x200000000;
  (*(v6 + 16))(v6, a1, a2, &v125);
  if (v126)
  {
    v7 = v125;
    v102 = &v125[3 * v126];
    while (1)
    {
      a3(&v122, a4, *v7);
      if ((v124 & 1) == 0)
      {
        v54 = 0;
        goto LABEL_82;
      }

      v119 = *(v7 + 1);
      mlir::ValueRange::getTypes(&v119, &v108);
      v9 = v108.n128_u64[1];
      v8 = v108.n128_u64[0];
      v10 = v109;
      v105 = v108;
      if (v108.n128_u64[1])
      {
        v8 = mlir::ValueRange::offset_base(&v105, v108.n128_i64[1]);
        v9 = v105.n128_u64[1];
      }

      mlir::TypeRange::TypeRange(&v120, v8, v10 - v9);
      v11 = v123;
      if (v123 != v121)
      {
        break;
      }

      if (v123)
      {
        v12 = 0;
        v13 = v122;
        v14 = v120;
        while (v11 != v12)
        {
          v15 = mlir::TypeRange::dereference_iterator(v13, v12);
          v16 = mlir::TypeRange::dereference_iterator(v14, v12);
          if (((*(v6 + 32))(v6, a1, v15, v16) & 1) == 0)
          {
            v105.n128_u64[0] = " along control flow edge ";
            v107 = 259;
            mlir::Operation::emitOpError(&v108, a1, &v105);
            sub_100296704(&v108, a2, *v7);
            if (v108.n128_u64[0])
            {
              v105.n128_u32[0] = 3;
              v105.n128_u64[1] = ": source type #";
              v106 = 15;
              v17 = &v105;
              v18 = v109;
              if (v110 >= v111)
              {
                if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                {
                  v90 = &v105 - v109;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                  v18 = v109;
                  v17 = (v109 + v90);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                  v17 = &v105;
                  v18 = v109;
                }
              }

              v19 = &v18[24 * v110];
              v20 = *v17;
              *(v19 + 2) = v17[1].n128_u64[0];
              *v19 = v20;
              v21 = ++v110;
              if (v108.n128_u64[0])
              {
                v105.n128_u32[0] = 5;
                v105.n128_u64[1] = v12;
                v22 = &v105;
                v23 = v109;
                if (v21 >= v111)
                {
                  if (v109 <= &v105 && v109 + 24 * v21 > &v105)
                  {
                    v91 = &v105 - v109;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v21 + 1, 24);
                    v23 = v109;
                    v22 = (v109 + v91);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v21 + 1, 24);
                    v22 = &v105;
                    v23 = v109;
                  }
                }

                v24 = &v23[24 * v110];
                v25 = *v22;
                *(v24 + 2) = v22[1].n128_u64[0];
                *v24 = v25;
                v26 = ++v110;
                if (v108.n128_u64[0])
                {
                  v105.n128_u32[0] = 3;
                  v105.n128_u64[1] = " ";
                  v106 = 1;
                  v27 = &v105;
                  v28 = v109;
                  if (v26 >= v111)
                  {
                    if (v109 <= &v105 && v109 + 24 * v26 > &v105)
                    {
                      v92 = &v105 - v109;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v26 + 1, 24);
                      v28 = v109;
                      v27 = (v109 + v92);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v26 + 1, 24);
                      v27 = &v105;
                      v28 = v109;
                    }
                  }

                  v29 = &v28[24 * v110];
                  v30 = *v27;
                  *(v29 + 2) = v27[1].n128_u64[0];
                  *v29 = v30;
                  ++v110;
                  if (v108.n128_u64[0])
                  {
                    v31 = &v105;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v105, v15);
                    v32 = v109;
                    if (v110 >= v111)
                    {
                      if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                      {
                        v93 = &v105 - v109;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                        v32 = v109;
                        v31 = (v109 + v93);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                        v31 = &v105;
                        v32 = v109;
                      }
                    }

                    v33 = &v32[24 * v110];
                    v34 = *v31;
                    *(v33 + 2) = v31[1].n128_u64[0];
                    *v33 = v34;
                    v35 = ++v110;
                    if (v108.n128_u64[0])
                    {
                      v105.n128_u32[0] = 3;
                      v105.n128_u64[1] = " should match input type #";
                      v106 = 26;
                      v36 = &v105;
                      v37 = v109;
                      if (v35 >= v111)
                      {
                        if (v109 <= &v105 && v109 + 24 * v35 > &v105)
                        {
                          v95 = &v105 - v109;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v35 + 1, 24);
                          v37 = v109;
                          v36 = (v109 + v95);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v35 + 1, 24);
                          v36 = &v105;
                          v37 = v109;
                        }
                      }

                      v38 = &v37[24 * v110];
                      v39 = *v36;
                      *(v38 + 2) = v36[1].n128_u64[0];
                      *v38 = v39;
                      v40 = ++v110;
                      if (v108.n128_u64[0])
                      {
                        v105.n128_u32[0] = 5;
                        v105.n128_u64[1] = v12;
                        v41 = &v105;
                        v42 = v109;
                        if (v40 >= v111)
                        {
                          if (v109 <= &v105 && v109 + 24 * v40 > &v105)
                          {
                            v97 = &v105 - v109;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v40 + 1, 24);
                            v42 = v109;
                            v41 = (v109 + v97);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v40 + 1, 24);
                            v41 = &v105;
                            v42 = v109;
                          }
                        }

                        v43 = &v42[24 * v110];
                        v44 = *v41;
                        *(v43 + 2) = v41[1].n128_u64[0];
                        *v43 = v44;
                        v45 = ++v110;
                        if (v108.n128_u64[0])
                        {
                          v105.n128_u32[0] = 3;
                          v105.n128_u64[1] = " ";
                          v106 = 1;
                          v46 = &v105;
                          v47 = v109;
                          if (v45 >= v111)
                          {
                            if (v109 <= &v105 && v109 + 24 * v45 > &v105)
                            {
                              v99 = &v105 - v109;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v45 + 1, 24);
                              v47 = v109;
                              v46 = (v109 + v99);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v45 + 1, 24);
                              v46 = &v105;
                              v47 = v109;
                            }
                          }

                          v48 = &v47[24 * v110];
                          v49 = *v46;
                          *(v48 + 2) = v46[1].n128_u64[0];
                          *v48 = v49;
                          ++v110;
                          if (v108.n128_u64[0])
                          {
                            v50 = &v105;
                            mlir::DiagnosticArgument::DiagnosticArgument(&v105, v16);
                            v51 = v109;
                            if (v110 >= v111)
                            {
                              if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                              {
                                v101 = &v105 - v109;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                                v51 = v109;
                                v50 = (v109 + v101);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                                v50 = &v105;
                                v51 = v109;
                              }
                            }

                            v52 = &v51[24 * v110];
                            v53 = *v50;
                            *(v52 + 2) = v50[1].n128_u64[0];
                            *v52 = v53;
                            ++v110;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
            if (v108.n128_u64[0])
            {
              mlir::InFlightDiagnostic::report(&v108);
            }

            if ((v118 & 1) == 0)
            {
              goto LABEL_82;
            }

            if (v117 != &v118)
            {
              free(v117);
            }

            v55 = __p;
            if (__p)
            {
              v56 = v116;
              v57 = __p;
              if (v116 != __p)
              {
                do
                {
                  v56 = sub_10005BEF4(v56 - 1);
                }

                while (v56 != v55);
                v57 = __p;
              }

              v116 = v55;
              operator delete(v57);
            }

            v58 = v113;
            if (v113)
            {
              v59 = v114;
              v60 = v113;
              if (v114 != v113)
              {
                do
                {
                  v61 = *--v59;
                  *v59 = 0;
                  if (v61)
                  {
                    operator delete[]();
                  }
                }

                while (v59 != v58);
                v60 = v113;
              }

              v114 = v58;
              operator delete(v60);
            }

            v62 = v109;
            if (v109 == v112)
            {
              goto LABEL_82;
            }

            goto LABEL_54;
          }

          if (v11 == ++v12)
          {
            break;
          }
        }
      }

      v7 += 3;
      if (v7 == v102)
      {
        v54 = 1;
        goto LABEL_82;
      }
    }

    v105.n128_u64[0] = " region control flow edge ";
    v107 = 259;
    mlir::Operation::emitOpError(&v108, a1, &v105);
    sub_100296704(&v108, a2, *v7);
    if (v108.n128_u64[0])
    {
      v105.n128_u32[0] = 3;
      v105.n128_u64[1] = ": source has ";
      v106 = 13;
      v63 = &v105;
      v64 = v109;
      if (v110 >= v111)
      {
        if (v109 <= &v105 && v109 + 24 * v110 > &v105)
        {
          v94 = &v105 - v109;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v64 = v109;
          v63 = (v109 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v63 = &v105;
          v64 = v109;
        }
      }

      v65 = &v64[24 * v110];
      v66 = *v63;
      *(v65 + 2) = v63[1].n128_u64[0];
      *v65 = v66;
      v67 = ++v110;
      if (v108.n128_u64[0])
      {
        v105.n128_u32[0] = 5;
        v105.n128_u64[1] = v123;
        v68 = &v105;
        v69 = v109;
        if (v67 >= v111)
        {
          if (v109 <= &v105 && v109 + 24 * v67 > &v105)
          {
            v96 = &v105 - v109;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v67 + 1, 24);
            v69 = v109;
            v68 = (v109 + v96);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v67 + 1, 24);
            v68 = &v105;
            v69 = v109;
          }
        }

        v70 = &v69[24 * v110];
        v71 = *v68;
        *(v70 + 2) = v68[1].n128_u64[0];
        *v70 = v71;
        v72 = ++v110;
        if (v108.n128_u64[0])
        {
          v105.n128_u32[0] = 3;
          v105.n128_u64[1] = " operands, but target successor needs ";
          v106 = 38;
          v73 = &v105;
          v74 = v109;
          if (v72 >= v111)
          {
            if (v109 <= &v105 && v109 + 24 * v72 > &v105)
            {
              v98 = &v105 - v109;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v72 + 1, 24);
              v74 = v109;
              v73 = (v109 + v98);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v72 + 1, 24);
              v73 = &v105;
              v74 = v109;
            }
          }

          v75 = &v74[24 * v110];
          v76 = *v73;
          *(v75 + 2) = v73[1].n128_u64[0];
          *v75 = v76;
          v77 = ++v110;
          if (v108.n128_u64[0])
          {
            v105.n128_u32[0] = 5;
            v105.n128_u64[1] = v121;
            v78 = &v105;
            v79 = v109;
            if (v77 >= v111)
            {
              if (v109 <= &v105 && v109 + 24 * v77 > &v105)
              {
                v100 = &v105 - v109;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v77 + 1, 24);
                v79 = v109;
                v78 = (v109 + v100);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v77 + 1, 24);
                v78 = &v105;
                v79 = v109;
              }
            }

            v80 = &v79[24 * v110];
            v81 = *v78;
            *(v80 + 2) = v78[1].n128_u64[0];
            *v80 = v81;
            ++v110;
          }
        }
      }
    }

    v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
    if (v108.n128_u64[0])
    {
      mlir::InFlightDiagnostic::report(&v108);
    }

    if (v118 == 1)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v82 = __p;
      if (__p)
      {
        v83 = v116;
        v84 = __p;
        if (v116 != __p)
        {
          do
          {
            v83 = sub_10005BEF4(v83 - 1);
          }

          while (v83 != v82);
          v84 = __p;
        }

        v116 = v82;
        operator delete(v84);
      }

      v85 = v113;
      if (v113)
      {
        v86 = v114;
        v87 = v113;
        if (v114 != v113)
        {
          do
          {
            v88 = *--v86;
            *v86 = 0;
            if (v88)
            {
              operator delete[]();
            }
          }

          while (v86 != v85);
          v87 = v113;
        }

        v114 = v85;
        operator delete(v87);
      }

      v62 = v109;
      if (v109 != v112)
      {
LABEL_54:
        free(v62);
      }
    }
  }

  else
  {
    v54 = 1;
  }

LABEL_82:
  if (v125 != v127)
  {
    free(v125);
  }

  return v54;
}

uint64_t sub_100296458(uint64_t a1)
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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_1002AE418();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
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
    sub_1002AE3C4();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
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
    sub_1002AE3C4();
    v18 = v23;
  }

  v19 = *(v4 + 365);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_10029663C(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AE458();
  }

  return llvm::getTypeName<mlir::RegionBranchOpInterface>(void)::Name;
}

const char *sub_100296684()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionBranchOpInterface]";
  v6 = 91;
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

uint64_t *sub_100296704(uint64_t *a1, mlir::Region *this, unint64_t a3)
{
  if (*a1)
  {
    v5 = a1 + 3;
    v6 = a1[3];
    v70 = 3;
    v71 = "from ";
    v72 = 5;
    v7 = *(a1 + 8);
    v8 = &v70;
    if (v7 >= *(a1 + 9))
    {
      v60 = this;
      if (v6 <= &v70 && v6 + 24 * v7 > &v70)
      {
        v62 = &v70 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 5, v7 + 1, 24);
        v6 = a1[3];
        v8 = &v62[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 5, v7 + 1, 24);
        v6 = a1[3];
        v8 = &v70;
      }

      this = v60;
    }

    v9 = v6 + 24 * *(a1 + 8);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    ++*(a1 + 8);
  }

  v11 = *a1;
  if (this)
  {
    if (v11)
    {
      v12 = a1 + 3;
      v13 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v14 = *(a1 + 8);
      v15 = &v70;
      if (v14 >= *(a1 + 9))
      {
        v61 = this;
        if (v13 <= &v70 && v13 + 24 * v14 > &v70)
        {
          v63 = &v70 - v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a1 + 5, v14 + 1, 24);
          v13 = a1[3];
          v15 = &v63[v13];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a1 + 5, v14 + 1, 24);
          v13 = a1[3];
          v15 = &v70;
        }

        this = v61;
      }

      v16 = v13 + 24 * *(a1 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      ++*(a1 + 8);
    }

    RegionNumber = mlir::Region::getRegionNumber(this);
    if (!*a1)
    {
      goto LABEL_17;
    }

    v19 = RegionNumber;
    v20 = a1 + 3;
    v21 = a1[3];
    v70 = 5;
    v71 = v19;
    v22 = *(a1 + 8);
    v23 = &v70;
    if (v22 >= *(a1 + 9))
    {
      if (v21 <= &v70 && v21 + 24 * v22 > &v70)
      {
        v64 = &v70 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, a1 + 5, v22 + 1, 24);
        v21 = a1[3];
        v23 = &v64[v21];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, a1 + 5, v22 + 1, 24);
        v21 = a1[3];
        v23 = &v70;
      }
    }

    v24 = v21 + 24 * *(a1 + 8);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 2);
    *v24 = v25;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (!*a1)
    {
      goto LABEL_17;
    }

LABEL_15:
    v33 = a1 + 3;
    v34 = a1[3];
    v70 = 3;
    v71 = " to ";
    v72 = 4;
    v35 = &v70;
    if (v26 >= *(a1 + 9))
    {
      if (v34 <= &v70 && v34 + 24 * v26 > &v70)
      {
        v65 = &v70 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, a1 + 5, v26 + 1, 24);
        v34 = a1[3];
        v35 = &v65[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, a1 + 5, v26 + 1, 24);
        v34 = a1[3];
        v35 = &v70;
      }
    }

    v36 = v34 + 24 * *(a1 + 8);
    v37 = *v35;
    *(v36 + 16) = *(v35 + 2);
    *v36 = v37;
    ++*(a1 + 8);
    goto LABEL_17;
  }

  if (v11)
  {
    v27 = a1 + 3;
    v28 = a1[3];
    v70 = 3;
    v71 = "parent operands";
    v72 = 15;
    v29 = *(a1 + 8);
    v30 = &v70;
    if (v29 >= *(a1 + 9))
    {
      if (v28 <= &v70 && v28 + 24 * v29 > &v70)
      {
        v68 = &v70 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, a1 + 5, v29 + 1, 24);
        v28 = a1[3];
        v30 = &v68[v28];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, a1 + 5, v29 + 1, 24);
        v28 = a1[3];
        v30 = &v70;
      }
    }

    v31 = v28 + 24 * *(a1 + 8);
    v32 = *v30;
    *(v31 + 16) = *(v30 + 2);
    *v31 = v32;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (*a1)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v38 = *a1;
  if (a3)
  {
    if (v38)
    {
      v39 = a1 + 3;
      v40 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v41 = *(a1 + 8);
      v42 = &v70;
      if (v41 >= *(a1 + 9))
      {
        if (v40 <= &v70 && v40 + 24 * v41 > &v70)
        {
          v66 = &v70 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, a1 + 5, v41 + 1, 24);
          v40 = a1[3];
          v42 = &v66[v40];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, a1 + 5, v41 + 1, 24);
          v40 = a1[3];
          v42 = &v70;
        }
      }

      v43 = v40 + 24 * *(a1 + 8);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(a1 + 8);
    }

    v45 = mlir::Region::getRegionNumber(a3);
    if (*a1)
    {
      v46 = v45;
      v47 = a1 + 3;
      v48 = a1[3];
      v70 = 5;
      v71 = v46;
      v49 = *(a1 + 8);
      v50 = &v70;
      if (v49 >= *(a1 + 9))
      {
        if (v48 <= &v70 && v48 + 24 * v49 > &v70)
        {
          v67 = &v70 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, a1 + 5, v49 + 1, 24);
          v48 = a1[3];
          v50 = &v67[v48];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, a1 + 5, v49 + 1, 24);
          v48 = a1[3];
          v50 = &v70;
        }
      }

      v51 = v48 + 24 * *(a1 + 8);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 2);
      *v51 = v52;
LABEL_27:
      ++*(a1 + 8);
    }
  }

  else if (v38)
  {
    v53 = a1 + 3;
    v54 = a1[3];
    v70 = 3;
    v71 = "parent results";
    v72 = 14;
    v55 = *(a1 + 8);
    v56 = &v70;
    if (v55 >= *(a1 + 9))
    {
      if (v54 <= &v70 && v54 + 24 * v55 > &v70)
      {
        v69 = &v70 - v54;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, a1 + 5, v55 + 1, 24);
        v54 = a1[3];
        v56 = &v69[v54];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, a1 + 5, v55 + 1, 24);
        v54 = a1[3];
        v56 = &v70;
      }
    }

    v57 = v54 + 24 * *(a1 + 8);
    v58 = *v56;
    *(v57 + 16) = *(v56 + 2);
    *v57 = v58;
    goto LABEL_27;
  }

  return a1;
}

uint64_t sub_100296D3C(uint64_t a1)
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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_1002AE500();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;
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
    sub_1002AE4AC();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;
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
    sub_1002AE4AC();
    v18 = v23;
  }

  v19 = *(v4 + 370);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_100296F20(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AE540();
  }

  return llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>(void)::Name;
}

const char *sub_100296F68()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionBranchTerminatorOpInterface]";
  v6 = 101;
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

double sub_100296FE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = (**(*a1 + 8))();
  v5[1] = v3;
  mlir::OperandRange::getTypes(v5, &v6);
  mlir::ValueRange::ValueRange(v10, v6 + 32 * v7, v8 - v7);
  mlir::TypeRange::TypeRange(v9, v10[0], v10[1]);
  result = *v9;
  *a2 = *v9;
  *(a2 + 16) = 1;
  return result;
}

void sub_100297094(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v33) = 0;
  v34 = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
LABEL_20:
    mlir::OperandRange::getTypes(&v33, &v39);
    mlir::ValueRange::ValueRange(&v35, v39 + 32 * v40, v42 - v40);
    *(mlir::TypeRange::TypeRange(a3, v35, v36) + 16) = 1;
    return;
  }

  v6 = *v3;
  v7 = *v3 + 16 * v4;
  while (1)
  {
    (**(v6 + 8))(&v39);
    v8 = mlir::MutableOperandRange::operator mlir::OperandRange(&v39);
    v10 = v9;
    if (v41 != v43)
    {
      free(v41);
    }

    *&v32 = v8;
    *(&v32 + 1) = v10;
    if ((v34 & 1) == 0)
    {
      v33 = v32;
      v34 = 1;
      goto LABEL_4;
    }

    v11 = *(a1 + 8);
    mlir::OperandRange::getTypes(&v33, &v39);
    mlir::ValueRange::ValueRange(&v35, v39 + 32 * v40, v42 - v40);
    mlir::TypeRange::TypeRange(&v52, v35, v36);
    mlir::OperandRange::getTypes(&v32, &v39);
    mlir::ValueRange::ValueRange(&v35, v39 + 32 * v40, v42 - v40);
    mlir::TypeRange::TypeRange(v51, v35, v36);
    v12 = v53;
    if (v53 != v51[1])
    {
      goto LABEL_14;
    }

    if (v53)
    {
      break;
    }

LABEL_4:
    v6 += 16;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v13 = 0;
  v14 = v52;
  v15 = v51[0];
  while (1)
  {
    mlir::TypeRange::dereference_iterator(v14, v13);
    mlir::TypeRange::dereference_iterator(v15, v13);
    if (!(*(*(*v11 + 8) + 32))())
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  v16 = **(a1 + 16);
  v35 = " along control flow edge";
  v38 = 259;
  mlir::Operation::emitOpError(&v39, v16, &v35);
  sub_100296704(&v39, *(a1 + 24), a2);
  if (!v39)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v50 != 1)
    {
      return;
    }

    goto LABEL_22;
  }

  LODWORD(v35) = 3;
  v36 = " operands mismatch between return-like terminators";
  v37 = 50;
  v17 = &v35;
  v18 = v42;
  if (v43[0] >= v43[1])
  {
    if (v42 <= &v35 && v42 + 24 * v43[0] > &v35)
    {
      v29 = &v35 - v42;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43[0] + 1, 24);
      v18 = v42;
      v17 = (v42 + v29);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43[0] + 1, 24);
      v17 = &v35;
      v18 = v42;
    }
  }

  v19 = &v18[24 * v43[0]];
  v20 = *v17;
  *(v19 + 2) = v17[2];
  *v19 = v20;
  ++v43[0];
  v21 = v39;
  *a3 = 0;
  *(a3 + 16) = 0;
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v50 == 1)
  {
LABEL_22:
    if (v49 != &v50)
    {
      free(v49);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v48;
      v24 = __p;
      if (v48 != __p)
      {
        do
        {
          v23 = sub_10005BEF4(v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v48 = v22;
      operator delete(v24);
    }

    v25 = v45;
    if (v45)
    {
      v26 = v46;
      v27 = v45;
      if (v46 != v45)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v45;
      }

      v46 = v25;
      operator delete(v27);
    }

    if (v42 != v44)
    {
      free(v42);
    }
  }
}

uint64_t mlir::ShapeAdaptor::hasRank(mlir::ShapeAdaptor *this)
{
  if (*this < 8uLL)
  {
    return 0;
  }

  v4 = *this & 6;
  v5 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v4 == 2 && v5 != 0)
  {
    v20[2] = v1;
    v20[3] = v2;
    v7 = *v5;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = v7;
      v19 = v5;
      sub_10029F6C0();
      v5 = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
      goto LABEL_25;
    }

LABEL_23:
    v17 = 0;
LABEL_25:
    v20[0] = v5;
    v20[1] = v17;
    return mlir::ShapedType::hasRank(v20) & 1;
  }

  if (v4 == 4)
  {
    return 1;
  }

  else
  {
    return *(v5 + 56) & 1;
  }
}

uint64_t mlir::ShapeAdaptor::getElementType(mlir::ShapeAdaptor *this)
{
  if (*this < 8uLL)
  {
    return 0;
  }

  v4 = *this & 6;
  v5 = (*this & 0xFFFFFFFFFFFFFFF8);
  if (v4 == 2 && v5 != 0)
  {
    v20[2] = v1;
    v20[3] = v2;
    v7 = *v5;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = v7;
      v19 = v5;
      sub_10029F6C0();
      v5 = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
      goto LABEL_24;
    }

LABEL_22:
    v17 = 0;
LABEL_24:
    v20[0] = v5;
    v20[1] = v17;
    return mlir::ShapedType::getElementType(v20);
  }

  if (v4 == 4)
  {
    return 0;
  }

  return v5[5];
}

void mlir::ShapeAdaptor::getDims(void *a1, uint64_t a2)
{
  v3 = *a1 & 6;
  v4 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v3 == 2 && v4 != 0)
  {
    v10 = *v4;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = v10[1];
      v13 = *(v10 + 4);
      if (!v13)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_10029F6C0();
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = v10[1];
      v13 = *(v10 + 4);
      if (!v13)
      {
        goto LABEL_45;
      }
    }

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
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v26 = v14[1];
      goto LABEL_47;
    }

LABEL_45:
    v26 = 0;
LABEL_47:
    *&v36 = v4;
    *(&v36 + 1) = v26;
    Shape = mlir::ShapedType::getShape(&v36);
    v29 = v28;
    v30 = 0;
    *(a2 + 8) = 0;
    v31 = (8 * v28) >> 3;
    if (v31 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v31, 8);
      v30 = *(a2 + 8);
    }

    if (v29)
    {
      memcpy((*a2 + 8 * v30), Shape, 8 * v29);
      v30 = *(a2 + 8);
    }

    v25 = v30 + v29;
    goto LABEL_52;
  }

  if (v3 != 4 || v4 == 0)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    *(a2 + 8) = 0;
    if (v8 <= *(a2 + 12))
    {
      if (!v8)
      {
        v24 = 0;
        goto LABEL_40;
      }

      v9 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v8, 8);
      v9 = *(a2 + 8);
    }

    memcpy((*a2 + 8 * v9), v7, 8 * v8);
    v24 = *(a2 + 8);
LABEL_40:
    v25 = v24 + v8;
LABEL_52:
    *(a2 + 8) = v25;
    return;
  }

  v39 = *a1 & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = 0;
  NumElements = mlir::DenseElementsAttr::getNumElements(&v39);
  if (NumElements > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), NumElements, 8);
  }

  sub_1000C1790(&v39, &v36);
  v34 = v36;
  v35 = v37;
  for (i = v38; v35 != i; *&v35 = v35 + 1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v34, &v32);
    if (v33 > 0x40)
    {
      v22 = *v32;
    }

    else if (v33)
    {
      v22 = (v32 << -v33) >> -v33;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a2 + 8);
    if (v23 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v23 + 1, 8);
      v23 = *(a2 + 8);
    }

    *(*a2 + 8 * v23) = v22;
    ++*(a2 + 8);
    if (v33 >= 0x41 && v32)
    {
      operator delete[]();
    }
  }
}

{
  *(a2 + 56) = 1;
  mlir::ShapeAdaptor::getDims(a1, a2);
}

unint64_t mlir::ValueShapeRange::getShape(mlir::ValueShapeRange *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 1) <= a2)
  {
    return 0;
  }

  v3 = mlir::ValueRange::dereference_iterator(this, a2);
  v4 = *(this + 2);
  if (!v4 || (result = v4(*(this + 3), v3), result <= 7))
  {
    result = sub_100067788((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (result)
    {
      return result & 0xFFFFFFFFFFFFFFF9 | 2;
    }
  }

  return result;
}

uint64_t sub_100297A54(uint64_t a1)
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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_1002AE990();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &CoreMLSegmenter;
    v5 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
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
    sub_1002AE93C();
    v3 = v21;
    a1 = v22;
    v4 = &CoreMLSegmenter;
    v5 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
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
    sub_1002AE93C();
    v4 = &CoreMLSegmenter;
    v18 = v23;
  }

  base_meths = v4[55].base_meths;
  v20 = *(*v17 + 104);

  return v20(v17, base_meths, v18);
}

uint64_t sub_100297C38(unint64_t **a1, uint64_t a2)
{
  {
    sub_1002A2394();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = &v9;
    v8[1] = &_mh_execute_header;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseIntElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != &v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

void sub_100297D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, va, v24 + 1, 24);
}

uint64_t mlir::function_interface_impl::getArgAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 24))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::getResultAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 32))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::parseFunctionSignatureWithArguments(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  *a4 = 0;
  v11[0] = a4;
  v11[1] = a1;
  v11[2] = &v12;
  v11[3] = a3;
  v9 = (*(*a1 + 392))(a1, 1, sub_100297F7C, v11, 0, 0);
  result = 0;
  if (v9)
  {
    if ((*(*a1 + 64))(a1))
    {
      return mlir::call_interface_impl::parseFunctionResultList(a1, a5, a6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100297F7C(uint64_t a1)
{
  if (**a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = (*(*v2 + 40))(v2);
    v35[0] = "variadic arguments must be in the end of the argument list";
    LOWORD(v36) = 259;
    (*(*v2 + 24))(&v39, v2, v3, v35);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v47;
        v7 = __p;
        if (v47 != __p)
        {
          do
          {
            v6 = sub_10005BEF4(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v47 = v5;
        operator delete(v7);
      }

      v8 = v44;
      if (!v44)
      {
        goto LABEL_57;
      }

      v9 = v45;
      v10 = v44;
      if (v45 == v44)
      {
LABEL_56:
        v45 = v8;
        operator delete(v10);
LABEL_57:
        if (v42 != v43)
        {
          free(v42);
        }

        return v4;
      }

      do
      {
        v11 = *--v9;
        *v9 = 0;
        if (v11)
        {
          operator delete[]();
        }
      }

      while (v9 != v8);
LABEL_55:
      v10 = v44;
      goto LABEL_56;
    }

    return v4;
  }

  if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
  {
    v12 = *a1;
    v4 = 1;
    *v12 = 1;
    return v4;
  }

  memset(v35, 0, 24);
  v38[8] = 0;
  v36 = 0;
  Dictionary = 0;
  v38[0] = 0;
  v13 = (*(**(a1 + 8) + 760))();
  if ((v13 & 0x100) != 0)
  {
    if (v13)
    {
      v21 = *(a1 + 24);
      v22 = *(v21 + 2);
      if (v22 && !*(*v21 + (v22 << 6) - 48))
      {
        (*(**(a1 + 8) + 24))(&v39);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v49 == 1)
        {
          sub_10005BE10(&v40);
        }

        return v4;
      }

LABEL_53:
      v24 = *v21;
      v25 = v35;
      if (v22 >= *(v21 + 3))
      {
        v31 = v21;
        v32 = v22;
        v33 = v24 + (v22 << 6) > v35;
        if (v24 <= v35 && v33)
        {
          v34 = v35 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v31, v31 + 2, v32 + 1, 64);
          v21 = v31;
          v24 = *v31;
          v25 = &v34[*v31];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v31, v31 + 2, v32 + 1, 64);
          v21 = v31;
          v24 = *v31;
          v25 = v35;
        }
      }

      v26 = (v24 + (*(v21 + 2) << 6));
      v27 = *v25;
      v28 = *(v25 + 1);
      v29 = *(v25 + 3);
      v26[2] = *(v25 + 2);
      v26[3] = v29;
      *v26 = v27;
      v26[1] = v28;
      ++*(v21 + 2);
      return 1;
    }

    return 0;
  }

  v35[0] = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v14 = *(a1 + 24);
  v15 = *(v14 + 8);
  if (!v15 || !*(*v14 + (v15 << 6) - 48))
  {
    v39 = &v41;
    v40 = 0x400000000;
    v43[5] = 4;
    if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v36) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), &v39) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), v38))
    {
      Context = mlir::AsmParser::getContext(*(a1 + 8));
      Dictionary = mlir::NamedAttrList::getDictionary(&v39, Context);
      if (v39 != &v41)
      {
        free(v39);
      }

      v21 = *(a1 + 24);
      LODWORD(v22) = *(v21 + 2);
      goto LABEL_53;
    }

    if (v39 != &v41)
    {
      free(v39);
    }

    return 0;
  }

  (*(**(a1 + 8) + 24))(&v39);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v47;
      v18 = __p;
      if (v47 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v47 = v16;
      operator delete(v18);
    }

    v8 = v44;
    if (!v44)
    {
      goto LABEL_57;
    }

    v19 = v45;
    v10 = v44;
    if (v45 == v44)
    {
      goto LABEL_56;
    }

    do
    {
      v20 = *--v19;
      *v19 = 0;
      if (v20)
      {
        operator delete[]();
      }
    }

    while (v19 != v8);
    goto LABEL_55;
  }

  return v4;
}

BOOL sub_1002985C0(uint64_t a1)
{
  if ((*(*a1 + 528))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 40))(a1);
  v18 = 257;
  (*(*a1 + 24))(v22, a1, v3, v17);
  if (v22[0])
  {
    v19 = 3;
    v20 = "expected valid '@'-identifier for symbol name";
    v21 = 45;
    v4 = &v19;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v19;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v30;
      v10 = __p;
      if (v30 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v30 = v8;
      operator delete(v10);
    }

    v11 = v27;
    if (v27)
    {
      v12 = v28;
      v13 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v27;
      }

      v28 = v11;
      operator delete(v13);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::util::getBroadcastedShape(void *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  if (a2 <= a4)
  {
    if (!a4)
    {
      return 1;
    }

    v5 = 0;
    v14 = 8 * a4;
    v15 = a3;
    do
    {
      v16 = *v15;
      if (v5 >= *(a5 + 12))
      {
        v17 = a2;
        v18 = a3;
        v19 = a1;
        v20 = a4;
        v21 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v5 + 1, 8);
        a2 = v17;
        a4 = v20;
        a1 = v19;
        a3 = v18;
        a5 = v21;
        v5 = *(v21 + 8);
      }

      *(*a5 + 8 * v5) = v16;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v15;
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v5 = 0;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      v8 = *v7;
      if (v5 >= *(a5 + 12))
      {
        v9 = a2;
        v10 = a3;
        v11 = a1;
        v12 = a4;
        v13 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v5 + 1, 8);
        a2 = v9;
        a4 = v12;
        a1 = v11;
        a3 = v10;
        a5 = v13;
        v5 = *(v13 + 8);
      }

      *(*a5 + 8 * v5) = v8;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v7;
      v6 -= 8;
    }

    while (v6);
  }

  v22 = 1;
  if (a2 && a4)
  {
    v23 = 8 * a2 - 8;
    v24 = (*a5 + 8 * v5 - 8);
    v25 = 8 * a4 - 8;
    while (1)
    {
      v26 = *(a1 + v23);
      v27 = *(a3 + v25);
      if (v26 == 0x8000000000000000)
      {
        break;
      }

      if (v27 == 0x8000000000000000)
      {
        v28 = *(a1 + v23);
        if (v26 > 1)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      v29 = v26 == v27 || v27 == 1;
      v28 = *(a1 + v23);
      if (!v29)
      {
        v28 = *(a3 + v25);
        if (v26 != 1)
        {
          v22 = 0;
          *(a5 + 8) = 0;
          return v22;
        }
      }

LABEL_27:
      *v24-- = v28;
      v22 = 1;
      if (v23)
      {
        v23 -= 8;
        v30 = v25;
        v25 -= 8;
        if (v30)
        {
          continue;
        }
      }

      return v22;
    }

    v28 = *(a3 + v25);
    if (v27 > 1)
    {
      goto LABEL_27;
    }

    v28 = *(a1 + v23);
    if (v27 == 1)
    {
      goto LABEL_27;
    }

LABEL_21:
    v28 = 0x8000000000000000;
    goto LABEL_27;
  }

  return v22;
}

void sub_100298A8C()
{
  if (v0)
  {
    v2 = sub_100005EBC(v0, v1);
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100298AE0()
{
  if (v0)
  {
    v2 = sub_100005EBC(v0, v1);
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100298B20()
{
  {
    llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name = sub_100005F04();
    unk_1002E2050 = v0;
  }
}

uint64_t llvm::APInt::APInt(uint64_t a1, int a2)
{
  sub_10003188C(a1, a2);
  if (!v4 & v3)
  {
    sub_100031844();
  }

  sub_100031908();
  if (v2)
  {
    sub_1000318A0();
    if (v3)
    {
      sub_100031828();
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_1000318B4(v5);
}

uint64_t llvm::APInt::APInt(llvm::APInt *this, int a2, unsigned int a3, const unint64_t *a4)
{
  sub_10003188C(this, a2);
  if (!v6 & v5)
  {
    sub_100031844();
  }

  sub_100031908();
  if (v4)
  {
    sub_1000318A0();
    if (v5)
    {
      sub_100031828();
    }
  }

  else
  {
    v7 = 0;
  }

  return sub_1000318B4(v7);
}

void llvm::APInt::shlSlowCase(const void **this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 2);
  if (a2)
  {
    v4 = *this;
    v5 = (v3 + 63) >> 6;
    if (a2 >> 6 >= v5)
    {
      v6 = (v3 + 63) >> 6;
    }

    else
    {
      v6 = a2 >> 6;
    }

    v7 = a2 & 0x3F;
    if ((a2 & 0x3F) != 0)
    {
      if (a2 >> 6 < v5)
      {
        v8 = v5 - 1;
        v9 = v4[v5 - 1 - v6] << v7;
        v10 = &v4[(v5 - 1)];
        *v10 = v9;
        if (v5 - 1 > v6)
        {
          v11 = &v4[v8 - v6 - 1];
          v12 = v5 - 2;
          v13 = v5 - 2 - v6;
          v14 = &v4[v12];
          do
          {
            v15 = *v11--;
            *v10 = (v15 >> (64 - v7)) | v9;
            --v8;
            v9 = v4[v13] << v7;
            v10 = &v4[v8];
            *v14-- = v9;
            --v13;
          }

          while (v6 < v8);
        }
      }
    }

    else
    {
      memmove(&v4[v6], *this, 8 * (v5 - v6));
    }

    bzero(v4, 8 * v6);
    LODWORD(v3) = *(v2 + 2);
  }

  if (v3)
  {
    sub_1000318F4();
    if (v17)
    {
      sub_1000318E0();
      v2 = (v19 + 8 * v18);
    }
  }

  else
  {
    v16 = 0;
  }

  *v2 = (*v2 & v16);
}

void *sub_100298D90(void *a1, unint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a2;
  v5 = a1;
  *a2 = a1;
  *a1 = a3;
  v6 = *a4;
  v7 = (v6 + 63) >> 6;
  result = memset(a1 + 1, 255, (8 * v7 - 8));
  if (v6)
  {
    v9 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (v6 >= 0x41)
    {
      v4 = (v5 + 8 * (v7 - 1));
      v5 = *v4;
    }
  }

  else
  {
    v9 = 0;
  }

  *v4 = v5 & v9;
  return result;
}

void sub_100298E1C()
{
  v0 = __cxa_guard_acquire(byte_1002E45B8);
  if (v0)
  {
    sub_100035FAC(v0, "General options", v1, "");

    __cxa_guard_release(byte_1002E45B8);
  }
}

void sub_100298E80()
{
  v0 = __cxa_guard_acquire(byte_1002E4648);
  if (v0)
  {
    sub_1000366E4(v0, &stru_1002E0408, &_mh_execute_header);

    __cxa_guard_release(byte_1002E4648);
  }
}

void sub_100298ED8()
{
  v0 = __cxa_guard_acquire(byte_1002E46B0);
  if (v0)
  {
    sub_100037CE8(v0, &off_1002E0448, &_mh_execute_header);

    __cxa_guard_release(byte_1002E46B0);
  }
}

void sub_100298F30()
{
  v0 = __cxa_guard_acquire(byte_1002E46B0);
  if (v0)
  {
    sub_100037CE8(v0, &off_1002E0448, &_mh_execute_header);
    __cxa_guard_release(byte_1002E46B0);
  }
}

void sub_100298F74()
{
  if (__cxa_guard_acquire(byte_1002E46E0))
  {
    std::recursive_mutex::recursive_mutex(&stru_1002E46E8);
    __cxa_atexit(&std::recursive_mutex::~recursive_mutex, &stru_1002E46E8, &_mh_execute_header);

    __cxa_guard_release(byte_1002E46E0);
  }
}

void sub_100298FEC()
{
  v0 = __cxa_guard_acquire(byte_1002E4738);
  if (v0)
  {
    dword_1002E472C = sub_1000394BC(v0);

    __cxa_guard_release(byte_1002E4738);
  }
}

void sub_10029903C()
{
  v0 = __cxa_guard_acquire(byte_1002E4760);
  if (v0)
  {
    sub_100048E8C(v0, "-");
    v1 = sub_100048E78();
    __cxa_atexit(v1, &unk_1002E47A8, v2);

    __cxa_guard_release(byte_1002E4760);
  }
}

void sub_1002990B0()
{
  if (__cxa_guard_acquire(byte_1002E4768))
  {
    llvm::raw_fd_ostream::raw_fd_ostream(&unk_1002E4808, 2u, 0, 1, 0);
    v0 = sub_100048E78();
    __cxa_atexit(v0, &unk_1002E4808, v1);

    __cxa_guard_release(byte_1002E4768);
  }
}

void sub_10029912C()
{
  if (__cxa_guard_acquire(byte_1002E4880))
  {
    dword_1002E4878 = getpagesize();

    __cxa_guard_release(byte_1002E4880);
  }
}

void sub_10029917C()
{
  if (__cxa_guard_acquire(byte_1002E53B8))
  {
    dword_1002E53B0 = sub_1000591E4();

    __cxa_guard_release(byte_1002E53B8);
  }
}

void *sub_1002991CC(uint64_t a1, void **a2)
{
  v3 = a2;
  result = sub_10005EFAC(a1, a2);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    v6 = v5[11];
    if (*(v5 + 24))
    {
      sub_100060570();
      do
      {
        if (v3 + 2 != *v3)
        {
          free(*v3);
        }

        v3 -= 10;
        v2 += 80;
      }

      while (v2);
      v6 = v5[11];
    }

    if (v6 != (v5 + 13))
    {
      free(v6);
    }

    v7 = v5[3];
    if (v7 != (v5 + 5))
    {
      free(v7);
    }

    sub_100060588();
  }

  return result;
}

void sub_100299260()
{
  if (v0)
  {
    v2 = sub_10005EB48(v0, v1);
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_1002992B4()
{
  {
    llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name = sub_10005EB90();
    *algn_1002E1A28 = v0;
  }
}

void sub_100299308()
{
  if (v0)
  {
    v2 = sub_1000676C0(v0, v1);
    mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100299348()
{
  if (v0)
  {
    v2 = sub_10006639C(v0, v1);
    v4 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
    sub_100069790(v4);
  }
}

void sub_100299384()
{
  if (v0)
  {
    v2 = sub_10006791C(v0, v1);
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_1002993D8()
{
  if (v0)
  {
    v2 = sub_10006639C(v0, v1);
    v4 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
    sub_100069790(v4);
  }
}

void sub_100299428()
{
  {
    llvm::getTypeName<mlir::FloatType>(void)::Name = sub_1000663E4();
    unk_1002E3410 = v0;
  }
}

void sub_10029947C()
{
  {
    llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(void)::Name = sub_100067708();
    *algn_1002E0EE8 = v0;
  }
}

void sub_1002994D0()
{
  {
    llvm::getTypeName<mlir::ShapedType>(void)::Name = sub_100067964();
    *algn_1002E0F38 = v0;
  }
}

void sub_100299524()
{
  if (v0)
  {
    v2 = sub_10006BD98(v0, v1);
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100299578()
{
  {
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = sub_10006BDE0();
    unk_1002E0E70 = v0;
  }
}

void sub_1002995CC()
{
  v0 = __cxa_guard_acquire(byte_1002E04E0);
  if (v0)
  {
    v2 = sub_10006E718(v0, v1);
    qword_1002E04D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);

    __cxa_guard_release(byte_1002E04E0);
  }
}

void sub_100299620()
{
  if (__cxa_guard_acquire(byte_1002E04F8))
  {
    qword_1002E04E8 = sub_10006E760();
    unk_1002E04F0 = v0;

    __cxa_guard_release(byte_1002E04F8);
  }
}

void sub_100299674()
{
  if (v0)
  {
    v2 = sub_10007A3D8(v0, v1);
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_1002996B4()
{
  if (v0)
  {
    v2 = sub_10007A4A0(v0, v1);
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_1002996F4()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name = sub_10007A420();
    *algn_1002E1668 = v0;
  }
}

void sub_100299748()
{
  {
    llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name = sub_10007A4E8();
    unk_1002E1900 = v0;
  }
}

void sub_10029979C()
{
  if (v0)
  {
    v2 = sub_100080F94(v0, v1);
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_1002997DC()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name = sub_100080FDC();
    unk_1002E1C30 = v0;
  }
}

void sub_100299830()
{
  if (v0)
  {
    v2 = sub_10006639C(v0, v1);
    mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100299870()
{
  v0 = __cxa_guard_acquire(byte_1002E0510);
  if (v0)
  {
    v2 = sub_10008B6D0(v0, v1);
    off_1002E0508 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
    __cxa_guard_release(byte_1002E0510);
  }
}

void sub_1002998B0()
{
  if (__cxa_guard_acquire(byte_1002E0528))
  {
    qword_1002E0518 = sub_10008B718();
    unk_1002E0520 = v0;

    __cxa_guard_release(byte_1002E0528);
  }
}

void sub_100299904()
{
  if (__cxa_guard_acquire(byte_1002E0550))
  {
    qword_1002E0540 = sub_10008B7E0();
    *algn_1002E0548 = v0;

    __cxa_guard_release(byte_1002E0550);
  }
}

void sub_100299958()
{
  if (v0)
  {
    v2 = sub_10008B9F4(v0, v1);
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_1002999AC()
{
  {
    llvm::getTypeName<mlir::VerifiableTensorEncoding>(void)::Name = sub_10008BA3C();
    unk_1002E2CD0 = v0;
  }
}

void sub_100299A00()
{
  v0 = __cxa_guard_acquire(byte_1002E0538);
  if (v0)
  {
    v2 = sub_10008B798(v0, v1);
    qword_1002E0530 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);

    __cxa_guard_release(byte_1002E0538);
  }
}

void sub_100299A54()
{
  v0 = __cxa_guard_acquire(byte_1002E0560);
  if (v0)
  {
    v2 = sub_100090A90(v0, v1);
    qword_1002E0558 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
    __cxa_guard_release(byte_1002E0560);
  }
}

void sub_100299A94()
{
  v0 = __cxa_guard_acquire(byte_1002E0588);
  if (v0)
  {
    v2 = sub_100090B58(v0, v1);
    qword_1002E0580 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
    __cxa_guard_release(byte_1002E0588);
  }
}

void sub_100299AD4()
{
  if (__cxa_guard_acquire(byte_1002E0578))
  {
    qword_1002E0568 = sub_100090AD8();
    unk_1002E0570 = v0;

    __cxa_guard_release(byte_1002E0578);
  }
}

void sub_100299B28()
{
  if (__cxa_guard_acquire(byte_1002E05A0))
  {
    qword_1002E0590 = sub_100090AD8();
    *algn_1002E0598 = v0;

    __cxa_guard_release(byte_1002E05A0);
  }
}

void sub_100299B7C()
{
  if (v0)
  {
    v2 = sub_10009326C(v0, v1);
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100299BD0()
{
  if (v0)
  {
    v2 = sub_10009326C(v0, v1);
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100299C10()
{
  {
    llvm::getTypeName<mlir::BytecodeOpInterface>(void)::Name = sub_1000932B4();
    unk_1002E1750 = v0;
  }
}

void sub_100299C64()
{
  if (v0)
  {
    v2 = sub_100099D10(v0, v1);
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_100299CB8()
{
  {
    llvm::getTypeName<mlir::BytecodeDialectInterface>(void)::Name = sub_100099D58();
    *algn_1002E2C58 = v0;
  }
}

void sub_100299D0C()
{
  {
    *&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name = sub_1000AE13C();
    *(&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name + 1) = v0;
  }
}

void sub_100299D4C()
{
  if (__cxa_guard_acquire(byte_1002E05D0))
  {
    *&xmmword_1002E05C0 = sub_1000AE0BC();
    *(&xmmword_1002E05C0 + 1) = v0;

    __cxa_guard_release(byte_1002E05D0);
  }
}

void sub_100299DA0()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name = sub_1000B14BC();
    unk_1002E0FB0 = v0;
  }
}

void sub_100299DF4(llvm::Twine *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "builtin.module";
  *(a2 + 24) = 14;
  *(a3 + 32) = 259;
  sub_10000550C(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

void sub_100299E5C()
{
  v0 = __cxa_guard_acquire(byte_1002E0610);
  if (v0)
  {
    v2 = sub_1000B5158(v0, v1);
    qword_1002E0608 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);

    __cxa_guard_release(byte_1002E0610);
  }
}

void sub_100299EB0()
{
  v0 = __cxa_guard_acquire(byte_1002E0638);
  if (v0)
  {
    v2 = sub_1000B5320(v0, v1);
    qword_1002E0630 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);

    __cxa_guard_release(byte_1002E0638);
  }
}

void sub_100299F04()
{
  v0 = __cxa_guard_acquire(byte_1002E05E8);
  if (v0)
  {
    v2 = sub_1000B4FC8(v0, v1);
    qword_1002E05E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);

    __cxa_guard_release(byte_1002E05E8);
  }
}

void sub_100299F58()
{
  if (__cxa_guard_acquire(byte_1002E0600))
  {
    qword_1002E05F0 = sub_1000B5010();
    *algn_1002E05F8 = v0;

    __cxa_guard_release(byte_1002E0600);
  }
}

void sub_100299FAC()
{
  if (__cxa_guard_acquire(byte_1002E0628))
  {
    qword_1002E0618 = sub_1000B51A0();
    unk_1002E0620 = v0;

    __cxa_guard_release(byte_1002E0628);
  }
}

void sub_10029A000()
{
  if (__cxa_guard_acquire(byte_1002E0650))
  {
    qword_1002E0640 = sub_1000B5368();
    *algn_1002E0648 = v0;

    __cxa_guard_release(byte_1002E0650);
  }
}

llvm::raw_ostream *mlir::OpAsmPrinter::printFunctionalType(mlir::OpAsmPrinter *this, mlir::Operation *a2)
{
  v4 = (*(*this + 16))(this);
  sub_1000D2E88();
  if (v6)
  {
    llvm::raw_ostream::write(v4, 40);
  }

  else
  {
    sub_1000D2F70(v5);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 17);
    if (v7)
    {
      v8 = *(a2 + 9);
      v9 = *(v8 + 24);
      v10 = v9 ? *(v9 + 8) & 0xFFFFFFFFFFFFFFF8 : 0;
      (*(*this + 32))(this, v10);
      if (v7 != 1)
      {
        v11 = v7 - 1;
        v12 = v8 + 56;
        do
        {
          sub_1000D2E7C();
          if (!v14 & v6)
          {
            sub_1000D2F30(v13);
          }

          else
          {
            llvm::raw_ostream::write(v4, ", ", 2uLL);
          }

          if (*v12)
          {
            v15 = *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v15 = 0;
          }

          (*(*this + 32))(this, v15);
          v12 += 32;
          --v11;
        }

        while (v11);
      }
    }
  }

  v16 = *(v4 + 4);
  if ((*(v4 + 3) - v16) > 4)
  {
    *(v16 + 4) = 32;
    *v16 = 1043144745;
    *(v4 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v4, ") -> ", 5uLL);
  }

  if (*(a2 + 9) != 1 || (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v19 = *(v4 + 4);
    if (v19 >= *(v4 + 3))
    {
      llvm::raw_ostream::write(v4, 40);
    }

    else
    {
      sub_1000D2F70(v19);
    }

    v20 = *(a2 + 9);
    result = (a2 - 16);
    if (v20)
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    if (v20)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);
      v24 = NextResultAtOffset ? *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8 : 0;
      result = (*(*this + 32))(this, v24);
      if (v20 != 1)
      {
        for (i = 1; i != v20; ++i)
        {
          sub_1000D2E7C();
          if (!v14 & v6)
          {
            sub_1000D2F30(v26);
          }

          else
          {
            llvm::raw_ostream::write(v4, ", ", 2uLL);
          }

          v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, i);
          if (v27)
          {
            v28 = *(v27 + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v28 = 0;
          }

          result = (*(*this + 32))(this, v28);
        }
      }
    }

    v29 = *(v4 + 4);
    if (v29 >= *(v4 + 3))
    {

      return llvm::raw_ostream::write(v4, 41);
    }

    else
    {
      *(v4 + 4) = v29 + 1;
      *v29 = 41;
    }
  }

  else
  {
    v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(a2 - 16, 0);
    if (v17)
    {
      v18 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = 0;
    }

    v30 = *(*this + 32);

    return v30(this, v18);
  }

  return result;
}

void sub_10029A3EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 80);
  v6 = *(a1 + 152);
  *&v120[0] = a2;
  v7 = *(v4 + 672);
  if (v7)
  {
    v8 = sub_100095E50(v7, v120);
    *v8 = v5;
    v8[1] = v6;
    v6 = *(a1 + 152);
  }

  llvm::raw_ostream::indent(*(a1 + 16), v6);
  v9 = *(a2 + 36);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = *(a1 + 24);
  v11 = *(v10 + 368);
  if (v11)
  {
    v12 = *(v10 + 352);
    v13 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v12 + 32 * v13);
    if (v14 == a2)
    {
LABEL_6:
      if (v13 != v11)
      {
        v15 = v12 + 32 * v13;
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = *(v15 + 8);
          v119 = *(v15 + 16);
          if (v16 != 1)
          {
            v18 = v16 - 1;
            v19 = *(a1 + 16);
            v20 = v17[1] - *v17;
            v21 = sub_1000D2F64(v10);
            sub_1000BF87C(v21, v22, v23, v19);
            if (v20 >= 2)
            {
              sub_1000D2E88();
              if (v91)
              {
                v26 = llvm::raw_ostream::write(v24, 58);
              }

              else
              {
                v26 = sub_1000D2EA0(v24, v25);
                *v27 = 58;
              }

              llvm::raw_ostream::operator<<(v26, v20);
            }

            if (v18 != 1)
            {
              v28 = v18 - 1;
              v29 = &_mh_execute_header;
              do
              {
                sub_1000D2E5C();
                if (!v31 && v91)
                {
                  *v30 = 8236;
                  sub_1000D2E4C();
                }

                else
                {
                  llvm::raw_ostream::write(v19, ", ", 2uLL);
                }

                v32 = *(v17 + (v29 >> 30) + 4) - *(v17 + (v29 >> 30));
                v33 = sub_1000D2F64(*(a1 + 24));
                sub_1000BF87C(v33, v34, v35, v36);
                if (v32 >= 2)
                {
                  sub_1000D2E88();
                  if (v91)
                  {
                    v39 = llvm::raw_ostream::write(v37, 58);
                  }

                  else
                  {
                    v39 = sub_1000D2EA0(v37, v38);
                    *v40 = 58;
                  }

                  llvm::raw_ostream::operator<<(v39, v32);
                }

                v29 = (&_mh_execute_header + v29);
                --v28;
              }

              while (v28);
            }
          }

          sub_1000D2E94();
          sub_1000D2E7C();
          if (!v31 && v91)
          {
            sub_1000D2EAC(v41, v42);
          }

          else
          {
            llvm::raw_ostream::write(v41, ", ", 2uLL);
          }

          v9 -= v17[v119 - 1];
          v43 = sub_1000D2F64(*(a1 + 24));
          sub_1000BF87C(v43, v44, v45, v46);
          if (v9 < 2)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }
    }

    else
    {
      while (v14 != -4096)
      {
        sub_1000D2EC0();
        v14 = *(v12 + v47);
        if (v14 == a2)
        {
          goto LABEL_6;
        }
      }
    }
  }

  v48 = sub_1000D2F64(v10);
  sub_1000BF87C(v48, v49, v50, v51);
  if (v9 != 1)
  {
LABEL_34:
    sub_1000D2E88();
    if (v91)
    {
      v54 = llvm::raw_ostream::write(v52, 58);
    }

    else
    {
      v54 = sub_1000D2EA0(v52, v53);
      *v55 = 58;
    }

    llvm::raw_ostream::operator<<(v54, v9);
  }

LABEL_38:
  v56 = sub_1000D2E94();
  if ((v58 - v57) > 2)
  {
    *(v57 + 2) = 32;
    sub_1000D2F44(v56, v57);
  }

  else
  {
    llvm::raw_ostream::write(v56, " = ", 3uLL);
  }

LABEL_41:
  (*(*a1 + 208))(a1, a2);
  v59 = *(a1 + 72);
  if (v59)
  {
    v60 = *(a2 + 24);
    v61 = sub_1000D2E94();
    if (v63 == v62)
    {
      llvm::raw_ostream::write(v61, " ", 1uLL);
    }

    else
    {
      sub_1000D2E38(v61, v62);
    }

    mlir::AsmPrinter::Impl::printLocation((a1 + 16), v60, 1);
    v59 = *(a1 + 72);
  }

  if ((v59 & 0x40) == 0)
  {
    return;
  }

  v64 = *(a2 + 36);
  if (!v64)
  {
    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
    {
      v70 = sub_1000D2E94();
      if ((v72 - v71) > 7)
      {
        *v71 = 0x203A6469202F2F20;
        v70[4] += 8;
      }

      else
      {
        llvm::raw_ostream::write(v70, " // id: ", 8uLL);
      }

      sub_1000CA544(*(a1 + 16), *(*(a1 + 24) + 328), *(*(a1 + 24) + 344), a2);
    }

    return;
  }

  v65 = 0;
  v66 = a2 - 16;
  while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(a2 - 16, v65))
  {
    if (v64 == ++v65)
    {
      v67 = sub_1000D2E94();
      if ((v69 - v68) > 9)
      {
        *(v68 + 8) = 25701;
        *v68 = *" // unused";
        v67[4] += 10;
      }

      else
      {
        llvm::raw_ostream::write(v67, " // unused", 0xAuLL);
      }

      return;
    }
  }

  v73 = *(a2 + 36);
  if (!v73)
  {
    return;
  }

  v74 = 0;
  while (1)
  {
    v75 = sub_1000D2F58();
    if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v75, v76))
    {
      break;
    }

    if (v73 == ++v74)
    {
      return;
    }
  }

  v124 = &v128;
  v125 = 1;
  v126 = 0;
  v77 = 1;
  v127 = 1;
  v78 = *(a2 + 36);
  if (v78)
  {
    v79 = a2 - 16;
  }

  else
  {
    v79 = 0;
  }

  *&v120[0] = v79;
  *(&v120[0] + 1) = v78;
  mlir::ResultRange::use_begin(v120, v129);
  v80 = *(a2 + 36);
  if (v80)
  {
    v81 = a2 - 16;
  }

  else
  {
    v81 = 0;
  }

  v131.n128_u64[0] = v81;
  v131.n128_u64[1] = v80;
  mlir::ResultRange::use_end(&v131, v122);
  v82 = v130;
  v121 = v130;
  v120[0] = v129[0];
  v120[1] = v129[1];
  v83 = v123;
  if (v130 == v123)
  {
    goto LABEL_90;
  }

  v84 = 0;
  v85 = 0;
  do
  {
    v86 = *(v82 + 16);
    if (v127 != 1)
    {
      goto LABEL_81;
    }

    v87 = HIDWORD(v125);
    if (!HIDWORD(v125))
    {
LABEL_79:
      if (HIDWORD(v125) >= v125)
      {
LABEL_81:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v124, v86);
        if ((v90 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        ++HIDWORD(v125);
        *(v124 + v87) = v86;
      }

      ++v85;
      v84 += *(v86 + 36);
      goto LABEL_83;
    }

    v88 = 8 * HIDWORD(v125);
    v89 = v124;
    while (*v89 != v86)
    {
      ++v89;
      v88 -= 8;
      if (!v88)
      {
        goto LABEL_79;
      }
    }

LABEL_83:
    mlir::ResultRange::UseIterator::operator++(v129);
    v82 = v130;
  }

  while (v130 != v83);
  v91 = v84 >= 2 || v85 >= 2;
  v77 = !v91;
LABEL_90:
  v92 = v64 == 1;
  v93 = v92 & v77;
  if ((v92 & v77) != 0)
  {
    v94 = "user";
  }

  else
  {
    v94 = "users";
  }

  v95 = *(a1 + 16);
  v96 = v95[4];
  if (v95[3] - v96 > 3uLL)
  {
    *v96 = 539963168;
    v97 = (v95[4] + 4);
    v95[4] = v97;
  }

  else
  {
    v95 = llvm::raw_ostream::write(*(a1 + 16), " // ", 4uLL);
    v97 = v95[4];
  }

  if (v93)
  {
    v98 = 4;
  }

  else
  {
    v98 = 5;
  }

  if (v98 <= v95[3] - v97)
  {
    memcpy(v97, v94, v98);
    v95[4] += v98;
  }

  else
  {
    v99 = sub_1000D2F58();
    v95 = llvm::raw_ostream::write(v99, v100, v98);
  }

  sub_1000D2E7C();
  if (!v31 && v91)
  {
    *v101 = 8250;
    sub_1000D2E4C();
  }

  else
  {
    llvm::raw_ostream::write(v95, ": ", 2uLL);
  }

  v102 = *(a2 + 36);
  if (v102)
  {
    v103 = a2 - 16;
  }

  else
  {
    v103 = 0;
  }

  if (v102)
  {
    v104 = *(a1 + 16);
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v66, 0);
    if (v64 == 1)
    {
      sub_1000CA684(a1, NextResultAtOffset);
    }

    else
    {
      v106 = sub_1000D2E94();
      if (v108 == v107)
      {
        llvm::raw_ostream::write(v106, "(", 1uLL);
      }

      else
      {
        sub_1000D2E38(v106, v107);
      }

      sub_1000CA684(a1, NextResultAtOffset);
      sub_1000D2EF8();
      if (v31)
      {
        llvm::raw_ostream::write(v109, ")", 1uLL);
      }

      else
      {
        sub_1000D2E38(v109, v110);
      }
    }

    if (v102 != 1)
    {
      for (i = 1; i != v102; ++i)
      {
        sub_1000D2E5C();
        if (!v31 && v91)
        {
          *v112 = 8236;
          sub_1000D2E4C();
        }

        else
        {
          llvm::raw_ostream::write(v104, ", ", 2uLL);
        }

        v113 = mlir::detail::OpResultImpl::getNextResultAtOffset(v103, i);
        if (v64 == 1)
        {
          sub_1000CA684(a1, v113);
        }

        else
        {
          v114 = sub_1000D2E94();
          if (v116 == v115)
          {
            llvm::raw_ostream::write(v114, "(", 1uLL);
          }

          else
          {
            *v115 = 40;
            ++v114[4];
          }

          sub_1000CA684(a1, v113);
          sub_1000D2EF8();
          if (v31)
          {
            llvm::raw_ostream::write(v117, ")", 1uLL);
          }

          else
          {
            sub_1000D2E38(v117, v118);
          }
        }
      }
    }
  }

  if ((v127 & 1) == 0)
  {
    free(v124);
  }
}

llvm::raw_ostream *sub_10029AC30(llvm::raw_ostream **a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *&v94[0] = *(*(a2 + 48) + 8);
    Value = mlir::StringAttr::getValue(v94);
    v8 = v7;
    sub_1000D2EF8();
    if (v11)
    {
      llvm::raw_ostream::write(v9, "", 1uLL);
    }

    else
    {
      sub_1000D2E38(v9, v10);
    }

    llvm::printEscapedString(Value, v8, a1[2]);
    sub_1000D2EF8();
    if (v11)
    {
      llvm::raw_ostream::write(v12, "", 1uLL);
    }

    else
    {
      sub_1000D2E38(v12, v13);
    }
  }

  v14 = a1 + 2;
  sub_1000D2E88();
  if (v17)
  {
    llvm::raw_ostream::write(v15, 40);
  }

  else
  {
    sub_1000D2EA0(v15, v16);
    *v18 = 40;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v3 = *(a2 + 68);
    if (v3)
    {
      v19 = *(a2 + 72);
      sub_1000BF87C((a1[3] + 280), *(v19 + 24), 1, *v14);
      if (v3 != 1)
      {
        Value = (v3 - 1);
        v20 = (v19 + 56);
        do
        {
          sub_1000D2E5C();
          if (!v11 & v17)
          {
            *v21 = 8236;
            sub_1000D2E4C();
          }

          else
          {
            v22 = sub_1000D2F58();
            llvm::raw_ostream::write(v22, v23, 2uLL);
          }

          v24 = *v20;
          v20 += 4;
          sub_1000BF87C((a1[3] + 280), v24, 1, a1[2]);
          Value = (Value - 1);
        }

        while (Value);
      }
    }
  }

  v25 = sub_1000D2E6C();
  if (v17)
  {
    llvm::raw_ostream::write(v25, 41);
  }

  else
  {
    sub_1000D2EA0(v25, v26);
    *v27 = 41;
  }

  if (*(a2 + 40))
  {
    v28 = sub_1000D2E6C();
    if (v17)
    {
      llvm::raw_ostream::write(v28, 91);
    }

    else
    {
      sub_1000D2EA0(v28, v29);
      *v30 = 91;
    }

    mlir::SuccessorRange::SuccessorRange(v94, a2);
    v31 = *(&v94[0] + 1);
    if (!*(&v94[0] + 1))
    {
      goto LABEL_36;
    }

    v32 = a1[2];
    if (*(a1[3] + 98))
    {
      sub_1000D2ED4();
      if (v11)
      {
LABEL_30:
        if (v35 != v33)
        {
          v39 = *(v34 + 32 * v35 + 24);
          v37 = sub_1000D2F1C();
          if (v39 <= v41)
          {
            if (!v39)
            {
              goto LABEL_35;
            }

            goto LABEL_32;
          }

LABEL_34:
          llvm::raw_ostream::write(v32, v38, v39);
          goto LABEL_35;
        }
      }

      else
      {
        while (v36 != -4096)
        {
          sub_1000D2EC0();
          v36 = *(v34 + v92);
          if (v36 == v93)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v37 = sub_1000D2F1C();
    v38 = "INVALIDBLOCK";
    v39 = 12;
    if (v40 > 0xB)
    {
LABEL_32:
      memcpy(v37, v38, v39);
      *Value += v39;
LABEL_35:
      if (v31 == 1)
      {
LABEL_36:
        v14 = a1 + 2;
        v42 = sub_1000D2E6C();
        if (v17)
        {
          llvm::raw_ostream::write(v42, 93);
        }

        else
        {
          sub_1000D2EA0(v42, v43);
          *v44 = 93;
        }

        goto LABEL_39;
      }

      v76 = 1;
      while (1)
      {
        sub_1000D2E5C();
        if (!v11 & v17)
        {
          *v77 = 8236;
          sub_1000D2E4C();
        }

        else
        {
          v78 = sub_1000D2F58();
          llvm::raw_ostream::write(v78, v79, 2uLL);
        }

        if (!*(a1[3] + 98))
        {
          goto LABEL_81;
        }

        sub_1000D2ED4();
        if (!v11)
        {
          break;
        }

LABEL_80:
        if (v82 == v80)
        {
          goto LABEL_81;
        }

        v88 = *(v81 + 32 * v82 + 24);
        sub_1000D2F84();
        if (v88 > v89)
        {
          goto LABEL_85;
        }

        if (v88)
        {
          goto LABEL_87;
        }

LABEL_88:
        if (++v76 == v31)
        {
          goto LABEL_36;
        }
      }

      while (v83 != -4096)
      {
        sub_1000D2EC0();
        v83 = *(v81 + v90);
        if (v83 == v91)
        {
          goto LABEL_80;
        }
      }

LABEL_81:
      sub_1000D2F84();
      if (v86 > 0xB)
      {
        v88 = 12;
        v87 = "INVALIDBLOCK";
LABEL_87:
        memcpy(v85, v87, v88);
        *v3 += v88;
        goto LABEL_88;
      }

      v87 = "INVALIDBLOCK";
      v88 = 12;
LABEL_85:
      llvm::raw_ostream::write(v84, v87, v88);
      goto LABEL_88;
    }

    goto LABEL_34;
  }

LABEL_39:
  PropertiesAsAttribute = mlir::Operation::getPropertiesAsAttribute(a2);
  if (PropertiesAsAttribute)
  {
    v46 = PropertiesAsAttribute;
    sub_1000D2E7C();
    if (!v11 & v17)
    {
      sub_1000D2EAC(v47, v48);
    }

    else
    {
      llvm::raw_ostream::write(v47, " <", 2uLL);
    }

    if ((sub_1000B817C(a1[3] + 18, v46, a1[2]) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printAttributeImpl(v14, v46, 0);
    }

    v49 = sub_1000D2E6C();
    if (v17)
    {
      llvm::raw_ostream::write(v49, 62);
    }

    else
    {
      sub_1000D2EA0(v49, v50);
      *v51 = 62;
    }
  }

  v52 = *(a2 + 44);
  if ((v52 & 0x7FFFFF) != 0)
  {
    sub_1000D2E7C();
    if (!v11 & v17)
    {
      sub_1000D2EAC(v53, v54);
    }

    else
    {
      llvm::raw_ostream::write(v53, " (", 2uLL);
    }

    v55 = *(a2 + 44);
    v56 = v55 & 0x7FFFFF;
    if ((v55 & 0x7FFFFF) != 0)
    {
      v57 = ((a2 + 16 * ((v55 >> 23) & 1) + ((v55 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v58 = a1[2];
      v59 = sub_1000D2F04();
      v60(v59);
      if (v56 != 1)
      {
        v61 = v57 + 24;
        v62 = 24 * v56 - 24;
        do
        {
          sub_1000D2E5C();
          if (!v11 & v17)
          {
            *v63 = 8236;
            sub_1000D2E4C();
          }

          else
          {
            llvm::raw_ostream::write(v58, ", ", 2uLL);
          }

          v64 = sub_1000D2F04();
          v65(v64);
          v61 += 24;
          v62 -= 24;
        }

        while (v62);
      }
    }

    v66 = sub_1000D2E6C();
    if (v17)
    {
      llvm::raw_ostream::write(v66, 41);
    }

    else
    {
      sub_1000D2EA0(v66, v67);
      *v68 = 41;
    }

    v52 = *(a2 + 44);
  }

  v69 = HIBYTE(v52);
  if (HIBYTE(v52))
  {
    sub_1000921B8(a2, v94);
    v101[0] = v94[0];
    v101[1] = v94[1];
    v102 = v95;
    v99[0] = v96;
    v99[1] = v97;
    v100 = v98;
    AttrDictionary = v105;
    v104 = 0x300000000;
    sub_1000922D8(&AttrDictionary, v101, v99);
    v70 = AttrDictionary;
    v72 = v104;
  }

  else
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v70 = mlir::DictionaryAttr::getValue(&AttrDictionary);
    v72 = v71;
  }

  (*(*a1 + 24))(a1, v70, v72, 0, 0);
  if (v69 && AttrDictionary != v105)
  {
    free(AttrDictionary);
  }

  v73 = *v14;
  v74 = *(*v14 + 4);
  if ((*(*v14 + 3) - v74) > 2)
  {
    *(v74 + 2) = 32;
    sub_1000D2F44(v73, v74);
  }

  else
  {
    llvm::raw_ostream::write(v73, " : ", 3uLL);
  }

  return mlir::OpAsmPrinter::printFunctionalType(a1, a2);
}

uint64_t sub_10029B2C8(void *a1, uint64_t a2)
{
  if ((*(a1[2] + 40) & 8) == 0)
  {
    v4 = *(a2 + 44);
    if ((v4 & 0x7FFFFF) != 0)
    {
      v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v6 = 24 * (v4 & 0x7FFFFF);
      do
      {
        (*(*a1 + 224))(a1, v5, 1, 1, 0);
        v5 += 24;
        v6 -= 24;
      }

      while (v6);
    }
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v26 = v7;
  v27 = v8;
  mlir::OperandRange::getTypes(&v26, &AttrDictionary);
  v9 = v25 - v24;
  if (v25 != v24)
  {
    v10 = (AttrDictionary + 32 * v24 + 24);
    do
    {
      v11 = *v10;
      v10 += 4;
      (*(*a1 + 32))(a1, *(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v9;
    }

    while (v9);
  }

  v12 = *(a2 + 36);
  v13 = a2 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v26 = v13;
  v27 = v12;
  mlir::ResultRange::getTypes(&AttrDictionary, &v26);
  v14 = v24;
  v15 = v25;
  if (v24 != v25)
  {
    v16 = AttrDictionary;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v14);
      (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      ++v14;
    }

    while (v15 != v14);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  result = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v19)
  {
    v20 = 16 * v19;
    v21 = (result + 8);
    do
    {
      v22 = *v21;
      v21 += 2;
      result = (*(*a1 + 40))(a1, v22);
      v20 -= 16;
    }

    while (v20);
  }

  return result;
}

void sub_10029B4E0()
{
  v0 = __cxa_guard_acquire(byte_1002E0670);
  if (v0)
  {
    v2 = sub_1000C147C(v0, v1);
    qword_1002E0668 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);

    __cxa_guard_release(byte_1002E0670);
  }
}

void sub_10029B534()
{
  if (v0)
  {
    v2 = sub_1000C16C8(v0, v1);
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

void sub_10029B588()
{
  if (v0)
  {
    v2 = sub_10007A3D8(v0, v1);
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}

uint64_t sub_10029B5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  do
  {
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    sub_10029A3EC(a1, v7);
    ++*(a1 + 80);
    sub_1000D2E88();
    if (v10)
    {
      result = llvm::raw_ostream::write(v8, 10);
    }

    else
    {
      result = sub_1000D2EA0(v8, v9);
      *v12 = 10;
    }

    a2 = *(a2 + 8);
  }

  while (a2 != a4);
  return result;
}

void sub_10029B668()
{
  if (__cxa_guard_acquire(byte_1002E0688))
  {
    qword_1002E0678 = sub_1000C14C4();
    unk_1002E0680 = v0;

    __cxa_guard_release(byte_1002E0688);
  }
}

void sub_10029B6BC()
{
  {
    llvm::getTypeName<mlir::ElementsAttr>(void)::Name = sub_1000C1710();
    *algn_1002E0E98 = v0;
  }
}

void sub_10029B710()
{
  if (v0)
  {
    v2 = sub_10007A4A0(v0, v1);
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v2, v3);
  }
}