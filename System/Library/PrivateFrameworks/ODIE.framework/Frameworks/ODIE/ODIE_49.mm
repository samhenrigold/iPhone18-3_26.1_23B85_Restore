void mlir::ODIE::Compiler::CoreMLAX::ViewOp::getOutputIntents(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v3 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 2uLL);
  v4 = v6;
  v5 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v4, &v3, &v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v5)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v4);
  }

  *(a2 + 64) = 1;
  if (v4 != v6)
  {
    free(v4);
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v37 = *MEMORY[0x277D85DE8];
  if (a5 == 4)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    v35 = a4;
    v36 = 4;
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    ZeroPoint = mlir::ODIE::Compiler::CoreMLAX::QuantizeOpGenericAdaptor<mlir::ValueRange>::getZeroPoint(&v30);
    v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((ZeroPoint[1] & 0xFFFFFFFFFFFFFFF8));
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v13[1] & 0xFFFFFFFFFFFFFFF8));
      if (v20)
      {
        v22 = (*(v21 + 24))(v21, v20);
        v24 = v23;
        v25 = (*(v19 + 8))(v19, v18);
        *&v29 = v22;
        *(&v29 + 1) = v24;
        v27 = 0;
        v28 = v25;
        v26 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v25 + 32), &v29, &v28, &v27);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v26);
        return 1;
      }

      else
      {
        return mlir::emitOptionalError<char const(&)[29]>(a2, v11, "expect shaped type for input");
      }
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[34]>(a2, v11, "expect shaped type for zero_scale");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[18]>(a2, a3, "expect 4 operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[18]>(void **a1, char a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6[16] = 257;
  emitDiag(a1, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<18ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

void *mlir::ODIE::Compiler::CoreMLAX::QuantizeOpGenericAdaptor<mlir::ValueRange>::getZeroPoint(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = *(a1 + 40);
  v6[1] = 2;
  v1 = mlir::ValueRange::offset_base(v6, 2);
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

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a5 == 4)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    v36 = a4;
    v37 = 4;
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

    Scale = mlir::ODIE::Compiler::CoreMLAX::DequantizeOpGenericAdaptor<mlir::ValueRange>::getScale(&v31);
    v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((Scale[1] & 0xFFFFFFFFFFFFFFF8));
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v13[1] & 0xFFFFFFFFFFFFFFF8));
      if (v20)
      {
        v22 = (*(v21 + 24))(v21, v20);
        v24 = v23;
        v25 = (*(v19 + 8))(v19, v18);
        *&v30 = v22;
        *(&v30 + 1) = v24;
        v28 = 0;
        v29 = v25;
        v26 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v25 + 32), &v30, &v29, &v28);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v26);
        return 1;
      }

      v27 = "expect shaped type for input";
    }

    else
    {
      v27 = "expect shaped type for scale";
    }

    return mlir::emitOptionalError<char const(&)[29]>(a2, a3, v27);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[18]>(a2, a3, "expect 4 operands");
  }
}

void *mlir::ODIE::Compiler::CoreMLAX::DequantizeOpGenericAdaptor<mlir::ValueRange>::getScale(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = *(a1 + 40);
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

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verify(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 72);
  v2 = v1[7];
  v3 = v1[11];
  v4 = v1[15];
  v5 = v1[3];
  v8 = this;
  mlir::ODIE::Compiler::CoreMLAX::VerifyQuantDequantInputs(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verify(void)::$_0>, &v8, v5, v2, v3, v4);
  v6 = v10;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  return (v6 & 1) == 0;
}

void mlir::ODIE::Compiler::CoreMLAX::VerifyQuantDequantInputs(_OWORD *a1, void (*a2)(void **__return_ptr, uint64_t, void (*)(void **__return_ptr, uint64_t), uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = *(a5 + 8);
  v11 = v10 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v12 >= 2)
  {
    a2(v64, a3, a2, a3, a4);
    if (v64[0])
    {
      mlir::Diagnostic::operator<<<44ul>(&v64[1], "scale can only be a scalar or rank-1 tensor");
    }

LABEL_40:
    v36 = v64;
    goto LABEL_41;
  }

  v13 = *(a6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 16);
  if (v14 > 1)
  {
    a2(v64, a3, a2, a3, a4);
    if (v64[0])
    {
      mlir::Diagnostic::operator<<<49ul>(&v64[1], "zero-point can only be a scalar or rank-1 tensor");
    }

    goto LABEL_40;
  }

  if (*((*(a7 + 8) & 0xFFFFFFFFFFFFFFF8) + 16) >= 1)
  {
    a2(v64, a3, a2, a3, a4);
    if (v64[0])
    {
      mlir::Diagnostic::operator<<<26ul>(&v64[1], "axis can only be a scalar");
    }

    goto LABEL_40;
  }

  v16 = *(v11 + 8);
  if (v12)
  {
    v17 = 8 * v12;
    v18 = 1;
    v19 = *(v11 + 8);
    do
    {
      v20 = *v19++;
      v18 *= v20;
      v17 -= 8;
    }

    while (v17);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_18:
    v23 = 1;
    goto LABEL_19;
  }

  v18 = 1;
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_14:
  v21 = *(v13 + 8);
  v22 = 8 * v14;
  v23 = 1;
  do
  {
    v24 = *v21++;
    v23 *= v24;
    v22 -= 8;
  }

  while (v22);
LABEL_19:
  if (v18 != v23)
  {
    a2(v64, a3, a2, a3, a4);
    if (v64[0])
    {
      mlir::Diagnostic::operator<<<46ul>(&v64[1], "zero_point and scale should be of same length");
    }

    goto LABEL_40;
  }

  v25 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 16);
  v62 = v26;
  if (!v12)
  {
    goto LABEL_53;
  }

  v27 = 8 * v12;
  v28 = 1;
  do
  {
    v29 = *v16++;
    v28 *= v29;
    v27 -= 8;
  }

  while (v27);
  if (v28 < 2)
  {
LABEL_53:
    v61 = 0;
    v64[0] = &v61;
    if ((~v10 & 7) != 0)
    {
      v46 = a5;
    }

    else
    {
      v46 = 0;
    }

    if (!v46)
    {
      goto LABEL_66;
    }

    v47 = *(v46 + 8) & 7;
    if (v47 == 6)
    {
      v48 = v46 + 24 * *(v46 + 16);
      v49 = v48 + 120;
      if (v48 == -120)
      {
LABEL_66:
        a1[11] = 0u;
        a1[12] = 0u;
        a1[9] = 0u;
        a1[10] = 0u;
        a1[7] = 0u;
        a1[8] = 0u;
        a1[5] = 0u;
        a1[6] = 0u;
        a1[3] = 0u;
        a1[4] = 0u;
        a1[1] = 0u;
        a1[2] = 0u;
        *a1 = 0u;
        return;
      }
    }

    else
    {
      v49 = v46 + 16 * v47 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(v64, v49))
    {
      mlir::DenseElementsAttr::tryGetFloatValues(v64, &v61);
      v58 = *v64;
      v59 = v65;
      v60 = v66;
      mlir::DenseElementsAttr::tryGetFloatValues(v64, &v61);
      v50 = v67;
      v51 = v59;
      while (v51 != v50)
      {
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v58, v63);
        if (llvm::APFloat::convertToFloat(v63) < 0.0)
        {
          (a2)(v64, a3);
          if (v64[0])
          {
            mlir::Diagnostic::operator<<<34ul>(&v64[1], "All scale values must be positive");
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v64);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v64);
          llvm::APFloat::Storage::~Storage(v63);
          return;
        }

        llvm::APFloat::Storage::~Storage(v63);
        v51 = v59 + 1;
        *&v59 = v59 + 1;
      }
    }

    goto LABEL_66;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(a7, v64);
  if (v68)
  {
    v30 = *v64[0];
    if (v64[0] != &v65)
    {
      free(v64[0]);
    }

    LODWORD(v61) = v30;
    if (v26 <= v30 || v30 < -v26)
    {
      (a2)(v64, a3);
      if (v64[0])
      {
        mlir::Diagnostic::operator<<<83ul>(&v64[1], "axis must be within range (-data_rank - 1, data_rank) (exclusive). Provided axis: ");
      }

      v32 = mlir::InFlightDiagnostic::operator<<<int &>(v64, &v61);
      v33 = v32;
      if (*v32)
      {
        mlir::Diagnostic::operator<<<23ul>((v32 + 1), " for input with rank: ");
      }

      v34 = &v62;
      v35 = v33;
    }

    else
    {
      if (v30 >= 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = v26;
      }

      v38 = v37 + v30;
      v39 = *(v25 + 8);
      if (*(v39 + 8 * v38) == 0x8000000000000000)
      {
        goto LABEL_52;
      }

      v40 = *(v39 + 8 * v38);
      *&v58 = v40;
      v41 = *(v11 + 16);
      if (v41)
      {
        v42 = *(v11 + 8);
        v43 = 8 * v41;
        v44 = 1;
        do
        {
          v45 = *v42++;
          v44 *= v45;
          v43 -= 8;
        }

        while (v43);
      }

      else
      {
        v44 = 1;
      }

      if (v40 == v44)
      {
LABEL_52:
        v10 = *(a5 + 8);
        goto LABEL_53;
      }

      (a2)(v64, a3);
      if (v64[0])
      {
        if (v64[0])
        {
          mlir::Diagnostic::operator<<<29ul>(&v64[1], "Provided length of scale is ");
        }
      }

      v52 = *(v11 + 16);
      if (v52)
      {
        v53 = *(v11 + 8);
        v54 = 8 * v52;
        v55 = 1;
        do
        {
          v56 = *v53++;
          v55 *= v56;
          v54 -= 8;
        }

        while (v54);
      }

      else
      {
        v55 = 1;
      }

      v63[0] = v55;
      if (v64[0])
      {
        mlir::Diagnostic::append<long long>(&v64[1], v63);
        if (v64[0])
        {
          mlir::Diagnostic::operator<<<37ul>(&v64[1], ", but dimension of input at axis is ");
        }
      }

      v35 = v64;
      v34 = &v58;
    }

    v36 = mlir::InFlightDiagnostic::operator<<<long long &>(v35, v34);
LABEL_41:
    mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v36);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v64);
    return;
  }

  v57 = std::__throw_bad_optional_access[abi:nn200100]();
  mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(v57);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 72);
  v2 = v1[3];
  v3 = v1[7];
  v4 = v1[11];
  v5 = v1[15];
  v8 = this;
  mlir::ODIE::Compiler::CoreMLAX::VerifyQuantDequantInputs(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(void)::$_0>, &v8, v2, v3, v4, v5);
  v6 = v10;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  return (v6 & 1) == 0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verify(mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(v1 + 72);
  v3 = (*(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_18:
    v32 = 257;
    mlir::Operation::emitError(&v33, v1, v31);
    if (v33)
    {
      mlir::Diagnostic::operator<<<37ul>(v34, "scale shape is required to be static");
    }

    goto LABEL_22;
  }

  v4 = *(v2[3] + 8);
  v5 = *(v2[11] + 8);
  v6 = v3[1];
  v7 = v3[2];
  if (v7)
  {
    v8 = 8 * v7;
    v9 = v6;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_18;
  }

LABEL_6:
  v10 = (v4 & 0xFFFFFFFFFFFFFFF8);
  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_20:
    v32 = 257;
    mlir::Operation::emitError(&v33, v1, v31);
    if (v33)
    {
      mlir::Diagnostic::operator<<<36ul>(v34, "data shape is required to be static");
    }

LABEL_22:
    v22 = v34[192];
LABEL_23:
    v21 = v22 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    return v21 & 1;
  }

  v11 = v10[1];
  v12 = v10[2];
  if (v12)
  {
    v13 = 8 * v12;
    v14 = v11;
    while (*v14 != 0x8000000000000000)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_20;
  }

LABEL_11:
  v15 = v5 & 0xFFFFFFFFFFFFFFF8;
  v29 = v7;
  v30 = v12;
  v16 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v17 = *(v15 + 16);
  v28 = v17;
  if (v12 != v7 || v7 != v17)
  {
    v32 = 257;
    mlir::Operation::emitError(&v33, v1, v31);
    if (v33)
    {
      mlir::Diagnostic::operator<<<47ul>(v34, "rank of data, scale, and offset should match. ");
      if (v33)
      {
        mlir::Diagnostic::operator<<<13ul>(v34, "data_rank = ");
      }
    }

    v24 = mlir::InFlightDiagnostic::operator<<<long long &>(&v33, &v30);
    v25 = v24;
    if (*v24)
    {
      mlir::Diagnostic::operator<<<16ul>((v24 + 1), ", scale_rank = ");
    }

    v26 = mlir::InFlightDiagnostic::operator<<<long long &>(v25, &v29);
    v27 = v26;
    if (*v26)
    {
      mlir::Diagnostic::operator<<<17ul>((v26 + 1), ", offset_rank = ");
    }

    v22 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v27, &v28) + 200);
    goto LABEL_23;
  }

  if (v7)
  {
    while (1)
    {
      v19 = *v6++;
      v18 = v19;
      v20 = *v16++;
      if (v18 != v20)
      {
        break;
      }

      if (*v11 % v18)
      {
        v32 = 257;
        mlir::Operation::emitError(&v33, v1, v31);
        if (v33)
        {
          mlir::Diagnostic::operator<<<104ul>(v34, "scale size across each dimension should be a factor of corresponding size of dimension in data argument");
        }

        goto LABEL_22;
      }

      ++v11;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    v32 = 257;
    mlir::Operation::emitError(&v33, v1, v31);
    if (v33)
    {
      mlir::Diagnostic::operator<<<44ul>(v34, "shape of scale, and offset are not matching");
    }

    goto LABEL_22;
  }

LABEL_17:
  v21 = 1;
  return v21 & 1;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verify(void ****this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v81 = *MEMORY[0x277D85DE8];
  v12 = *this;
  v13 = v12[9];
  v14 = (*(v13[3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(*v14 + 136);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_18:
    v72 = 257;
    mlir::Operation::emitError(&v74, v12, v71);
    if (v74)
    {
      mlir::Diagnostic::operator<<<39ul>(&v75, "indices shape is required to be static");
    }

    goto LABEL_26;
  }

  v16 = *(v13[7] + 1);
  v17 = v14[1];
  v18 = v14[2];
  if (v18)
  {
    v19 = 8 * v18;
    v20 = v14[1];
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v19 -= 8;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_18;
  }

LABEL_6:
  v21 = (v16 & 0xFFFFFFFFFFFFFFF8);
  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_20;
  }

  v22 = v21[1];
  v23 = v21[2];
  if (v23)
  {
    v24 = 8 * v23;
    v25 = v22;
    while (*v25 != 0x8000000000000000)
    {
      ++v25;
      v24 -= 8;
      if (!v24)
      {
        goto LABEL_11;
      }
    }

LABEL_20:
    v72 = 257;
    mlir::Operation::emitError(&v74, v12, v71);
    if (v74)
    {
      mlir::Diagnostic::operator<<<35ul>(&v75, "lut shape is required to be static");
    }

    goto LABEL_26;
  }

LABEL_11:
  v70 = v14[2];
  if (v23 != v18 + 2)
  {
    v72 = 257;
    mlir::Operation::emitError(&v74, v12, v71);
    if (v74)
    {
      mlir::Diagnostic::operator<<<62ul>(&v75, "Input lut should have rank=K+2 where K is the rank of indices");
    }

LABEL_26:
    v38 = v80;
LABEL_27:
    v39 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
    return v39 & 1;
  }

  if (v18)
  {
    v26 = v18;
    v27 = v17;
    v28 = v22;
    while (1)
    {
      v30 = *v27++;
      v29 = v30;
      v31 = *v28++;
      if (v29 % v31)
      {
        break;
      }

      if (!--v26)
      {
        goto LABEL_16;
      }
    }

    v72 = 257;
    mlir::Operation::emitError(&v74, v12, v71);
    if (v74)
    {
      LODWORD(v73[0]) = 3;
      v73[1] = "The first K dimensions of lut must be factors of indices dimensions where K is the rank of indices";
      v73[2] = 98;
      v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v77, v73, 1);
      v36 = v77 + 24 * v78;
      v37 = *v35;
      *(v36 + 16) = *(v35 + 16);
      *v36 = v37;
      ++v78;
    }

    goto LABEL_26;
  }

LABEL_16:
  v32 = &v22[v18];
  v33 = *v32;
  v73[0] = *v32;
  if (v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v34 = v14[3];
  }

  else
  {
    v34 = 0;
  }

  v74 = v34;
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v74);
  v69 = IntOrFloatBitWidth;
  if (IntOrFloatBitWidth == 8 && v33 != 256 || IntOrFloatBitWidth == 6 && v33 != 64 || IntOrFloatBitWidth == 4 && v33 != 16 || IntOrFloatBitWidth == 3 && v33 != 8 || IntOrFloatBitWidth == 2 && v33 != 4 || IntOrFloatBitWidth == 1 && v33 != 2)
  {
    v72 = 257;
    mlir::Operation::emitError(&v74, *this, v71);
    if (v74)
    {
      mlir::Diagnostic::operator<<<23ul>(&v75, "Provided NUM_PALETTES ");
    }

    v42 = mlir::InFlightDiagnostic::operator<<<long long &>(&v74, v73);
    v43 = v42;
    if (*v42)
    {
      mlir::Diagnostic::operator<<<54ul>((v42 + 1), " does not match the indices uint dtype with bitwidth ");
    }

    v44 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v43, &v69);
    goto LABEL_47;
  }

  v45 = v32[1];
  mlir::ODIE::Compiler::extract1DIntVector<int>((*this)[9][11], &v74);
  if (v79)
  {
    v46 = *v74;
    if (v74 != &v76)
    {
      free(v74);
    }

    v68 = v46;
    if (v45 < 2 || v18 > v46 && v46 >= -v18)
    {
      v47 = *this;
      if (*(*this + 9))
      {
        v48 = *this - 2;
      }

      else
      {
        v48 = 0;
      }

      v49 = v48[1] & 0xFFFFFFFFFFFFFFF8;
      if (*(v49 + 16) == v18)
      {
        if (!v18)
        {
LABEL_71:
          v39 = 1;
          return v39 & 1;
        }

        v50 = *(v49 + 8);
        if (v46 >= 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = v18;
        }

        v52 = v51 + v46;
        while (1)
        {
          v53 = v52 || v45 <= 1;
          v54 = v53 ? 1 : v45;
          v55 = *v17++;
          v56 = v54 * v55;
          v57 = *v50++;
          if (v56 != v57)
          {
            break;
          }

          --v52;
          if (!--v18)
          {
            goto LABEL_71;
          }
        }

        v72 = 257;
        mlir::Operation::emitError(&v74, v47, v71);
        if (v74)
        {
          mlir::Diagnostic::operator<<<93ul>(&v75, "The output dimension does not match the indices' dimension with vector size over vector_axis");
        }
      }

      else
      {
        v72 = 257;
        mlir::Operation::emitError(&v74, v47, v71);
        if (v74)
        {
          mlir::Diagnostic::operator<<<52ul>(&v75, "output must have the same rank as the input indices");
        }
      }

      goto LABEL_26;
    }

    v72 = 257;
    mlir::Operation::emitError(&v74, *this, v71);
    if (v74)
    {
      mlir::Diagnostic::operator<<<96ul>(&v75, "vector_axis must be within range (-indices_rank - 1, indices_rank) (exclusive). Provided axis: ");
    }

    v58 = mlir::InFlightDiagnostic::operator<<<int &>(&v74, &v68);
    v59 = v58;
    if (*v58)
    {
      mlir::Diagnostic::operator<<<25ul>((v58 + 1), " for indices with rank: ");
    }

    v44 = mlir::InFlightDiagnostic::operator<<<long long &>(v59, &v70);
LABEL_47:
    v38 = *(v44 + 200);
    goto LABEL_27;
  }

  v60 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::inferReturnTypes(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v50 = *MEMORY[0x277D85DE8];
  v47[0] = a4;
  v47[1] = a5;
  if (a5 == 3)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {

      return mlir::emitOptionalError<char const(&)[32]>(a2, a3, "indices must be a ranked tensor");
    }

    v17 = (*(mlir::ValueRange::dereference_iterator(v47, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = "lut must be a ranked tensor";
      goto LABEL_6;
    }

    v18 = v17[1];
    v19 = v17[2];
    v20 = mlir::ValueRange::dereference_iterator(v47, 2);
    v48 = 0uLL;
    v44 = &v48;
    if ((~*(v20 + 8) & 7) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = *(v21 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v21 + 24 * *(v21 + 16);
      v24 = v23 + 120;
      if (v23 == -120)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v24 = v21 + 16 * v22 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v44, v24))
    {
      v25 = v16[1];
      v26 = &v25[8 * v16[2]];
      v44 = v46;
      v45 = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, v25, v26);
      v27 = mlir::ValueRange::dereference_iterator(v47, 2);
      mlir::ODIE::Compiler::extract1DIntVector<int>(v27, &v48);
      if ((v49[48] & 1) == 0)
      {
        v34 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::refineReturnTypes(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11);
      }

      v28 = *v48;
      if (v48 != v49)
      {
        free(v48);
      }

      v29 = *(v18 + 8 * v19 - 8);
      v30 = v44;
      if (v29 != 1)
      {
        *(v44 + v28) *= v29;
      }

      v31 = v17[3];
      *&v48 = v30;
      *(&v48 + 1) = v45;
      v42 = 0;
      v43 = v31;
      v32 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v31 + 32), &v48, &v43, &v42);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v32);
      if (v44 != v46)
      {
        free(v44);
      }

      return 1;
    }

LABEL_35:
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    v46[8] = 257;
    emitDiag(a2, 2, &v44, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<31ul>(&v48 + 8, "vector_axis must be a constant");
    }

    v33 = (v49[184] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    return v33;
  }

  v14 = "expected exactly 3 operands";
LABEL_6:

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, v14);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[43]>(a2, a3, "fails to infer the type of lut_to_dense op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verify(mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(v1 + 72);
  v3 = (*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_14:
    v20 = 257;
    mlir::Operation::emitError(&v21, v1, v19);
    if (v21)
    {
      mlir::Diagnostic::operator<<<44ul>(v22, "nonzero_data shape is required to be static");
    }

    goto LABEL_22;
  }

  v4 = *(*(v2 + 56) + 8);
  v5 = v3[1];
  v6 = v3[2];
  if (v6)
  {
    v7 = 8 * v6;
    v8 = v5;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_14;
  }

LABEL_6:
  v9 = (v4 & 0xFFFFFFFFFFFFFFF8);
  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_16;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = v9[1];
    v12 = 8 * v10;
    v13 = 8 * v10;
    v14 = v11;
    while (*v14 != 0x8000000000000000)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        v15 = 1;
        do
        {
          v16 = *v11++;
          v15 *= v16;
          v12 -= 8;
        }

        while (v12);
        goto LABEL_19;
      }
    }

LABEL_16:
    v20 = 257;
    mlir::Operation::emitError(&v21, v1, v19);
    if (v21)
    {
      mlir::Diagnostic::operator<<<36ul>(v22, "mask shape is required to be static");
    }

    goto LABEL_22;
  }

  v15 = 1;
LABEL_19:
  if (*v5 <= v15)
  {
    v17 = 1;
    return v17 & 1;
  }

  v20 = 257;
  mlir::Operation::emitError(&v21, v1, v19);
  if (v21)
  {
    mlir::Diagnostic::operator<<<88ul>(v22, "The number of elements in nonzero_data should not exceed the number of elements in mask");
  }

LABEL_22:
  v17 = v22[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  return v17 & 1;
}

void mlir::ODIE::Compiler::CoreMLAX::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v37[25] = *MEMORY[0x277D85DE8];
  v32 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = *(a2 + 4);
    if (v20)
    {
      v21 = *(*v20 + 136);
      if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
      {
        v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v24 = mlir::detail::InterfaceMap::lookup(v9 + 8, v23);
        v25 = (*(v24 + 8))(v24, a2);
        v26 = *(*v25 + 136);
        if (v26 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }

        if (v26 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v28 = v25[2];
          if (v28 == 1073741832 || v28 == 1073741856)
          {
            return 1;
          }
        }
      }
    }
  }

  v31 = 261;
  v30[0] = a3;
  v30[1] = a4;
  mlir::Operation::emitOpError(&v36, a1, v30);
  if (v36)
  {
    mlir::Diagnostic::operator<<<3ul>(v37, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v36, &v32);
  v11 = v10;
  if (*v10)
  {
    v33 = 3;
    v34 = " must be ranked tensor of 16-bit float or 32-bit float or 8-bit signed integer or 32-bit signed integer values, but got ";
    v35 = 120;
    v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v33, 1);
    v13 = v11[3] + 24 * *(v11 + 8);
    v14 = *v12;
    *(v13 + 16) = *(v12 + 16);
    *v13 = v14;
    ++*(v11 + 8);
    if (*v11)
    {
      v33 = 4;
      v34 = a2;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v33, 1);
      v16 = v11[3] + 24 * *(v11 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v11 + 8);
    }
  }

  v18 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CastOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a6;
  v12 = a5;
  v10 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML **this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps2(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    if (mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 0))
    {
      v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
      v6 = v4;
      if (v4)
      {
        v4 = (*(v5 + 8))(v5, v4);
      }

      if (v6)
      {
        v10 = v4;
      }

      else
      {
        v10 = v3;
      }

      v11 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
      v14 = v12;
      if (v12)
      {
        v12 = (*(v13 + 8))(v13, v12);
      }

      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      if (v10 == v15)
      {
        v7 = 1;
        return v7 & 1;
      }

      v9 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v9 = "failed to verify that Result 0 and operand 0 must have the same shape.";
    }

    v16 = v9;
    v17 = 259;
    mlir::Operation::emitOpError(v18, *this, &v16);
    v7 = v19 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps2(mlir::Operation *a1, const char *a2, unsigned int a3)
{
  v39[25] = *MEMORY[0x277D85DE8];
  v34 = a3;
  v5 = *a2;
  v6 = *(*a2 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v5 + 8, v8);
    v10 = (*(v9 + 8))(v9, a2);
    v11 = *(*v10 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v26 = v10[2];
      v24 = 1;
      if ((v26 + 2147483646) <= 6 && ((1 << (v26 - 2)) & 0x45) != 0)
      {
        return v24;
      }

      v28 = v26 - 1073741826;
      v29 = v28 > 6;
      v30 = (1 << v28) & 0x45;
      if (!v29 && v30 != 0)
      {
        return v24;
      }
    }

    else if (v11 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }
  }

  v33 = 261;
  v32[0] = "operand";
  v32[1] = 7;
  mlir::Operation::emitOpError(&v38, a1, v32);
  if (v38)
  {
    mlir::Diagnostic::operator<<<3ul>(v39, " #");
  }

  v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v38, &v34);
  v17 = v16;
  if (*v16)
  {
    v35 = 3;
    v36 = " must be tensor of 2-bit unsigned integer or 2-bit signed integer or 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
    v37 = 263;
    v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v35, 1);
    v19 = v17[3] + 24 * *(v17 + 8);
    v20 = *v18;
    *(v19 + 16) = *(v18 + 16);
    *v19 = v20;
    ++*(v17 + 8);
    if (*v17)
    {
      v35 = 4;
      v36 = a2;
      v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v35, 1);
      v22 = v17[3] + 24 * *(v17 + 8);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 16);
      *v22 = v23;
      ++*(v17 + 8);
    }
  }

  v24 = (v17[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  return v24;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v26 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
    v14 = *(*(*(v13 + 8))(v13, a2) + 136);
    v15 = v14 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    if (v15 || v14 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      return 1;
    }
  }

  v25 = 261;
  v24[0] = a3;
  v24[1] = a4;
  mlir::Operation::emitOpError(&v29, a1, v24);
  if (v29)
  {
    mlir::Diagnostic::operator<<<3ul>(v30, " #");
  }

  v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v26);
  v19 = v18;
  if (*v18)
  {
    mlir::Diagnostic::operator<<<82ul>((v18 + 1), " must be tensor of bfloat16 type or 16-bit float or 32-bit float values, but got ");
    if (*v19)
    {
      v27 = 4;
      v28 = a2;
      v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v27, 1);
      v21 = v19[3] + 24 * *(v19 + 8);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++*(v19 + 8);
    }
  }

  v17 = (v19[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a6;
  v12 = a5;
  v10 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v35 = 0;
  v4 = *v3;
  v5 = *(*v3 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v6 || (v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v8 = mlir::detail::InterfaceMap::lookup(v4 + 8, v7), v9 = (*(v8 + 8))(v8, v3), *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || ((v9[2] + 0x7FFFFFFF) <= 7 ? (v19 = ((1 << (*(v9 + 8) - 1)) & 0xAF) == 0) : (v19 = 1), v19))
  {
    v34 = 261;
    v33[0] = "operand";
    v33[1] = 7;
    mlir::Operation::emitOpError(&v39, v2, v33);
    if (v39)
    {
      mlir::Diagnostic::operator<<<3ul>(v40, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v39, &v35);
    v11 = v10;
    if (*v10)
    {
      v36 = 3;
      v37 = " must be tensor of 1-bit unsigned integer or 2-bit unsigned integer or 3-bit unsigned integer or 4-bit unsigned integer or 6-bit unsigned integer or 8-bit unsigned integer values, but got ";
      v38 = 188;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v36, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
      if (*v11)
      {
        v36 = 4;
        v37 = v3;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v36, 1);
        v16 = v11[3] + 24 * *(v11 + 8);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++*(v11 + 8);
      }
    }

    v18 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    if (v18)
    {
      return 0;
    }
  }

  if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps5(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v20 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps5(*this, (*(v20 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v21 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
  v24 = v22;
  if (v22)
  {
    v22 = (*(v23 + 8))(v23, v22);
  }

  if (v24)
  {
    v27 = v22;
  }

  else
  {
    v27 = v21;
  }

  v28 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28);
  v31 = v29;
  if (v29)
  {
    v29 = (*(v30 + 8))(v30, v29);
  }

  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v28;
  }

  v25 = 1;
  if (v27 != v32)
  {
    v33[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v34 = 259;
    mlir::Operation::emitOpError(&v39, *this, v33);
    v25 = (v40[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps5(mlir::Operation *a1, const char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v39[25] = *MEMORY[0x277D85DE8];
  v34 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v29 = v14[2];
      if (v29 != -2147483640 && v29 != 1073741832)
      {
        goto LABEL_20;
      }
    }

    else if (v15 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      goto LABEL_20;
    }

    return 1;
  }

LABEL_20:
  v33 = 261;
  v32[0] = a3;
  v32[1] = a4;
  mlir::Operation::emitOpError(&v38, a1, v32);
  if (v38)
  {
    mlir::Diagnostic::operator<<<3ul>(v39, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v38, &v34);
  v21 = v20;
  if (*v20)
  {
    v35 = 3;
    v36 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
    v37 = 163;
    v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v35, 1);
    v23 = v21[3] + 24 * *(v21 + 8);
    v24 = *v22;
    *(v23 + 16) = *(v22 + 16);
    *v23 = v24;
    ++*(v21 + 8);
    if (*v21)
    {
      v35 = 4;
      v36 = a2;
      v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v35, 1);
      v26 = v21[3] + 24 * *(v21 + 8);
      v27 = *v25;
      *(v26 + 16) = *(v25 + 16);
      *v26 = v27;
      ++*(v21 + 8);
    }
  }

  v28 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  return v28;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v28[25] = *MEMORY[0x277D85DE8];
  v24 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v14[2] == 1073741856)
    {
      return 1;
    }
  }

  v23 = 261;
  v22[0] = a3;
  v22[1] = a4;
  mlir::Operation::emitOpError(&v27, a1, v22);
  if (v27)
  {
    mlir::Diagnostic::operator<<<3ul>(v28, " #");
  }

  v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v24);
  v17 = v16;
  if (*v16)
  {
    mlir::Diagnostic::operator<<<58ul>((v16 + 1), " must be tensor of 32-bit signed integer values, but got ");
    if (*v17)
    {
      v25 = 4;
      v26 = a2;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v25, 1);
      v19 = v17[3] + 24 * *(v17 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v17 + 8);
    }
  }

  v15 = (v17[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  return v15;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a6;
  v10 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML **this)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v90 = 0;
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
    if ((*(v6 + 16))(v6, v3))
    {
      v7 = *v3;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
      (*(v9 + 24))(v9, v3);
      if (v10 == 1)
      {
        v11 = *v3;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
        v14 = (*(v13 + 8))(v13, v3);
        v15 = *(*v14 + 136);
        if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v71 = v14[2];
          if (v71 > 1073741827)
          {
            v72 = v71 == 1073741828;
            v73 = 1073741832;
          }

          else
          {
            v72 = v71 == -2147483644;
            v73 = -2147483640;
          }

          if (v72 || v71 == v73)
          {
            goto LABEL_24;
          }
        }

        else if (v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v89 = 261;
  v87 = "operand";
  v88 = 7;
  mlir::Operation::emitOpError(&v94, v2, &v87);
  if (v94)
  {
    mlir::Diagnostic::operator<<<3ul>(v95, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v94, &v90);
  v21 = v20;
  if (*v20)
  {
    v91 = 3;
    v92 = " must be 1D tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
    v93 = 216;
    v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v91, 1);
    v23 = v21[3] + 24 * *(v21 + 8);
    v24 = *v22;
    *(v23 + 16) = *(v22 + 16);
    *v23 = v24;
    ++*(v21 + 8);
    if (*v21)
    {
      v91 = 4;
      v92 = v3;
      v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v91, 1);
      v26 = v21[3] + 24 * *(v21 + 8);
      v27 = *v25;
      *(v26 + 16) = *(v25 + 16);
      *v26 = v27;
      ++*(v21 + 8);
    }
  }

  v28 = *(v21 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v94);
  if (v28)
  {
    goto LABEL_65;
  }

LABEL_24:
  v29 = *this;
  v30 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v90 = 1;
  v31 = *v30;
  v32 = *(*v30 + 136);
  v33 = v32 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v33 || (v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v35 = mlir::detail::InterfaceMap::lookup(v31 + 8, v34), v36 = (*(v35 + 8))(v35, v30), *(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v36[2] != -2147483647)
  {
    v89 = 261;
    v87 = "operand";
    v88 = 7;
    mlir::Operation::emitOpError(&v94, v29, &v87);
    if (v94)
    {
      mlir::Diagnostic::operator<<<3ul>(v95, " #");
    }

    v37 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v94, &v90);
    v38 = v37;
    if (*v37)
    {
      mlir::Diagnostic::operator<<<59ul>((v37 + 1), " must be tensor of 1-bit unsigned integer values, but got ");
      if (*v38)
      {
        v91 = 4;
        v92 = v30;
        v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v38 + 3), &v91, 1);
        v40 = v38[3] + 24 * *(v38 + 8);
        v41 = *v39;
        *(v40 + 16) = *(v39 + 16);
        *v40 = v41;
        ++*(v38 + 8);
      }
    }

    v42 = *(v38 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v94);
    if (v42)
    {
      goto LABEL_65;
    }
  }

  v43 = *this;
  if (*(*this + 9))
  {
    v44 = *this - 16;
  }

  else
  {
    v44 = 0;
  }

  v45 = *(v44 + 1) & 0xFFFFFFFFFFFFFFF8;
  v90 = 0;
  v46 = *v45;
  v47 = *(*v45 + 136);
  if (v47 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v47 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v50 = mlir::detail::InterfaceMap::lookup(v46 + 8, v49);
    v51 = (*(v50 + 8))(v50, v45);
    v52 = *(*v51 + 136);
    if (v52 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v68 = v51[2];
      if (v68 > 1073741827)
      {
        v69 = v68 == 1073741828;
        v70 = 1073741832;
      }

      else
      {
        v69 = v68 == -2147483644;
        v70 = -2147483640;
      }

      if (v69 || v68 == v70)
      {
        goto LABEL_77;
      }
    }

    else if (v52 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v52 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v52 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v52 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v52 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      goto LABEL_77;
    }
  }

  v89 = 261;
  v87 = "result";
  v88 = 6;
  mlir::Operation::emitOpError(&v94, v43, &v87);
  if (v94)
  {
    mlir::Diagnostic::operator<<<3ul>(v95, " #");
  }

  v57 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v94, &v90);
  v58 = v57;
  if (*v57)
  {
    v91 = 3;
    v92 = " must be tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
    v93 = 213;
    v59 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v57 + 3), &v91, 1);
    v60 = v58[3] + 24 * *(v58 + 8);
    v61 = *v59;
    *(v60 + 16) = *(v59 + 16);
    *v60 = v61;
    ++*(v58 + 8);
    if (*v58)
    {
      v91 = 4;
      v92 = v45;
      v62 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v58 + 3), &v91, 1);
      v63 = v58[3] + 24 * *(v58 + 8);
      v64 = *v62;
      *(v63 + 16) = *(v62 + 16);
      *v63 = v64;
      ++*(v58 + 8);
    }
  }

  v65 = *(v58 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v94);
  if (v65)
  {
LABEL_65:
    v66 = 0;
    return v66 & 1;
  }

LABEL_77:
  if (mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 1u))
  {
    v75 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v76 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v75);
    v78 = v76;
    if (v76)
    {
      v76 = (*(v77 + 8))(v77, v76);
    }

    if (v78)
    {
      v80 = v76;
    }

    else
    {
      v80 = v75;
    }

    v81 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v82 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v81);
    v84 = v82;
    if (v82)
    {
      v82 = (*(v83 + 8))(v83, v82);
    }

    if (v84)
    {
      v85 = v82;
    }

    else
    {
      v85 = v81;
    }

    if (v80 == v85)
    {
      v66 = 1;
      return v66 & 1;
    }

    v79 = "failed to verify that Result 0 element type must match element type of operand 0.";
  }

  else
  {
    v79 = "failed to verify that Result 0 and operand 1 must have the same shape.";
  }

  v87 = v79;
  v89 = 259;
  mlir::Operation::emitOpError(&v94, *this, &v87);
  v66 = v95[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v94);
  return v66 & 1;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps11(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v39[25] = *MEMORY[0x277D85DE8];
  v34 = a5;
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v20 = *(a2 + 4);
  if (!v20)
  {
    goto LABEL_2;
  }

  v21 = *(*v20 + 136);
  if (v21 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    goto LABEL_2;
  }

  v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v24 = mlir::detail::InterfaceMap::lookup(v9 + 8, v23);
  v25 = (*(v24 + 8))(v24, a2);
  v26 = *(*v25 + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return 1;
  }

  if (v26 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((v18 = 1, v28 = v25[2] - 1073741828, v29 = v28 > 0x1C, v30 = (1 << v28) & 0x10000011, !v29) ? (v31 = v30 == 0) : (v31 = 1), v31))
  {
LABEL_2:
    v33 = 261;
    v32[0] = a3;
    v32[1] = a4;
    mlir::Operation::emitOpError(&v38, a1, v32);
    if (v38)
    {
      mlir::Diagnostic::operator<<<3ul>(v39, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v38, &v34);
    v11 = v10;
    if (*v10)
    {
      v35 = 3;
      v36 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
      v37 = 144;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v35, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
      if (*v11)
      {
        v35 = 4;
        v36 = a2;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v35, 1);
        v16 = v11[3] + 24 * *(v11 + 8);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++*(v11 + 8);
      }
    }

    v18 = (v11[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps11(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v40[25] = *MEMORY[0x277D85DE8];
  v35 = a5;
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v20 = *(a2 + 4);
  if (v20)
  {
    v21 = *(*v20 + 136);
    v22 = v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id;
    if (v22 || v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v25 = mlir::detail::InterfaceMap::lookup(v9 + 8, v24);
  v26 = (*(v25 + 8))(v25, a2);
  v27 = *(*v26 + 136);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return 1;
  }

  if (v27 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((v18 = 1, v29 = v26[2] - 1073741828, v30 = v29 > 0x1C, v31 = (1 << v29) & 0x10000011, !v30) ? (v32 = v31 == 0) : (v32 = 1), v32))
  {
LABEL_2:
    v34 = 261;
    v33[0] = a3;
    v33[1] = a4;
    mlir::Operation::emitOpError(&v39, a1, v33);
    if (v39)
    {
      mlir::Diagnostic::operator<<<3ul>(v40, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v39, &v35);
    v11 = v10;
    if (*v10)
    {
      v36 = 3;
      v37 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
      v38 = 144;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v36, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
      if (*v11)
      {
        v36 = 4;
        v37 = a2;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v36, 1);
        v16 = v11[3] + 24 * *(v11 + 8);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++*(v11 + 8);
      }
    }

    v18 = (v11[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps11(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps12(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps12(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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

  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps12(mlir::Operation *a1, const char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v37[25] = *MEMORY[0x277D85DE8];
  v32 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v26 = v14[2];
      v27 = v26 == -2147483640 || v26 == 1073741828;
      if (v27 || v26 == 1073741832)
      {
        return 1;
      }
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }
  }

  v31 = 261;
  v30[0] = a3;
  v30[1] = a4;
  mlir::Operation::emitOpError(&v36, a1, v30);
  if (v36)
  {
    mlir::Diagnostic::operator<<<3ul>(v37, " #");
  }

  v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v36, &v32);
  v18 = v17;
  if (*v17)
  {
    v33 = 3;
    v34 = " must be tensor of 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type values, but got ";
    v35 = 138;
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v33, 1);
    v20 = v18[3] + 24 * *(v18 + 8);
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++*(v18 + 8);
    if (*v18)
    {
      v33 = 4;
      v34 = a2;
      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v18 + 3), &v33, 1);
      v23 = v18[3] + 24 * *(v18 + 8);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *v23 = v24;
      ++*(v18 + 8);
    }
  }

  v25 = (v18[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  return v25;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ImageToTensorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps14(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps13(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v39[25] = *MEMORY[0x277D85DE8];
  v34 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = *(a2 + 4);
    if (v20)
    {
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
      {
        v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v22 = mlir::detail::InterfaceMap::lookup(v9 + 8, v21);
        v23 = (*(v22 + 8))(v22, a2);
        v24 = *(*v23 + 136);
        if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v26 = v23[2];
          v18 = 1;
          if ((v26 + 2147483640) <= 0x18 && ((1 << (v26 - 8)) & 0x1000101) != 0)
          {
            return v18;
          }

          v28 = v26 - 1073741832;
          v29 = v28 > 0x18;
          v30 = (1 << v28) & 0x1000101;
          if (!v29 && v30 != 0)
          {
            return v18;
          }
        }

        else if (v24 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v33 = 261;
  v32[0] = a3;
  v32[1] = a4;
  mlir::Operation::emitOpError(&v38, a1, v32);
  if (v38)
  {
    mlir::Diagnostic::operator<<<3ul>(v39, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v38, &v34);
  v11 = v10;
  if (*v10)
  {
    v35 = 3;
    v36 = " must be ranked tensor of 8-bit signed integer or 16-bit signed integer or 32-bit signed integer or 8-bit unsigned integer or 16-bit unsigned integer or 32-bit unsigned integer or 16-bit float or 32-bit float values, but got ";
    v37 = 225;
    v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v35, 1);
    v13 = v11[3] + 24 * *(v11 + 8);
    v14 = *v12;
    *(v13 + 16) = *(v12 + 16);
    *v13 = v14;
    ++*(v11 + 8);
    if (*v11)
    {
      v35 = 4;
      v36 = a2;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v35, 1);
      v16 = v11[3] + 24 * *(v11 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v11 + 8);
    }
  }

  v18 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps14(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v36 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = *(a2 + 4);
    if (v20)
    {
      v21 = *(*v20 + 136);
      if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
      {
        v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v24 = mlir::detail::InterfaceMap::lookup(v9 + 8, v23);
        v25 = (*(v24 + 8))(v24, a2);
        v26 = *(*v25 + 136);
        if (v26 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v28 = v25[2];
          v18 = 1;
          if ((v28 + 2147483640) <= 0x18 && ((1 << (v28 - 8)) & 0x1000101) != 0)
          {
            return v18;
          }

          v30 = v28 - 1073741832;
          v31 = v30 > 0x18;
          v32 = (1 << v30) & 0x1000101;
          if (!v31 && v32 != 0)
          {
            return v18;
          }
        }

        else if (v26 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(&v40, a1, v34);
  if (v40)
  {
    mlir::Diagnostic::operator<<<3ul>(v41, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v40, &v36);
  v11 = v10;
  if (*v10)
  {
    v37 = 3;
    v38 = " must be ranked tensor of 8-bit signed integer or 16-bit signed integer or 32-bit signed integer or 8-bit unsigned integer or 16-bit unsigned integer or 32-bit unsigned integer or 16-bit float or 32-bit float values, but got ";
    v39 = 225;
    v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v37, 1);
    v13 = v11[3] + 24 * *(v11 + 8);
    v14 = *v12;
    *(v13 + 16) = *(v12 + 16);
    *v13 = v14;
    ++*(v11 + 8);
    if (*v11)
    {
      v37 = 4;
      v38 = a2;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v37, 1);
      v16 = v11[3] + 24 * *(v11 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v11 + 8);
    }
  }

  v18 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ImageToTensorOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::ImageToTensorOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps15(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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

  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps15(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps15(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v32[25] = *MEMORY[0x277D85DE8];
  v28 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v23 = v14[2];
      if (v23 == -2147483640 || v23 == 1073741832)
      {
        return 1;
      }
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }
  }

  v27 = 261;
  v26[0] = a3;
  v26[1] = a4;
  mlir::Operation::emitOpError(&v31, a1, v26);
  if (v31)
  {
    mlir::Diagnostic::operator<<<3ul>(v32, " #");
  }

  v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
  v18 = v17;
  if (*v17)
  {
    mlir::Diagnostic::operator<<<115ul>((v17 + 1), " must be tensor of 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type values, but got ");
    if (*v18)
    {
      v29 = 4;
      v30 = a2;
      v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v18 + 3), &v29, 1);
      v20 = v18[3] + 24 * *(v18 + 8);
      v21 = *v19;
      *(v20 + 16) = *(v19 + 16);
      *v20 = v21;
      ++*(v18 + 8);
    }
  }

  v22 = (v18[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  return v22;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "imageConstraints", 0x10uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "imageConstraints";
  v10[1] = 16;
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

unint64_t mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 16 && (*a3 == 0x6E6F436567616D69 ? (v4 = a3[1] == 0x73746E6961727473) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 16 && *a2 == 0x6E6F436567616D69 && a2[1] == 0x73746E6961727473)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "imageConstraints";
    v7[1] = 16;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_attr_constraint_CoreMLAXOps1(v8, "imageConstraints", 0x10, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_attr_constraint_CoreMLAXOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<98ul>(v12, "' failed to satisfy constraint: \n      Tensor encoding attribute describing an image encoding.\n  ");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1EF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EF80))
  {
    qword_27FC1EF70 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr>();
    *algn_27FC1EF78 = v11;
    __cxa_guard_release(&qword_27FC1EF80);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1EF70;
    v15 = *algn_27FC1EF78;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v17 = "requires attribute 'imageConstraints'";
    v18 = 259;
LABEL_12:
    mlir::Operation::emitOpError(v19, v2, &v17);
    v9 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v9 & 1;
  }

  v19[0] = v2;
  if (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_attr_constraint_CoreMLAXOps1(v3, "imageConstraints", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_attr_constraint_CoreMLAXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19) && mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps14(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    v4 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps13(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v5 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v5);
      v8 = v6;
      if (v6)
      {
        v6 = (*(v7 + 8))(v7, v6);
      }

      if (v8)
      {
        v11 = v6;
      }

      else
      {
        v11 = v5;
      }

      v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v12);
      v15 = v13;
      if (v13)
      {
        v13 = (*(v14 + 8))(v14, v13);
      }

      if (v15)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      if (v11 == v16)
      {
        v9 = 1;
        return v9 & 1;
      }

      v17 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v18 = 259;
      v2 = *this;
      goto LABEL_12;
    }
  }

  v9 = 0;
  return v9 & 1;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreMLAX::ViewOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
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
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

uint64_t mlir::Diagnostic::append<long long>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 2;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<82ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<98ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_attr_constraint_CoreMLAXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp>()
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp>()
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp>()
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp>()
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp>()
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verify(void)::$_0>(void *****a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitError(a2, *v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(void)::$_0>(void *****a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitError(a2, *v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<104ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<96ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<93ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EF68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EF68))
  {
    qword_27FC1EF58 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties>();
    unk_27FC1EF60 = v1;
    __cxa_guard_release(&qword_27FC1EF68);
  }

  return qword_27FC1EF58;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::detail::TensorToImageOpGenericAdaptorBase::Properties]";
  v6 = 147;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr]";
  v6 = 114;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::TensorToImageOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void mlir::ODIE::Compiler::CoreMLAX::getStrides(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = a1[4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v5 = 0;
  }

  v13 = v5;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v13, v4, a2);
  }

  else
  {
LABEL_5:
    *a2 = (a2 + 2);
    a2[1] = 0x600000000;
    llvm::SmallVectorImpl<long long>::resizeImpl<false>(a2, v3 + 1);
    v7 = *(a2 + 2);
    if (v7)
    {
      v8 = *a2;
      *(*a2 + 8 * (v7 - 1)) = 1;
      if (v7 != 1)
      {
        v9 = 0;
        v10 = v8 - 16;
        v11 = 1;
        do
        {
          v12 = *(v4 - 16 + 8 * v7);
          v9 |= v12 == 0x8000000000000000;
          v11 *= v12;
          if (v9)
          {
            v11 = 0x8000000000000000;
          }

          *(v10 + 8 * v7--) = v11;
        }

        while (v7 != 1);
      }
    }
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::tryFoldOperation(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v58 = *MEMORY[0x277D85DE8];
  if (mlir::SymbolOpInterface::classof(a1, a2))
  {
    return 0;
  }

  if (mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!mlir::isSpeculatable(a1, v10))
  {
    return 0;
  }

  if (!mlir::isMemoryEffectFree(a1, v11))
  {
    return 0;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a1 + 48) + 32))(*(a1 + 48), v12))
  {
    return 0;
  }

  v13 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (v13)
  {
    if (!(*v14)(v14, v13))
    {
      return 0;
    }
  }

  if (a3)
  {
    v16 = 8 * a3;
    while (*v8)
    {
      v8 = (v8 + 8);
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(*(***(a1 + 24) + 32), "coreml", 6, v15);
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::__value_func[abi:nn200100](v56, LoadedDialect + 96);
  IntOrFloatBitWidth = v57;
  if (v57)
  {
    v55 = a1;
    IntOrFloatBitWidth = (*(*v57 + 48))(v57, &v55);
    if (!IntOrFloatBitWidth)
    {
      goto LABEL_61;
    }
  }

  if ((*(a1 + 46) & 0x80) != 0 && (v19 = *(a1 + 68), v19))
  {
    v20 = 0;
    v21 = 0;
    v22 = *(a1 + 72);
    do
    {
      v23 = (*(*(v22 + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_61;
      }

      v24 = v23[2];
      if (v24)
      {
        v25 = v23[1];
        v26 = 8 * v24;
        v27 = 1;
        do
        {
          v28 = *v25++;
          v27 *= v28;
          v26 -= 8;
        }

        while (v26);
      }

      else
      {
        v27 = 1;
      }

      v55 = v23[3];
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v55);
      v29 = v27 * IntOrFloatBitWidth;
      if (v29)
      {
        v30 = v20 + 1;
      }

      else
      {
        v30 = v20;
      }

      v20 = v30 + ((v29 - (v29 != 0)) >> 3);
      ++v21;
    }

    while (v21 != v19);
  }

  else
  {
    v20 = 0;
  }

  v33 = *(a1 + 36);
  if (v33)
  {
    v34 = a1 - 16;
  }

  else
  {
    v34 = 0;
  }

  v54 = *(a1 + 36);
  v35 = 0;
  if (v33)
  {
    v36 = 0;
    while (1)
    {
      v37 = v34;
      if (!v36)
      {
        goto LABEL_42;
      }

      v38 = *(a1 - 8) & 7;
      v39 = v34;
      v40 = v36;
      if (v38 == 6)
      {
        goto LABEL_40;
      }

      v41 = (5 - v38);
      v40 = v36 - v41;
      if (v36 > v41)
      {
        break;
      }

      v37 = v34 - 16 * v36;
LABEL_42:
      v42 = (*(v37 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_61;
      }

      v43 = v42[2];
      if (v43)
      {
        v44 = v42[1];
        v45 = 8 * v43;
        v46 = 8 * v43;
        v47 = v44;
        while (*v47 != 0x8000000000000000)
        {
          ++v47;
          v46 -= 8;
          if (!v46)
          {
            v48 = 1;
            do
            {
              v49 = *v44++;
              v48 *= v49;
              v45 -= 8;
            }

            while (v45);
            goto LABEL_51;
          }
        }

LABEL_61:
        v31 = 0;
        goto LABEL_62;
      }

      v48 = 1;
LABEL_51:
      v55 = v42[3];
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v55);
      v50 = v48 * IntOrFloatBitWidth;
      if (v50)
      {
        v51 = v35 + 1;
      }

      else
      {
        v51 = v35;
      }

      v35 = v51 + ((v50 - (v50 != 0)) >> 3);
      if (++v36 == v54)
      {
        goto LABEL_55;
      }
    }

    v39 = v34 - 16 * v41;
LABEL_40:
    v37 = v39 - 24 * v40;
    goto LABEL_42;
  }

LABEL_55:
  if (v35 > a5 && v35 > v20)
  {
    goto LABEL_61;
  }

  KernelRegistry = mlir::ODIE::Compiler::CoreML::getKernelRegistry(IntOrFloatBitWidth);
LABEL_62:
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](v56);
  return v31;
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::foldUsingCoreKernels(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v69[26] = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v7)
  {
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    BYTE7(v62) = *(v6 + 24);
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    *(&__dst + v8) = 0;
    if ((SBYTE7(v62) & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0uLL;
    p_dst = &__dst;
    *&v62 = 0;
  }

  v10 = strlen(p_dst);
  Kernel = ODIE::Registration::KernelRegistryImpl::tryGetKernel(*a2, p_dst, v10);
  v12 = Kernel;
  if (SBYTE7(v62) < 0)
  {
    operator delete(__dst);
    if (!v12)
    {
      return 0;
    }
  }

  else if (!Kernel)
  {
    return 0;
  }

  if (!*(v12 + 72))
  {
    *&__dst = "Unable to find Kernel ValueInference function for op.\n";
    LOWORD(v63) = 259;
    mlir::Operation::emitError(v69, a1, &__dst);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v69);
    return 0;
  }

  v13 = *(a1 + 36);
  v51 = a3;
  if (v13)
  {
    v14 = a1 - 16;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
LABEL_35:
    v65[1] = 0;
    v65[2] = 0;
    v65[0] = &unk_286E74130;
    v63 = 0u;
    memset(v64, 0, sizeof(v64));
    __dst = 0u;
    v62 = 0u;
    ODIE::Common::MallocAllocator::operator odie_memory_allocator_t(v65, &__dst + 1);
    v28 = *(v12 + 80);
    memset(v64 + 8, 0, 72);
    *&v64[0] = v28;
    (*(v65[0] + 40))(&v57, v65);
    InputValues = ODIE::Compiler::Utils::CoreKernelsTypeBridges::makeInputValues(a1, &v57);
    v31 = v30;
    (*(v65[0] + 40))(&v57, v65);
    OutputValues = ODIE::Compiler::Utils::CoreKernelsTypeBridges::makeOutputValues(a1, &v57, v32, v33, v34);
    v37 = OutputValues;
    v38 = v36;
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v39 = *(a1 + 68);
    }

    else
    {
      v39 = 0;
    }

    if (v31 == v39 && v36 == *(a1 + 36))
    {
      v40 = *(v12 + 72);
      *&v57 = &__dst;
      *(&v57 + 1) = v31;
      v58 = InputValues;
      v59 = v36;
      v60 = OutputValues;
      v41 = v40(&v57);
      if (!v41)
      {
        v55[0] = a1;
        if (v38 < 1)
        {
LABEL_58:
          v42 = 1;
        }

        else
        {
          v44 = 0;
          v45 = v38 & 0x7FFFFFFF;
          v46 = -5;
          v47 = a1 - 16;
          while (1)
          {
            v48 = a1 - 96 - 24 * v46;
            if (v44 < 6)
            {
              v48 = v47;
            }

            if (!ConstAttribute)
            {
              break;
            }

            v50 = *(v51 + 8);
            if (v50 >= *(v51 + 12))
            {
              llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(v51, ConstAttribute & 0xFFFFFFFFFFFFFFFBLL);
            }

            else
            {
              *(*v51 + 8 * v50) = ConstAttribute & 0xFFFFFFFFFFFFFFFBLL;
              ++*(v51 + 8);
            }

            ++v44;
            ++v46;
            v47 -= 16;
            if (v45 == v44)
            {
              goto LABEL_58;
            }
          }

          *&v57 = "Failed to construct constant attribute for result during folding";
          LOWORD(v60) = 259;
          mlir::Operation::emitError(v66, a1, &v57);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v66);
          v42 = 0;
          *(v51 + 8) = 0;
        }

        goto LABEL_47;
      }

      v54 = 1283;
      v53[0] = "Kernel value inference failed for op ";
      v53[2] = v7;
      v53[3] = v8;
      v55[0] = v53;
      v55[2] = " with error code = ";
      v56 = 770;
      std::to_string(&v52, v41);
      *&v57 = v55;
      v58 = &v52;
      LOWORD(v60) = 1026;
      mlir::Operation::emitError(v67, a1, &v57);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v67);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *&v57 = "Unable to successfully construct ODIE::Operand for all operands for op.\n";
      LOWORD(v60) = 259;
      mlir::Operation::emitError(v68, a1, &v57);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v68);
    }

    v42 = 0;
LABEL_47:
    ODIE::Common::MallocAllocator::~MallocAllocator(v65);
    return v42;
  }

  v15 = 0;
  while (1)
  {
    v16 = v14;
    if (v15)
    {
      v17 = *(a1 - 8) & 7;
      v18 = v14;
      v19 = v15;
      if (v17 != 6)
      {
        v20 = (5 - v17);
        v19 = v15 - v20;
        if (v15 <= v20)
        {
          v16 = v14 - 16 * v15;
          goto LABEL_28;
        }

        v18 = v14 - 16 * v20;
      }

      v16 = v18 - 24 * v19;
    }

LABEL_28:
    v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v21)
    {
      return 0;
    }

    v23 = v21;
    v24 = v22;
    if (!(*(v22 + 16))(v22, v21))
    {
      return 0;
    }

    v25 = (*(v24 + 24))(v24, v23);
    if (v26)
    {
      break;
    }

LABEL_34:
    if (++v15 == v13)
    {
      goto LABEL_35;
    }
  }

  v27 = 8 * v26;
  while (*v25 != 0x8000000000000000)
  {
    ++v25;
    v27 -= 8;
    if (!v27)
    {
      goto LABEL_34;
    }
  }

  return 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::anonymous namespace::foldUsingCoreKernels(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,ODIE::Registration::KernelRegistry *,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(void ****a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitError(a2, v2, v3);
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::operator[](unsigned int *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::InsertIntoBucketImpl<mlir::Attribute>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0x600000000;
  }

  return v5 + 1;
}

void mlir::ODIE::Compiler::Exec::registerExecDialectCollapseAndHoistAllocationsModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t *a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v11 = 1283;
    v10[0] = "Attempting to attach an interface to an unregistered operation ";
    v10[2] = "exec.isolated_group";
    v10[3] = 19;
    v8 = ".";
    v9 = 259;
    llvm::operator+(v10, &v8, v12);
    llvm::report_fatal_error(v12, 1);
  }

  v3 = v1;
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v1 + 8) + 32);
  }

  else
  {
    v4 = (v1 + 24);
  }

  v5 = *v4;
  v12[0] = *(v1 + 16);
  v12[1] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v5 + 9, v12);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>>::collapseAndHoistAllocationsHook;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v3 + 32, v7, v6);
}

__guard mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[161];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>();
    unk_27FC19520 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations]";
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

uint64_t mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>>::collapseAndHoistAllocationsHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(v74, a2, 0);
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(&v86, v74);
  v5 = v87;
  if (v86 != v88)
  {
    free(v86);
  }

  if (v5)
  {
    v6 = *(a2 + 44);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v8 = v7 + 24 * (v6 & 0x7FFFFF);
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        v11 = (v10 + 32);
          ;
        }

        while (i != v11)
        {
          mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(&v86, v74, i);
          if (v88[0] == 1)
          {
            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v86);
            mlir::Operation::setAttr(i, "exec.memref_index", 0x11, IndexAttr);
            v14 = mlir::Builder::getIndexAttr((a3 + 8), v87);
            mlir::Operation::setAttr(i, "exec.memref_offset", 0x12, v14);
          }

          do
          {
            i = *(i + 1);
          }

          while (i != v11 && *(*(i + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id);
        }

        v7 += 24;
      }

      while (v7 != v8);
    }

    v76[0] = 1;
    v76[1] = -4096;
    v76[10] = -4096;
    v76[19] = -4096;
    v76[28] = -4096;
    mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(&v86, v74);
    v15 = v86;
    if (v87)
    {
      v16 = v86 + 8 * v87;
      do
      {
        *&v98 = *v15;
        mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize(v74, v98, &v80);
        v17 = v80;
        if (v81)
        {
          v18 = 8 * v81;
          do
          {
            v19 = *v17;
            v17 += 2;
            v20 = *(a2 + 24);
            *&v92 = v19;
            v21 = mlir::IntegerType::get(*(a3 + 8), 8, 0);
            v97[0] = mlir::MemRefType::get(&v92, 1, v21, 0, 0, v98);
            v77 = 0;
            v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::MemRefType,decltype(nullptr)>((a3 + 8), v20, v97);
            v23 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::operator[](v76, &v98);
            llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Exec::AllocOp,true>::push_back(v23, v22);
            v18 -= 8;
          }

          while (v18);
          v17 = v80;
        }

        if (v17 != &v82)
        {
          free(v17);
        }

        v15 += 8;
      }

      while (v15 != v16);
      v15 = v86;
    }

    if (v15 != v88)
    {
      free(v15);
    }

    (*(*a3 + 40))(a3, a2);
    v24 = *(a2 + 44);
    if ((v24 & 0x7FFFFF) != 0)
    {
      v25 = ((a2 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v71 = v25 + 24 * (v24 & 0x7FFFFF);
      do
      {
        v72 = v25;
        v26 = *(v25 + 8);
        if (v26)
        {
          v27 = (v26 - 8);
        }

        else
        {
          v27 = 0;
        }

        v80 = 1;
        v81 = -4096;
        v83 = -4096;
        v84 = -4096;
        v85 = -4096;
        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom(&v80, v76);
        v86 = 1;
        v87 = -4096;
        v89 = -4096;
        v90 = -4096;
        v91 = -4096;
        v28 = v80;
        if (v80 > 1)
        {
          v32 = &v86;
          v33 = &v81;
          if ((v80 & 1) == 0)
          {
            v33 = v81;
            v32 = (v81 + 72 * v82);
            if (!v82)
            {
              v35 = 0;
              v31 = v81;
              goto LABEL_53;
            }
          }

          v28 = v80 & 1;
          v31 = v33;
          while ((*v31 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v31 += 9;
            if (v31 == v32)
            {
              v31 = v32;
              break;
            }
          }
        }

        else
        {
          v29 = v81;
          v30 = v82;
          if (v80)
          {
            v31 = &v86;
          }

          else
          {
            v31 = (v81 + 72 * v82);
          }

          if (v80)
          {
            v29 = &v81;
            v30 = 4;
          }

          v32 = &v29[9 * v30];
        }

        if (!v28)
        {
          v33 = v81;
          v35 = v82;
LABEL_53:
          v34 = &v33[9 * v35];
          goto LABEL_54;
        }

        v34 = &v86;
LABEL_54:
        while (v31 != v34)
        {
          if (*(v31 + 4))
          {
            if ((*(a2 + 46) & 0x80) != 0)
            {
              v36 = *(a2 + 68);
            }

            else
            {
              v36 = 0;
            }

            v37 = *v31[1];
            *&v98 = a2;
            DWORD2(v98) = 0;
            HIDWORD(v98) = v36;
            *&v99 = &v100;
            *(&v99 + 1) = 0x100000000;
            v97[0] = v37 - 16;
            mlir::MutableOperandRange::append(&v98, v97, 1);
            if (v99 != &v100)
            {
              free(v99);
            }

            mlir::Block::addArgument(v27, *(v37 - 8) & 0xFFFFFFFFFFFFFFF8, *(v37 + 24));
          }

            ;
          }
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(&v80);
        v38 = *(a3 + 24);
        v39 = v27[5];
        *(a3 + 24) = v27;
        *(a3 + 32) = v39;
        while (v39 != v27 + 4 && *(v39[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
        {
          v39 = v39[1];
        }

        v73 = v38;
        *&v98 = v39;
        *(&v98 + 1) = v27 + 4;
        *&v99 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v99 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v100 = v27 + 4;
        *(&v100 + 1) = v27 + 4;
        *&v101 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v101 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v102 = "exec.memref_offset";
        *(&v102 + 1) = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v98);
        v97[0] = (v27 + 4);
        v97[1] = (v27 + 4);
        v97[2] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v97[3] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v97[4] = (v27 + 4);
        v97[5] = (v27 + 4);
        v97[6] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v97[7] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v97[8] = "exec.memref_offset";
        v97[9] = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(v97);
        v95 = v101;
        v96 = v102;
        v93 = v99;
        v94 = v100;
        v92 = v98;
        v40 = v97[0];
        v77 = v79;
        v78 = 0x600000000;
        v41 = v98;
        if (v98 == v97[0])
        {
          v46 = 0;
          v42 = 0;
          v47 = 6;
        }

        else
        {
          v42 = 0;
          do
          {
            v43 = *(v41 + 8);
            *&v98 = v43;
            v44 = *(&v98 + 1);
            if (v43 != *(&v98 + 1))
            {
              v45 = v99;
              do
              {
                if (v45(v43))
                {
                  break;
                }

                v43 = *(v43 + 8);
              }

              while (v43 != v44);
              *&v98 = v43;
            }

            ++v42;
            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v98);
            v41 = v98;
          }

          while (v98 != v40);
          v46 = v78;
          v47 = HIDWORD(v78);
        }

        v48 = v42 + v46;
        if (v48 > v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v48, 8);
          v46 = v78;
        }

        v98 = v92;
        v99 = v93;
        v100 = v94;
        v101 = v95;
        v102 = v96;
        v49 = v92;
        v50 = v77;
        if (v92 != v40)
        {
          v51 = v77 + 8 * v46;
          do
          {
            *v51 = (*(&v99 + 1))(v49);
            v52 = *(v49 + 8);
            *&v98 = v52;
            v53 = *(&v98 + 1);
            if (v52 != *(&v98 + 1))
            {
              v54 = v99;
              do
              {
                if (v54(v52))
                {
                  break;
                }

                v52 = *(v52 + 8);
              }

              while (v52 != v53);
              *&v98 = v52;
            }

            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v98);
            ++v51;
            v49 = v98;
          }

          while (v98 != v40);
          v46 = v78;
          v50 = v77;
        }

        v55 = v46 + v42;
        LODWORD(v78) = v55;
        v56 = v73;
        if (v55)
        {
          v57 = *(a3 + 24);
          v58 = *(a3 + 32);
          v59 = 8 * v55;
          do
          {
            v60 = *v50;
            *(a3 + 24) = *(*v50 + 16);
            *(a3 + 32) = v60;
            v97[0] = *((*(v60 - 8) & 0xFFFFFFFFFFFFFFF8) + 48);
            v61 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(&v86, v97);
            Attr = mlir::Operation::getAttr(v60, "exec.memref_index", 0x11uLL);
            if (Attr)
            {
              if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v63 = Attr;
              }

              else
              {
                v63 = 0;
              }
            }

            else
            {
              v63 = 0;
            }

            *&v92 = v63;
            *&v98 = *(v61[1] + 8 * mlir::IntegerAttr::getInt(&v92));
            v64 = *(v60 + 24);
            v97[0] = *(v60 - 8) & 0xFFFFFFFFFFFFFFF8;
            *&v92 = mlir::Operation::getAttr(v60, "exec.memref_offset", 0x12uLL);
            v65 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), v64, v97, &v98, &v92);
            if (*(v65 + 9))
            {
              v66 = v65 - 16;
            }

            else
            {
              v66 = 0;
            }

            v97[0] = v66;
            mlir::RewriterBase::replaceAllOpUsesWith(a3, v60, v97, 1);
            if (v57)
            {
              *(a3 + 24) = v57;
              *(a3 + 32) = v58;
            }

            else
            {
              v58 = 0;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }

            v56 = v73;
            ++v50;
            v59 -= 8;
          }

          while (v59);
          v50 = v77;
          if (v78)
          {
            v67 = 8 * v78;
            do
            {
              v68 = *v50++;
              (*(*a3 + 16))(a3, v68, v56);
              v67 -= 8;
            }

            while (v67);
            v50 = v77;
            v56 = v73;
          }
        }

        if (v50 != v79)
        {
          free(v50);
          v56 = v73;
        }

        if (v56.n128_u64[0])
        {
          *(a3 + 24) = v56;
        }

        else
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
        }

        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::destroyAll(&v86);
        if ((v86 & 1) == 0)
        {
          MEMORY[0x25F891030](v87, 8);
        }

        v25 = v72 + 24;
      }

      while (v72 + 24 != v71);
    }

    (*(*a3 + 48))(a3, a2);
    llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(v76);
    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(v75);
  MEMORY[0x25F891030](v75[0], 8);
  MEMORY[0x25F891030](v74[0], 8);
  return v69;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::MemRefType,decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = &v12;
  v11[3] = 0x400000000;
  v13[0] = v14;
  v13[1] = 0x400000000;
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
  v10 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v13, &v10, v11);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  return v8;
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::operator[](unsigned int *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::InsertIntoBucketImpl<mlir::Attribute>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0x600000000;
  }

  return v5 + 1;
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Exec::AllocOp,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::destroyAll(a1);
  if ((*a1 & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 8), 8);
  }

  return a1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.alloc";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 72 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 72 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::InsertIntoBucketImpl<mlir::Attribute>(unsigned int *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

void llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::grow(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v2 > 4)
    {
      *(a1 + 8) = llvm::allocate_buffer((72 * v2), 8uLL);
      *(a1 + 16) = v2;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::moveFromOldBuckets(a1, v7, v7 + 72 * v8);

    JUMPOUT(0x25F891030);
  }

  v9 = 0;
  v10 = v14;
  do
  {
    v11 = a1 + v9;
    v12 = *(a1 + v9 + 8);
    if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v10 = v12;
      v10[1] = v10 + 3;
      v10[2] = 0x600000000;
      if (*(v11 + 24))
      {
        llvm::SmallVectorImpl<mlir::ODIE::Compiler::Exec::AllocOp>::operator=((v10 + 1), v11 + 16);
      }

      v10 += 9;
      v13 = *(v11 + 16);
      if ((a1 + v9 + 32) != v13)
      {
        free(v13);
      }
    }

    v9 += 72;
  }

  while (v9 != 288);
  if (v2 > 4)
  {
    *a1 &= ~1u;
    *(a1 + 8) = llvm::allocate_buffer((72 * v2), 8uLL);
    *(a1 + 16) = v2;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::moveFromOldBuckets(a1, v14, v10);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::moveFromOldBuckets(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 2);
    v9 = (a1 + 74);
  }

  else
  {
    v7 = a1[4];
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 1);
    v9 = &v8[72 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 72;
  v12 = vdupq_n_s64(v11 / 0x48);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 9) = -4096;
    }

    v10 += 2;
    v8 += 144;
  }

  while (((v11 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
LABEL_11:
  if (a2 != a3)
  {
    do
    {
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::LookupBucketFor<mlir::Attribute>(a1, v4, &v17);
        *v17 = *v4;
        v14 = v17;
        v17[1] = v17 + 3;
        v15 = (v14 + 1);
        *(v15 + 8) = 0x600000000;
        if (*(v4 + 16))
        {
          llvm::SmallVectorImpl<mlir::ODIE::Compiler::Exec::AllocOp>::operator=(v15, v4 + 8);
        }

        *a1 += 2;
        v16 = *(v4 + 8);
        if ((v4 + 24) != v16)
        {
          free(v16);
        }
      }

      v4 += 72;
    }

    while (v4 != a3);
  }
}

uint64_t llvm::SmallVectorImpl<mlir::ODIE::Compiler::Exec::AllocOp>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::Exec::AllocOp>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::ODIE::Compiler::Exec::AllocOp>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocViewOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::Exec::AllocViewOp::build(a1, v14, *a3, *a4, *a5, 0);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
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

unsigned int *llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom(int *a1, _DWORD *a2)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::destroyAll(a1);
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 1), 8);
    v4 = *a1;
  }

  *a1 = v4 | 1;
  if ((*a2 & 1) == 0 && a2[4] >= 5u)
  {
    *a1 = v4 & 0xFFFFFFFE;
    if (*a2)
    {
      v5 = 4;
    }

    else
    {
      v5 = a2[4];
    }

    *(a1 + 1) = llvm::allocate_buffer((8 * (v5 + 8 * v5)), 8uLL);
    *(a1 + 2) = v5;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>>(a1, a2);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::destroyAll(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + 8;
    v1 = 4;
  }

  else
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      return;
    }

    v2 = *(a1 + 8);
  }

  v3 = 72 * v1;
  v4 = (v2 + 24);
  do
  {
    if ((*(v4 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v5 = *(v4 - 2);
      if (v4 != v5)
      {
        free(v5);
      }
    }

    v4 += 9;
    v3 -= 72;
  }

  while (v3);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>>(unsigned int *result, _DWORD *a2)
{
  v2 = *result & 1;
  *result = *a2 & 0xFFFFFFFE | v2;
  result[1] = a2[1];
  v3 = result + 2;
  if (!v2)
  {
    v3 = *v3;
  }

  v4 = a2 + 2;
  if ((*a2 & 1) == 0)
  {
    v4 = *v4;
  }

  if (v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = result[4];
    if (!v5)
    {
      return result;
    }
  }

  v6 = 0;
  do
  {
    v7 = v4[v6 / 8];
    *&v3[v6 / 4] = v7;
    if ((v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *&v3[v6 / 4 + 2] = &v3[v6 / 4 + 6];
      result = &v3[v6 / 4 + 2];
      *&v3[v6 / 4 + 4] = 0x600000000;
      if (LODWORD(v4[v6 / 8 + 2]))
      {
        result = llvm::SmallVectorImpl<mlir::ODIE::Compiler::Exec::AllocOp>::operator=(result, &v4[v6 / 8 + 1]);
      }
    }

    v6 += 72;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t *a1)
{
  result = *a1;
  while (result != a1[4])
  {
    v3 = (a1[3])();
    result = mlir::Operation::hasAttr(v3, a1[8], a1[9]);
    if (result)
    {
      break;
    }

    v4 = a1[1];
    result = *(*a1 + 8);
    *a1 = result;
    if (result != v4)
    {
      do
      {
        v5 = (a1[2])();
        result = *a1;
        if (v5)
        {
          break;
        }

        result = *(result + 8);
        *a1 = result;
      }

      while (result != a1[1]);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(uint64_t a1, void *a2)
{
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::doFind<mlir::Attribute>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return (a1 + 296);
    }

    else
    {
      return (*(a1 + 8) + 72 * *(a1 + 16));
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::doFind<mlir::Attribute>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 0;
    }

    v2 = *(a1 + 8);
  }

  v4 = v3 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (v2 + 72 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v2 + 72 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocViewOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.alloc_view";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 72 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
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

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::destroyAll(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + 8;
    v1 = 4;
  }

  else
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      return;
    }

    v2 = *(a1 + 8);
  }

  v3 = 72 * v1;
  v4 = (v2 + 24);
  do
  {
    if ((*(v4 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v5 = *(v4 - 2);
      if (v4 != v5)
      {
        free(v5);
      }
    }

    v4 += 9;
    v3 -= 72;
  }

  while (v3);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 72 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 72 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::InsertIntoBucketImpl<mlir::Attribute>(unsigned int *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

void llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v2 > 4)
    {
      *(a1 + 8) = llvm::allocate_buffer((72 * v2), 8uLL);
      *(a1 + 16) = v2;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(a1, v7, v7 + 72 * v8);

    JUMPOUT(0x25F891030);
  }

  v9 = 0;
  v10 = v14;
  do
  {
    v11 = a1 + v9;
    v12 = *(a1 + v9 + 8);
    if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v10 = v12;
      v10[1] = v10 + 3;
      v10[2] = 0x600000000;
      if (*(v11 + 24))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=((v10 + 1), v11 + 16);
      }

      v10 += 9;
      v13 = *(v11 + 16);
      if ((a1 + v9 + 32) != v13)
      {
        free(v13);
      }
    }

    v9 += 72;
  }

  while (v9 != 288);
  if (v2 > 4)
  {
    *a1 &= ~1u;
    *(a1 + 8) = llvm::allocate_buffer((72 * v2), 8uLL);
    *(a1 + 16) = v2;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(a1, v14, v10);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 2);
    v9 = (a1 + 74);
  }

  else
  {
    v7 = a1[4];
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 1);
    v9 = &v8[72 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 72;
  v12 = vdupq_n_s64(v11 / 0x48);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 9) = -4096;
    }

    v10 += 2;
    v8 += 144;
  }

  while (((v11 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
LABEL_11:
  if (a2 != a3)
  {
    do
    {
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(a1, v4, &v17);
        *v17 = *v4;
        v14 = v17;
        v17[1] = v17 + 3;
        v15 = (v14 + 1);
        *(v15 + 8) = 0x600000000;
        if (*(v4 + 16))
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v15, v4 + 8);
        }

        *a1 += 2;
        v16 = *(v4 + 8);
        if ((v4 + 24) != v16)
        {
          free(v16);
        }
      }

      v4 += 72;
    }

    while (v4 != a3);
  }
}

void *mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::Exec::ExecDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::Exec::ExecDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::Exec::ExecDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::Exec::ExecDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Exec::CopyElision::~CopyElision(mlir::ODIE::Compiler::Exec::CopyElision *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

BOOL mlir::OperationPass<mlir::func::FuncOp>::canScheduleOn(uint64_t a1, uint64_t a2)
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

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::CopyElision>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
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

void mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern::~MoveCopiesToDefinitionPattern(mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a2 + 72) + 24) + 8) & 7;
  if (v5 == 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(a2 + 72) + 24);
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v6 + 24 * *(v6 + 16);
      v9 = v8 + 120;
      if (v8 == -120)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = v6 + 16 * v7 + 16;
    }

    if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
    {
      if ((*(v9 + 44) & 0x800000) != 0)
      {
        v12 = *(v9 + 72);
        v13 = *(v9 + 68);
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v24 = &v26;
      *v25 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v24, v12, 0, v12, v13);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v24, *(*(a2 + 72) + 56));
      (*(*a3 + 40))(a3, v9);
      v14 = *(v9 + 44);
      if ((v14 & 0x800000) != 0)
      {
        mlir::detail::OperandStorage::setOperands((v9 + 64), v9, v24 & 0xFFFFFFFFFFFFFFF9, v25[0]);
        v14 = *(v9 + 44);
      }

      v15 = ((v9 + 64 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
      v16 = *(*(a2 + 72) + 56);
      v17 = *(v16 + 8);
      if ((~*(v16 + 8) & 7) != 0)
      {
        v18 = *(*(a2 + 72) + 56);
      }

      else
      {
        v18 = 0;
      }

      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = *(v18 + 8) & 7;
      if (v19 == 6)
      {
        v20 = v18 + 24 * *(v18 + 16) + 120;
        if (!v20)
        {
LABEL_24:
          v21 = (v16 + 32);
          goto LABEL_27;
        }
      }

      else
      {
        v20 = v18 + 16 * v19 + 16;
      }

      v21 = (v20 + 24);
LABEL_27:
      v22 = *(v15 + 8);
      if (v22)
      {
        v23 = (v22 - 8);
      }

      else
      {
        v23 = 0;
      }

      mlir::Block::addArgument(v23, v17 & 0xFFFFFFFFFFFFFFF8, *v21);
    }
  }

LABEL_10:
  v27 = "Already at def location";
  v28 = 259;
  v24 = &v27;
  v10 = a3[2];
  if (v10 && v10[2] == 1)
  {
    (*(*v10 + 88))(v10, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::CopyOp &>(mlir::ODIE::Compiler::Exec::CopyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v24);
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.copy";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern]";
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

void mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult::~ElideCopyOfCallResult(mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8);
  if ((v6 & 7) == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(a2 + 72) + 24);
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_7:
      v11 = "arg";
      v12 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  v13 = *(v10 + 48);
  if (*(v13 + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v14 = *(v13 + 8);
    v11 = *(v14 + 16);
    v12 = *(v14 + 24);
LABEL_11:
    v37 = 1283;
    v35 = v11;
    v36 = v12;
    v32 = &v33;
    v33 = "Can't handle copy source value: ";
    v15 = *(a3 + 16);
    if (!v15 || v15[2] != 1)
    {
      return 0;
    }

    v16 = *(a2 + 24);
    v17 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::CopyOp &>(mlir::ODIE::Compiler::Exec::CopyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_14:
    (*(*v15 + 88))(v15, v16, v17, &v32);
    return 0;
  }

  v31 = v10;
  if ((v6 & 7) == 6)
  {
    v20 = *(v5 + 16) + 6;
  }

  else
  {
    v20 = v6 & 7;
  }

  if (*(*(*(*(v10 + 96) + 8) + 8 * v20) + 8) == 2)
  {
    v21 = "Found <return> intent - illegal to replace";
    goto LABEL_31;
  }

  v22 = *(*(v10 + 72) + 32 * *(v10 + 104) + 32 * v20 + 24);
  if ((~*(v22 + 8) & 7) != 0)
  {
    v23 = *(*(v10 + 72) + 32 * *(v10 + 104) + 32 * v20 + 24);
  }

  else
  {
    v23 = 0;
  }

  if (!v23 || (*(v23 + 8) & 7) == 6 && v23 + 24 * *(v23 + 16) == -120 || (v24 = *v22) == 0 || *v24)
  {
    v21 = "Unsafe to remove the copy";
LABEL_31:
    v33 = v21;
    v37 = 259;
    v32 = &v33;
    v15 = *(a3 + 16);
    if (!v15 || v15[2] != 1)
    {
      return 0;
    }

    v16 = *(v10 + 24);
    v17 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::CallOp &>(mlir::ODIE::Compiler::Exec::CallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
    goto LABEL_14;
  }

  mlir::ODIE::Compiler::Exec::CallOp::getOutputsMutable(&v33, &v31);
  v25 = (*(v33 + 9) + 32 * (v34 + v20));
  v26 = *(*(a2 + 72) + 56);
  v27 = v25[1];
  if (v27)
  {
    v28 = *v25;
    *v27 = *v25;
    if (v28)
    {
      *(v28 + 8) = v25[1];
    }
  }

  v25[3] = v26;
  v25[1] = v26;
  v29 = *v26;
  *v25 = *v26;
  if (v29)
  {
    *(v29 + 8) = v25;
  }

  *v26 = v25;
  if (v35 != &v37)
  {
    free(v35);
  }

  v30 = v10 - 24 * (v20 - 5) - 96;
  if (v20 <= 5)
  {
    v30 = v10 - 16 * (v20 + 1);
  }

  v33 = v30;
  v18 = 1;
  (**a3)(a3, a2, &v33, 1);
  return v18;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(mlir::ODIE::Compiler::Exec::CallOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult]";
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

void mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg::~ElideCopyOfBlockArg(mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg::matchAndRewrite(int a1, mlir::Operation *a2, void (***a3)(void, mlir::Operation *, uint64_t ***, uint64_t))
{
  v5 = *(a2 + 9);
  v6 = *(v5 + 24);
  v22 = v6;
  if ((~*(v6 + 2) & 7) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ((v7[1] & 7) != 6 || &v7[3 * v7[2]] != -120))
  {
    return 0;
  }

  v8 = **(v5 + 56);
  if (!v8)
  {
    return 0;
  }

  if (*v8)
  {
    return 0;
  }

  v11 = *(a2 - 2);
  if (!v11 || *v11)
  {
    return 0;
  }

  v12 = v11[2];
  if (!v12 || *(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    return 0;
  }

  v14 = *(v12 + 44);
  v15 = *(v12 + 16 * ((v14 >> 23) & 1) + 88);
  if ((v14 & 0x800000) != 0)
  {
    v16 = *(v12 + 72);
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  if (v15)
  {
    for (i = (v16 + 24); *i != (a2 - 16); i += 4)
    {
      v9 = 0;
      if (v15 == ++v17)
      {
        return v9;
      }
    }
  }

  if (v17 == v15)
  {
    return 0;
  }

  v19 = *v6;
  if (*v6)
  {
    while (1)
    {
      v20 = v19[2];
      if (v20 != a2 && !mlir::Operation::isBeforeInBlock(v19[2], a2))
      {
        v21 = mlir::Operation::isBeforeInBlock(v20, v12);
        v9 = 0;
        if (v20 == v12 || v21)
        {
          break;
        }
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v9 = 1;
    (**a3)(a3, a2, &v22, 1);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg]";
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

uint64_t mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion::runOnOperation(mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion *this)
{
  v236 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  *&v214 = *(this + 6);
  v149 = *(mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(&v214) + 24);
  v181[0] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v181[1] = 0;
  v180 = &unk_286E76228;
  v4 = *(v2 + 40);
  v3 = *(v2 + 44);
  v182 = 0;
  v183 = 0;
  v5 = v2 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 32 * v4;
  v7 = *(v5 + 64);
  v6 = *(v5 + 72);
  v8 = v5 + 64;
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  while (v6 != v8)
  {
    v9 = v6 - 8;
    if (!v6)
    {
      v9 = 0;
    }

    if (*(v9 + 32) != v9 + 32)
    {
      break;
    }

    v6 = *(v6 + 8);
  }

  if (v6 == v8)
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v10 = v6 - 8;
    if (!v6)
    {
      v10 = 0;
    }

    v11 = *(v10 + 40);
  }

  v216 = v8;
  *&v214 = v8;
  *(&v214 + 1) = v6;
  *(&v215 + 1) = v8;
  *&v215 = v11;
  v217 = mlir::detail::op_filter_iterator<mlir::func::FuncOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v214);
  v176 = v214;
  v177 = v215;
  v178 = v216;
  v179 = v217;
  *&v214 = v8;
  *(&v214 + 1) = v8;
  *&v215 = 0;
  *(&v215 + 1) = v8;
  v216 = v8;
  v217 = mlir::detail::op_filter_iterator<mlir::func::FuncOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v214);
  v12 = v215;
  v171 = v176;
  v172 = v177;
  v173 = v178;
  v174 = v179;
  v175 = mlir::detail::op_iterator<mlir::func::FuncOp,mlir::Region::OpIterator>::unwrap;
  result = v177;
  if (v177 != v215)
  {
    v146 = v215;
LABEL_14:
    v14 = (v175)();
    Attr = mlir::Operation::getAttr(v14, "exec.has_model_context", 0x16uLL);
    if (!Attr)
    {
      goto LABEL_213;
    }

    if (*(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_213;
    }

    InitFunc = mlir::ODIE::Compiler::Exec::getInitFunc(v149, v14, v16);
    if (!InitFunc)
    {
      goto LABEL_213;
    }

    v18 = InitFunc;
    v20 = *(v14 + 40);
    v19 = *(v14 + 44);
    v148 = v14 + 64;
    v168 = 0;
    v167 = 0u;
    v169 = &v171;
    v170 = 0;
    v164 = 0;
    v163 = 0u;
    v165 = &v167;
    v166 = 0;
    mlir::ODIE::Compiler::Exec::collectInferenceInvariantOps((((v14 + 64 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v20), &v167, &v163);
    if (!v170)
    {
      goto LABEL_208;
    }

    v147 = v14;
    v160 = 0;
    v159 = 0u;
    v161 = &v163;
    v162 = 0;
    v156 = 0;
    v155 = 0u;
    v157 = &v159;
    v158 = 0;
    v21 = v169;
    v22 = v169 + 8 * v170;
    v23 = 8 * v170;
    *&v214 = &v215 + 8;
    *(&v214 + 1) = 16;
    LODWORD(v215) = 0;
    BYTE4(v215) = 1;
    v24 = v169;
    do
    {
      v25 = *v24++;
      llvm::SmallPtrSetImpl<mlir::Operation *>::insert(&v214, v25, v188);
      v23 -= 8;
    }

    while (v23);
    v212 = 0;
    __src = 0;
    v213[0] = 0;
LABEL_21:
    v26 = *v21;
    if ((*(*v21 + 46) & 0x80) != 0)
    {
      v27 = *(v26 + 68);
      if (v27)
      {
        v28 = (*(v26 + 72) + 24);
        do
        {
          v188[0] = *v28;
          v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(&__src, v188);
          if (!v29 || v29 == __src + 8 * v213[0])
          {
            llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(&v159, v188);
          }

          v28 += 4;
          --v27;
        }

        while (v27);
      }
    }

    v30 = *(v26 + 36);
    v31 = v26 - 16;
    if (v30)
    {
      v32 = (v26 - 16);
    }

    else
    {
      v32 = 0;
    }

    if (!v30)
    {
      goto LABEL_55;
    }

    v33 = 0;
    v34 = v32;
    while (1)
    {
      v35 = v32;
      if (v33)
      {
        v36 = *(v26 - 8) & 7;
        v37 = v32;
        v38 = v33;
        if (v36 == 6)
        {
          goto LABEL_37;
        }

        v39 = (5 - v36);
        v35 = v34;
        v38 = v33 - v39;
        if (v33 > v39)
        {
          break;
        }
      }

LABEL_38:
      v208 = v35;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__src, &v208, v188);
      ++v33;
      v34 -= 16;
      if (v30 == v33)
      {
        v40 = *(v26 + 36);
        if (v40)
        {
          v41 = v26 - 16;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v42 = 0;
          while (1)
          {
            v43 = v41;
            if (!v42)
            {
              goto LABEL_50;
            }

            v44 = *(v26 - 8) & 7;
            v45 = v26 - 16;
            v46 = v42;
            if (v44 == 6)
            {
              goto LABEL_48;
            }

            v47 = (5 - v44);
            v46 = v42 - v47;
            if (v42 > v47)
            {
              break;
            }

            v43 = v31 - 16 * v42;
LABEL_50:
            v188[0] = v43;
            while (1)
            {
              v43 = *v43;
              if (!v43)
              {
                break;
              }

              if (!llvm::SmallPtrSetImplBase::contains_imp(&v214, *(v43 + 16)))
              {
                llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(&v155, v188);
                break;
              }
            }

            if (++v42 == v40)
            {
              goto LABEL_55;
            }
          }

          v45 = v31 - 16 * v47;
LABEL_48:
          v43 = v45 - 24 * v46;
          goto LABEL_50;
        }

LABEL_55:
        v21 += 8;
        if (v21 == v22)
        {
          MEMORY[0x25F891030](__src, 8);
          if ((BYTE4(v215) & 1) == 0)
          {
            free(v214);
          }

          __src = v213;
          v212 = 0x600000000;
          if (v158)
          {
            v48 = v157;
            v49 = 8 * v158;
            do
            {
              v50 = *v48++;
              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&__src, *(v50 + 8) & 0xFFFFFFFFFFFFFFF8);
              v49 -= 8;
            }

            while (v49);
            if (v212)
            {
              v51 = *(((v18 + 16 * ((*(v18 + 44) >> 23) & 1) + ((*(v18 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 40) + 8);
              if (v51)
              {
                v52 = v51 - 8;
              }

              else
              {
                v52 = 0;
              }

              v53 = *(v52 + 32);
              v182 = *(v53 + 16);
              v183 = v53;
              v54 = *(*(v53 + 72) + 24);
              v200 = v54;
              v198 = 0;
              v197 = 0;
              v199 = 0;
              if (v158)
              {
                v55 = 0;
                v56 = v157;
                v57 = 8 * v158;
                do
                {
                  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](&v197, v56++) = v55++;
                  v57 -= 8;
                }

                while (v57);
                v54 = v200;
              }

              v58 = *(v54 + 8) & 0xFFFFFFFFFFFFFFF8;
              v196 = v58;
              if (*(v58 + 16))
              {
                v59 = *(v58 + 24);
                v60 = *(v58 + 32);
              }

              else
              {
                v59 = 0;
                v60 = 0;
              }

              v208 = v210;
              v209 = 0x600000000;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v208, v59, &v59[8 * v60]);
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v208, __src, __src + 8 * v212);
              mlir::ODIE::Compiler::Exec::ContextType::setTypes(&v196, v208, v209);
              v188[1] = 0;
              v188[0] = 0;
              v189 = 0;
              v190 = 0;
              v191 = 0;
              v192 = 0;
              v193 = 0;
              v194 = 0;
              v195 = 0;
              if (v170)
              {
                v61 = v169;
                v150 = v169 + 8 * v170;
                v151 = v53;
                while (1)
                {
                  v152 = v61;
                  v62 = *v61;
                  v63 = *v61;
                  while (1)
                  {
                    v64 = *(v63 + 16);
                    if (!v64)
                    {
                      break;
                    }

                    v65 = *(v64 + 24) & 0xFFFFFFFFFFFFFFF8;
                    if (!v65)
                    {
                      break;
                    }

                    v63 = *(v65 + 16);
                    if (!v63)
                    {
                      break;
                    }

                    if (*(*(v63 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
                    {
                      v66 = *(v63 + 44);
                      if ((v66 & 0x800000) != 0)
                      {
                        v67 = *(v63 + 68);
                        if (v67)
                        {
                          v68 = 0;
                          v69 = ((v63 + 16 * ((v66 >> 23) & 1) + ((v66 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v63 + 40);
                          v70 = 8 * v67;
                          v71 = (*(v63 + 72) + 24);
                          do
                          {
                            v72 = *v71;
                            v73 = *(v69 + 8);
                            if (v73)
                            {
                              v74 = v73 - 8;
                            }

                            else
                            {
                              v74 = 0;
                            }

                            v75 = *(*(v74 + 48) + v68);
                            *&v214 = *v71;
                            v76 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v188, &v214);
                            if (v76 && v76 != v188[0] + 16 * v189)
                            {
                              v72 = *(v76 + 8);
                            }

                            *&v214 = v75;
                            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v188, &v214) = v72;
                            v68 += 8;
                            v71 += 4;
                          }

                          while (v70 != v68);
                        }
                      }

                      break;
                    }
                  }

                  v77 = mlir::OpBuilder::clone(v181, v62, v188);
                  v78 = *(v62 + 36);
                  v79 = v78 ? v62 - 16 : 0;
                  if (v78)
                  {
                    break;
                  }

LABEL_112:
                  if ((v151[46] & 0x80) != 0)
                  {
                    mlir::detail::OperandStorage::setOperands((v151 + 64), v151, &v200, 1);
                  }

                  v61 = v152 + 1;
                  if (v152 + 1 == v150)
                  {
                    goto LABEL_115;
                  }
                }

                v80 = 0;
                v153 = v77 - 24;
                v81 = v77 - 4;
                v82 = v79;
                while (2)
                {
                  v83 = v79;
                  if (v80)
                  {
                    v84 = *(v62 - 8) & 7;
                    v85 = v62 - 16;
                    v86 = v80;
                    if (v84 == 6)
                    {
                      goto LABEL_98;
                    }

                    v87 = (5 - v84);
                    v83 = v82;
                    v86 = v80 - v87;
                    if (v80 > v87)
                    {
                      v85 = v79 - 16 * v87;
LABEL_98:
                      v83 = v85 - 24 * v86;
                    }
                  }

                  v184 = v80;
                  v185 = v83;
                  v88 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(&v155, &v185);
                  if (v88 && v88 != v155 + 8 * v156)
                  {
                    v89 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](&v197, &v185);
                    v90 = *(v62 + 24);
                    if (v80 >= 6)
                    {
                      v91 = &v153[-6 * (v80 - 5)];
                    }

                    else
                    {
                      v91 = v81;
                    }

                    IndexAttr = mlir::Builder::getIndexAttr(v181, v89);
                    v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextInsertOp,void>::id, *(**v90 + 32));
                    if ((v94 & 1) == 0)
                    {
                      v206 = 1283;
                      v204 = "exec.context_insert";
                      v145 = 19;
                      goto LABEL_216;
                    }

                    *&v214 = v90;
                    *(&v214 + 1) = v93;
                    *&v215 = &v216;
                    *(&v215 + 1) = 0x400000000;
                    v218 = v220;
                    v219 = 0x400000000;
                    v221 = v223;
                    v222 = 0x400000000;
                    v224 = 4;
                    v225 = &v227;
                    v226 = 0x100000000;
                    v228 = &v230;
                    v229 = 0x100000000;
                    v231 = 0;
                    v232 = 0;
                    v233 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v234 = 0;
                    v235 = 0;
                    mlir::ODIE::Compiler::Exec::ContextInsertOp::build(v181, &v214, v196, v200, v91, IndexAttr);
                    v95 = mlir::Operation::create(&v214);
                    mlir::OpBuilder::insert(v181, v95);
                    v96 = *(*(v95 + 6) + 16);
                    mlir::OperationState::~OperationState(&v214);
                    if (v96 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextInsertOp,void>::id)
                    {
                      v97 = v95;
                    }

                    else
                    {
                      v97 = 0;
                    }

                    v98 = *(v97 + 9);
                    v99 = (v97 - 16);
                    if (!v98)
                    {
                      v99 = 0;
                    }

                    v200 = v99;
                  }

                  ++v80;
                  v81 -= 4;
                  v82 -= 16;
                  if (v78 == v80)
                  {
                    goto LABEL_112;
                  }

                  continue;
                }
              }

LABEL_115:
              v100 = *(((v148 + 16 * ((*(v147 + 44) >> 23) & 1) + ((*(v147 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v147 + 40) + 8);
              if (v100)
              {
                v101 = v100 - 8;
              }

              else
              {
                v101 = 0;
              }

              v187 = **(v101 + 48);
              v184 = 0;
              v185 = 0;
              v186 = 0;
              if (v198)
              {
                if (v199)
                {
                  v102 = 16 * v199;
                  v103 = v197;
                  while ((*v103 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v103 += 16;
                    v102 -= 16;
                    if (!v102)
                    {
                      goto LABEL_195;
                    }
                  }
                }

                else
                {
                  v103 = v197;
                }

                if (v103 != v197 + 16 * v199)
                {
                  v104 = *v103;
                  v154 = v197 + 16 * v199;
                  while (1)
                  {
                    if ((~*(v104 + 8) & 7) != 0)
                    {
                      v105 = v104;
                    }

                    else
                    {
                      v105 = 0;
                    }

                    v106 = *(v105 + 8) & 7;
                    if (v106 == 6)
                    {
                      v107 = v105 + 24 * *(v105 + 16) + 120;
                    }

                    else
                    {
                      v107 = v105 + 16 * v106 + 16;
                    }

                    v108 = *(v103 + 8);
                    do
                    {
                      v109 = *(v107 + 16);
                      if (v109)
                      {
                        v110 = *(v109 + 24) & 0xFFFFFFFFFFFFFFF8;
                        if (v110)
                        {
                          v107 = *(v110 + 16);
                          if (v107)
                          {
                            continue;
                          }
                        }
                      }

                      v115 = v187;
                      goto LABEL_142;
                    }

                    while (*(*(v107 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id);
                    v111 = *(v103 + 8);
                    v207[0] = 0;
                    v112 = v186;
                    v113 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(0, v186, v107, v207);
                    v114 = v207[0];
                    if ((v113 & 1) == 0)
                    {
                      *&v214 = v207[0];
                      v135 = v185;
                      if (4 * v185 + 4 >= 3 * v112)
                      {
                        v112 *= 2;
                      }

                      else if (v112 + ~v185 - HIDWORD(v185) > v112 >> 3)
                      {
LABEL_172:
                        LODWORD(v185) = v135 + 1;
                        if (*v114 != -4096)
                        {
                          --HIDWORD(v185);
                        }

                        *v114 = v107;
                        v114[1] = 0;
LABEL_175:
                        if ((*(v107 + 46) & 0x80) != 0)
                        {
                          v136 = *(v107 + 68);
                        }

                        else
                        {
                          v136 = 0;
                        }

                        *&v214 = v107;
                        DWORD2(v214) = 0;
                        HIDWORD(v214) = v136;
                        *&v215 = &v216;
                        *(&v215 + 1) = 0x100000000;
                        mlir::MutableOperandRange::append(&v214, &v187, 1);
                        if (v215 != &v216)
                        {
                          free(v215);
                        }

                        if ((~*(v187 + 8) & 7) != 0)
                        {
                          v137 = v187;
                        }

                        else
                        {
                          v137 = 0;
                        }

                        if (v137)
                        {
                          v138 = *(v137 + 8) & 7;
                          if (v138 == 6)
                          {
                            v139 = v137 + 24 * *(v137 + 16) + 120;
                            if (!v139)
                            {
                              goto LABEL_185;
                            }
                          }

                          else
                          {
                            v139 = v137 + 16 * v138 + 16;
                          }

                          v140 = (v139 + 24);
                        }

                        else
                        {
LABEL_185:
                          v140 = (v187 + 32);
                        }

                        v141 = *(((v107 + 16 * ((*(v107 + 44) >> 23) & 1) + ((*(v107 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v107 + 40) + 8);
                        if (v141)
                        {
                          v142 = (v141 - 8);
                        }

                        else
                        {
                          v142 = 0;
                        }

                        mlir::Block::addArgument(v142, v196, *v140);
                      }

                      llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::grow(&v184, v112);
                      llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(v184, v186, v107, &v214);
                      v135 = v185;
                      v114 = v214;
                      goto LABEL_172;
                    }

                    v115 = *(v207[0] + 8);
                    v108 = v111;
                    if (!v115)
                    {
                      goto LABEL_175;
                    }

LABEL_142:
                    v116 = (~*(v104 + 8) & 7) != 0 ? v104 : 0;
                    v117 = *(v116 + 8) & 7;
                    v118 = v117 == 6 ? v116 + 24 * *(v116 + 16) + 120 : v116 + 16 * v117 + 16;
                    v182 = *(v118 + 16);
                    v183 = v118;
                    v119 = *(v104 + 8);
                    v120 = (~*(v104 + 8) & 7) != 0 ? v104 : 0;
                    if (!v120)
                    {
                      break;
                    }

                    v121 = *(v120 + 8) & 7;
                    if (v121 == 6)
                    {
                      v122 = v120 + 24 * *(v120 + 16) + 120;
                      if (!v122)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v122 = v120 + 16 * v121 + 16;
                    }

                    v123 = v115;
                    v124 = (v122 + 24);
LABEL_157:
                    v125 = *v124;
                    v126 = mlir::Builder::getIndexAttr(v181, v108);
                    v127 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextExtractOp,void>::id, *(**v125 + 32));
                    if ((v128 & 1) == 0)
                    {
                      v206 = 1283;
                      v204 = "exec.context_extract";
                      v145 = 20;
LABEL_216:
                      v205 = v145;
                      v202 = 259;
                      llvm::operator+(&v203, &v201, v207);
                      llvm::report_fatal_error(v207, 1);
                    }

                    *&v214 = v125;
                    *(&v214 + 1) = v127;
                    *&v215 = &v216;
                    *(&v215 + 1) = 0x400000000;
                    v218 = v220;
                    v219 = 0x400000000;
                    v221 = v223;
                    v222 = 0x400000000;
                    v224 = 4;
                    v225 = &v227;
                    v226 = 0x100000000;
                    v228 = &v230;
                    v229 = 0x100000000;
                    v231 = 0;
                    v232 = 0;
                    v233 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v234 = 0;
                    v235 = 0;
                    mlir::ODIE::Compiler::Exec::ContextExtractOp::build(v181, &v214, v119 & 0xFFFFFFFFFFFFFFF8, v123, v126);
                    v129 = mlir::Operation::create(&v214);
                    mlir::OpBuilder::insert(v181, v129);
                    v130 = *(*(v129 + 6) + 16);
                    mlir::OperationState::~OperationState(&v214);
                    if (v130 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextExtractOp,void>::id)
                    {
                      v131 = v129;
                    }

                    else
                    {
                      v131 = 0;
                    }

                    v132 = *(v131 + 9);
                    v133 = (v131 - 16);
                    if (v132)
                    {
                      v134 = v133;
                    }

                    else
                    {
                      v134 = 0;
                    }

                    mlir::RewriterBase::replaceAllUsesWith(&v180, v104, v134);
                    for (v103 += 16; ; v103 += 16)
                    {
                      if (v103 == v154)
                      {
                        goto LABEL_195;
                      }

                      v104 = *v103;
                      if ((*v103 | 0x1000) != 0xFFFFFFFFFFFFF000)
                      {
                        break;
                      }
                    }

                    if (v103 == v154)
                    {
                      goto LABEL_195;
                    }
                  }

                  v123 = v115;
                  v124 = (v104 + 32);
                  goto LABEL_157;
                }
              }

LABEL_195:
              if (v170)
              {
                v143 = 8 * v170;
                v144 = v169 - 8;
                do
                {
                  v180[2](&v180, *&v144[v143]);
                  v143 -= 8;
                }

                while (v143);
              }

              MEMORY[0x25F891030](0, 8);
              MEMORY[0x25F891030](v193, 8);
              MEMORY[0x25F891030](v190, 8);
              MEMORY[0x25F891030](v188[0], 8);
              if (v208 != v210)
              {
                free(v208);
              }

              MEMORY[0x25F891030](v197, 8);
            }
          }

          if (__src != v213)
          {
            free(__src);
          }

          v12 = v146;
          if (v157 != &v159)
          {
            free(v157);
          }

          MEMORY[0x25F891030](v155, 8);
          if (v161 != &v163)
          {
            free(v161);
          }

          MEMORY[0x25F891030](v159, 8);
LABEL_208:
          if (v165 != &v167)
          {
            free(v165);
          }

          MEMORY[0x25F891030](v163, 8);
          if (v169 != &v171)
          {
            free(v169);
          }

          MEMORY[0x25F891030](v167, 8);
LABEL_213:
          mlir::Region::OpIterator::operator++(&v171);
          llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v171);
          result = v172;
          if (v172 == v12)
          {
            return result;
          }

          goto LABEL_14;
        }

        goto LABEL_21;
      }
    }

    v37 = &v32[-16 * v39];
LABEL_37:
    v35 = &v37[-24 * v38];
    goto LABEL_38;
  }

  return result;
}

mlir::Region::OpIterator *mlir::ODIE::Compiler::Exec::collectInferenceInvariantOps(mlir::Region::OpIterator *result, uint64_t a2, uint64_t a3)
{
  if (*result != result)
  {
    v29 = v3;
    v30 = v4;
    for (i = *(result + 1); i != result; i = *(i + 1))
    {
      v8 = (i - 8);
      if (!i)
      {
        v8 = 0;
      }

      if (v8[4] != v8 + 4)
      {
        break;
      }
    }

    if (i != result)
    {
      v9 = (i - 8);
      if (!i)
      {
        v9 = 0;
      }

      v10 = v9[5];
      v27[0] = result;
      v27[1] = i;
      for (j = v10; j; v10 = j)
      {
        v25 = v10;
        v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(a2, &v25);
        if (!v11 || v11 == *a2 + 8 * *(a2 + 16))
        {
          v12 = *(*(v10 + 48) + 16);
          if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
          {
            v13 = v10;
          }

          else
          {
            v13 = 0;
          }

          if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
          {
            v15 = *(v10 + 44);
            if ((v15 & 0x800000) != 0)
            {
              v16 = *(v10 + 68);
              if (v16)
              {
                v17 = 0;
                v18 = (*(v10 + 72) + 24);
                do
                {
                  v19 = *v18;
                  v25 = v17;
                  v26 = v19;
                  v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v26);
                  if (v20 && v20 != *a3 + 8 * *(a3 + 16))
                  {
                    v21 = *(v10 + 64 + 16 * ((*(v10 + 44) >> 23) & 1) + ((*(v10 + 44) >> 21) & 0x7F8) + 32 * *(v10 + 40) + 8);
                    if (v21)
                    {
                      v22 = v21 - 8;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    v24 = *(*(v22 + 48) + 8 * v17);
                    llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(a3, &v24);
                  }

                  ++v17;
                  v18 += 4;
                }

                while (v16 != v17);
                v15 = *(v10 + 44);
              }
            }

            mlir::ODIE::Compiler::Exec::collectInferenceInvariantOps((((v13 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v13 + 40)), a2, a3);
          }

          else if (mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits>::getInterfaceFor(v10))
          {
            InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
            if (v10)
            {
              if ((*InterfaceFor)(InterfaceFor, v10, a3))
              {
                v25 = v10;
                llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::insert(a2, &v25);
                if (*(v10 + 36))
                {
                  v23 = v10 - 16;
                }

                else
                {
                  v23 = 0;
                }

                llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>(a3, v23, 0, v23, *(v10 + 36));
              }
            }
          }
        }

        result = mlir::Region::OpIterator::operator++(v27);
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion::~InferenceInvariantCodeMotion(mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v17[9] = v5;
    v17[10] = v6;
    v8 = a3;
    v10 = result;
    v11 = a2 - 16 * a3;
    do
    {
      if (v8)
      {
        if (!a2)
        {
          v13 = 0;
          v14 = v8;
          goto LABEL_10;
        }

        v12 = *(a2 + 8) & 7;
        v13 = a2;
        v14 = v8;
        if (v12 == 6)
        {
          goto LABEL_10;
        }

        v15 = (5 - v12);
        v16 = v11;
        v14 = v8 - v15;
        if (v8 > v15)
        {
          v13 = a2 - 16 * v15;
LABEL_10:
          v16 = v13 - 24 * v14;
        }
      }

      else
      {
        v16 = a2;
      }

      v17[0] = v16;
      result = llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(v10, v17);
      ++v8;
      v11 -= 16;
    }

    while (a5 != v8);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

__guard mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[168];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>();
    *algn_27FC19558 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface]";
  v6 = 132;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
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
        v8 = (a1 + 16 * (v15 & v6));
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

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(*a1, *(a1 + 16), v20, &v30);
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