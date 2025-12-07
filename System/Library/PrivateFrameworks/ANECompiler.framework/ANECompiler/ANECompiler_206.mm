BOOL mlir::mpsx::QuantizedGatherOp::verify(mlir::Operation **this)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 9) + 32 * mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v43[0] = v2;
  v43[1] = v3;
  v4 = (*(*(*(*this + 9) + 32 * mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v42[0] = v4;
  v42[1] = v5;
  if (mlir::ElementsAttr::getShapedType(v43))
  {
    Shape = mlir::ShapedType::getShape(v43);
    v8 = v7;
  }

  else
  {
    Shape = 0;
    v8 = 0x8000000000000000;
  }

  if (mlir::ElementsAttr::getShapedType(v42))
  {
    v9 = mlir::ShapedType::getShape(v42);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0x8000000000000000;
  }

  BatchDims = mlir::mpsx::QuantizedGatherOp::getBatchDims(this);
  v13 = BatchDims;
  v41 = BatchDims;
  if ((v8 == 0x8000000000000000 || v8 > BatchDims) && (v11 == 0x8000000000000000 || v11 >= BatchDims))
  {
    v19 = 1;
    if (v8 == 0x8000000000000000 || v11 == 0x8000000000000000)
    {
      return v19;
    }

    if (mlir::verifyCompatibleShape(Shape, BatchDims, v9, BatchDims))
    {
      LOBYTE(v44) = 0;
      LOBYTE(v45) = 0;
      v28 = *(*this + 3);
      ODSOperandIndexAndLength = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 2);
      Axis = mlir::mpsx::getAxis(v28, 1, *(*(*this + 9) + 32 * ODSOperandIndexAndLength + 24), v8, &v44);
      v19 = 0;
      if (!Axis)
      {
        return v19;
      }

      if (v45 != 1)
      {
        return 1;
      }

      if (v44 < v13)
      {
        v39[0] = "Axis must be greater than or equal to batch ";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, &v46);
        if (v46)
        {
          mlir::Diagnostic::append<char const(&)[7]>(&v47, "dimensions, ");
        }

        mlir::InFlightDiagnostic::operator<<<long long &>(&v46, &v44);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, " < ");
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v32, &v41);
        goto LABEL_50;
      }

      if (&v8[v11 - 1] >= 0)
      {
        v46 = v43;
        v47 = this;
        if (v43[0] && mlir::ElementsAttr::getShapedType(v43))
        {
          v34 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(this, 3);
          if (!mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(&v46, "scale", *(*(*this + 9) + 32 * v34 + 24)))
          {
            return 0;
          }

          ZeroPoint = mlir::mpsx::QuantizedGatherOp::getZeroPoint(this);
          if (!mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(&v46, "zeroPoint", ZeroPoint))
          {
            return 0;
          }

          Min = mlir::mpsx::QuantizedGatherOp::getMin(this);
          return mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(&v46, "min", Min);
        }

        return 1;
      }

      v39[0] = "Rank of destination array must be greater than or equal to 0";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, &v46);
      v33 = &v46;
    }

    else
    {
      v39[0] = "invalid input tensor shapes: input tensor shapes ";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, &v46);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v46, "must match along batch dimensions");
    }

LABEL_50:
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    return v19;
  }

  v39[0] = "invalid batch dimensions: ";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, &v46);
  if (v46)
  {
    LODWORD(v44) = 5;
    v45 = v13;
    v14 = &v44;
    v15 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v38 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v15 = v48;
        v14 = (v48 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v14 = &v44;
        v15 = v48;
      }
    }

    v16 = &v15[24 * v49];
    v17 = *v14;
    *(v16 + 2) = v14[2];
    *v16 = v17;
    ++v49;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v46, ", must be less than ranks of all input tensors");
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v55;
      v22 = __p;
      if (v55 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v55 = v20;
      operator delete(v22);
    }

    v23 = v52;
    if (v52)
    {
      v24 = v53;
      v25 = v52;
      if (v53 != v52)
      {
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
        v25 = v52;
      }

      v53 = v23;
      operator delete(v25);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v19;
}

uint64_t *mlir::mpsx::QuantizedGatherOp::getBatchDims(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &AttrDictionary);
  if (v11 <= 0x40)
  {
    return AttrDictionary;
  }

  v8 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v8;
}

BOOL mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v61 = 0;
    v62 = 0;
    return 1;
  }

  v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  v61 = v6;
  v62 = v7;
  if (!v6 || !mlir::ElementsAttr::getShapedType(&v61))
  {
    return 1;
  }

  if (mlir::ElementsAttr::getShapedType(&v61))
  {
    mlir::ShapedType::getShape(&v61);
    v9 = v8;
    mlir::ShapedType::getShape(*a1);
    if (v9 != v10)
    {
      v60 = 257;
      mlir::OpState::emitOpError(v5, v59, &v65);
      if (v65)
      {
        mlir::Diagnostic::operator<<(v66, a2);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v65, " rank doesn't match the rank of updates");
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v65)
      {
        v48 = result;
        mlir::InFlightDiagnostic::report(&v65);
        result = v48;
      }

      if (v74 == 1)
      {
        v49 = result;
        mlir::Diagnostic::~Diagnostic(v66);
        return v49;
      }

      return result;
    }
  }

  mlir::ShapedType::getShape(*a1);
  if (v11 < 1)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v14 = 8 * v12;
    v15 = *(mlir::ShapedType::getShape(*a1) + v14);
    v16 = *(mlir::ShapedType::getShape(&v61) + v14);
    v17 = v15 == 0x8000000000000000 || v16 == 0x8000000000000000;
    if (!v17 && v15 % v16)
    {
      break;
    }

    ++v12;
    mlir::ShapedType::getShape(*a1);
    if (v12 >= v13)
    {
      return 1;
    }
  }

  v60 = 257;
  mlir::OpState::emitOpError(v5, v59, &v65);
  if (v65)
  {
    mlir::Diagnostic::operator<<(v66, a2);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v65, " shape not compatible with updates for axis ");
  if (*v18)
  {
    v19 = *(v18 + 24);
    v63 = 2;
    v64 = v12;
    v20 = *(v18 + 32);
    v21 = &v63;
    if (v20 >= *(v18 + 36))
    {
      if (v19 <= &v63 && v19 + 24 * v20 > &v63)
      {
        v53 = &v63 - v19;
        v54 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 24, (v18 + 40), v20 + 1, 24);
        v18 = v54;
        v19 = *(v54 + 24);
        v21 = &v53[v19];
      }

      else
      {
        v50 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 24, (v18 + 40), v20 + 1, 24);
        v18 = v50;
        v19 = *(v50 + 24);
        v21 = &v63;
      }
    }

    v22 = v19 + 24 * *(v18 + 32);
    v23 = *v21;
    *(v22 + 16) = *(v21 + 2);
    *v22 = v23;
    ++*(v18 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, ": ");
  if (*v24)
  {
    v25 = *(v24 + 24);
    v63 = 2;
    v64 = v15;
    v26 = *(v24 + 32);
    v27 = &v63;
    if (v26 >= *(v24 + 36))
    {
      if (v25 <= &v63 && v25 + 24 * v26 > &v63)
      {
        v55 = &v63 - v25;
        v56 = v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, (v24 + 40), v26 + 1, 24);
        v24 = v56;
        v25 = *(v56 + 24);
        v27 = &v55[v25];
      }

      else
      {
        v51 = v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, (v24 + 40), v26 + 1, 24);
        v24 = v51;
        v25 = *(v51 + 24);
        v27 = &v63;
      }
    }

    v28 = v25 + 24 * *(v24 + 32);
    v29 = *v27;
    *(v28 + 16) = *(v27 + 2);
    *v28 = v29;
    ++*(v24 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, " % ");
  if (*v30)
  {
    v31 = *(v30 + 24);
    v63 = 2;
    v64 = v16;
    v32 = *(v30 + 32);
    v33 = &v63;
    if (v32 >= *(v30 + 36))
    {
      if (v31 <= &v63 && v31 + 24 * v32 > &v63)
      {
        v57 = &v63 - v31;
        v58 = v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v30 + 24, (v30 + 40), v32 + 1, 24);
        v30 = v58;
        v31 = *(v58 + 24);
        v33 = &v57[v31];
      }

      else
      {
        v52 = v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v30 + 24, (v30 + 40), v32 + 1, 24);
        v30 = v52;
        v31 = *(v52 + 24);
        v33 = &v63;
      }
    }

    v34 = v31 + 24 * *(v30 + 32);
    v35 = *v33;
    *(v34 + 16) = *(v33 + 2);
    *v34 = v35;
    ++*(v30 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v30, " != 0");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  v38 = result;
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
    result = v38;
  }

  if (v74)
  {
    if (v73 != &v74)
    {
      free(v73);
      result = v38;
    }

    v39 = __p;
    if (__p)
    {
      v40 = v72;
      v41 = __p;
      if (v72 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v72 = v39;
      operator delete(v41);
      result = v38;
    }

    v42 = v69;
    if (v69)
    {
      v43 = v70;
      v44 = v69;
      if (v70 != v69)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
          }
        }

        while (v43 != v42);
        v44 = v69;
      }

      v70 = v42;
      operator delete(v44);
      result = v38;
    }

    if (v67 != &v68)
    {
      free(v67);
      return v38;
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v59 = *MEMORY[0x1E69E9840];
  v57 = a4;
  v58 = a5;
  *&v53 = a6;
  BYTE8(v53) = 0;
  LOBYTE(v54) = 0;
  v14 = a5;
  *(&v54 + 1) = a9;
  *&v55 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v53);
    if (v54 == 1)
    {
      LOBYTE(v54) = 0;
    }

    mlir::OperationName::OperationName(&v53 + 1, "mpsx.quantized_conv2d", 21, Context);
    LOBYTE(v54) = 1;
    v14 = v58;
  }

  *(&v55 + 1) = a4;
  v56 = a5;
  if (v14 >= 2 && (v16 = mlir::UnknownLoc::get(this, a2), mlir::mpsx::QuantizedConv2DOpAdaptor::verify(&v53, v16)))
  {
    Value = mlir::AffineMapAttr::getValue(&v53);
    v18 = mlir::DictionaryAttr::end(&v53);
    mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 112), (v18 - 16), *(*(*(&v53 + 1) + 96) + 64));
    v23 = mlir::AffineMapAttr::getValue(&v53);
    v24 = mlir::DictionaryAttr::end(&v53);
    mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v23 + 16), (v24 - 112), *(*(*(&v53 + 1) + 96) + 8));
    v25 = mlir::AffineMapAttr::getValue(&v53);
    v26 = mlir::DictionaryAttr::end(&v53);
    mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v25 + 32), (v26 - 96), *(*(*(&v53 + 1) + 96) + 16));
    mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getGroups(&v53);
    v27 = mlir::AffineMapAttr::getValue(&v53);
    v28 = mlir::DictionaryAttr::end(&v53);
    v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v27 + 96), (v28 - 32), *(*(*(&v53 + 1) + 96) + 56));
    if (v30)
    {
      v31 = *(v29 + 1);
    }

    else
    {
      v31 = 0;
    }

    *&v51[0] = v31;
    mlir::arith::FastMathFlagsAttr::getValue(v51);
    v32 = mlir::AffineMapAttr::getValue(&v53);
    v33 = mlir::DictionaryAttr::end(&v53);
    v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v32, (v33 - 128), **(*(&v53 + 1) + 96));
    if (v35)
    {
      v36 = *(v34 + 1);
    }

    else
    {
      v36 = 0;
    }

    *&v51[0] = v36;
    mlir::arith::FastMathFlagsAttr::getValue(v51);
    v37 = mlir::AffineMapAttr::getValue(&v53);
    v38 = mlir::DictionaryAttr::end(&v53);
    v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v37 + 128), v38, *(*(*(&v53 + 1) + 96) + 72));
    if (v40)
    {
      v41 = *(v39 + 1);
    }

    else
    {
      v41 = 0;
    }

    *&v51[0] = v41;
    mlir::arith::FastMathFlagsAttr::getValue(v51);
    v42 = mlir::ValueRange::dereference_iterator(&v57, 0);
    mlir::ValueRange::dereference_iterator(&v57, 1);
    v51[0] = v53;
    v51[1] = v54;
    v51[2] = v55;
    *&v52 = v56;
    v50[1] = v43;
    if (v50[0] && (mlir::ElementsAttr::getShapedType(v50) & 1) != 0)
    {
      operator new();
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v42);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v45);
    }

    v46 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v47 = a11[2];
    if (v47 >= a11[3])
    {
      v49 = v46;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v47 + 1, 8);
      v46 = v49;
      v47 = a11[2];
    }

    *(*a11 + 8 * v47) = v46;
  }

  else
  {
    v19 = mlir::Float32Type::get(this, a2);
    v20 = mlir::UnrankedTensorType::get(v19);
    v21 = a11[2];
    if (v21 >= a11[3])
    {
      v48 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v21 + 1, 8);
      v20 = v48;
      LODWORD(v21) = a11[2];
    }

    *(*a11 + 8 * v21) = v20;
  }

  ++a11[2];
  return 1;
}

BOOL mlir::mpsx::QuantizedConv2DOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v73 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v73); i != mlir::DictionaryAttr::end(&v73); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v73))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v73))
          {
            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v73))
              {
                if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  if (i == mlir::DictionaryAttr::end(&v73))
                  {
LABEL_92:
                    v70 = "'mpsx.quantized_conv2d' op requires attribute 'operandSegmentSizes'";
                    v72 = 259;
                    mlir::emitError(a2, &v70, &Value);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                    if (Value)
                    {
                      mlir::InFlightDiagnostic::report(&Value);
                    }

                    if (v85 == 1)
                    {
                      mlir::Diagnostic::~Diagnostic(&v77);
                    }
                  }

                  else
                  {
                    v37 = 0;
                    while (ZinCompressedFootprintInfo::GetCompressedBytes(i) != *(*(a1[1] + 96) + 40))
                    {
                      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 32))
                      {
                        v37 = *(i + 1);
                      }

                      i = (i + 16);
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        goto LABEL_92;
                      }
                    }

                    v38 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'output_type'";
                        goto LABEL_116;
                      }

                      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 48))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v40 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'padding_style'";
                        goto LABEL_116;
                      }

                      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 56))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v67 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'strides'";
                        goto LABEL_116;
                      }

                      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 64))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v65 = v40;
                    v66 = v14;
                    v41 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(&v73))
                      {
                        v39 = "'mpsx.quantized_conv2d' op requires attribute 'weights_layout'";
                        goto LABEL_116;
                      }

                      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 72))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    v64 = *(i + 1);
                    if (i == mlir::DictionaryAttr::end(&v73))
                    {
                      v43 = 0;
                    }

                    else
                    {
                      v43 = 0;
                      do
                      {
                        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 80))
                        {
                          v43 = *(i + 1);
                        }

                        i = (i + 16);
                      }

                      while (i != mlir::DictionaryAttr::end(&v73));
                    }

                    *&v75 = v38;
                    mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v75);
                    v74[0] = v44;
                    if (v44 != 11)
                    {
                      v70 = "'mpsx.quantized_conv2d' op 'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
                      v72 = 259;
                      mlir::emitError(a2, &v70, &Value);
                      mlir::InFlightDiagnostic::operator<<<unsigned long>(&Value, v74);
                      goto LABEL_117;
                    }

                    if (v37)
                    {
                      if (*(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v70 = v37, Value = mlir::AffineMapAttr::getValue(&v70), !mlir::Type::isSignedInteger(&Value, 32)))
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'input_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
                        goto LABEL_116;
                      }
                    }

                    if (v43)
                    {
                      if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v70 = v43, Value = mlir::AffineMapAttr::getValue(&v70), !mlir::Type::isSignedInteger(&Value, 32)))
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'weights_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
                        goto LABEL_116;
                      }
                    }

                    if (v36)
                    {
                      if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v70 = v36, Value = mlir::AffineMapAttr::getValue(&v70), !mlir::Type::isUnsignedInteger(&Value, 64)))
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
                        goto LABEL_116;
                      }
                    }

                    if (v41)
                    {
                      if (!mlir::DenseIntElementsAttr::classof(v41))
                      {
                        goto LABEL_166;
                      }

                      v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v41 + 8);
                      v70 = v41;
                      v71 = v45;
                      Type = mlir::ElementsAttr::getType(&v70);
                      v47 = Type;
                      if (Type)
                      {
                        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                      }

                      Value = v47;
                      v77 = Type;
                      Shape = mlir::ShapedType::getShape(&Value);
                      v74[0] = 4;
                      if (v49 != 1 || *Shape != v74[0] || (v68 = v41, *&v75 = mlir::ArrayAttr::getValue(&v68), *(&v75 + 1) = v50, isSplat = mlir::ElementsAttr::isSplat(&v75), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                      {
LABEL_166:
                        v39 = "'mpsx.quantized_conv2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        goto LABEL_116;
                      }
                    }

                    if (v21)
                    {
                      if (!mlir::DenseIntElementsAttr::classof(v21))
                      {
                        goto LABEL_167;
                      }

                      v51 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                      v70 = v21;
                      v71 = v51;
                      v52 = mlir::ElementsAttr::getType(&v70);
                      v53 = v52;
                      if (v52)
                      {
                        v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                      }

                      Value = v53;
                      v77 = v52;
                      v54 = mlir::ShapedType::getShape(&Value);
                      v74[0] = 4;
                      if (v55 != 1 || *v54 != v74[0] || (v68 = v21, *&v75 = mlir::ArrayAttr::getValue(&v68), *(&v75 + 1) = v56, isSplat = mlir::ElementsAttr::isSplat(&v75), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                      {
LABEL_167:
                        v39 = "'mpsx.quantized_conv2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        goto LABEL_116;
                      }
                    }

                    if (v28)
                    {
                      if (!mlir::DenseIntElementsAttr::classof(v28))
                      {
                        goto LABEL_168;
                      }

                      v57 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v70 = v28;
                      v71 = v57;
                      v58 = mlir::ElementsAttr::getType(&v70);
                      v59 = v58;
                      if (v58)
                      {
                        v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
                      }

                      Value = v59;
                      v77 = v58;
                      v60 = mlir::ShapedType::getShape(&Value);
                      v75 = xmmword_1A7595C20;
                      if (v61 != 2 || (*v60 == v75 ? (v62 = v60[1] == *(&v75 + 1)) : (v62 = 0), !v62 || (v68 = v28, v74[0] = mlir::ArrayAttr::getValue(&v68), v74[1] = v63, isSplat = mlir::ElementsAttr::isSplat(v74), !mlir::Type::isUnsignedInteger(&isSplat, 64))))
                      {
LABEL_168:
                        v39 = "'mpsx.quantized_conv2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
                        goto LABEL_116;
                      }
                    }

                    if (v67 && *(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
                    {
                      v39 = "'mpsx.quantized_conv2d' op attribute 'padding_style' failed to satisfy constraint: valid padding_style";
                      goto LABEL_116;
                    }

                    if (v66 && *(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
                    {
                      v39 = "'mpsx.quantized_conv2d' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout";
                      goto LABEL_116;
                    }

                    if (v64 && *(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
                    {
                      v39 = "'mpsx.quantized_conv2d' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout";
                      goto LABEL_116;
                    }

                    if (v65)
                    {
                      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                      {
                        v39 = "'mpsx.quantized_conv2d' op attribute 'output_type' failed to satisfy constraint: any type attribute";
LABEL_116:
                        v70 = v39;
                        v72 = 259;
                        mlir::emitError(a2, &v70, &Value);
                        p_Value = &Value;
LABEL_117:
                        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(p_Value);
                        mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
                        return v5;
                      }

                      Value = v65;
                      mlir::AffineMapAttr::getValue(&Value);
                    }

                    return 1;
                  }

                  return v5;
                }

                i = (i + 16);
              }

              v70 = "'mpsx.quantized_conv2d' op requires attribute 'groups'";
              v72 = 259;
              mlir::emitError(a2, &v70, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v85 != 1)
              {
                return v5;
              }

              if (v84 != &v85)
              {
                free(v84);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v83;
                v31 = __p;
                if (v83 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v83 = v29;
                operator delete(v31);
              }

              v9 = v80;
              if (!v80)
              {
                goto LABEL_83;
              }

              v32 = v81;
              v11 = v80;
              if (v81 == v80)
              {
                goto LABEL_82;
              }

              do
              {
                v34 = *--v32;
                v33 = v34;
                *v32 = 0;
                if (v34)
                {
                  MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
                }
              }

              while (v32 != v9);
              goto LABEL_81;
            }

            i = (i + 16);
          }

          v70 = "'mpsx.quantized_conv2d' op requires attribute 'explicit_padding'";
          v72 = 259;
          mlir::emitError(a2, &v70, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v85 != 1)
          {
            return v5;
          }

          if (v84 != &v85)
          {
            free(v84);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v83;
            v24 = __p;
            if (v83 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v83 = v22;
            operator delete(v24);
          }

          v9 = v80;
          if (!v80)
          {
            goto LABEL_83;
          }

          v25 = v81;
          v11 = v80;
          if (v81 == v80)
          {
            goto LABEL_82;
          }

          do
          {
            v27 = *--v25;
            v26 = v27;
            *v25 = 0;
            if (v27)
            {
              MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
            }
          }

          while (v25 != v9);
          goto LABEL_81;
        }

        i = (i + 16);
      }

      v70 = "'mpsx.quantized_conv2d' op requires attribute 'dilation_rates'";
      v72 = 259;
      mlir::emitError(a2, &v70, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v85 != 1)
      {
        return v5;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v83;
        v17 = __p;
        if (v83 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v83 = v15;
        operator delete(v17);
      }

      v9 = v80;
      if (!v80)
      {
        goto LABEL_83;
      }

      v18 = v81;
      v11 = v80;
      if (v81 == v80)
      {
        goto LABEL_82;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_81:
      v11 = v80;
      goto LABEL_82;
    }
  }

  v70 = "'mpsx.quantized_conv2d' op requires attribute 'data_layout'";
  v72 = 259;
  mlir::emitError(a2, &v70, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v85 == 1)
  {
    if (v84 != &v85)
    {
      free(v84);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v83;
      v8 = __p;
      if (v83 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v83 = v6;
      operator delete(v8);
    }

    v9 = v80;
    if (v80)
    {
      v10 = v81;
      v11 = v80;
      if (v81 != v80)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        goto LABEL_81;
      }

LABEL_82:
      v81 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v78 != &v79)
    {
      free(v78);
    }
  }

  return v5;
}

uint64_t *mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getGroups(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 48), (v3 - 80), *(*(*(this + 1) + 96) + 24));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &v9);
  if (v10 <= 0x40)
  {
    return v9;
  }

  v7 = *v9;
  MEMORY[0x1AC55A040]();
  return v7;
}

void *mlir::mpsx::anonymous namespace::qimpl::getInputDequantizedType<mlir::mpsx::QuantizedConv2DOpAdaptor>(mlir::AffineMapAttr *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  *&v17 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
  v17 = *(a1 + 5);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v16[0] = v7;
  v16[1] = v8;
  if (*(*mlir::getElementTypeOrSelf(v7) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = mlir::AffineMapAttr::getValue(a1);
    v10 = mlir::DictionaryAttr::end(a1);
    v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v9 + 80), (v10 - 48), *(*(*(a1 + 1) + 96) + 48));
    if (v12)
    {
      v13 = *(v11 + 1);
    }

    else
    {
      v13 = 0;
    }

    *&v17 = v13;
    v14 = mlir::AffineMapAttr::getValue(&v17);
    LOBYTE(v17) = 0;
    v18 = 0;
    return mlir::ShapedType::cloneWith(v16, &v17, v14);
  }

  return v7;
}

BOOL mlir::emitOptionalError<char const(&)[41]>(uint64_t a1, char a2, const char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = a3;
    v21 = strlen(a3);
    v4 = &v19;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v18 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v18);
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

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

    v9 = __p;
    if (__p)
    {
      v10 = v30;
      v11 = __p;
      if (v30 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v30 = v9;
      operator delete(v11);
    }

    v12 = v27;
    if (v27)
    {
      v13 = v28;
      v14 = v27;
      if (v28 != v27)
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
        v14 = v27;
      }

      v28 = v12;
      operator delete(v14);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v8;
}

BOOL mlir::mpsx::anonymous namespace::inferConv2DReturnType(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8))
  {
    v84 = 0;
    v85 = 0;
LABEL_32:
    if (a2)
    {
      mlir::emitError(a1, &v90);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v90, "cannot conv2D a non-shaped inputType");
      v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v90)
      {
        mlir::InFlightDiagnostic::report(&v90);
      }

      if (v99 != 1)
      {
        return v38;
      }

      if (v98 != &v99)
      {
        free(v98);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v97;
        v41 = __p;
        if (v97 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v97 = v39;
        operator delete(v41);
      }

      v42 = v94;
      if (v94)
      {
        v43 = v95;
        v44 = v94;
        if (v95 != v94)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
            }
          }

          while (v43 != v42);
          goto LABEL_95;
        }

LABEL_96:
        v95 = v42;
        operator delete(v44);
      }

LABEL_97:
      v64 = v92;
      if (v92 == v93)
      {
        return v38;
      }

      goto LABEL_143;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
  v84 = a3;
  v85 = v14;
  if (!a3)
  {
    goto LABEL_32;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8))
  {
    if (a2)
    {
      mlir::emitError(a1, &v90);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v90, "cannot conv2D a non-shaped weightsType");
      v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v90)
      {
        mlir::InFlightDiagnostic::report(&v90);
      }

      if (v99 != 1)
      {
        return v38;
      }

      if (v98 != &v99)
      {
        free(v98);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v97;
        v50 = __p;
        if (v97 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v97 = v48;
        operator delete(v50);
      }

      v42 = v94;
      if (v94)
      {
        v51 = v95;
        v44 = v94;
        if (v95 != v94)
        {
          do
          {
            v53 = *--v51;
            v52 = v53;
            *v51 = 0;
            if (v53)
            {
              MEMORY[0x1AC55A040](v52, 0x1000C8077774924);
            }
          }

          while (v51 != v42);
LABEL_95:
          v44 = v94;
          goto LABEL_96;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    return 0;
  }

  mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a7 = mlir::UnrankedTensorType::get(a5);
    return 1;
  }

  v87 = v89;
  v88 = 0x400000000;
  Shape = mlir::ShapedType::getShape(&v84);
  v86 = v16;
  if (v16 != 4)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_141;
    }

    mlir::emitError(a1, &v90);
    if (v90)
    {
      mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(&v91, "conv2D input rank ", &v86, "must be 4 ");
    }

    v55 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
    if (v90)
    {
      mlir::InFlightDiagnostic::report(&v90);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v56 = __p;
      if (__p)
      {
        v57 = v97;
        v58 = __p;
        if (v97 != __p)
        {
          do
          {
            v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
          }

          while (v57 != v56);
          v58 = __p;
        }

        v97 = v56;
        operator delete(v58);
      }

      v59 = v94;
      if (v94)
      {
        v60 = v95;
        v61 = v94;
        if (v95 != v94)
        {
          do
          {
            v63 = *--v60;
            v62 = v63;
            *v60 = 0;
            if (v63)
            {
              MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
            }
          }

          while (v60 != v59);
          v61 = v94;
        }

        v95 = v59;
        operator delete(v61);
      }

      if (v92 != v93)
      {
        free(v92);
      }
    }

    if (!v55)
    {
      goto LABEL_141;
    }

LABEL_134:
    v32 = v87;
    v28 = v88;
LABEL_135:
    *a7 = mlir::RankedTensorType::get(v32, v28, a5, 0);
    v38 = 1;
    goto LABEL_142;
  }

  v17 = v88;
  if (v88 <= 3)
  {
    if (HIDWORD(v88) > 3 || (v18 = Shape, llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, 4uLL, 8), Shape = v18, v17 = v88, v88 != 4))
    {
      v19 = Shape;
      bzero(v87 + 8 * v17, 32 - 8 * v17);
      Shape = v19;
    }
  }

  LODWORD(v88) = 0;
  v20 = *Shape;
  if (HIDWORD(v88))
  {
    v21 = 0;
  }

  else
  {
    v80 = Shape;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, 1uLL, 8);
    Shape = v80;
    v21 = v88;
  }

  *(v87 + v21) = v20;
  v22 = (v88 + 1);
  LODWORD(v88) = v22;
  v23 = Shape[1];
  if (v22 >= HIDWORD(v88))
  {
    v81 = Shape;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v22 + 1, 8);
    Shape = v81;
    LODWORD(v22) = v88;
  }

  *(v87 + v22) = v23;
  v24 = (v88 + 1);
  LODWORD(v88) = v24;
  v25 = Shape[2];
  if (v24 >= HIDWORD(v88))
  {
    v82 = Shape;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v24 + 1, 8);
    Shape = v82;
    LODWORD(v24) = v88;
  }

  *(v87 + v24) = v25;
  v26 = (v88 + 1);
  LODWORD(v88) = v26;
  v27 = Shape[3];
  if (v26 >= HIDWORD(v88))
  {
    v83 = Shape;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v26 + 1, 8);
    Shape = v83;
    LODWORD(v26) = v88;
  }

  *(v87 + v26) = v27;
  v28 = (v88 + 1);
  LODWORD(v88) = v88 + 1;
  v29 = *(a6 + 8);
  v30 = 0x8000000000000000;
  v31 = 0x8000000000000000;
  if (v29 != 0x8000000000000000)
  {
    v31 = (*(a6 + 88) + v29 + *(a6 + 96) + *(a6 + 56) + ~((*(a6 + 24) - 1) * *(a6 + 72))) / *(a6 + 56);
  }

  if (*a6 != 0x8000000000000000)
  {
    v30 = (*a6 + ~((*(a6 + 32) - 1) * *(a6 + 80)) + *(a6 + 104) + *(a6 + 112) + *(a6 + 64)) / *(a6 + 64);
  }

  v32 = v87;
  v33 = *(a6 + 124);
  if (!v33)
  {
    if (v28)
    {
      v65 = 0;
      if (v30 <= 0)
      {
        v30 = 0x8000000000000000;
      }

      if (v31 <= 0)
      {
        v31 = 0x8000000000000000;
      }

      v66 = 8 * v28;
      v67 = Shape + 3;
      do
      {
        v68 = v31;
        if (v65)
        {
          if (v65 == 2)
          {
            v68 = *(a6 + 40);
            if (v68 <= 0)
            {
              v68 = 0x8000000000000000;
            }
          }

          else
          {
            v68 = v30;
            if (v65 != 1)
            {
              v68 = *v67;
            }
          }
        }

        *(v32 + v66 - 8) = v68;
        ++v65;
        --v67;
        v66 -= 8;
      }

      while (v66);
    }

    goto LABEL_135;
  }

  if (v33 == 1)
  {
    if (v28)
    {
      v34 = 0;
      if (v30 <= 0)
      {
        v30 = 0x8000000000000000;
      }

      if (v31 <= 0)
      {
        v31 = 0x8000000000000000;
      }

      v35 = 8 * v28;
      v36 = Shape + 3;
      do
      {
        v54 = v30;
        if (v34 != 2)
        {
          v54 = v31;
          if (v34 != 1)
          {
            if (v34)
            {
              v54 = *v36;
            }

            else
            {
              v54 = *(a6 + 40);
              if (v54 <= 0)
              {
                v54 = 0x8000000000000000;
              }
            }
          }
        }

        *(v32 + v35 - 8) = v54;
        ++v34;
        --v36;
        v35 -= 8;
      }

      while (v35);
    }

    goto LABEL_135;
  }

  if (a2)
  {
    mlir::emitError(a1, &v90);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v90, "unrecognized input dataLayout to conv2D");
    v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v69);
    if (v90)
    {
      mlir::InFlightDiagnostic::report(&v90);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v97;
        v73 = __p;
        if (v97 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v97 = v71;
        operator delete(v73);
      }

      v74 = v94;
      if (v94)
      {
        v75 = v95;
        v76 = v94;
        if (v95 != v94)
        {
          do
          {
            v78 = *--v75;
            v77 = v78;
            *v75 = 0;
            if (v78)
            {
              MEMORY[0x1AC55A040](v77, 0x1000C8077774924);
            }
          }

          while (v75 != v74);
          v76 = v94;
        }

        v95 = v74;
        operator delete(v76);
      }

      if (v92 != v93)
      {
        free(v92);
      }
    }

    if (v70)
    {
      goto LABEL_134;
    }
  }

LABEL_141:
  v38 = 0;
LABEL_142:
  v64 = v87;
  if (v87 != v89)
  {
LABEL_143:
    free(v64);
  }

  return v38;
}

void *mlir::mpsx::anonymous namespace::qimpl::getWeightsDequantizedType<mlir::mpsx::QuantizedConv2DOpAdaptor>(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = (*(mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeights(a1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v38 = v2;
  v39 = v3;
  if (*(*mlir::getElementTypeOrSelf(v2) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v2;
  }

  v4 = *(a1 + 16);
  *v40 = *a1;
  v41[0] = v4;
  v41[1] = *(a1 + 32);
  v42 = *(a1 + 48);
  if (mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(v40))
  {
    v5 = (*(mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(a1) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v5)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v37[0] = v5;
    v37[1] = v6;
    if (!mlir::ElementsAttr::getShapedType(v37))
    {
      goto LABEL_26;
    }

    Shape = mlir::ShapedType::getShape(v37);
    if (v8)
    {
      v9 = 8 * v8;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_26;
    }

LABEL_14:
    if (!mlir::ElementsAttr::getShapedType(&v38))
    {
LABEL_26:
      isSplat = mlir::ElementsAttr::isSplat(&v38);
      v24 = mlir::UnrankedTensorType::get(isSplat);
      v25 = v24;
      if (v24)
      {
        v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      v38 = v25;
      v39 = v24;
      goto LABEL_29;
    }

    v10 = mlir::ShapedType::getShape(&v38);
    if (v11)
    {
      v12 = 8 * v11;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_26;
    }

LABEL_19:
    WeightsQuantParamsAxis = mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getWeightsQuantParamsAxis(a1);
    mlir::ShapedType::getShape(v37);
    if (v14 != 1 && (WeightsQuantParamsAxis & 0x100000000) != 0)
    {
      v15 = *(mlir::ShapedType::getShape(v37) + 8 * (v14 - 1));
      if (v15 >= 2)
      {
        if (WeightsQuantParamsAxis <= 0)
        {
          mlir::ShapedType::getShape(&v38);
          LODWORD(WeightsQuantParamsAxis) = v16 + WeightsQuantParamsAxis;
        }

        v17 = mlir::ShapedType::getShape(&v38);
        v19 = v18;
        v40[0] = v41;
        v40[1] = 0x500000000;
        v20 = (8 * v18) >> 3;
        if (v20 < 6)
        {
          v21 = 0;
          v22 = v41;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v40, v41, v20, 8);
          v21 = v40[1];
          v22 = v40[0];
        }

        if (v19)
        {
          memcpy(v22 + 8 * v21, v17, 8 * v19);
          v21 = v40[1];
          v22 = v40[0];
        }

        v33 = v21 + v19;
        LODWORD(v40[1]) = v21 + v19;
        *(v22 + WeightsQuantParamsAxis) *= v15;
        v34 = mlir::ElementsAttr::isSplat(&v38);
        v35 = mlir::RankedTensorType::get(v22, v33, v34, 0);
        v36 = v35;
        if (v35)
        {
          v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
        }

        v38 = v36;
        v39 = v35;
        if (v40[0] != v41)
        {
          free(v40[0]);
        }
      }
    }
  }

LABEL_29:
  Value = mlir::AffineMapAttr::getValue(a1);
  v27 = mlir::DictionaryAttr::end(a1);
  v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 80), (v27 - 48), *(*(*(a1 + 8) + 96) + 48));
  if (v29)
  {
    v30 = *(v28 + 1);
  }

  else
  {
    v30 = 0;
  }

  v40[0] = v30;
  v31 = mlir::AffineMapAttr::getValue(v40);
  LOBYTE(v40[0]) = 0;
  LOBYTE(v41[0]) = 0;
  return mlir::ShapedType::cloneWith(&v38, v40, v31);
}

uint64_t mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getOutputType(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 80), (v3 - 48), *(*(*(this + 1) + 96) + 48));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return mlir::AffineMapAttr::getValue(&v8);
}

uint64_t mlir::mpsx::MakeListOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a9;
  v30 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "mpsx.make_list", 14, Context);
    v28 = 1;
  }

  v31 = a4;
  v32 = a5;
  v15 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::MakeListOpAdaptor::verify(&v26, v15))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v26);
  v17 = mlir::DictionaryAttr::end(&v26);
  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v17, **(v27 + 96));
  if (v19)
  {
    v20 = *(v18 + 1);
  }

  else
  {
    v20 = 0;
  }

  v25 = v20;
  v25 = mlir::AffineMapAttr::getValue(&v25);
  v22 = mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(&v25, 1, this);
  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    v24 = v22;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
    v22 = v24;
    LODWORD(v23) = *(a11 + 8);
  }

  *(*a11 + 8 * v23) = v22;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::MakeListOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v32); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v32))
    {
      v30[0] = "'mpsx.make_list' op requires attribute 'element_type'";
      v31 = 259;
      mlir::emitError(a2, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 != 1)
      {
        return v5;
      }

      if (v40 != &v41)
      {
        free(v40);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v39;
        v8 = __p;
        if (v39 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v39 = v6;
        operator delete(v8);
      }

      v9 = v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      v10 = v37;
      v11 = v36;
      if (v37 == v36)
      {
        goto LABEL_67;
      }

      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
        }
      }

      while (v10 != v9);
LABEL_66:
      v11 = v36;
      goto LABEL_67;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v32))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
      {
        v15 = *(i + 1);
      }

      i = (i + 16);
    }

    while (i != mlir::DictionaryAttr::end(&v32));
  }

  if (v14)
  {
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (v33[0] = v14, mlir::AffineMapAttr::getValue(v33), v30[0] = v14, Value = mlir::AffineMapAttr::getValue(v30), !mlir::mpsx::isMPSXListElementType(Value)))
    {
      v30[0] = "'mpsx.make_list' op attribute 'element_type' failed to satisfy constraint: any type attribute MPSX list element type attribute";
      v31 = 259;
      mlir::emitError(a2, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 != 1)
      {
        return v5;
      }

      if (v40 != &v41)
      {
        free(v40);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v39;
        v19 = __p;
        if (v39 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v39 = v17;
        operator delete(v19);
      }

      v9 = v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      v20 = v37;
      v11 = v36;
      if (v37 == v36)
      {
        goto LABEL_67;
      }

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

      while (v20 != v9);
      goto LABEL_66;
    }
  }

  if (!v15)
  {
    return 1;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v30[0] = v15;
    v33[0] = mlir::AffineMapAttr::getValue(v30);
    if (mlir::Type::isUnsignedInteger(v33, 32))
    {
      return 1;
    }
  }

  v30[0] = "'mpsx.make_list' op attribute 'max_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
  v31 = 259;
  mlir::emitError(a2, v30, v33);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v39;
      v25 = __p;
      if (v39 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v39 = v23;
      operator delete(v25);
    }

    v9 = v36;
    if (v36)
    {
      v26 = v37;
      v11 = v36;
      if (v37 != v36)
      {
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

        while (v26 != v9);
        goto LABEL_66;
      }

LABEL_67:
      v37 = v9;
      operator delete(v11);
    }

LABEL_68:
    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(uint64_t *a1, int a2, mlir::MLIRContext *this)
{
  v3 = *a1;
  {
    v8 = this;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    this = v8;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  v10 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v9[0] = v4;
  v9[1] = &v10;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_;
  v14[1] = v9;
  v13 = v3;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, v4, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::mpsx::ListPushBackOp::verify(uint64_t **this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v19, &v16, 1uLL);
  v15 = *(v3 + 8);
  mlir::ValueRange::ValueRange(v17, &v15, 1uLL);
  v28[0] = &unk_1F1A17698;
  v29 = v28;
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if (v4)
    {
      return 1;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    if (v4)
    {
      return 1;
    }
  }

  v17[0] = "list's element_type and element's type are not compatible";
  v18 = 259;
  mlir::OpState::emitOpError(this, v17, v19);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v25;
      v8 = __p;
      if (v25 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v25 = v6;
      operator delete(v8);
    }

    v9 = v22;
    if (v22)
    {
      v10 = v23;
      v11 = v22;
      if (v23 != v22)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v22;
      }

      v23 = v9;
      operator delete(v11);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_1F1A163C0;
  v16[1] = v16;
  v16[2] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

BOOL mlir::mpsx::FusionOp::verify(mlir::Operation **this)
{
  v26 = *MEMORY[0x1E69E9840];
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v17);
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(v17);
  if (*(*(mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 1) + 8))
  {
    return 1;
  }

  v17[0] = mlir::mpsx::FusionOp::getCustomFusionTypeAttr(this);
  if (v17[0])
  {
    mlir::OpaqueAttr::getAttrData(v17);
    return 1;
  }

  else
  {
    v15 = "custom fusion defined, but the custom fusion type has not been set";
    v16 = 259;
    mlir::OpState::emitOpError(this, &v15, v17);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    v6 = result;
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
      result = v6;
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
        result = v6;
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
        result = v6;
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
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
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
        result = v6;
      }

      if (v18 != &v19)
      {
        free(v18);
        return v6;
      }
    }
  }

  return result;
}

uint64_t *mlir::mpsx::FusionOp::getCustomFusionType@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation **this@<X0>)
{
  result = mlir::mpsx::FusionOp::getCustomFusionTypeAttr(this);
  v6 = result;
  if (result)
  {
    result = mlir::OpaqueAttr::getAttrData(&v6);
    *a1 = result;
    a1[1] = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v5;
  return result;
}

uint64_t mlir::mpsx::InterleaveOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = a6;
  LOBYTE(v45) = 0;
  v46 = 0;
  v47 = a9;
  v48 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v44);
    if (v46 == 1)
    {
      v46 = 0;
    }

    mlir::OperationName::OperationName(&v45, "mpsx.interleave", 15, Context);
    v46 = 1;
  }

  v49 = a4;
  v50 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v15 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::InterleaveOpAdaptor::verify(&v44, v15))
  {
    goto LABEL_13;
  }

  v41 = v49;
  v42 = 0;
  v16 = (*(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_13;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v39 = v16;
  v40 = v17;
  if (!v16)
  {
LABEL_13:
    v24 = mlir::Float32Type::get(this, a2);
    goto LABEL_14;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v39);
  if (mlir::ElementsAttr::getShapedType(&v39))
  {
    Shape = mlir::ShapedType::getShape(&v39);
    v21 = v20;
    v41 = v43;
    v42 = 0x500000000;
    v22 = (8 * v20) >> 3;
    if (v22 < 6)
    {
      v23 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v22, 8);
      v23 = v42;
    }

    if (v21)
    {
      memcpy(v41 + 8 * v23, Shape, 8 * v21);
      v23 = v42;
    }

    v28 = v23 + v21;
    LODWORD(v42) = v23 + v21;
    if ((v28 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      InterleaveFactor = mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(&v44);
      v31 = 1;
      if (v28 != 4)
      {
        v31 = 2;
      }

      v32 = v41;
      v33 = *(v41 + v31);
      if (v33 != 0x8000000000000000)
      {
        *(v41 + v31) = v33 / InterleaveFactor;
      }

      v34 = v32 + 8 * v28;
      v35 = *(v34 - 1);
      if (v35 != 0x8000000000000000)
      {
        *(v34 - 1) = v35 * InterleaveFactor;
      }

      v29 = mlir::RankedTensorType::get(v32, v42, isSplat, 0);
    }

    else
    {
      v29 = mlir::UnrankedTensorType::get(isSplat);
    }

    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v38 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v36 + 1, 8);
      v29 = v38;
      v36 = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v29;
    ++*(a11 + 8);
    if (v41 != v43)
    {
      free(v41);
    }

    return 1;
  }

  v24 = isSplat;
LABEL_14:
  v25 = mlir::UnrankedTensorType::get(v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v37 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
    v25 = v37;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mpsx::InterleaveOp::verify(uint64_t **this)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v55 = *this;
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v55);
  mlir::getANENextSupportedInterleaveValue(InterleaveFactor);
  if (v3)
  {
    v4 = (*(*(v1[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v52[0] = v4;
    v52[1] = v5;
    if (mlir::ElementsAttr::getShapedType(v52))
    {
      Shape = mlir::ShapedType::getShape(v52);
      if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v54 = 257;
        mlir::Operation::emitOpError(v1, v53, &v58);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, "Interleave can only be applied on 4D or 5D tensor");
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
        if (v58)
        {
          mlir::InFlightDiagnostic::report(&v58);
        }

        if (v67 == 1)
        {
          if (v66 != &v67)
          {
            free(v66);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v65;
            v21 = __p;
            if (v65 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v65 = v19;
            operator delete(v21);
          }

          v11 = v62;
          if (!v62)
          {
            goto LABEL_57;
          }

          v22 = v63;
          v13 = v62;
          if (v63 == v62)
          {
LABEL_56:
            v63 = v11;
            operator delete(v13);
LABEL_57:
            if (v60 != &v61)
            {
              free(v60);
            }

            return v7;
          }

          do
          {
            v24 = *--v22;
            v23 = v24;
            *v22 = 0;
            if (v24)
            {
              MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
            }
          }

          while (v22 != v11);
LABEL_55:
          v13 = v62;
          goto LABEL_56;
        }

        return v7;
      }

      v25 = Shape;
      v26 = v17;
      v27 = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v55);
      v28 = v26 == 4;
      v7 = 1;
      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      v30 = *(v25 + 8 * v29);
      if (v30 == 0x8000000000000000)
      {
        return v7;
      }

      v31 = v27;
      if (v30 % v27)
      {
        v54 = 257;
        mlir::Operation::emitOpError(v1, v53, &v58);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, "channel ");
        if (*v32)
        {
          v33 = *(v32 + 24);
          v34 = *(v25 + 8 * v29);
          v56 = 2;
          v57 = v34;
          v35 = *(v32 + 32);
          v36 = &v56;
          if (v35 >= *(v32 + 36))
          {
            if (v33 <= &v56 && v33 + 24 * v35 > &v56)
            {
              v48 = &v56 - v33;
              v49 = v32;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v32 + 24, (v32 + 40), v35 + 1, 24);
              v32 = v49;
              v33 = *(v49 + 24);
              v36 = &v48[v33];
            }

            else
            {
              v46 = v32;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v32 + 24, (v32 + 40), v35 + 1, 24);
              v32 = v46;
              v33 = *(v46 + 24);
              v36 = &v56;
            }
          }

          v37 = v33 + 24 * *(v32 + 32);
          v38 = *v36;
          *(v37 + 16) = *(v36 + 2);
          *v37 = v38;
          ++*(v32 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " must be a multiple of interleave ");
        if (*v39)
        {
          v40 = *(v39 + 24);
          v56 = 2;
          v57 = v31;
          v41 = *(v39 + 32);
          v42 = &v56;
          if (v41 >= *(v39 + 36))
          {
            if (v40 <= &v56 && v40 + 24 * v41 > &v56)
            {
              v50 = &v56 - v40;
              v51 = v39;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
              v39 = v51;
              v40 = *(v51 + 24);
              v42 = &v50[v40];
            }

            else
            {
              v47 = v39;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
              v39 = v47;
              v40 = *(v47 + 24);
              v42 = &v56;
            }
          }

          v43 = v40 + 24 * *(v39 + 32);
          v44 = *v42;
          *(v43 + 16) = *(v42 + 2);
          *v43 = v44;
          ++*(v39 + 32);
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
        if (v58)
        {
          mlir::InFlightDiagnostic::report(&v58);
        }

        if (v67 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v59);
        }

        return v7;
      }
    }

    return 1;
  }

  v54 = 257;
  mlir::Operation::emitOpError(v1, v53, &v58);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, "interleave factor not supported");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v58)
  {
    mlir::InFlightDiagnostic::report(&v58);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v65;
      v10 = __p;
      if (v65 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v65 = v8;
      operator delete(v10);
    }

    v11 = v62;
    if (!v62)
    {
      goto LABEL_57;
    }

    v12 = v63;
    v13 = v62;
    if (v63 == v62)
    {
      goto LABEL_56;
    }

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
    goto LABEL_55;
  }

  return v7;
}

uint64_t mlir::mpsx::DeinterleaveOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = a6;
  LOBYTE(v45) = 0;
  v46 = 0;
  v47 = a9;
  v48 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v44);
    if (v46 == 1)
    {
      v46 = 0;
    }

    mlir::OperationName::OperationName(&v45, "mpsx.deinterleave", 17, Context);
    v46 = 1;
  }

  v49 = a4;
  v50 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v15 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::DeinterleaveOpAdaptor::verify(&v44, v15))
  {
    goto LABEL_13;
  }

  v41 = v49;
  v42 = 0;
  v16 = (*(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_13;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v39 = v16;
  v40 = v17;
  if (!v16)
  {
LABEL_13:
    v24 = mlir::Float32Type::get(this, a2);
    goto LABEL_14;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v39);
  if (mlir::ElementsAttr::getShapedType(&v39))
  {
    Shape = mlir::ShapedType::getShape(&v39);
    v21 = v20;
    v41 = v43;
    v42 = 0x500000000;
    v22 = (8 * v20) >> 3;
    if (v22 < 6)
    {
      v23 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v22, 8);
      v23 = v42;
    }

    if (v21)
    {
      memcpy(v41 + 8 * v23, Shape, 8 * v21);
      v23 = v42;
    }

    v28 = v23 + v21;
    LODWORD(v42) = v23 + v21;
    if ((v28 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      InterleaveFactor = mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(&v44);
      v31 = 1;
      if (v28 != 4)
      {
        v31 = 2;
      }

      v32 = v41;
      v33 = *(v41 + v31);
      if (v33 != 0x8000000000000000)
      {
        *(v41 + v31) = v33 * InterleaveFactor;
      }

      v34 = v32 + 8 * v28;
      v35 = *(v34 - 1);
      if (v35 != 0x8000000000000000)
      {
        *(v34 - 1) = v35 / InterleaveFactor;
      }

      v29 = mlir::RankedTensorType::get(v32, v42, isSplat, 0);
    }

    else
    {
      v29 = mlir::UnrankedTensorType::get(isSplat);
    }

    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v38 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v36 + 1, 8);
      v29 = v38;
      v36 = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v29;
    ++*(a11 + 8);
    if (v41 != v43)
    {
      free(v41);
    }

    return 1;
  }

  v24 = isSplat;
LABEL_14:
  v25 = mlir::UnrankedTensorType::get(v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v37 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
    v25 = v37;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mpsx::DeinterleaveOp::verify(uint64_t **this)
{
  v67 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v54 = *this;
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v54);
  mlir::getANENextSupportedInterleaveValue(InterleaveFactor);
  if (v3)
  {
    v4 = (*(*(v1[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v51[0] = v4;
    v51[1] = v5;
    if (mlir::ElementsAttr::getShapedType(v51))
    {
      Shape = mlir::ShapedType::getShape(v51);
      if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v53 = 257;
        mlir::Operation::emitOpError(v1, v52, &v57);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "Interleave can only be applied on 4D or 5D tensor");
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }

        if (v66 == 1)
        {
          if (v65 != &v66)
          {
            free(v65);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v64;
            v21 = __p;
            if (v64 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v64 = v19;
            operator delete(v21);
          }

          v11 = v61;
          if (!v61)
          {
            goto LABEL_54;
          }

          v22 = v62;
          v13 = v61;
          if (v62 == v61)
          {
LABEL_53:
            v62 = v11;
            operator delete(v13);
LABEL_54:
            if (v59 != &v60)
            {
              free(v59);
            }

            return v7;
          }

          do
          {
            v24 = *--v22;
            v23 = v24;
            *v22 = 0;
            if (v24)
            {
              MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
            }
          }

          while (v22 != v11);
LABEL_52:
          v13 = v61;
          goto LABEL_53;
        }

        return v7;
      }

      v25 = Shape;
      v26 = v17;
      v27 = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v54);
      v28 = v25 + 8 * v26;
      v29 = *(v28 - 8);
      if (v29 != 0x8000000000000000)
      {
        v30 = v27;
        if (v29 % v27)
        {
          v53 = 257;
          mlir::Operation::emitOpError(v1, v52, &v57);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "width ");
          if (*v31)
          {
            v32 = *(v31 + 24);
            v33 = *(v28 - 8);
            v55 = 2;
            v56 = v33;
            v34 = *(v31 + 32);
            v35 = &v55;
            if (v34 >= *(v31 + 36))
            {
              if (v32 <= &v55 && v32 + 24 * v34 > &v55)
              {
                v47 = &v55 - v32;
                v48 = v31;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, (v31 + 40), v34 + 1, 24);
                v31 = v48;
                v32 = *(v48 + 24);
                v35 = &v47[v32];
              }

              else
              {
                v45 = v31;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, (v31 + 40), v34 + 1, 24);
                v31 = v45;
                v32 = *(v45 + 24);
                v35 = &v55;
              }
            }

            v36 = v32 + 24 * *(v31 + 32);
            v37 = *v35;
            *(v36 + 16) = *(v35 + 2);
            *v36 = v37;
            ++*(v31 + 32);
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, " must be a multiple of interleave ");
          if (*v38)
          {
            v39 = *(v38 + 24);
            v55 = 2;
            v56 = v30;
            v40 = *(v38 + 32);
            v41 = &v55;
            if (v40 >= *(v38 + 36))
            {
              if (v39 <= &v55 && v39 + 24 * v40 > &v55)
              {
                v49 = &v55 - v39;
                v50 = v38;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, (v38 + 40), v40 + 1, 24);
                v38 = v50;
                v39 = *(v50 + 24);
                v41 = &v49[v39];
              }

              else
              {
                v46 = v38;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, (v38 + 40), v40 + 1, 24);
                v38 = v46;
                v39 = *(v46 + 24);
                v41 = &v55;
              }
            }

            v42 = v39 + 24 * *(v38 + 32);
            v43 = *v41;
            *(v42 + 16) = *(v41 + 2);
            *v42 = v43;
            ++*(v38 + 32);
          }

          v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }

          if (v66 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v58);
          }

          return v7;
        }
      }
    }

    return 1;
  }

  v53 = 257;
  mlir::Operation::emitOpError(v1, v52, &v57);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "interleave factor not supported");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v57)
  {
    mlir::InFlightDiagnostic::report(&v57);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v64;
      v10 = __p;
      if (v64 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v64 = v8;
      operator delete(v10);
    }

    v11 = v61;
    if (!v61)
    {
      goto LABEL_54;
    }

    v12 = v62;
    v13 = v61;
    if (v62 == v61)
    {
      goto LABEL_53;
    }

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
    goto LABEL_52;
  }

  return v7;
}

uint64_t mlir::mpsx::FPToIntClampedOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = *MEMORY[0x1E69E9840];
  v41[0] = a4;
  v41[1] = a5;
  v34 = a6;
  LOBYTE(v35) = 0;
  v36 = 0;
  v37 = a9;
  v38 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v34);
    if (v36 == 1)
    {
      v36 = 0;
    }

    mlir::OperationName::OperationName(&v35, "mpsx.fp_to_int_clamped", 22, Context);
    v36 = 1;
  }

  v39 = a4;
  v40 = a5;
  if (a5)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::FPToIntClampedOpAdaptor::verify(&v34, v15))
    {
      v42 = v39;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v32 = v16;
        v33 = v17;
        if (v16)
        {
          Value = mlir::AffineMapAttr::getValue(&v34);
          v19 = mlir::DictionaryAttr::end(&v34);
          v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v19, **(v35 + 96));
          if (v21)
          {
            v22 = *(v20 + 1);
          }

          else
          {
            v22 = 0;
          }

          *&v42 = v22;
          v27 = mlir::AffineMapAttr::getValue(&v42);
          LOBYTE(v42) = 0;
          v43 = 0;
          v26 = mlir::ShapedType::cloneWith(&v32, &v42, v27);
LABEL_18:
          v28 = *(a11 + 8);
          if (v28 >= *(a11 + 12))
          {
            v31 = v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v28 + 1, 8);
            v26 = v31;
            v28 = *(a11 + 8);
          }

          *(*a11 + 8 * v28) = v26;
          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v26 = *(mlir::ValueRange::dereference_iterator(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_18;
    }
  }

  v23 = mlir::Float32Type::get(this, a2);
  v24 = mlir::UnrankedTensorType::get(v23);
  v25 = *(a11 + 8);
  if (v25 >= *(a11 + 12))
  {
    v30 = v24;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v25 + 1, 8);
    v24 = v30;
    LODWORD(v25) = *(a11 + 8);
  }

  *(*a11 + 8 * v25) = v24;
LABEL_21:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::FPToIntClampedOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v22[0] = "'mpsx.fp_to_int_clamped' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
          v23 = 259;
          mlir::emitError(a2, v22, v25);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
          if (v25[0])
          {
            mlir::InFlightDiagnostic::report(v25);
          }

          if (v33 == 1)
          {
            if (v32 != &v33)
            {
              free(v32);
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
            }

            v9 = v28;
            if (v28)
            {
              v18 = v29;
              v11 = v28;
              if (v29 != v28)
              {
                do
                {
                  v20 = *--v18;
                  v19 = v20;
                  *v18 = 0;
                  if (v20)
                  {
                    MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
                  }
                }

                while (v18 != v9);
                goto LABEL_39;
              }

              goto LABEL_40;
            }

            goto LABEL_41;
          }

          return v5;
        }

        v25[0] = *(i + 1);
        mlir::AffineMapAttr::getValue(v25);
      }

      return 1;
    }
  }

  v22[0] = "'mpsx.fp_to_int_clamped' op requires attribute 'resultElementType'";
  v23 = 259;
  mlir::emitError(a2, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v31;
      v8 = __p;
      if (v31 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v31 = v6;
      operator delete(v8);
    }

    v9 = v28;
    if (v28)
    {
      v10 = v29;
      v11 = v28;
      if (v29 != v28)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_39:
        v11 = v28;
      }

LABEL_40:
      v29 = v9;
      operator delete(v11);
    }

LABEL_41:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::TensorToBufferOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = *MEMORY[0x1E69E9840];
  v90 = a6;
  LOBYTE(v91) = 0;
  v92 = 0;
  v93 = a9;
  v94 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(&v91, "mpsx.tensor_to_buffer", 21, Context);
    v92 = 1;
  }

  v95 = a4;
  v96 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v17 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::TensorToBufferOpAdaptor::verify(&v90, v17))
  {
    goto LABEL_13;
  }

  v87 = v95;
  v88 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v87, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v82 = 0;
    v83 = 0;
    goto LABEL_13;
  }

  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  v82 = v18;
  v83 = v19;
  if (!v18)
  {
LABEL_13:
    v27 = mlir::Float32Type::get(this, a2);
    v28 = mlir::UnrankedMemRefType::get(v27, 0x4000u);
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      v77 = v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
      v28 = v77;
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    ++*(a11 + 8);
    return 1;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v82);
  Shape = mlir::ShapedType::getShape(&v82);
  v23 = v21;
  v87 = v89;
  v88 = 0x500000000;
  v24 = (8 * v21) >> 3;
  if (v24 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v24, 8);
    v25 = v88;
    v26 = 8 * v23;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v25 = 0;
  v26 = 8 * v21;
  if (v21)
  {
LABEL_18:
    memcpy(v87 + 8 * v25, Shape, v26);
    v25 = v88;
  }

LABEL_19:
  LODWORD(v88) = v25 + (v26 >> 3);
  Value = mlir::AffineMapAttr::getValue(&v90);
  v32 = mlir::DictionaryAttr::end(&v90);
  v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v32, *(*(v91 + 96) + 24));
  if (v34)
  {
    v35 = *(v33 + 1);
    if (v35)
    {
      v36 = *(*v35 + 136);
      if (v36 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v35 = 0;
      }

      v84 = v35;
      if (v36 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        isSplat = mlir::AffineMapAttr::getValue(&v84);
      }
    }
  }

  v37 = mlir::AffineMapAttr::getValue(&v90);
  v38 = mlir::DictionaryAttr::end(&v90);
  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v37, v38, **(v91 + 96));
  if ((v40 & 1) == 0 || (v41 = *(v39 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(v41))
  {
    v50 = mlir::ShapedType::getShape(&v82);
    v51 = v49;
    v84 = v86;
    v85 = 0x500000000;
    v52 = (8 * v49) >> 3;
    if (v52 < 6)
    {
      v53 = 0;
      v54 = 8 * v49;
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v52, 8);
      v53 = v85;
      v54 = 8 * v51;
      if (!v51)
      {
LABEL_39:
        v55 = v53 + (v54 >> 3);
        LODWORD(v85) = v53 + (v54 >> 3);
        if (v85)
        {
          v56 = v84;
LABEL_41:
          v57 = mlir::MemRefType::get(v56, v55, isSplat, 0, 0, 0);
LABEL_79:
          v76 = *(a11 + 8);
          if (v76 >= *(a11 + 12))
          {
            v78 = v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v76 + 1, 8);
            v57 = v78;
            v76 = *(a11 + 8);
          }

          *(*a11 + 8 * v76) = v57;
          ++*(a11 + 8);
          if (v84 != v86)
          {
            free(v84);
          }

          if (v87 != v89)
          {
            free(v87);
          }

          return 1;
        }

LABEL_78:
        v57 = mlir::UnrankedMemRefType::get(isSplat, 0x4000u);
        goto LABEL_79;
      }
    }

    memcpy(v84 + 8 * v53, v50, v54);
    v53 = v85;
    goto LABEL_39;
  }

  v42 = v88;
  v43 = mlir::AffineMapAttr::getValue(&v90);
  v44 = mlir::DictionaryAttr::end(&v90);
  v45 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v43, v44, **(v91 + 96));
  if (v46)
  {
    v47 = *(v45 + 1);
    if (v47)
    {
      if (mlir::DenseIntElementsAttr::classof(v47))
      {
        v84 = v86;
        v85 = 0x500000000;
        if (v42)
        {
          if (v42 < 6)
          {
            v48 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v42, 8);
            v48 = v85;
          }

          if (v42 != v48)
          {
            bzero(v84 + 8 * v48, 8 * (v42 - v48));
          }

          LODWORD(v85) = v42;
        }

        v58 = mlir::AffineMapAttr::getValue(&v90);
        v59 = mlir::DictionaryAttr::end(&v90);
        v60 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v58, v59, **(v91 + 96));
        if ((v61 & 1) == 0 || (v62 = *(v60 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(*(v60 + 1)))
        {
LABEL_64:
          if (v42)
          {
            v70 = 0;
            if (v42 >= 3)
            {
              v71 = v42 - 3;
            }

            else
            {
              v71 = 0;
            }

            v72 = 1;
            do
            {
              if (*(v84 + v70) > 1)
              {
                v71 = v70;
                v72 = *(v84 + v70);
              }

              ++v70;
            }

            while (v42 != v70);
            v73 = *(v87 + v71);
            v74 = v87 + 8 * v42;
            v75 = *(v74 - 1);
            if (v73 >= 1)
            {
              *(v87 + v71) = v73 / v72;
            }

            if (v75 >= 1)
            {
              *(v74 - 1) = v75 * v72;
            }
          }

          v55 = v88;
          if (v88)
          {
            v56 = v87;
            goto LABEL_41;
          }

          goto LABEL_78;
        }

        v80 = v62;
        v81 = 1;
        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v80);
          v11 = mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          mlir::DenseElementsAttr::getNumElements(&v80);
        }

        else
        {
          RawStringData = 0;
        }

        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          mlir::DenseElementsAttr::getRawStringData(&v80);
          mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          NumElements = mlir::DenseElementsAttr::getNumElements(&v80);
          v12 = NumElements;
          LODWORD(v85) = 0;
          if (NumElements <= HIDWORD(v85))
          {
            v65 = 0;
            v66 = 0;
            if (!NumElements)
            {
LABEL_63:
              LODWORD(v85) = v66;
              goto LABEL_64;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, NumElements, 8);
            v65 = v85;
          }
        }

        else
        {
          v65 = 0;
        }

        v67 = 0;
        v68 = v84 + 8 * v65;
        do
        {
          if (v11)
          {
            v69 = 0;
          }

          else
          {
            v69 = v67;
          }

          *&v68[8 * v67++] = *(RawStringData + 8 * v69);
        }

        while (v12 != v67);
        v66 = v65 + v12;
        goto LABEL_63;
      }
    }
  }

  v79 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::mpsx::TensorToBufferOp::verify(v79);
}

uint64_t mlir::mpsx::TensorToBufferOp::verify(mlir::Operation **this)
{
  v58[5] = *MEMORY[0x1E69E9840];
  v45 = *this;
  v3 = (*(*(*(v45 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v44[0] = v3;
  v44[1] = v4;
  NumElements = 0;
  if (mlir::mpsx::TensorToBufferOp::getShapeAttr(&v45) && v44[0])
  {
    if (!mlir::ElementsAttr::getShapedType(v44))
    {
LABEL_13:
      NumElements = 0;
      goto LABEL_14;
    }

    Shape = mlir::ShapedType::getShape(v44);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_13;
    }

LABEL_11:
    v9 = mlir::ShapedType::getShape(v44);
    mlir::ShapedType::getNumElements(v9, v10);
    ShapeAttr = mlir::mpsx::TensorToBufferOp::getShapeAttr(&v45);
    v47 = ShapeAttr != 0;
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
    {
      mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
      mlir::DenseElementsAttr::isSplat(&ShapeAttr);
      mlir::ArrayAttr::getValue(&ShapeAttr);
      NumElements = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
    }
  }

LABEL_14:
  if (!mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v45) || !v44[0] || !mlir::ElementsAttr::getShapedType(v44))
  {
    return 1;
  }

  v11 = mlir::ShapedType::getShape(v44);
  if (v12)
  {
    v13 = 8 * v12;
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    return 1;
  }

LABEL_21:
  if (!mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v45))
  {
    v41 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::mpsx::TensorToBufferOp::getShapeAttr(v41);
  }

  v56 = v58;
  v57 = 0x500000000;
  if (NumElements)
  {
    if (NumElements < 6)
    {
      v14 = 0;
      v15 = NumElements;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, NumElements, 8);
      v14 = v57;
      v15 = NumElements - v57;
      if (NumElements == v57)
      {
        goto LABEL_28;
      }
    }

    bzero(&v56[v14], 8 * v15);
LABEL_28:
    LODWORD(v57) = NumElements;
  }

  ShapeAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v45);
  v47 = ShapeAttr != 0;
  if (!ShapeAttr)
  {
    goto LABEL_45;
  }

  if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
    isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
    mlir::ArrayAttr::getValue(&ShapeAttr);
    mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  }

  else
  {
    RawStringData = 0;
  }

  if (!mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
  {
    v18 = 0;
    goto LABEL_38;
  }

  mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
  mlir::DenseElementsAttr::isSplat(&ShapeAttr);
  mlir::ArrayAttr::getValue(&ShapeAttr);
  v17 = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  v2 = v17;
  LODWORD(v57) = 0;
  if (v17 > HIDWORD(v57))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v17, 8);
    v18 = v57;
    goto LABEL_38;
  }

  v18 = 0;
  v19 = 0;
  if (v17)
  {
LABEL_38:
    v20 = 0;
    v21 = &v56[v18];
    do
    {
      if (isSplat)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      *&v21[8 * v20++] = *(RawStringData + 8 * v22);
    }

    while (v2 != v20);
    v19 = v18 + v2;
  }

  LODWORD(v57) = v19;
LABEL_45:
  if (NumElements)
  {
    v23 = v56;
    v24 = 1;
    do
    {
      v26 = *v23++;
      v25 = v26;
      if (v26 > 1)
      {
        v24 = v25;
      }

      --NumElements;
    }

    while (NumElements);
  }

  else
  {
    v24 = 1;
  }

  result = mlir::getANENextSupportedInterleaveValue(v24);
  v29 = v28;
  if ((v28 & 1) == 0)
  {
    v43 = 257;
    mlir::Operation::emitOpError(v45, &v42, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v31 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v31;
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
        result = v31;
      }

      v32 = __p;
      if (__p)
      {
        v33 = v53;
        v34 = __p;
        if (v53 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v53 = v32;
        operator delete(v34);
        result = v31;
      }

      v35 = v50;
      if (v50)
      {
        v36 = v51;
        v37 = v50;
        if (v51 != v50)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v50;
        }

        v51 = v35;
        operator delete(v37);
        result = v31;
      }

      if (v48 != &v49)
      {
        free(v48);
        result = v31;
      }
    }
  }

  if (v56 != v58)
  {
    v40 = result;
    free(v56);
    result = v40;
  }

  if (v29)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::mpsx::TensorToBufferOp::getShapeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::DenseIntElementsAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = *MEMORY[0x1E69E9840];
  v90 = a6;
  LOBYTE(v91) = 0;
  v92 = 0;
  v93 = a9;
  v94 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(&v91, "mpsx.buffer_to_tensor", 21, Context);
    v92 = 1;
  }

  v95 = a4;
  v96 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v17 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::BufferToTensorOpAdaptor::verify(&v90, v17))
  {
    goto LABEL_13;
  }

  v87 = v95;
  v88 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v87, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v82 = 0;
    v83 = 0;
    goto LABEL_13;
  }

  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  v82 = v18;
  v83 = v19;
  if (!v18)
  {
LABEL_13:
    v27 = mlir::Float32Type::get(this, a2);
    v28 = mlir::UnrankedTensorType::get(v27);
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      v77 = v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
      v28 = v77;
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    ++*(a11 + 8);
    return 1;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v82);
  Shape = mlir::ShapedType::getShape(&v82);
  v23 = v21;
  v87 = v89;
  v88 = 0x500000000;
  v24 = (8 * v21) >> 3;
  if (v24 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v24, 8);
    v25 = v88;
    v26 = 8 * v23;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v25 = 0;
  v26 = 8 * v21;
  if (v21)
  {
LABEL_18:
    memcpy(v87 + 8 * v25, Shape, v26);
    v25 = v88;
  }

LABEL_19:
  LODWORD(v88) = v25 + (v26 >> 3);
  Value = mlir::AffineMapAttr::getValue(&v90);
  v32 = mlir::DictionaryAttr::end(&v90);
  v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v32, *(*(v91 + 96) + 24));
  if (v34)
  {
    v35 = *(v33 + 1);
    if (v35)
    {
      v36 = *(*v35 + 136);
      if (v36 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v35 = 0;
      }

      v84 = v35;
      if (v36 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        isSplat = mlir::AffineMapAttr::getValue(&v84);
      }
    }
  }

  v37 = mlir::AffineMapAttr::getValue(&v90);
  v38 = mlir::DictionaryAttr::end(&v90);
  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v37, v38, **(v91 + 96));
  if ((v40 & 1) == 0 || (v41 = *(v39 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(v41))
  {
    v50 = mlir::ShapedType::getShape(&v82);
    v51 = v49;
    v84 = v86;
    v85 = 0x500000000;
    v52 = (8 * v49) >> 3;
    if (v52 < 6)
    {
      v53 = 0;
      v54 = 8 * v49;
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v52, 8);
      v53 = v85;
      v54 = 8 * v51;
      if (!v51)
      {
LABEL_39:
        v55 = v53 + (v54 >> 3);
        LODWORD(v85) = v53 + (v54 >> 3);
        if (v85)
        {
          v56 = v84;
LABEL_41:
          v57 = mlir::RankedTensorType::get(v56, v55, isSplat, 0);
LABEL_79:
          v76 = *(a11 + 8);
          if (v76 >= *(a11 + 12))
          {
            v78 = v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v76 + 1, 8);
            v57 = v78;
            v76 = *(a11 + 8);
          }

          *(*a11 + 8 * v76) = v57;
          ++*(a11 + 8);
          if (v84 != v86)
          {
            free(v84);
          }

          if (v87 != v89)
          {
            free(v87);
          }

          return 1;
        }

LABEL_78:
        v57 = mlir::UnrankedTensorType::get(isSplat);
        goto LABEL_79;
      }
    }

    memcpy(v84 + 8 * v53, v50, v54);
    v53 = v85;
    goto LABEL_39;
  }

  v42 = v88;
  v43 = mlir::AffineMapAttr::getValue(&v90);
  v44 = mlir::DictionaryAttr::end(&v90);
  v45 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v43, v44, **(v91 + 96));
  if (v46)
  {
    v47 = *(v45 + 1);
    if (v47)
    {
      if (mlir::DenseIntElementsAttr::classof(v47))
      {
        v84 = v86;
        v85 = 0x500000000;
        if (v42)
        {
          if (v42 < 6)
          {
            v48 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v42, 8);
            v48 = v85;
          }

          if (v42 != v48)
          {
            bzero(v84 + 8 * v48, 8 * (v42 - v48));
          }

          LODWORD(v85) = v42;
        }

        v58 = mlir::AffineMapAttr::getValue(&v90);
        v59 = mlir::DictionaryAttr::end(&v90);
        v60 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v58, v59, **(v91 + 96));
        if ((v61 & 1) == 0 || (v62 = *(v60 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(*(v60 + 1)))
        {
LABEL_64:
          if (v42)
          {
            v70 = 0;
            if (v42 >= 3)
            {
              v71 = v42 - 3;
            }

            else
            {
              v71 = 0;
            }

            v72 = 1;
            do
            {
              if (*(v84 + v70) > 1)
              {
                v71 = v70;
                v72 = *(v84 + v70);
              }

              ++v70;
            }

            while (v42 != v70);
            v73 = *(v87 + v71);
            v74 = v87 + 8 * v42;
            v75 = *(v74 - 1);
            if (v73 >= 1)
            {
              *(v87 + v71) = v73 * v72;
            }

            if (v75 >= 1)
            {
              *(v74 - 1) = v75 / v72;
            }
          }

          v55 = v88;
          if (v88)
          {
            v56 = v87;
            goto LABEL_41;
          }

          goto LABEL_78;
        }

        v80 = v62;
        v81 = 1;
        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v80);
          v11 = mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          mlir::DenseElementsAttr::getNumElements(&v80);
        }

        else
        {
          RawStringData = 0;
        }

        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          mlir::DenseElementsAttr::getRawStringData(&v80);
          mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          NumElements = mlir::DenseElementsAttr::getNumElements(&v80);
          v12 = NumElements;
          LODWORD(v85) = 0;
          if (NumElements <= HIDWORD(v85))
          {
            v65 = 0;
            v66 = 0;
            if (!NumElements)
            {
LABEL_63:
              LODWORD(v85) = v66;
              goto LABEL_64;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, NumElements, 8);
            v65 = v85;
          }
        }

        else
        {
          v65 = 0;
        }

        v67 = 0;
        v68 = v84 + 8 * v65;
        do
        {
          if (v11)
          {
            v69 = 0;
          }

          else
          {
            v69 = v67;
          }

          *&v68[8 * v67++] = *(RawStringData + 8 * v69);
        }

        while (v12 != v67);
        v66 = v65 + v12;
        goto LABEL_63;
      }
    }
  }

  v79 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::mpsx::BufferToTensorOp::fold(v79);
}

uint64_t mlir::mpsx::BufferToTensorOp::fold(mlir::Operation **a1)
{
  v10 = *(*(*a1 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && ((v3 = *(*(DefiningOp + 48) + 16), v4 = v3 == &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id, v3 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id) ? (v5 = 0) : (v5 = DefiningOp), (v11 = v5, v4) && ((v6 = *(*(*(DefiningOp + 72) + 24) + 8), *(*a1 + 9)) ? (v7 = *a1 - 16) : (v7 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) ^ v6) <= 7 && (InterleaveAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(a1), InterleaveAttr == mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v11)) && !mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(a1) && !mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(&v11))))
  {
    return *(*(v11 + 9) + 24) | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::ANEOp::verify(mlir::Operation **this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (mlir::mpsx::ANEOp::getIsExternalAttr(this) || (*(*this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v14 = 257;
  mlir::OpState::emitOpError(this, &v13, v15);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "expected a single region");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v3);
  v4 = result;
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
    result = v4;
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
      result = v4;
    }

    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
      result = v4;
    }

    v8 = v18;
    if (v18)
    {
      v9 = v19;
      v10 = v18;
      if (v19 != v18)
      {
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
        v10 = v18;
      }

      v19 = v8;
      operator delete(v10);
      result = v4;
    }

    if (v16 != &v17)
    {
      free(v16);
      return v4;
    }
  }

  return result;
}

uint64_t mlir::mpsx::FusionTypeAttr::parse(mlir::AsmParser *a1)
{
  v77 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v51 = 0;
    v52 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v51))
    {
LABEL_51:
      v31 = (*(*a1 + 40))(a1);
      LOWORD(v68) = 259;
      (*(*a1 + 24))(v57, a1, v31, v66);
      if (v57[0])
      {
        mlir::InFlightDiagnostic::report(v57);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v32 = v62;
        if (v62)
        {
          v33 = v63;
          v34 = v62;
          if (v63 != v62)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = v62;
          }

          v63 = v32;
          operator delete(v34);
        }

        v35 = v60;
        if (v60)
        {
          v36 = v61;
          v37 = v60;
          if (v61 != v60)
          {
            do
            {
              v39 = *--v36;
              v38 = v39;
              *v36 = 0;
              if (v39)
              {
                MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
              }
            }

            while (v36 != v35);
            v37 = v60;
          }

          v61 = v35;
          operator delete(v37);
        }

        if (v58 != &v59)
        {
          free(v58);
        }
      }

      return 0;
    }

    if (v52 == 17)
    {
      if (*v51 != 0x657A69746E617551 || *(v51 + 1) != 0x4E72656874614764 || *(v51 + 16) != 68)
      {
        goto LABEL_25;
      }

      v4 = 2;
    }

    else if (v52 == 15)
    {
      if (*v51 != 0x657A69746E617551 || *(v51 + 7) != 0x4432766E6F436465)
      {
        goto LABEL_25;
      }

      v4 = 1;
    }

    else
    {
      if (v52 != 6 || (*v51 == 1953723747 ? (v3 = *(v51 + 2) == 28015) : (v3 = 0), !v3))
      {
LABEL_25:
        v50 = 257;
        (*(*a1 + 24))(v66, a1, v2, v49);
        if (v66[0])
        {
          LODWORD(v53) = 3;
          v54 = "expected ";
          v55 = 9;
          v8 = &v53;
          v9 = v67;
          if (v68 >= v69)
          {
            if (v67 <= &v53 && v67 + 24 * v68 > &v53)
            {
              v46 = &v53 - v67;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
              v9 = v67;
              v8 = (v67 + v46);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
              v8 = &v53;
              v9 = v67;
            }
          }

          v10 = &v9[24 * v68];
          v11 = *v8;
          *(v10 + 2) = v8[2];
          *v10 = v11;
          ++v68;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, "::mlir::mpsx::FusionType");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v12, " to be one of: ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "custom");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v14, ", ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "QuantizedConv2D");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v16, ", ");
        if (*v17)
        {
          v18 = *(v17 + 24);
          LODWORD(v53) = 3;
          v54 = "QuantizedGatherND";
          v55 = 17;
          v19 = *(v17 + 32);
          v20 = &v53;
          if (v19 >= *(v17 + 36))
          {
            if (v18 <= &v53 && v18 + 24 * v19 > &v53)
            {
              v47 = &v53 - v18;
              v48 = v17;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v19 + 1, 24);
              v17 = v48;
              v18 = *(v48 + 24);
              v20 = &v47[v18];
            }

            else
            {
              v45 = v17;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v19 + 1, 24);
              v17 = v45;
              v18 = *(v45 + 24);
              v20 = &v53;
            }
          }

          v21 = v18 + 24 * *(v17 + 32);
          v22 = *v20;
          *(v21 + 16) = v20[2];
          *v21 = v22;
          ++*(v17 + 32);
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
        if (v66[0])
        {
          mlir::InFlightDiagnostic::report(v66);
        }

        if (v76 == 1)
        {
          if (v75 != &v76)
          {
            free(v75);
          }

          v23 = __p;
          if (__p)
          {
            v24 = v74;
            v25 = __p;
            if (v74 != __p)
            {
              do
              {
                v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
              }

              while (v24 != v23);
              v25 = __p;
            }

            v74 = v23;
            operator delete(v25);
          }

          v26 = v71;
          if (v71)
          {
            v27 = v72;
            v28 = v71;
            if (v72 != v71)
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
              v28 = v71;
            }

            v72 = v26;
            operator delete(v28);
          }

          if (v67 != v70)
          {
            free(v67);
          }
        }

        goto LABEL_51;
      }

      v4 = 0;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v53 = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
      v54 = Context;
      v66[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail21FusionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14FusionTypeAttrEJNS2_10FusionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v66[1] = &v53;
      v56 = v4;
      v42 = v4 ^ 0xFF51AFD7ED558CCDLL;
      v43 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v42);
      v51 = &v56;
      v49[0] = &v56;
      v49[1] = v66;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v42 ^ (v43 >> 47) ^ v43)) >> 32) >> 15) ^ (-348639895 * (v42 ^ (v43 >> 47) ^ v43))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v49);
    }
  }

  return 0;
}

llvm::raw_ostream *mlir::mpsx::FusionTypeAttr::print(mlir::mpsx::FusionTypeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6)
  {
    if (v6 == 2)
    {
      v7 = 0;
      v9 = "QuantizedGatherND";
      v8 = 17;
    }

    else
    {
      v7 = v6 != 1;
      if (v6 == 1)
      {
        v8 = 15;
      }

      else
      {
        v8 = 0;
      }

      if (v6 == 1)
      {
        v9 = "QuantizedConv2D";
      }

      else
      {
        v9 = "";
      }
    }
  }

  else
  {
    v7 = 0;
    v9 = "custom";
    v8 = 6;
  }

  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::mpsx::MPSXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v36[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v39[2] = 0;
  v37 = 0;
  v38 = 0;
  v36[1] = v5;
  v39[0] = 0;
  if (((*(*a2 + 640))(a2, &v37) & 1) == 0)
  {
    v6 = 0;
    *v39 = 256;
    if (v39[2])
    {
      v32 = "fusion_type";
    }

    else
    {
      v39[2] = 1;
    }

    goto LABEL_15;
  }

  v32 = "fusion_type";
  v33 = 11;
  if (v39[2])
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v38;
  if (v38)
  {
    if (v38 == 11 && *v37 == 0x745F6E6F69737566 && *(v37 + 3) == 0x657079745F6E6F69)
    {
      v6 = mlir::mpsx::FusionTypeAttr::parse(a2);
      v39[0] = v6 != 0;
      *&v39[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v36[0] + 648))(v36[0], &v32, 1);
    if (v39[2])
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v38;
  }

  v6 = 0;
  v9 = v37;
  *v39 = 0;
  v39[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v36) & 0x100) == 0)
  {
    v31 = 257;
    (*(*a2 + 24))(v36, a2, v4, v30);
    v11 = v10;
    if (*v10)
    {
      v35 = 261;
      v32 = v9;
      v33 = v7;
      mlir::Diagnostic::operator<<((v10 + 1), &v32);
      if (*v11)
      {
        v12 = v11 + 24;
        v13 = *(v11 + 24);
        LODWORD(v32) = 3;
        v34 = 14;
        v14 = *(v11 + 32);
        v15 = &v32;
        if (v14 >= *(v11 + 36))
        {
          if (v13 <= &v32 && v13 + 24 * v14 > &v32)
          {
            v29 = &v32 - v13;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v11 + 40), v14 + 1, 24);
            v13 = *(v11 + 24);
            v15 = &v29[v13];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v11 + 40), v14 + 1, 24);
            v13 = *(v11 + 24);
            v15 = &v32;
          }
        }

        v16 = v13 + 24 * *(v11 + 32);
        v17 = *v15;
        *(v16 + 16) = v15[2];
        *v16 = v17;
        ++*(v11 + 32);
        if (*v11)
        {
          v18 = *(a1 + 8);
          v19 = *(a1 + 16);
          v35 = 261;
          v32 = v18;
          v33 = v19;
          mlir::Diagnostic::operator<<(v11 + 8, &v32);
        }
      }
    }

    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v44;
        v22 = __p;
        if (v44 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v44 = v20;
        operator delete(v22);
      }

      v23 = v41;
      if (v41)
      {
        v24 = v42;
        v25 = v41;
        if (v42 != v41)
        {
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
          v25 = v41;
        }

        v42 = v23;
        operator delete(v25);
      }

      if (v38 != &v40)
      {
        free(v38);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::mpsx::MPSXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 0xA)
    {
      *(v7 + 7) = 1701869940;
      *v7 = *"fusion_type";
      v6[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v6, "fusion_type", 0xBuLL);
    }

    mlir::mpsx::FusionTypeAttr::print(v8, a3);
  }
}

uint64_t mlir::mpsx::ANEOp::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::ANEOp::getIsExternalAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getArgAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getResAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::ANEOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v67 = *MEMORY[0x1E69E9840];
  v58[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v58);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (v5)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(v4 + 1);
      while (1)
      {
        v18 = (v4 + v15);
        CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v15));
        v20 = *this;
        if (CompressedBytes == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
        {
          v16 = *(v4 + v15 + 8);
        }

        v15 += 16;
        if (v5 == v15)
        {
          goto LABEL_27;
        }
      }

      v27 = *(v18 + 1);
      v28 = v5 - v15;
      if (v5 == v15)
      {
        v31 = 0;
        v30 = 0;
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = ZinCompressedFootprintInfo::GetCompressedBytes(v18);
          v20 = *this;
          if (v32 == *(*(*(*this + 6) + 96) + 24))
          {
            v29 = *(v18 + 1);
          }

          else
          {
            v33 = ZinCompressedFootprintInfo::GetCompressedBytes(v18);
            v20 = *this;
            if (v33 == *(*(*(*this + 6) + 96) + 32))
            {
              v30 = *(v18 + 1);
            }

            else
            {
              v34 = ZinCompressedFootprintInfo::GetCompressedBytes(v18);
              v20 = *this;
              if (v34 == *(*(*(*this + 6) + 96) + 40))
              {
                v31 = *(v18 + 1);
              }
            }
          }

          v18 = (v18 + 16);
          v28 -= 16;
        }

        while (v28);
      }

      if (!mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(v20, v27, "function_type", 0xD) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(*this, v17, "ane_family", 0xA) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v29, "is_external", 0xB))
      {
        return 0;
      }

      v35 = *this;
      if (v30 && *(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v57 = 257;
        mlir::Operation::emitOpError(v35, &v54, v58);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v58, "attribute '");
        if (*v36)
        {
          v57 = 261;
          v54 = "read_data_from_file_infos";
          v55 = 25;
          v37 = v36;
          mlir::Diagnostic::operator<<(v36 + 8, &v54);
          v36 = v37;
          if (*v37)
          {
            v38 = *(v37 + 24);
            LODWORD(v54) = 3;
            v55 = "' failed to satisfy constraint: array attribute";
            v56 = 47;
            v39 = *(v37 + 32);
            v40 = &v54;
            if (v39 >= *(v37 + 36))
            {
              if (v38 <= &v54 && v38 + 24 * v39 > &v54)
              {
                v53 = &v54 - v38;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, (v37 + 40), v39 + 1, 24);
                v36 = v37;
                v38 = *(v37 + 24);
                v40 = &v53[v38];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, (v37 + 40), v39 + 1, 24);
                v36 = v37;
                v38 = *(v37 + 24);
                v40 = &v54;
              }
            }

            v41 = v38 + 24 * *(v36 + 32);
            v42 = *v40;
            *(v41 + 16) = v40[2];
            *v41 = v42;
            ++*(v36 + 32);
          }
        }

        v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
        if (v58[0])
        {
          mlir::InFlightDiagnostic::report(v58);
        }

        if (v66 == 1)
        {
          if (v65 != &v66)
          {
            free(v65);
          }

          v44 = __p;
          if (__p)
          {
            v45 = v64;
            v46 = __p;
            if (v64 != __p)
            {
              do
              {
                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
              }

              while (v45 != v44);
              v46 = __p;
            }

            v64 = v44;
            operator delete(v46);
          }

          v47 = v61;
          if (v61)
          {
            v48 = v62;
            v49 = v61;
            if (v62 != v61)
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
              v49 = v61;
            }

            v62 = v47;
            operator delete(v49);
          }

          if (v59 != v60)
          {
            free(v59);
          }
        }

        if (!v43)
        {
          return 0;
        }

        v35 = *this;
      }

      if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(v35, v16, "arg_attrs", 9))
      {
        return mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, v31, "res_attrs", 9);
      }

      return 0;
    }

LABEL_27:
    v54 = "requires attribute 'function_type'";
    v57 = 259;
    mlir::OpState::emitOpError(this, &v54, v58);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v64;
        v23 = __p;
        if (v64 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v64 = v21;
        operator delete(v23);
      }

      v10 = v61;
      if (!v61)
      {
        goto LABEL_45;
      }

      v24 = v62;
      v12 = v61;
      if (v62 == v61)
      {
        goto LABEL_44;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
        }
      }

      while (v24 != v10);
      goto LABEL_43;
    }
  }

  else
  {
LABEL_5:
    v54 = "requires attribute 'ane_family'";
    v57 = 259;
    mlir::OpState::emitOpError(this, &v54, v58);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v64;
        v9 = __p;
        if (v64 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v64 = v7;
        operator delete(v9);
      }

      v10 = v61;
      if (!v61)
      {
        goto LABEL_45;
      }

      v11 = v62;
      v12 = v61;
      if (v62 == v61)
      {
LABEL_44:
        v62 = v10;
        operator delete(v12);
LABEL_45:
        if (v59 != v60)
        {
          free(v59);
        }

        return v6;
      }

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
LABEL_43:
      v12 = v61;
      goto LABEL_44;
    }
  }

  return v6;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    Value = mlir::AffineMapAttr::getValue(v25);
    a1 = v6;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      v23[0] = a2;
      v9 = mlir::AffineMapAttr::getValue(v23);
      a1 = v6;
      if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
      {
        return 1;
      }
    }
  }

  v24 = 257;
  mlir::Operation::emitOpError(a1, v23, v25);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v25, "attribute '");
  if (*v10)
  {
    v24 = 261;
    v23[0] = a3;
    v23[1] = a4;
    v11 = v10;
    mlir::Diagnostic::operator<<((v10 + 1), v23);
    v10 = v11;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v10, "' failed to satisfy constraint: type attribute of function type");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v31;
      v16 = __p;
      if (v31 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v31 = v14;
      operator delete(v16);
    }

    v17 = v28;
    if (v28)
    {
      v18 = v29;
      v19 = v28;
      if (v29 != v28)
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
        v19 = v28;
      }

      v29 = v17;
      operator delete(v19);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v13;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: string attribute");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
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
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: unit attribute");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
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
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v26[0] = a2;
    v18 = a1;
    Value = mlir::ArrayAttr::getValue(v26);
    v20 = mlir::ArrayAttr::getValue(v26);
    v22 = v20 + 8 * v21;
    if (v22 != Value)
    {
      a1 = v18;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v22)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  v25 = 257;
  mlir::Operation::emitOpError(a1, v24, v26);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v26, "attribute '");
  if (*v6)
  {
    v25 = 261;
    v24[0] = a3;
    v24[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v24);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: Array of dictionary attributes");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v32;
      v12 = __p;
      if (v32 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v32 = v10;
      operator delete(v12);
    }

    v13 = v29;
    if (v29)
    {
      v14 = v30;
      v15 = v29;
      if (v30 != v29)
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
        v15 = v29;
      }

      v30 = v13;
      operator delete(v15);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v9;
}

BOOL mlir::mpsx::BufferToTensorOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v55);
  if (Value == mlir::DictionaryAttr::end(&v55))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
      {
        v9 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 32))
      {
        v8 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v55));
    if (v8)
    {
      if (!mlir::DenseIntElementsAttr::classof(v8))
      {
        goto LABEL_20;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v48 = v8;
      v49 = v10;
      Type = mlir::ElementsAttr::getType(&v48);
      v12 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v56 = v12;
      v57 = Type;
      mlir::ShapedType::getShape(&v56);
      if (v13 != 1 || (v51 = v8, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v14, isSplat = mlir::ElementsAttr::isSplat(&v52), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_20:
        v48 = "'mpsx.buffer_to_tensor' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v63;
            v18 = __p;
            if (v63 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v63 = v16;
            operator delete(v18);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v20 = v61;
          v21 = v60;
          if (v61 == v60)
          {
LABEL_100:
            v61 = v19;
            operator delete(v21);
LABEL_101:
            if (v58 != &v59)
            {
              free(v58);
            }

            return v15;
          }

          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
LABEL_99:
          v21 = v60;
          goto LABEL_100;
        }

        return v15;
      }
    }
  }

  if (!v9)
  {
LABEL_56:
    if (!v5)
    {
      goto LABEL_63;
    }

    if (!mlir::DenseIntElementsAttr::classof(v5))
    {
      goto LABEL_67;
    }

    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    v48 = v5;
    v49 = v30;
    v31 = mlir::ElementsAttr::getType(&v48);
    v32 = v31;
    if (v31)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    v56 = v32;
    v57 = v31;
    mlir::ShapedType::getShape(&v56);
    if (v33 == 1 && (v51 = v5, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v34, isSplat = mlir::ElementsAttr::isSplat(&v52), mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_63:
      if (v7 && !mlir::BoolAttr::classof(v7))
      {
        v48 = "'mpsx.buffer_to_tensor' op attribute 'isTensorBufferOp' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v41 = __p;
          if (__p)
          {
            v42 = v63;
            v43 = __p;
            if (v63 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v63 = v41;
            operator delete(v43);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v44 = v61;
          v21 = v60;
          if (v61 == v60)
          {
            goto LABEL_100;
          }

          do
          {
            v46 = *--v44;
            v45 = v46;
            *v44 = 0;
            if (v46)
            {
              MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
            }
          }

          while (v44 != v19);
          goto LABEL_99;
        }
      }

      else if (v6 && !mlir::BoolAttr::classof(v6))
      {
        v48 = "'mpsx.buffer_to_tensor' op attribute 'isChannelAndInterleaveSame' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v57);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
LABEL_67:
      v48 = "'mpsx.buffer_to_tensor' op attribute 'interleave' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v50 = 259;
      mlir::emitError(a2, &v48, &v56);
      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v63;
          v37 = __p;
          if (v63 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v63 = v35;
          operator delete(v37);
        }

        v19 = v60;
        if (!v60)
        {
          goto LABEL_101;
        }

        v38 = v61;
        v21 = v60;
        if (v61 == v60)
        {
          goto LABEL_100;
        }

        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v19);
        goto LABEL_99;
      }
    }

    return v15;
  }

  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v56 = v9;
    mlir::AffineMapAttr::getValue(&v56);
    goto LABEL_56;
  }

  v48 = "'mpsx.buffer_to_tensor' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v50 = 259;
  mlir::emitError(a2, &v48, &v56);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v19 = v60;
    if (!v60)
    {
      goto LABEL_101;
    }

    v27 = v61;
    v21 = v60;
    if (v61 == v60)
    {
      goto LABEL_100;
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

    while (v27 != v19);
    goto LABEL_99;
  }

  return v15;
}

uint64_t mlir::mpsx::BufferToTensorOp::getIsTensorBufferOpAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::populateDefaultAttrs(mlir::mpsx::BufferToTensorOp *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[2]))
  {
    v6 = v4[2];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0, v5);
    ZinMirCacheTensors::ZinMirCacheTensors(&v13, v6, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v13, v14);
  }

  result = mlir::NamedAttrList::get(a2, v4[1]);
  if (!result)
  {
    v10 = v4[1];
    v11 = mlir::Builder::getBoolAttr(&Context, 0, v9);
    ZinMirCacheTensors::ZinMirCacheTensors(&v13, v10, v11);
    return mlir::NamedAttrList::push_back(a2, v13, v14);
  }

  return result;
}

BOOL mlir::mpsx::BufferToTensorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 16 * v3;
    do
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v12 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v13 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
        v12 = *this;
        if (v13 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v14 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
          v12 = *this;
          if (v14 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }

          else
          {
            v15 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
            v12 = *this;
            if (v15 == *(*(*(*this + 6) + 96) + 24))
            {
              v8 = *(v4 + 1);
            }

            else
            {
              v16 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
              v12 = *this;
              if (v16 == *(*(*(*this + 6) + 96) + 32))
              {
                v9 = *(v4 + 1);
              }
            }
          }
        }
      }

      v4 = (v4 + 16);
      v10 -= 16;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v12 = *this;
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v12, v9, "shape", 5) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v8, "resultElementType", 0x11) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(*this, v5, "interleave", 10) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v7, "isTensorBufferOp", 0x10) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v6, "isChannelAndInterleaveSame", 0x1A) || !mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(uint64_t *a1, void *a2, const char *a3, const char *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || mlir::BoolAttr::classof(a2))
  {
    return 1;
  }

  v21 = 257;
  mlir::Operation::emitOpError(a1, v20, v22);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v22, "attribute '");
  if (*v9)
  {
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v20);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: BOOL attribute");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
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

    v12 = __p;
    if (__p)
    {
      v13 = v28;
      v14 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v28 = v12;
      operator delete(v14);
    }

    v15 = v25;
    if (v25)
    {
      v16 = v26;
      v17 = v25;
      if (v26 != v25)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v25;
      }

      v26 = v15;
      operator delete(v17);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v7;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v41[0] = a2;
    v41[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ElementsAttr::isSplat(v41);
    return 1;
  }

  else
  {
    v38 = 261;
    v37[0] = a3;
    v37[1] = a4;
    mlir::Operation::emitOpError(a1, v37, v41);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, " #");
    if (*v11)
    {
      v12 = *(v11 + 24);
      v39 = 5;
      v40 = a5;
      v13 = *(v11 + 32);
      v14 = &v39;
      if (v13 >= *(v11 + 36))
      {
        if (v12 <= &v39 && v12 + 24 * v13 > &v39)
        {
          v34 = &v39 - v12;
          v35 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v13 + 1, 24);
          v11 = v35;
          v12 = *(v35 + 24);
          v14 = &v34[v12];
        }

        else
        {
          v33 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v13 + 1, 24);
          v11 = v33;
          v12 = *(v33 + 24);
          v14 = &v39;
        }
      }

      v15 = v12 + 24 * *(v11 + 32);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, " must be ranked or unranked memref of any type values, but got ");
    if (*v17)
    {
      v18 = &v39;
      v19 = v17;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, a2);
      v17 = v19;
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
      if (v21 >= *(v19 + 36))
      {
        if (v20 <= &v39 && v20 + 24 * v21 > &v39)
        {
          v36 = &v39 - v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v36[v20];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v39;
        }
      }

      v22 = v20 + 24 * *(v17 + 32);
      v23 = *v18;
      *(v22 + 16) = *(v18 + 2);
      *v22 = v23;
      ++*(v17 + 32);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v47;
        v26 = __p;
        if (v47 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v47 = v24;
        operator delete(v26);
      }

      v27 = v44;
      if (v44)
      {
        v28 = v45;
        v29 = v44;
        if (v45 != v44)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
            }
          }

          while (v28 != v27);
          v29 = v44;
        }

        v45 = v27;
        operator delete(v29);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::CPUOp::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::CPUOp::getArgAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::CPUOp::getResAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

void mlir::mpsx::CPUOp::build(mlir::StringAttr **a1, void *a2, void *a3, void *a4, mlir::IRMapping *a5, void *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, uint64_t a16, void *__src, uint64_t a18)
{
  v34[4] = *MEMORY[0x1E69E9840];
  a2[24] = 0;
  v22 = *(a2 + 30);
  if (a18 + v22 > *(a2 + 31))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 14), a2 + 16, a18 + v22, 16);
    LODWORD(v22) = *(a2 + 30);
  }

  if (a18)
  {
    memcpy((a2[14] + 16 * v22), __src, 16 * a18);
    LODWORD(v22) = *(a2 + 30);
  }

  *(a2 + 30) = v22 + a18;
  v33 = 261;
  v32[0] = a3;
  v32[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v32);
  Context = mlir::Attribute::getContext(a2);
  v31 = 261;
  v29 = "sym_name";
  v30 = 8;
  v25 = mlir::StringAttr::get(Context, &v29);
  ZinMirCacheTensors::ZinMirCacheTensors(v34, v25, StringAttr);
  mlir::NamedAttrList::push_back((a2 + 14), v34[0], v34[1]);
  v26 = mlir::FunctionType::get(*a1, a9, a10, a13, a14);
  v27 = *(*(a2[1] + 96) + 8);
  v28 = mlir::TypeAttr::get(v26);
  ZinMirCacheTensors::ZinMirCacheTensors(&v29, v27, v28);
  mlir::NamedAttrList::push_back((a2 + 14), v29, v30);
  mlir::OperationState::addRegion(a2);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

BOOL mlir::mpsx::CPUOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x1E69E9840];
  v24[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v24);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v8 = *this;
      if (CompressedBytes == *(*(*(*this + 6) + 96) + 8))
      {
        break;
      }

      if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v18 = *(v4 + 1);
    for (i = 0; v6; v6 -= 16)
    {
      v20 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v8 = *this;
      if (v20 == *(*(*(*this + 6) + 96) + 16))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    return mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(v8, v18, "function_type", 0xD) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, v5, "arg_attrs", 9) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, i, "res_attrs", 9) && mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0);
  }

  else
  {
LABEL_7:
    v22 = "requires attribute 'function_type'";
    v23 = 259;
    mlir::OpState::emitOpError(this, &v22, v24);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v30;
        v12 = __p;
        if (v30 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v30 = v10;
        operator delete(v12);
      }

      v13 = v27;
      if (v27)
      {
        v14 = v28;
        v15 = v27;
        if (v28 != v27)
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
          v15 = v27;
        }

        v28 = v13;
        operator delete(v15);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  return v9;
}

BOOL mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  if (v8 != a2 && *(v8 + 8) == a2)
  {
    return 1;
  }

  v30 = "region #";
  v31 = 259;
  mlir::Operation::emitOpError(a1, &v30, &v32);
  if (v32)
  {
    LODWORD(v28[0]) = 5;
    v28[1] = a5;
    v9 = v28;
    v10 = v34;
    if (v35 >= v36)
    {
      if (v34 <= v28 && v34 + 24 * v35 > v28)
      {
        v25 = v28 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v10 = v34;
        v9 = (v34 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v9 = v28;
        v10 = v34;
      }
    }

    v11 = &v10[24 * v35];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v35;
  }

  if (a4)
  {
    v27 = 1283;
    v26[0] = " ('";
    v26[2] = a3;
    v26[3] = a4;
    v28[0] = v26;
    v28[2] = "') ";
    v13 = 770;
  }

  else
  {
    v28[0] = " ";
    v13 = 259;
  }

  v29 = v13;
  if (v32)
  {
    mlir::Diagnostic::operator<<(&v33, v28);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v32, "failed to verify constraint: region with 1 blocks");
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v41;
      v18 = __p;
      if (v41 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v41 = v16;
      operator delete(v18);
    }

    v19 = v38;
    if (v38)
    {
      v20 = v39;
      v21 = v38;
      if (v39 != v38)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v38;
      }

      v39 = v19;
      operator delete(v21);
    }

    if (v34 != v37)
    {
      free(v34);
    }
  }

  return v15;
}

uint64_t *mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v3, **(*(this + 1) + 96));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &v9);
  if (v10 <= 0x40)
  {
    return v9;
  }

  v7 = *v9;
  MEMORY[0x1AC55A040]();
  return v7;
}

BOOL mlir::mpsx::DeinterleaveOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v25[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isUnsignedInteger(v25, 32))
        {
          return 1;
        }
      }

      v22[0] = "'mpsx.deinterleave' op attribute 'interleave_factor' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v23 = 259;
      mlir::emitError(a2, v22, v25);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
      if (v25[0])
      {
        mlir::InFlightDiagnostic::report(v25);
      }

      if (v33 == 1)
      {
        if (v32 != &v33)
        {
          free(v32);
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
        }

        v9 = v28;
        if (v28)
        {
          v18 = v29;
          v11 = v28;
          if (v29 != v28)
          {
            do
            {
              v20 = *--v18;
              v19 = v20;
              *v18 = 0;
              if (v20)
              {
                MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
              }
            }

            while (v18 != v9);
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        goto LABEL_43;
      }

      return v5;
    }
  }

  v22[0] = "'mpsx.deinterleave' op requires attribute 'interleave_factor'";
  v23 = 259;
  mlir::emitError(a2, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v31;
      v8 = __p;
      if (v31 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v31 = v6;
      operator delete(v8);
    }

    v9 = v28;
    if (v28)
    {
      v10 = v29;
      v11 = v28;
      if (v29 != v28)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_41:
        v11 = v28;
      }

LABEL_42:
      v29 = v9;
      operator delete(v11);
    }

LABEL_43:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

uint64_t *mlir::mpsx::DeinterleaveOp::getInterleaveFactor(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &AttrDictionary);
  if (v11 <= 0x40)
  {
    return AttrDictionary;
  }

  v8 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v8;
}

BOOL mlir::mpsx::DeinterleaveOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v4[1], "interleave_factor", 0x11) && mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'interleave_factor'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
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
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v40[0] = mlir::ElementsAttr::isSplat(v44);
    if (mlir::Type::isSignlessInteger(v40, 1))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 64))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 64))
    {
      return 1;
    }

    if (mlir::Type::isF16(v40))
    {
      return 1;
    }

    if (mlir::Type::isF32(v40))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v40))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v40[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(a1, v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    v42 = 5;
    v43 = a5;
    v15 = *(v13 + 32);
    v16 = &v42;
    if (v15 >= *(v13 + 36))
    {
      if (v14 <= &v42 && v14 + 24 * v15 > &v42)
      {
        v37 = &v42 - v14;
        v38 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v15 + 1, 24);
        v13 = v38;
        v14 = *(v38 + 24);
        v16 = &v37[v14];
      }

      else
      {
        v36 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v15 + 1, 24);
        v13 = v36;
        v14 = *(v36 + 24);
        v16 = &v42;
      }
    }

    v17 = v14 + 24 * *(v13 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " must be tensor of mps native type values, but got ");
  if (*v19)
  {
    v20 = &v42;
    v21 = v19;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v19 = v21;
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v42 && v22 + 24 * v23 > &v42)
      {
        v39 = &v42 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v39[v22];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v42;
      }
    }

    v24 = v22 + 24 * *(v19 + 32);
    v25 = *v20;
    *(v24 + 16) = *(v20 + 2);
    *v24 = v25;
    ++*(v19 + 32);
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = __p;
      if (v50 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
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
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v26;
}

uint64_t mlir::mpsx::FPToIntClampedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v63 = *MEMORY[0x1E69E9840];
  v54[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v54);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v4[1], "resultElementType", 0x11) && mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      v17 = *this;
      v18 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      v19 = *v18;
      v20 = *(*v18 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19 + 8);
        v54[0] = v18;
        v54[1] = v22;
        v53[0] = mlir::ElementsAttr::isSplat(v54);
        if (mlir::Type::isSignedInteger(v53, 8) || mlir::Type::isUnsignedInteger(v53, 8))
        {
          return 1;
        }

        v19 = *v18;
        v20 = *(*v18 + 136);
      }

      if (v20 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v50 = v18;
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19 + 8);
        v53[0] = mlir::ElementsAttr::isSplat(&v50);
        if (mlir::Type::isSignedInteger(v53, 8) || mlir::Type::isUnsignedInteger(v53, 8))
        {
          return 1;
        }
      }

      v52 = 261;
      v50 = "result";
      v51 = 6;
      mlir::Operation::emitOpError(v17, &v50, v54);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " #");
      if (*v23)
      {
        v24 = *(v23 + 24);
        LODWORD(v53[0]) = 5;
        v53[1] = 0;
        v25 = *(v23 + 32);
        v26 = v53;
        if (v25 >= *(v23 + 36))
        {
          if (v24 <= v53 && v24 + 24 * v25 > v53)
          {
            v47 = v53 - v24;
            v48 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, (v23 + 40), v25 + 1, 24);
            v23 = v48;
            v24 = *(v48 + 24);
            v26 = &v47[v24];
          }

          else
          {
            v46 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, (v23 + 40), v25 + 1, 24);
            v23 = v46;
            v24 = *(v46 + 24);
            v26 = v53;
          }
        }

        v27 = v24 + 24 * *(v23 + 32);
        v28 = *v26;
        *(v27 + 16) = *(v26 + 2);
        *v27 = v28;
        ++*(v23 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, " must be tensor of int8 values or memref of int8 values, but got ");
      if (*v29)
      {
        v30 = v53;
        v31 = v29;
        mlir::DiagnosticArgument::DiagnosticArgument(v53, v18);
        v32 = *(v31 + 24);
        v33 = *(v31 + 32);
        if (v33 >= *(v31 + 36))
        {
          if (v32 <= v53 && v32 + 24 * v33 > v53)
          {
            v49 = v53 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, (v31 + 40), v33 + 1, 24);
            v29 = v31;
            v32 = *(v31 + 24);
            v30 = &v49[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, (v31 + 40), v33 + 1, 24);
            v29 = v31;
            v32 = *(v31 + 24);
            v30 = v53;
          }
        }

        else
        {
          v29 = v31;
        }

        v34 = v32 + 24 * *(v29 + 32);
        v35 = *v30;
        *(v34 + 16) = *(v30 + 2);
        *v34 = v35;
        ++*(v29 + 32);
      }

      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v60;
          v39 = __p;
          if (v60 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v60 = v37;
          operator delete(v39);
        }

        v40 = v57;
        if (v57)
        {
          v41 = v58;
          v42 = v57;
          if (v58 != v57)
          {
            do
            {
              v44 = *--v41;
              v43 = v44;
              *v41 = 0;
              if (v44)
              {
                MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
              }
            }

            while (v41 != v40);
            v42 = v57;
          }

          v58 = v40;
          operator delete(v42);
        }

        if (v55 != v56)
        {
          free(v55);
        }
      }

      if (v36)
      {
        return 1;
      }
    }

    return 0;
  }

LABEL_5:
  v50 = "requires attribute 'resultElementType'";
  v52 = 259;
  mlir::OpState::emitOpError(this, &v50, v54);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
  if (v54[0])
  {
    mlir::InFlightDiagnostic::report(v54);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v60;
      v9 = __p;
      if (v60 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v60 = v7;
      operator delete(v9);
    }

    v10 = v57;
    if (v57)
    {
      v11 = v58;
      v12 = v57;
      if (v58 != v57)
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
        v12 = v57;
      }

      v58 = v10;
      operator delete(v12);
    }

    if (v55 != v56)
    {
      free(v55);
    }
  }

  return v6;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v45[0] = a2;
    v45[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v41[0] = mlir::ElementsAttr::isSplat(v45);
    if (mlir::Type::isF16(v41))
    {
      return 1;
    }

    if (mlir::Type::isF32(v41))
    {
      return 1;
    }

    isBF16 = mlir::Type::isBF16(v41);
    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (isBF16)
    {
      return 1;
    }
  }

  v42 = 261;
  v41[0] = a3;
  v41[1] = a4;
  mlir::Operation::emitOpError(a1, v41, v45);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v45, " #");
  if (*v15)
  {
    v16 = *(v15 + 24);
    v43 = 5;
    v44 = a5;
    v17 = *(v15 + 32);
    v18 = &v43;
    if (v17 >= *(v15 + 36))
    {
      if (v16 <= &v43 && v16 + 24 * v17 > &v43)
      {
        v38 = &v43 - v16;
        v39 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, (v15 + 40), v17 + 1, 24);
        v15 = v39;
        v16 = *(v39 + 24);
        v18 = &v38[v16];
      }

      else
      {
        v37 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, (v15 + 40), v17 + 1, 24);
        v15 = v37;
        v16 = *(v37 + 24);
        v18 = &v43;
      }
    }

    v19 = v16 + 24 * *(v15 + 32);
    v20 = *v18;
    *(v19 + 16) = *(v18 + 2);
    *v19 = v20;
    ++*(v15 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, " must be tensor of floating point values, but got ");
  if (*v21)
  {
    v22 = &v43;
    v23 = v21;
    mlir::DiagnosticArgument::DiagnosticArgument(&v43, a2);
    v21 = v23;
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    if (v25 >= *(v23 + 36))
    {
      if (v24 <= &v43 && v24 + 24 * v25 > &v43)
      {
        v40 = &v43 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, (v23 + 40), v25 + 1, 24);
        v21 = v23;
        v24 = *(v23 + 24);
        v22 = &v40[v24];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, (v23 + 40), v25 + 1, 24);
        v21 = v23;
        v24 = *(v23 + 24);
        v22 = &v43;
      }
    }

    v26 = v24 + 24 * *(v21 + 32);
    v27 = *v22;
    *(v26 + 16) = *(v22 + 2);
    *v26 = v27;
    ++*(v21 + 32);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v51;
      v30 = __p;
      if (v51 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v51 = v28;
      operator delete(v30);
    }

    v31 = v48;
    if (v48)
    {
      v32 = v49;
      v33 = v48;
      if (v49 != v48)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        v33 = v48;
      }

      v49 = v31;
      operator delete(v33);
    }

    if (v46 != &v47)
    {
      free(v46);
    }
  }

  return v14;
}

uint64_t mlir::mpsx::FusionOp::getCustomFusionTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mpsx::FusionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::FusionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

uint64_t mlir::mpsx::FusionOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x1E69E9840];
  *v38 = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v38);
  if (!v3)
  {
LABEL_7:
    v36[0] = "requires attribute 'fusionType'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (*v38)
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v44;
        v12 = __p;
        if (v44 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v44 = v10;
        operator delete(v12);
      }

      v13 = v41;
      if (v41)
      {
        v14 = v42;
        v15 = v41;
        if (v42 != v41)
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
          v15 = v41;
        }

        v42 = v13;
        operator delete(v15);
      }

      if (v39 != v40)
      {
        free(v39);
      }
    }

    return v9;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (1)
  {
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
    v8 = *this;
    if (CompressedBytes == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v18 = *(v4 + 1);
  if (v18 && *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id)
  {
    v37 = 257;
    mlir::Operation::emitOpError(v8, v36, v38);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
    if (*v19)
    {
      v37 = 261;
      v36[0] = "fusionType";
      v36[1] = 10;
      v20 = v19;
      mlir::Diagnostic::operator<<((v19 + 1), v36);
      v19 = v20;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, "' failed to satisfy constraint: valid FusionType");
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (*v38)
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v44;
        v25 = __p;
        if (v44 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v44 = v23;
        operator delete(v25);
      }

      v26 = v41;
      if (v41)
      {
        v27 = v42;
        v28 = v41;
        if (v42 != v41)
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
          v28 = v41;
        }

        v42 = v26;
        operator delete(v28);
      }

      if (v39 != v40)
      {
        free(v39);
      }
    }

    if (!v22)
    {
      return 0;
    }

    v8 = *this;
  }

  if (!mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(v8, v5, "customFusionType", 0x10))
  {
    return 0;
  }

  v31 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v32 = *(v31 + 17);
    if (v32)
    {
      v33 = 0;
      v34 = *(v31 + 9) + 24;
      while (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(*this, (*(*v34 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v33))
      {
        ++v33;
        v34 += 32;
        if (v32 == v33)
        {
          v31 = *this;
          goto LABEL_60;
        }
      }

      return 0;
    }
  }

LABEL_60:
  mlir::mpsx::FusionOp::verifyInvariantsImpl(v31, this, v38);
  return v38[0];
}

BOOL mlir::mpsx::InterleaveOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v25[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isUnsignedInteger(v25, 32))
        {
          return 1;
        }
      }

      v22[0] = "'mpsx.interleave' op attribute 'interleave_factor' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v23 = 259;
      mlir::emitError(a2, v22, v25);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
      if (v25[0])
      {
        mlir::InFlightDiagnostic::report(v25);
      }

      if (v33 == 1)
      {
        if (v32 != &v33)
        {
          free(v32);
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
        }

        v9 = v28;
        if (v28)
        {
          v18 = v29;
          v11 = v28;
          if (v29 != v28)
          {
            do
            {
              v20 = *--v18;
              v19 = v20;
              *v18 = 0;
              if (v20)
              {
                MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
              }
            }

            while (v18 != v9);
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        goto LABEL_43;
      }

      return v5;
    }
  }

  v22[0] = "'mpsx.interleave' op requires attribute 'interleave_factor'";
  v23 = 259;
  mlir::emitError(a2, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v31;
      v8 = __p;
      if (v31 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v31 = v6;
      operator delete(v8);
    }

    v9 = v28;
    if (v28)
    {
      v10 = v29;
      v11 = v28;
      if (v29 != v28)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_41:
        v11 = v28;
      }

LABEL_42:
      v29 = v9;
      operator delete(v11);
    }

LABEL_43:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

BOOL mlir::mpsx::ListPopBackOp::verifyInvariantsImpl(uint64_t **this)
{
  if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? (*this - 2) : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = (*this - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(*this, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u);
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(*a2 + 136);
  {
    v37 = a4;
    v38 = a2;
    v32 = a1;
    v33 = a3;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    a3 = v33;
    a4 = v37;
    a2 = v38;
    a1 = v32;
  }

  if (v6 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

  v7 = a2;
  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v43);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v43, " #");
  if (*v8)
  {
    v9 = *(v8 + 24);
    v41 = 5;
    v42 = a5;
    v10 = *(v8 + 32);
    v11 = &v41;
    if (v10 >= *(v8 + 36))
    {
      if (v9 <= &v41 && v9 + 24 * v10 > &v41)
      {
        v34 = &v41 - v9;
        v35 = v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, (v8 + 40), v10 + 1, 24);
        v8 = v35;
        v9 = *(v35 + 24);
        v11 = &v34[v9];
      }

      else
      {
        v31 = v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, (v8 + 40), v10 + 1, 24);
        v8 = v31;
        v9 = *(v31 + 24);
        v11 = &v41;
      }
    }

    v12 = v9 + 24 * *(v8 + 32);
    v13 = *v11;
    *(v12 + 16) = *(v11 + 2);
    *v12 = v13;
    ++*(v8 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v8, " must be MPSX list type, but got ");
  if (*v14)
  {
    v15 = &v41;
    v16 = v14;
    mlir::DiagnosticArgument::DiagnosticArgument(&v41, v7);
    v14 = v16;
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    if (v18 >= *(v16 + 36))
    {
      if (v17 <= &v41 && v17 + 24 * v18 > &v41)
      {
        v36 = &v41 - v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, (v16 + 40), v18 + 1, 24);
        v14 = v16;
        v17 = *(v16 + 24);
        v15 = &v36[v17];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, (v16 + 40), v18 + 1, 24);
        v14 = v16;
        v17 = *(v16 + 24);
        v15 = &v41;
      }
    }

    v19 = v17 + 24 * *(v14 + 32);
    v20 = *v15;
    *(v19 + 16) = *(v15 + 2);
    *v19 = v20;
    ++*(v14 + 32);
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v49;
      v24 = __p;
      if (v49 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v49 = v22;
      operator delete(v24);
    }

    v25 = v46;
    if (v46)
    {
      v26 = v47;
      v27 = v46;
      if (v47 != v46)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v46;
      }

      v47 = v25;
      operator delete(v27);
    }

    if (v44 != &v45)
    {
      free(v44);
    }
  }

  return v21;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (mlir::mpsx::isMPSXListElementType(a2))
  {
    return 1;
  }

  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(a1, v45, v50);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, " #");
  if (*v11)
  {
    v13 = v11 + 24;
    v12 = *(v11 + 24);
    v47 = 5;
    v48 = a5;
    v14 = *(v11 + 32);
    v15 = &v47;
    if (v14 >= *(v11 + 36))
    {
      if (v12 <= &v47 && v12 + 24 * v14 > &v47)
      {
        v40 = &v47 - v12;
        v41 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v14 + 1, 24);
        v11 = v41;
        v12 = *(v41 + 24);
        v15 = &v40[v12];
      }

      else
      {
        v38 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v14 + 1, 24);
        v11 = v38;
        v12 = *(v38 + 24);
        v15 = &v47;
      }
    }

    v16 = v12 + 24 * *(v11 + 32);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 2);
    *v16 = v17;
    v18 = (*(v11 + 32) + 1);
    *(v11 + 32) = v18;
    if (*v11)
    {
      v47 = 3;
      v48 = " must be MPSX list element type, but got ";
      v49 = 41;
      v19 = *(v11 + 24);
      v20 = &v47;
      if (v18 >= *(v11 + 36))
      {
        if (v19 <= &v47 && v19 + 24 * v18 > &v47)
        {
          v42 = &v47 - v19;
          v43 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 40), v18 + 1, 24);
          v11 = v43;
          v19 = *(v43 + 24);
          v20 = &v42[v19];
        }

        else
        {
          v39 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 40), v18 + 1, 24);
          v11 = v39;
          v19 = *(v39 + 24);
          v20 = &v47;
        }
      }

      v21 = v19 + 24 * *(v11 + 32);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 2);
      *v21 = v22;
      ++*(v11 + 32);
      if (*v11)
      {
        v23 = &v47;
        v24 = v11;
        mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
        v25 = *(v24 + 32);
        v26 = *(v24 + 24);
        if (v25 >= *(v24 + 36))
        {
          if (v26 <= &v47 && v26 + 24 * v25 > &v47)
          {
            v44 = &v47 - v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v24 + 40), v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v44[v26];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v24 + 40), v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v47;
          }
        }

        else
        {
          v11 = v24;
        }

        v27 = v26 + 24 * *(v11 + 32);
        v28 = *v23;
        *(v27 + 16) = *(v23 + 2);
        *v27 = v28;
        ++*(v11 + 32);
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v56;
      v31 = __p;
      if (v56 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v56 = v29;
      operator delete(v31);
    }

    v32 = v53;
    if (v53)
    {
      v33 = v54;
      v34 = v53;
      if (v54 != v53)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
          }
        }

        while (v33 != v32);
        v34 = v53;
      }

      v54 = v32;
      operator delete(v34);
    }

    if (v51 != &v52)
    {
      free(v51);
    }
  }

  return v10;
}

BOOL mlir::mpsx::ListPushBackOp::verifyInvariantsImpl(uint64_t **this)
{
  if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(*this, *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::mpsx::MakeListOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v54 = *MEMORY[0x1E69E9840];
  v45[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v45);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v34 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (v34 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (v17)
    {
      if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (v45[0] = v17, mlir::AffineMapAttr::getValue(v45), v41 = v17, v19 = mlir::AffineMapAttr::getValue(&v41), !mlir::mpsx::isMPSXListElementType(v19)))
      {
        v44 = 257;
        mlir::Operation::emitOpError(v7, &v41, v45);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v45, "attribute '");
        if (*v20)
        {
          v44 = 261;
          v41 = "element_type";
          v42 = 12;
          v21 = v20;
          mlir::Diagnostic::operator<<(v20 + 8, &v41);
          v20 = v21;
          if (*v21)
          {
            v22 = *(v21 + 24);
            LODWORD(v41) = 3;
            v42 = "' failed to satisfy constraint: any type attribute MPSX list element type attribute";
            v43 = 83;
            v23 = *(v21 + 32);
            v24 = &v41;
            if (v23 >= *(v21 + 36))
            {
              if (v22 <= &v41 && v22 + 24 * v23 > &v41)
              {
                v40 = &v41 - v22;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
                v20 = v21;
                v22 = *(v21 + 24);
                v24 = &v40[v22];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
                v20 = v21;
                v22 = *(v21 + 24);
                v24 = &v41;
              }
            }

            v25 = v22 + 24 * *(v20 + 32);
            v26 = *v24;
            *(v25 + 16) = v24[2];
            *v25 = v26;
            ++*(v20 + 32);
          }
        }

        v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
        if (v45[0])
        {
          mlir::InFlightDiagnostic::report(v45);
        }

        if (v53 == 1)
        {
          if (v52 != &v53)
          {
            free(v52);
          }

          v28 = __p;
          if (__p)
          {
            v29 = v51;
            v30 = __p;
            if (v51 != __p)
            {
              do
              {
                v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
              }

              while (v29 != v28);
              v30 = __p;
            }

            v51 = v28;
            operator delete(v30);
          }

          v31 = v48;
          if (v48)
          {
            v32 = v49;
            v33 = v48;
            if (v49 != v48)
            {
              do
              {
                v36 = *--v32;
                v35 = v36;
                *v32 = 0;
                if (v36)
                {
                  MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
                }
              }

              while (v32 != v31);
              v33 = v48;
            }

            v49 = v31;
            operator delete(v33);
          }

          if (v46 != v47)
          {
            free(v46);
          }
        }

        if (!v27)
        {
          return 0;
        }
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, i, "max_size", 8))
    {
      if (*(*this + 9))
      {
        v37 = *this - 16;
      }

      else
      {
        v37 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v41 = "requires attribute 'element_type'";
    v44 = 259;
    mlir::OpState::emitOpError(this, &v41, v45);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v51;
        v11 = __p;
        if (v51 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v51 = v9;
        operator delete(v11);
      }

      v12 = v48;
      if (v48)
      {
        v13 = v49;
        v14 = v48;
        if (v49 != v48)
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
          v14 = v48;
        }

        v49 = v12;
        operator delete(v14);
      }

      if (v46 != v47)
      {
        free(v46);
      }
    }
  }

  return v8;
}