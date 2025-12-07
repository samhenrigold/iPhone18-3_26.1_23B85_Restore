uint64_t mlir::mps::TileOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v36[0] = a4;
  v36[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v36, 0);
  v12 = mlir::ValueRange::dereference_iterator(v36, 1);
  v13 = *(v11 + 8);
  v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v13 & 0xFFFFFFFFFFFFFFF8));
  v35[0] = v14;
  v35[1] = v15;
  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
    v30 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

  else
  {
    v40 = v42;
    v41 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(v12, &v40) & 1) == 0 && v41)
    {
      LODWORD(v41) = 0;
    }

    Shape = mlir::ShapedType::getShape(v35);
    v37 = v39;
    v38 = 0x400000000;
    if (v17)
    {
      v18 = Shape;
      v19 = v17;
      if (v17 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v17, 8);
        v20 = v38;
        v22 = v37;
        v21 = v38;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = v39;
      }

      memset_pattern16(v22 + 8 * v20, &unk_1A75D94C0, 8 * v19);
      v23 = v21 + v19;
      LODWORD(v38) = v21 + v19;
      if (v19 == v41)
      {
        v24 = 0;
        v25 = v40;
        do
        {
          v27 = *(v18 + 8 * v24);
          v26 = 0x8000000000000000;
          if (v27 != 0x8000000000000000)
          {
            v28 = v25[v24];
            if (v28 < 0)
            {
              v26 = 0x8000000000000000;
            }

            else
            {
              v26 = (v28 * v27) & ~((v28 * v27) >> 63);
            }
          }

          *(v22 + v24++) = v26;
        }

        while (v19 != v24);
      }
    }

    else
    {
      v23 = 0;
      v22 = v39;
    }

    v31 = v23;
    isSplat = mlir::ElementsAttr::isSplat(v35);
    v30 = mlir::RankedTensorType::get(v22, v31, isSplat, 0);
    if (v37 != v39)
    {
      free(v37);
    }

    if (v40 != v42)
    {
      free(v40);
    }
  }

  v33 = *(a11 + 8);
  if (v33 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
    LODWORD(v33) = *(a11 + 8);
  }

  *(*a11 + 8 * v33) = v30;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::inferReturnTypesForGradient(void *a1, void *a2, uint64_t a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v15[0] = v5;
  v15[1] = v6;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v11 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
LABEL_7:
      v14 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v12 + 1, 8);
      v11 = v14;
      LODWORD(v12) = *(a3 + 8);
    }
  }

  else
  {
    v8 = ElementTypeOrSelf;
    Shape = mlir::ShapedType::getShape(v15);
    v11 = mlir::RankedTensorType::get(Shape, v10, v8, 0);
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
      goto LABEL_7;
    }
  }

  *(*a3 + 8 * v12) = v11;
  ++*(a3 + 8);
  return 1;
}

uint64_t mlir::mps::CastOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x1E69E9840];
  v37[0] = a4;
  v37[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v29 = a6;
  LOBYTE(v30) = 0;
  v31 = 0;
  v32 = v14;
  v33 = a9;
  v34 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v29);
    if (v31 == 1)
    {
      v31 = 0;
    }

    mlir::OperationName::OperationName(&v30, "mps.cast", 8, Context);
    v31 = 1;
  }

  v35 = a4;
  v36 = a5;
  if (a5)
  {
    v16 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::CastOpAdaptor::verify(&v29, v16))
    {
      v38 = v35;
      v17 = mlir::ValueRange::dereference_iterator(&v38, 0);
      v28[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
      v28[1] = v18;
      if (v28[0])
      {
        *&v38 = v32;
        Value = mlir::AffineMapAttr::getValue(&v38);
        LOBYTE(v38) = 0;
        v39 = 0;
        v20 = mlir::ShapedType::cloneWith(v28, &v38, Value);
        v21 = *(a11 + 8);
        if (v21 < *(a11 + 12))
        {
LABEL_12:
          *(*a11 + 8 * v21) = v20;
          goto LABEL_16;
        }
      }

      else
      {
        v20 = *(mlir::ValueRange::dereference_iterator(v37, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v21 = *(a11 + 8);
        if (v21 < *(a11 + 12))
        {
          goto LABEL_12;
        }
      }

      v26 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v21 + 1, 8);
      v20 = v26;
      v21 = *(a11 + 8);
      goto LABEL_12;
    }
  }

  v22 = mlir::Float32Type::get(this, a2);
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    v27 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v24 + 1, 8);
    v23 = v27;
    LODWORD(v24) = *(a11 + 8);
  }

  *(*a11 + 8 * v24) = v23;
LABEL_16:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::CastOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.cast' op requires attribute 'resultElementType'";
    v13 = 259;
    mlir::emitError(a2, &v12, v14);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v20;
        v5 = __p;
        if (v20 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v20 = v3;
        operator delete(v5);
      }

      v6 = v17;
      if (v17)
      {
        v7 = v18;
        v8 = v17;
        if (v18 != v17)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
            }
          }

          while (v7 != v6);
          v8 = v17;
        }

        v18 = v6;
        operator delete(v8);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v2;
}

uint64_t mlir::mps::ReinterpretCastOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v53[0] = a4;
  v53[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v45 = a6;
  LOBYTE(v46) = 0;
  v47 = 0;
  v48 = v14;
  v49 = a9;
  v50 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v45);
    if (v47 == 1)
    {
      v47 = 0;
    }

    mlir::OperationName::OperationName(&v46, "mps.reinterpret_cast", 20, Context);
    v47 = 1;
  }

  v51 = a4;
  v52 = a5;
  if (!a5 || (v16 = mlir::UnknownLoc::get(this, a2), !mlir::mps::ReinterpretCastOpAdaptor::verify(&v45, v16)))
  {
    v26 = mlir::Float32Type::get(this, a2);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
LABEL_18:
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

LABEL_15:
    *(*a11 + 8 * v28) = v27;
    ++*(a11 + 8);
    return 1;
  }

  v17 = mlir::ValueRange::dereference_iterator(v53, 0);
  v41[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
  v41[1] = v18;
  v42 = v48;
  Value = mlir::AffineMapAttr::getValue(&v42);
  if (!v41[0] || (mlir::ElementsAttr::getShapedType(v41) & 1) == 0)
  {
    v27 = mlir::UnrankedTensorType::get(Value);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  Shape = mlir::ShapedType::getShape(v41);
  v21 = mlir::ShapedType::getShape(v41);
  v23 = (v21 + 8 * v22);
  v42 = v44;
  v43 = 0x400000000;
  v24 = (v23 - Shape) >> 3;
  if (v24 < 5)
  {
    v25 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v24, 8);
    v25 = v43;
  }

  if (v23 != Shape)
  {
    memcpy(v42 + 8 * v25, Shape, v23 - Shape);
    v25 = v43;
  }

  LODWORD(v43) = v25 + ((v23 - Shape) >> 3);
  ElementBitWidth = mlir::mps::getElementBitWidth(v41[0]);
  v32 = mlir::mps::getElementBitWidth(Value);
  v33 = v42;
  v34 = v43;
  v35 = v42 + 8 * v43;
  v36 = *(v35 - 1);
  if (v36 == 0x8000000000000000)
  {
    goto LABEL_28;
  }

  if (ElementBitWidth > v32)
  {
    v37 = ElementBitWidth / v32 * v36;
LABEL_27:
    *(v35 - 1) = v37;
    goto LABEL_28;
  }

  if (ElementBitWidth < v32)
  {
    v37 = v36 / (v32 / ElementBitWidth);
    goto LABEL_27;
  }

LABEL_28:
  v38 = mlir::RankedTensorType::get(v33, v34, Value, 0);
  v39 = *(a11 + 8);
  if (v39 >= *(a11 + 12))
  {
    v40 = v38;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v39 + 1, 8);
    v38 = v40;
    LODWORD(v39) = *(a11 + 8);
  }

  *(*a11 + 8 * v39) = v38;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

BOOL mlir::mps::ReinterpretCastOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.reinterpret_cast' op requires attribute 'result_element_type'";
    v13 = 259;
    mlir::emitError(a2, &v12, v14);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v20;
        v5 = __p;
        if (v20 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v20 = v3;
        operator delete(v5);
      }

      v6 = v17;
      if (v17)
      {
        v7 = v18;
        v8 = v17;
        if (v18 != v17)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
            }
          }

          while (v7 != v6);
          v8 = v17;
        }

        v18 = v6;
        operator delete(v8);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v2;
}

BOOL mlir::mps::ReinterpretCastOp::verify(uint64_t **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v39[0] = v2;
  v39[1] = v13;
  isSplat = mlir::ElementsAttr::isSplat(v39);
  if (!mlir::ElementsAttr::getShapedType(v39))
  {
    return 1;
  }

  ElementBitWidth = mlir::mps::getElementBitWidth(isSplat);
  v42[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  Value = mlir::AffineMapAttr::getValue(v42);
  v17 = mlir::mps::getElementBitWidth(Value);
  Shape = mlir::ShapedType::getShape(v39);
  if (ElementBitWidth >= v17)
  {
    return 1;
  }

  v20 = *(Shape + 8 * v19 - 8);
  if (v20 == 0x8000000000000000)
  {
    return 1;
  }

  v21 = v17 / ElementBitWidth;
  if (!(v20 % v21))
  {
    return 1;
  }

  v37 = "innermost dimension needs to be divisible by ";
  v38 = 259;
  mlir::OpState::emitOpError(this, &v37, v42);
  if (v42[0])
  {
    v40 = 5;
    v41 = v21;
    v22 = &v40;
    v23 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v40 && v43 + 24 * v44 > &v40)
      {
        v36 = &v40 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v23 = v43;
        v22 = (v43 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v22 = &v40;
        v23 = v43;
      }
    }

    v24 = &v23[24 * v44];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v44;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  v27 = result;
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
    result = v27;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v27;
    }

    v28 = __p;
    if (__p)
    {
      v29 = v50;
      v30 = __p;
      if (v50 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v50 = v28;
      operator delete(v30);
      result = v27;
    }

    v31 = v47;
    if (v47)
    {
      v32 = v48;
      v33 = v47;
      if (v48 != v47)
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
        v33 = v47;
      }

      v48 = v31;
      operator delete(v33);
      result = v27;
    }

    if (v43 != v46)
    {
      free(v43);
      return v27;
    }
  }

  return result;
}

BOOL mlir::mps::ShapeOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v25[0] = a4;
  v25[1] = a5;
  if (a5 == 1)
  {
    v12 = a3;
    v13 = mlir::ValueRange::dereference_iterator(v25, 0);
    v23[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
    v23[1] = v14;
    if (v23[0])
    {
      if (mlir::ElementsAttr::getShapedType(v23))
      {
        mlir::ShapedType::getShape(v23);
      }

      else
      {
        v15 = 0x8000000000000000;
      }

      v22 = v15;
      v24 = *(mlir::ValueRange::dereference_iterator(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      Context = mlir::Attribute::getContext(&v24);
      v18 = mlir::IntegerType::get(Context, 0x20u, 1u);
      v19 = mlir::RankedTensorType::get(&v22, 1, v18, 0);
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        v21 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v20 + 1, 8);
        v19 = v21;
        LODWORD(v20) = *(a11 + 8);
      }

      *(*a11 + 8 * v20) = v19;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v24 = *(mlir::ValueRange::dereference_iterator(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a2, v12, "unexpected type ", &v24);
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[17],mlir::Type>(uint64_t a1, char a2, char *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[5],mlir::Type>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
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
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

BOOL mlir::mps::RankOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = a4;
  v19[1] = a5;
  if (a5 == 1)
  {
    v17 = 1;
    v18 = *(mlir::ValueRange::dereference_iterator(v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Attribute::getContext(&v18);
    v12 = mlir::IntegerType::get(Context, 0x20u, 1u);
    v13 = mlir::RankedTensorType::get(&v17, 1, v12, 0);
    v14 = *(a11 + 8);
    if (v14 >= *(a11 + 12))
    {
      v16 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14 + 1, 8);
      v13 = v16;
      LODWORD(v14) = *(a11 + 8);
    }

    *(*a11 + 8 * v14) = v13;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::DimensionSizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v34[0] = a4;
  v34[1] = a5;
  if (a5 == 2)
  {
    v11 = mlir::ValueRange::dereference_iterator(v34, 1);
    v29[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
    v29[1] = v12;
    Shape = mlir::ShapedType::getShape(v29);
    v15 = v13;
    v31 = v33;
    v32 = 0x600000000;
    v16 = (8 * v13) >> 3;
    if (v16 < 7)
    {
      v17 = 0;
      v18 = 8 * v13;
      if (!v13)
      {
LABEL_10:
        v20 = v17 + (v18 >> 3);
        LODWORD(v32) = v20;
        if (!v20)
        {
          if (HIDWORD(v32))
          {
            v21 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, 1uLL, 8);
            v21 = v32;
          }

          *(v31 + v21) = 1;
          v20 = v32 + 1;
          LODWORD(v32) = v32 + 1;
        }

        v22 = v31;
        v23 = v20;
        v30 = *(mlir::ValueRange::dereference_iterator(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        Context = mlir::Attribute::getContext(&v30);
        v25 = mlir::IntegerType::get(Context, 0x20u, 1u);
        v26 = mlir::RankedTensorType::get(v22, v23, v25, 0);
        v27 = *(a11 + 8);
        if (v27 >= *(a11 + 12))
        {
          v28 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v27 + 1, 8);
          v26 = v28;
          LODWORD(v27) = *(a11 + 8);
        }

        *(*a11 + 8 * v27) = v26;
        ++*(a11 + 8);
        if (v31 != v33)
        {
          free(v31);
        }

        return 1;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v16, 8);
      v17 = v32;
      v18 = 8 * v15;
      if (!v15)
      {
        goto LABEL_10;
      }
    }

    memcpy(v31 + 8 * v17, Shape, v18);
    v17 = v32;
    goto LABEL_10;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::DynamicShapeCastOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
LABEL_20:
    v25 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      v50 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
      v25 = v50;
      LODWORD(v26) = *(a11 + 8);
    }

    *(*a11 + 8 * v26) = v25;
    ++*(a11 + 8);
    return 1;
  }

  if (a7)
  {
    v13 = *a7;
    v61 = a6;
    LOBYTE(v62) = 0;
    v63 = 0;
    v64 = v13;
    v65 = a9;
    v66 = a10;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v61 = a6;
    LOBYTE(v62) = 0;
    v63 = 0;
    v64 = 0;
    v65 = a9;
    v66 = a10;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  Context = mlir::Attribute::getContext(&v61);
  if (v63 == 1)
  {
    v63 = 0;
  }

  mlir::OperationName::OperationName(&v62, "mps.dynamic_shape_cast", 22, Context);
  v63 = 1;
LABEL_10:
  v67 = a4;
  v68 = a5;
  v58 = a4;
  v59 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v58, 0);
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
  v52[0] = v17;
  v52[1] = v18;
  if (!v17)
  {
LABEL_19:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v17);
    goto LABEL_20;
  }

  if (!mlir::ElementsAttr::getShapedType(v52) || v64)
  {
    v17 = v52[0];
    goto LABEL_19;
  }

  mlir::ShapedType::getShape(v52);
  if (!v19)
  {
    v28 = v68;
    v58 = v67;
    v59 = 1;
    v29 = mlir::ValueRange::offset_base(&v58, 1);
    if (v28 != v59)
    {
      v58 = v29;
      v59 = 0;
      if (mlir::ValueRange::dereference_iterator(&v58, 0))
      {
        v30 = mlir::getElementTypeOrSelf(v52[0]);
        return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v30);
      }
    }

    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52[0]);
    return 1;
  }

  v58 = v60;
  v59 = 0x600000000;
  v20 = v68;
  __b = v67;
  v56 = 1;
  v21 = mlir::ValueRange::offset_base(&__b, 1);
  if (v20 != v56)
  {
    __b = v21;
    v56 = 0;
    v31 = mlir::ValueRange::dereference_iterator(&__b, 0);
    if ((mlir::matchConstantWithIntVector<long long>(v31, &v58) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_29:
    __b = v57;
    v56 = 0x600000000;
    v32 = v58;
    v33 = v59;
    mlir::ShapedType::getShape(v52);
    {
      Shape = mlir::ShapedType::getShape(v52);
      v36 = mlir::ShapedType::getShape(v52);
      llvm::SmallVector<long long,6u>::SmallVector<long long const*,void>(&v53, Shape, (v36 + 8 * v37));
      v38 = v53;
      if (v56)
      {
        v39 = __b;
        v40 = 8 * v56;
        do
        {
          v41 = *v39++;
          *(v38 + 8 * v41) = 0x8000000000000000;
          v40 -= 8;
        }

        while (v40);
      }

      v42 = mlir::ShapedType::clone(v52, v38, DWORD2(v53));
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v42);
      if (v53 != &v54)
      {
        free(v53);
      }

      result = 1;
    }

    else
    {
      v53 = v67;
      v46 = mlir::ValueRange::dereference_iterator(&v53, 0);
      v47 = mlir::getElementTypeOrSelf(v46);
      result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v47);
    }

    if (__b != v57)
    {
      v48 = result;
      free(__b);
      result = v48;
    }

    goto LABEL_48;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v58))
  {
    goto LABEL_29;
  }

LABEL_16:
  mlir::ShapedType::getShape(v52);
  v23 = v22;
  __b = v57;
  HIDWORD(v56) = 6;
  if (v22 < 7)
  {
    if (v22)
    {
      memset_pattern16(v57, &unk_1A75D94C0, 8 * v22);
    }

    v24 = v57;
  }

  else
  {
    LODWORD(v56) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v57, v22, 8);
    v24 = __b;
    memset_pattern16(__b, &unk_1A75D94C0, 8 * v23);
  }

  LODWORD(v56) = v23;
  *&v53 = v24;
  *(&v53 + 1) = v23;
  v54 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v52);
  v44 = mlir::ShapedType::cloneWith(v52, &v53, isSplat);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v51 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
    v44 = v51;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (__b != v57)
  {
    free(__b);
  }

  result = 1;
LABEL_48:
  if (v58 != v60)
  {
    v49 = result;
    free(v58);
    return v49;
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::getPositiveAxes(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v69[6] = *MEMORY[0x1E69E9840];
  v67 = v69;
  v68 = 0x600000000;
  if (!a2)
  {
    goto LABEL_52;
  }

  v13 = 8 * a2;
  do
  {
    v17 = *a1;
    if (v18)
    {
      v14 = a4[2];
      if (v14 >= a4[3])
      {
        v19 = PositiveAxis;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 4, v14 + 1, 8);
        PositiveAxis = v19;
        v14 = a4[2];
      }

      v15 = a4;
    }

    else
    {
      v14 = v68;
      v15 = &v67;
      if (v68 >= HIDWORD(v68))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v68 + 1, 8);
        v14 = v68;
      }

      PositiveAxis = v17;
    }

    *(*v15 + 8 * v14) = PositiveAxis;
    ++v15[2];
    ++a1;
    v13 -= 8;
  }

  while (v13);
  if (v68)
  {
    if (a6)
    {
      v52 = "invalid axes: ";
      v55 = 259;
      mlir::emitError(a5, &v52, v56);
      v20 = v68;
      if (v68)
      {
        v21 = v67;
        if (v56[0])
        {
          v22 = *v67;
          LODWORD(v52) = 2;
          v53 = v22;
          v23 = &v52;
          v24 = v57;
          if (v58 >= v59)
          {
            if (v57 <= &v52 && v57 + 24 * v58 > &v52)
            {
              v51 = &v52 - v57;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v24 = v57;
              v23 = (v57 + v51);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v23 = &v52;
              v24 = v57;
            }
          }

          v25 = &v24[24 * v58];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          ++v58;
        }

        if (v20 != 1 && v56[0])
        {
          v27 = v21 + 1;
          v28 = 8 * v20 - 16;
LABEL_21:
          LODWORD(v52) = 3;
          v53 = ", ";
          v54 = 2;
          v29 = v57;
          if (v58 >= v59)
          {
            if (v57 <= &v52 && v57 + 24 * v58 > &v52)
            {
              v39 = &v52 - v57;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v29 = v57;
              v30 = (v57 + v39);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v30 = &v52;
              v29 = v57;
            }
          }

          else
          {
            v30 = &v52;
          }

          v31 = &v29[24 * v58];
          v32 = *v30;
          *(v31 + 2) = v30[2];
          *v31 = v32;
          v33 = ++v58;
          if (v56[0])
          {
            v34 = *v27;
            LODWORD(v52) = 2;
            v53 = v34;
            v35 = v57;
            if (v33 >= v59)
            {
              if (v57 <= &v52 && v57 + 24 * v33 > &v52)
              {
                v40 = &v52 - v57;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v33 + 1, 24);
                v35 = v57;
                v36 = (v57 + v40);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v33 + 1, 24);
                v36 = &v52;
                v35 = v57;
              }
            }

            else
            {
              v36 = &v52;
            }

            v37 = &v35[24 * v58];
            v38 = *v36;
            *(v37 + 2) = v36[2];
            *v37 = v38;
            ++v58;
          }

          while (v28)
          {
            ++v27;
            v28 -= 8;
            if (v56[0])
            {
              goto LABEL_21;
            }
          }
        }
      }

      v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v66 == 1)
      {
        if (v65 != &v66)
        {
          free(v65);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v64;
          v44 = __p;
          if (v64 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v64 = v42;
          operator delete(v44);
        }

        v45 = v61;
        if (v61)
        {
          v46 = v62;
          v47 = v61;
          if (v62 != v61)
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
            v47 = v61;
          }

          v62 = v45;
          operator delete(v47);
        }

        if (v57 != v60)
        {
          free(v57);
        }
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
LABEL_52:
    v41 = 1;
  }

  if (v67 != v69)
  {
    free(v67);
  }

  return v41;
}

BOOL mlir::mps::DynamicShapeCastOp::verify(uint64_t **this)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 != &v5[2 * v6] && *v7 == v4)
    {
      v15 = v7[1];
      v32 = v2;
      v33 = v15;
      if (!mlir::ElementsAttr::getShapedType(&v32))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v32 = v2;
  v33 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v32))
  {
    return 1;
  }

LABEL_15:
  v13 = *this;
  if ((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8])
  {
    return 1;
  }

  v45 = v47;
  v46 = 0x600000000;
  if (*(v13 + 17) != 1)
  {
    if ((mlir::matchConstantWithIntVector<long long>(*(v13[9] + 56), &v45) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v43[0] = v44;
    v43[1] = 0x600000000;
    v16 = v45;
    v17 = v46;
    mlir::ShapedType::getShape(&v32);
    {
      result = 1;
    }

    else
    {
      v30 = "failed: could not extract valid positive axes values for the op";
      v31 = 259;
      mlir::OpState::emitOpError(this, &v30, v34);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      v19 = result;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
        result = v19;
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
          result = v19;
        }

        v20 = __p;
        if (__p)
        {
          v21 = v40;
          v22 = __p;
          if (v40 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v40 = v20;
          operator delete(v22);
          result = v19;
        }

        v23 = v37;
        if (v37)
        {
          v24 = v38;
          v25 = v37;
          if (v38 != v37)
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
            v25 = v37;
          }

          v38 = v23;
          operator delete(v25);
          result = v19;
        }

        if (v35 != &v36)
        {
          free(v35);
          result = v19;
        }
      }
    }

    if (v43[0] != v44)
    {
      v28 = result;
      free(v43[0]);
      result = v28;
    }

    goto LABEL_48;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v45))
  {
    goto LABEL_24;
  }

LABEL_20:
  result = 1;
LABEL_48:
  if (v45 != v47)
  {
    v29 = result;
    free(v45);
    return v29;
  }

  return result;
}

BOOL mlir::mps::BroadcastToOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v43[0] = a4;
  v43[1] = a5;
  if (a5 == 2)
  {
    v11 = mlir::ValueRange::dereference_iterator(v43, 0);
    v36[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
    v36[1] = v12;
    v13 = mlir::ValueRange::dereference_iterator(v43, 1);
    v40 = v42;
    v41 = 0x600000000;
    if (v36[0] && (v14 = v13, mlir::ElementsAttr::getShapedType(v36)) && (mlir::matchConstantWithIntVector<long long>(v14, &v40) & 1) != 0)
    {
      Shape = mlir::ShapedType::getShape(v36);
      v37 = v39;
      v38 = 0x600000000;
      if (v16 <= v41)
      {
        v17 = v41;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        v18 = Shape;
        v19 = v16;
        if (v17 < 7)
        {
          v20 = 0;
          v21 = v39;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v17, 8);
          v20 = v38;
          v21 = v37;
        }

        if (v17 != v20)
        {
          bzero(v21 + 8 * v20, 8 * (v17 - v20));
        }

        LODWORD(v38) = v17;
        if (v17)
        {
          v27 = 0;
          v17 = v17;
          v28 = v40 + 8 * v41 - 8;
          v29 = v41 - 1;
          while (1)
          {
            if ((v19 - 1 + v27) < 0)
            {
              v30 = 1;
              if (((v29 + v27) & 0x8000000000000000) == 0)
              {
LABEL_31:
                v31 = *&v28[8 * v27];
                if (v31 == 0x8000000000000000)
                {
                  v32 = v30;
                }

                else
                {
                  v32 = *&v28[8 * v27];
                }

                if (v31 != 1)
                {
                  v30 = v32;
                }
              }
            }

            else
            {
              v30 = *(v18 + 8 * v19 - 8 + 8 * v27);
              if (((v29 + v27) & 0x8000000000000000) == 0)
              {
                goto LABEL_31;
              }
            }

            *(v21 + v17 + v27-- - 1) = v30;
            if (-v17 == v27)
            {
              goto LABEL_38;
            }
          }
        }

        v17 = 0;
      }

      else
      {
        v21 = v39;
      }

LABEL_38:
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36[0]);
      v25 = mlir::RankedTensorType::get(v21, v17, ElementTypeOrSelf, 0);
      if (v37 != v39)
      {
        v34 = v25;
        free(v37);
        v25 = v34;
      }
    }

    else
    {
      v23 = mlir::ValueRange::dereference_iterator(v43, 0);
      v24 = mlir::getElementTypeOrSelf((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8));
      v25 = mlir::UnrankedTensorType::get(v24);
    }

    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      v35 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
      v25 = v35;
      LODWORD(v26) = *(a11 + 8);
    }

    *(*a11 + 8 * v26) = v25;
    ++*(a11 + 8);
    if (v40 != v42)
    {
      free(v40);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::BroadcastGradientArgsOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v55[0] = a4;
  v55[1] = a5;
  if (a5 == 2)
  {
    v12 = mlir::ValueRange::dereference_iterator(v55, 0);
    v52 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
    v53 = v13;
    v14 = mlir::ValueRange::dereference_iterator(v55, 1);
    v50 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v51 = v15;
    if (!mlir::ElementsAttr::getShapedType(&v52) || !mlir::ElementsAttr::getShapedType(&v50))
    {
LABEL_27:
      v54[0] = 0x8000000000000000;
      v43 = mlir::IntegerType::get(a1, 0x20u, 1u);
      v44 = mlir::RankedTensorType::get(v54, 1, v43, 0);
      v45 = 0;
      v46 = *(a11 + 8);
      if (v46 < *(a11 + 12))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    Shape = mlir::ShapedType::getShape(&v52);
    if (!v17)
    {
LABEL_17:
      v30 = mlir::ShapedType::getShape(&v50);
      if (!v31)
      {
        goto LABEL_31;
      }

      v32 = (v31 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v32 >= 3)
      {
        v35 = v32 + 1;
        v36 = (v32 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v34 = (v30 + 8 * v36);
        v37 = (v30 + 16);
        v38 = 0uLL;
        v39 = vnegq_f64(0);
        v40 = v36;
        v41 = 0uLL;
        do
        {
          v38 = vsubq_s64(v38, vceqq_s64(v37[-1], v39));
          v41 = vsubq_s64(v41, vceqq_s64(*v37, v39));
          v37 += 2;
          v40 -= 4;
        }

        while (v40);
        v33 = vaddvq_s64(vaddq_s64(v41, v38));
        if (v35 == v36)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v33 = 0;
        v34 = v30;
      }

      do
      {
        v42 = *v34++;
        if (v42 == 0x8000000000000000)
        {
          ++v33;
        }
      }

      while (v34 != (v30 + 8 * v31));
LABEL_26:
      if (v33)
      {
        goto LABEL_27;
      }

LABEL_31:
      mlir::mps::getBroadcastGradientArgs(v52, v53, v50, v51, v54);
      v47 = v54[0];
      v54[0] = (v54[1] - v54[0]) >> 3;
      v48 = mlir::IntegerType::get(a1, 0x20u, 1u);
      v44 = mlir::RankedTensorType::get(v54, 1, v48, 0);
      v45 = v47;
      v46 = *(a11 + 8);
      if (v46 < *(a11 + 12))
      {
LABEL_28:
        *(*a11 + 8 * v46) = v44;
        ++*(a11 + 8);
        if (!v45)
        {
          return 1;
        }

LABEL_29:
        operator delete(v45);
        return 1;
      }

LABEL_32:
      v49 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v46 + 1, 8);
      v45 = v49;
      *(*a11 + 8 * (*(a11 + 8))++) = v44;
      if (!v49)
      {
        return 1;
      }

      goto LABEL_29;
    }

    v18 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v18 >= 3)
    {
      v22 = v18 + 1;
      v23 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v20 = (Shape + 8 * v23);
      v24 = (Shape + 16);
      v25 = 0uLL;
      v26 = vnegq_f64(0);
      v27 = v23;
      v28 = 0uLL;
      do
      {
        v25 = vsubq_s64(v25, vceqq_s64(v24[-1], v26));
        v28 = vsubq_s64(v28, vceqq_s64(*v24, v26));
        v24 += 2;
        v27 -= 4;
      }

      while (v27);
      v19 = vaddvq_s64(vaddq_s64(v28, v25));
      if (v22 == v23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
      v20 = Shape;
    }

    do
    {
      v29 = *v20++;
      if (v29 == 0x8000000000000000)
      {
        ++v19;
      }
    }

    while (v20 != (Shape + 8 * v17));
LABEL_16:
    if (v19)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::ExpandDimsOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v55[2] = *MEMORY[0x1E69E9840];
  v55[0] = a4;
  v55[1] = a5;
  if (a5 == 2)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v55, 0) + 8);
    v14 = mlir::ValueRange::dereference_iterator(v55, 0);
    v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v48[0] = v15;
    v48[1] = v16;
    if (!v15)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v11, "cannot exapnd_dims a non-shaped type");
    }

    v17 = v13 & 0xFFFFFFFFFFFFFFF8;
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
LABEL_29:
      v33 = *(a11 + 8);
      if (v33 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
        LODWORD(v33) = *(a11 + 8);
      }

      *(*a11 + 8 * v33) = v17;
      ++*(a11 + 8);
      return 1;
    }

    v52 = v54;
    v53 = 0x400000000;
    v18 = mlir::ValueRange::dereference_iterator(v55, 1);
    if ((mlir::matchConstantWithIntVector<long long>(v18, &v52) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
      v25 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v26 = *(a11 + 8);
      if (v26 >= *(a11 + 12))
      {
        v44 = v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
        v25 = v44;
        LODWORD(v26) = *(a11 + 8);
      }

      v27 = 0;
      *(*a11 + 8 * v26) = v25;
      ++*(a11 + 8);
      result = 1;
      v28 = v52;
      if (v52 == v54)
      {
LABEL_28:
        if (!v27)
        {
          return result;
        }

        goto LABEL_29;
      }

LABEL_27:
      v32 = result;
      free(v28);
      result = v32;
      goto LABEL_28;
    }

    v19 = v53;
    mlir::ShapedType::getShape(v48);
    v49 = v51;
    v50 = 0x400000000;
    v21 = v20 + v19;
    if (v20 + v19)
    {
      if (v21 < 5)
      {
        v22 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v21, 8);
        v22 = v50;
      }

      if (v21 != v22)
      {
        bzero(v49 + 8 * v22, 8 * (v21 - v22));
      }

      LODWORD(v50) = v21;
    }

    v47[0] = 0;
    v47[1] = 0;
    v46 = v47;
    if (v53)
    {
      v45 = *v52;
      v29 = ((v21 & (v45 >> 63)) + v45);
      if (v29 >= 0 && v29 < v21)
      {
        operator new();
      }

      v43 = mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(a2, v11, "invalid axis: ", &v45, ", axis ", "must be in range -|rank| <= axis < |rank|");
      v30 = v43;
      v27 = 0;
      std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v46, v47[0]);
      v31 = v49;
      if (v49 != v51)
      {
LABEL_25:
        free(v31);
      }
    }

    else
    {
      v34 = v47;
      Shape = mlir::ShapedType::getShape(v48);
      if (v21 >= 1)
      {
        v36 = 0;
        v37 = v49;
        do
        {
          if (v34 == v47 || v34[4] != v36)
          {
            v38 = *Shape++;
            v37[v36] = v38;
          }

          else
          {
            v37[v36] = 1;
            v39 = v34[1];
            if (v39)
            {
              do
              {
                v34 = v39;
                v39 = *v39;
              }

              while (v39);
            }

            else
            {
              do
              {
                v40 = v34;
                v34 = v34[2];
              }

              while (*v34 != v40);
            }
          }

          v36 = (v36 + 1);
        }

        while (v36 != v21);
      }

      v41 = v49;
      v30 = v50;
      isSplat = mlir::ElementsAttr::isSplat(v48);
      v17 = mlir::RankedTensorType::get(v41, v30, isSplat, 0);
      v27 = 1;
      std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v46, v47[0]);
      v31 = v49;
      if (v49 != v51)
      {
        goto LABEL_25;
      }
    }

    result = v30;
    v28 = v52;
    if (v52 == v54)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

BOOL mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(uint64_t a1, char a2, char *a3, char **a4, char *a5, char *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

uint64_t mlir::mps::ExpandDimsOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v29 = v2;
    v30 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v29))
    {
      return 1;
    }

    goto LABEL_15;
  }

  v23 = v7[1];
  v29 = v2;
  v30 = v23;
  if (!mlir::ElementsAttr::getShapedType(&v29))
  {
    return 1;
  }

LABEL_15:
  v27 = 0;
  v28 = 0;
  v13 = *(*(*this + 9) + 56);
  v26 = &v27;
  v24 = v13;
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, DefiningOp))
  {
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    v15 = *this;
    v16 = v27;
    v17 = v28;
    mlir::ShapedType::getShape(&v29);
    v19 = v18;
    NumElements = mlir::ElementsAttr::getNumElements(v27, v28);
    std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v24, v25[0]);
    return v21;
  }

  return 1;
}

void mlir::mps::SqueezeOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v92 = *MEMORY[0x1E69E9840];
  v90 = a4;
  v91 = a5;
  v13 = *(mlir::ValueRange::dereference_iterator(&v90, 0) + 8);
  v14 = mlir::ValueRange::dereference_iterator(&v90, 0);
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
  v79[0] = v15;
  v79[1] = v16;
  if (!v15)
  {
    mlir::emitOptionalError<char const(&)[41]>(a2, v11, "cannot squeeze a non-shaped type");
    return;
  }

  v17 = v13 & 0xFFFFFFFFFFFFFFF8;
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_86;
  }

  Shape = mlir::ShapedType::getShape(v79);
  v87 = v89;
  v88 = 0x400000000;
  if (v91 != 2)
  {
    v45 = v18;
    if (mlir::ElementsAttr::getShapedType(v79))
    {
      v46 = mlir::ShapedType::getShape(v79);
      if (!v47)
      {
LABEL_48:
        if (v45)
        {
          v49 = 8 * v45;
          do
          {
            v50 = *Shape;
            if (*Shape != 1)
            {
              v51 = v88;
              if (v88 >= HIDWORD(v88))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v88 + 1, 8);
                v51 = v88;
              }

              v87[v51] = v50;
              LODWORD(v88) = v88 + 1;
            }

            ++Shape;
            v49 -= 8;
          }

          while (v49);
        }

        goto LABEL_83;
      }

      v48 = 8 * v47;
      while (*v46 != 0x8000000000000000)
      {
        ++v46;
        v48 -= 8;
        if (!v48)
        {
          goto LABEL_48;
        }
      }
    }

    isSplat = mlir::ElementsAttr::isSplat(v79);
    v53 = mlir::UnrankedTensorType::get(isSplat);
    v54 = *(a11 + 8);
    if (v54 >= *(a11 + 12))
    {
      v75 = v53;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v54 + 1, 8);
      v53 = v75;
      LODWORD(v54) = *(a11 + 8);
    }

    v55 = 0;
    *(*a11 + 8 * v54) = v53;
    ++*(a11 + 8);
    v56 = v87;
    if (v87 == v89)
    {
      goto LABEL_85;
    }

LABEL_84:
    free(v56);
    goto LABEL_85;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v90, 1);
  v78[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v78[1] = v21;
  if (!v78[0])
  {
    mlir::emitOptionalError<char const(&)[41]>(a2, v11, "axes must be a shaped type");
    v55 = 0;
    v56 = v87;
    if (v87 != v89)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v84 = v86;
  v85 = 0x400000000;
  v22 = mlir::ValueRange::dereference_iterator(&v90, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v22, &v84) & 1) == 0)
  {
    if (mlir::ElementsAttr::getShapedType(v78))
    {
      v57 = mlir::ShapedType::getShape(v78);
      if (!v58)
      {
LABEL_66:
        mlir::ShapedType::getShape(v79);
        v61 = v60;
        v62 = mlir::ShapedType::getShape(v78);
        NumElements = mlir::ShapedType::getNumElements(v62, v63);
        v65 = v61 - NumElements;
        if (v61 - NumElements < 0)
        {
          mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a2, v11, "number of squeezed axes must ", "be less than rank of input");
          goto LABEL_80;
        }

        v66 = NumElements;
        LODWORD(v88) = 0;
        llvm::SmallVectorImpl<long long>::resize(&v87, v65);
        if (v61 == v66)
        {
          v67 = 1;
          v68 = v84;
          if (v84 != v86)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        }

        memset_pattern16(v87, &unk_1A75D94C0, 8 * v65);
        v67 = 1;
        v68 = v84;
        if (v84 == v86)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      v59 = 8 * v58;
      while (*v57 != 0x8000000000000000)
      {
        ++v57;
        v59 -= 8;
        if (!v59)
        {
          goto LABEL_66;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
    v70 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v70);
    v67 = 0;
    v68 = v84;
    if (v84 != v86)
    {
      goto LABEL_81;
    }

    goto LABEL_82;
  }

  mlir::ShapedType::getShape(v79);
  v24 = v23;
  v81 = 1;
  memset_pattern16(&v82, &unk_1A75DA410, 0x20uLL);
  if (!v85)
  {
LABEL_27:
    LODWORD(v88) = 0;
    if (v24 >= 1)
    {
      v36 = 0;
      for (i = 0; i != v24; ++i)
      {
        if (v81)
        {
          v38 = &v82;
          v39 = 3;
          v40 = (37 * i) & 3;
          v41 = *(&v82 + v40);
          if (i != v41)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (!v83)
          {
            goto LABEL_38;
          }

          v38 = v82;
          v39 = v83 - 1;
          v40 = (v83 - 1) & (37 * i);
          v41 = *(v82 + v40);
          if (i != v41)
          {
LABEL_34:
            v42 = 1;
            while (v41 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = v40 + v42++;
              v40 = v43 & v39;
              v41 = v38[v40];
              if (i == v41)
              {
                goto LABEL_41;
              }
            }

LABEL_38:
            v44 = *Shape;
            if (v36 >= HIDWORD(v88))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v36 + 1, 8);
              v36 = v88;
            }

            v87[v36] = v44;
            v36 = v88 + 1;
            LODWORD(v88) = v88 + 1;
          }
        }

LABEL_41:
        ++Shape;
      }
    }

    if ((v81 & 1) == 0)
    {
      llvm::deallocate_buffer(v82, (8 * v83));
    }

    v67 = 1;
    v68 = v84;
    if (v84 == v86)
    {
      goto LABEL_82;
    }

LABEL_81:
    free(v68);
    goto LABEL_82;
  }

  v25 = v84;
  v26 = (v84 + 8 * v85);
  while (1)
  {
    v77 = *v25;
    v31 = (v24 & (v77 >> 63)) + v77;
    v76 = v31;
    if (v31 < 0 || v24 <= v31)
    {
      mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(a2, v11, "invalid axis: ", &v77, ", axis must be in range ", "-|rank| <= axis < |rank|");
      if (v81)
      {
        goto LABEL_80;
      }

LABEL_78:
      llvm::deallocate_buffer(v82, (8 * v83));
    }

    if ((v81 & 1) == 0)
    {
      break;
    }

    v27 = &v82;
    v28 = 3;
    v29 = (37 * v31) & 3;
    v30 = *(&v82 + v29);
    if (v31 != v30)
    {
      goto LABEL_16;
    }

LABEL_26:
    if (++v25 == v26)
    {
      goto LABEL_27;
    }
  }

  if (!v83)
  {
    goto LABEL_20;
  }

  v27 = v82;
  v28 = v83 - 1;
  v29 = (v83 - 1) & (37 * v31);
  v30 = *(v82 + v29);
  if (v31 == v30)
  {
    goto LABEL_26;
  }

LABEL_16:
  v32 = 1;
  while (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = v29 + v32++;
    v29 = v33 & v28;
    v30 = v27[v29];
    if (v31 == v30)
    {
      goto LABEL_26;
    }
  }

LABEL_20:
  v34 = Shape[v31];
  if (v34 == 1 || v34 == 0x8000000000000000)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v81, &v76, v80);
    goto LABEL_26;
  }

  mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(a2, v11, "squeezed axis must have length 1, ", "input.shape[", &v76, "] == ", &Shape[v31]);
  if ((v81 & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_80:
  v67 = 0;
  v68 = v84;
  if (v84 != v86)
  {
    goto LABEL_81;
  }

LABEL_82:
  if ((v67 & 1) == 0)
  {
    v55 = 0;
    v56 = v87;
    if (v87 == v89)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_83:
  v71 = v87;
  v72 = v88;
  v73 = mlir::ElementsAttr::isSplat(v79);
  v17 = mlir::RankedTensorType::get(v71, v72, v73, 0);
  v55 = 1;
  v56 = v87;
  if (v87 != v89)
  {
    goto LABEL_84;
  }

LABEL_85:
  if (v55)
  {
LABEL_86:
    v74 = *(a11 + 8);
    if (v74 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v74 + 1, 8);
      LODWORD(v74) = *(a11 + 8);
    }

    *(*a11 + 8 * v74) = v17;
    ++*(a11 + 8);
  }
}

BOOL mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(uint64_t a1, char a2, char *a3, char *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
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
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

BOOL mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(uint64_t a1, char a2, char *a3, char *a4, char **a5, char *a6, char **a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[29],long long &,char const(&)[4],long long>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
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
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

BOOL mlir::mps::SqueezeOp::verify(uint64_t **this)
{
  v75[4] = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 != &v5[2 * v6] && *v7 == v4)
    {
      v17 = v7[1];
      v54 = v2;
      v55 = v17;
      if (mlir::ElementsAttr::getShapedType(&v54))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v54 = v2;
  v55 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v54))
  {
    return 1;
  }

LABEL_15:
  if (*(*this + 17) == 1 || !*((*this)[9] + 56))
  {
    return 1;
  }

  mlir::ShapedType::getShape(&v54);
  v14 = v13;
  Shape = mlir::ShapedType::getShape(&v54);
  v73 = v75;
  v74 = 0x400000000;
  if (*(*this + 17) != 1)
  {
    if ((mlir::matchConstantWithIntVector<long long>(*((*this)[9] + 56), &v73) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v70 = v72;
    v71 = 0x400000000;
    {
      if (v71)
      {
        v18 = v70;
        v19 = 8 * v71;
        while (1)
        {
          v20 = *v18;
          v21 = *(Shape + 8 * *v18);
          if (v21 != 0x8000000000000000 && v21 != 1)
          {
            break;
          }

          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_33;
          }
        }

        v52 = "squeezed axis must have length 1, input.shape[";
        v53 = 259;
        mlir::OpState::emitOpError(this, &v52, v59);
        if (v59[0])
        {
          v56 = 2;
          v57 = v20;
          v25 = &v56;
          v26 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v49 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v26 = v60;
              v25 = (v60 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v25 = &v56;
              v26 = v60;
            }
          }

          v27 = &v26[24 * v61];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          v29 = ++v61;
          if (v59[0])
          {
            v56 = 3;
            v57 = "] == ";
            v58 = 5;
            v30 = &v56;
            v31 = v60;
            if (v29 >= v62)
            {
              if (v60 <= &v56 && v60 + 24 * v29 > &v56)
              {
                v50 = &v56 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v29 + 1, 24);
                v31 = v60;
                v30 = (v60 + v50);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v29 + 1, 24);
                v30 = &v56;
                v31 = v60;
              }
            }

            v32 = &v31[24 * v61];
            v33 = *v30;
            *(v32 + 2) = *(v30 + 2);
            *v32 = v33;
            v34 = ++v61;
            if (v59[0])
            {
              v35 = *(Shape + 8 * v20);
              v56 = 2;
              v57 = v35;
              v36 = &v56;
              v37 = v60;
              if (v34 >= v62)
              {
                if (v60 <= &v56 && v60 + 24 * v34 > &v56)
                {
                  v51 = &v56 - v60;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v34 + 1, 24);
                  v37 = v60;
                  v36 = (v60 + v51);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v34 + 1, 24);
                  v36 = &v56;
                  v37 = v60;
                }
              }

              v38 = &v37[24 * v61];
              v39 = *v36;
              *(v38 + 2) = *(v36 + 2);
              *v38 = v39;
              ++v61;
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        v40 = result;
        if (v59[0])
        {
          mlir::InFlightDiagnostic::report(v59);
          result = v40;
        }

        if (v69)
        {
          if (v68 != &v69)
          {
            free(v68);
            result = v40;
          }

          v41 = __p;
          if (__p)
          {
            v42 = v67;
            v43 = __p;
            if (v67 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v67 = v41;
            operator delete(v43);
            result = v40;
          }

          v44 = v64;
          if (v64)
          {
            v45 = v65;
            v46 = v64;
            if (v65 != v64)
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
              v46 = v64;
            }

            v65 = v44;
            operator delete(v46);
            result = v40;
          }

          if (v60 != v63)
          {
            free(v60);
            result = v40;
          }
        }
      }

      else
      {
LABEL_33:
        result = 1;
      }
    }

    else
    {
      result = 0;
    }

    if (v70 != v72)
    {
      v23 = result;
      free(v70);
      result = v23;
    }

    goto LABEL_37;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v73))
  {
    goto LABEL_24;
  }

LABEL_19:
  result = 1;
LABEL_37:
  if (v73 != v75)
  {
    v24 = result;
    free(v73);
    return v24;
  }

  return result;
}

BOOL mlir::mps::Flatten2DOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v55[0] = a4;
  v55[1] = a5;
  if (a5 == 2)
  {
    v12 = a3;
    v13 = mlir::ValueRange::dereference_iterator(v55, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = 0;
    }

    v43 = v16;
    if (!v16)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v12, "cannot Flatten2D a non-tensor input type.");
    }

    v52 = v54;
    v53 = 0x200000002;
    v17 = mlir::ValueRange::dereference_iterator(v55, 1);
    v47 = v16;
    v54[0] = 0x8000000000000000;
    v54[1] = 0x8000000000000000;
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      Value = mlir::ArrayAttr::getValue(&v47);
      v20 = v19;
      v46 = v19;
      v49 = 0;
      v50 = 0;
      v48 = &v49;
      v51 = v17;
      DefiningOp = mlir::Value::getDefiningOp(&v51);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp))
        {
          SingleInt = mlir::getSingleIntValue<long long>(v49, v50);
          v44 = SingleInt;
          v45 = v23;
          if (v23)
          {
            if (v20 <= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = v20;
            }

            v25 = (v24 & (SingleInt >> 63)) + SingleInt;
            v26 = 2;
            if (v20 > 2)
            {
              v26 = v20;
            }

            if ((v25 & 0x8000000000000000) != 0 || v26 < v25)
            {
              if (!mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a2, v12, "invalid axis (", &v44, ") for shape of rank ", &v46))
              {
                result = 0;
LABEL_41:
                if (v52 != v54)
                {
                  v41 = result;
                  free(v52);
                  return v41;
                }

                return result;
              }
            }

            else
            {
              v27 = v52;
              *v52 = vdupq_n_s64(1uLL);
              if (v25)
              {
                v28 = 1;
                v29 = Value;
                v30 = v25;
                while (1)
                {
                  v32 = *v29++;
                  v31 = v32;
                  if (v32 == 0x8000000000000000)
                  {
                    break;
                  }

                  v28 *= v31;
                  *v27 = v28;
                  if (!--v30)
                  {
                    goto LABEL_32;
                  }
                }

                *v27 = 0x8000000000000000;
              }

LABEL_32:
              if (v25 < v20)
              {
                v34 = 1;
                while (1)
                {
                  v35 = *(Value + 8 * v25);
                  if (v35 == 0x8000000000000000)
                  {
                    break;
                  }

                  v34 *= v35;
                  v27[1] = v34;
                  if (++v25 >= v20)
                  {
                    goto LABEL_38;
                  }
                }

                v27[1] = 0x8000000000000000;
              }
            }
          }
        }
      }
    }

LABEL_38:
    v36 = v52;
    v37 = v53;
    ElementType = mlir::TensorType::getElementType(&v43);
    v39 = mlir::RankedTensorType::get(v36, v37, ElementType, 0);
    v40 = *(a11 + 8);
    if (v40 >= *(a11 + 12))
    {
      v42 = v39;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v40 + 1, 8);
      v39 = v42;
      LODWORD(v40) = *(a11 + 8);
    }

    *(*a11 + 8 * v40) = v39;
    ++*(a11 + 8);
    result = 1;
    goto LABEL_41;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::ReductionAndOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_and", 17, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionArgMaxOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v71 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v55 = a6;
  LOBYTE(v56) = 0;
  v57 = 0;
  v58 = v16;
  v59 = a9;
  v60 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v55);
    if (v57 == 1)
    {
      v57 = 0;
    }

    mlir::OperationName::OperationName(&v56, "mps.reduction_argmax", 20, Context);
    v57 = 1;
  }

  v61 = a4;
  v62 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(this, a2);
    v18 = v58;
    v19 = v61;
    v20 = v62;
    ElementTypeOrSelf = mlir::IntegerType::get(this, 0x20u, 1u);
    v69 = v19;
    v70 = v20;
    v22 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v23 = 0;
    if (v70 >= 2)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(*v24 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 0;
    }

    v54 = v24;
    if (!v24)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = ElementTypeOrSelf;
    if (ElementTypeOrSelf)
    {
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      ElementType = mlir::TensorType::getElementType(&v54);
      if (v23)
      {
LABEL_19:
        if (mlir::TensorType::hasRank(&v54))
        {
          v28 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*v28 + 136);
          if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v28 = 0;
          }

          v53 = v28;
          if (!v28)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
          }

          if (mlir::TensorType::hasRank(&v53))
          {
            mlir::ArrayAttr::getValue(&v53);
            if (v31 >= 2)
            {
              return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
            }
          }

          __b = v68;
          v67 = 0x600000000;
          if (mlir::matchConstantWithIntVector<long long>(v23, &__b))
          {
            __p = v65;
            v64 = 0x600000000;
            Value = mlir::ArrayAttr::getValue(&v54);
            {
              v41 = __p;
              v42 = v64;
              if (!ElementTypeOrSelf)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v54);
              }

              v43 = mlir::RankedTensorType::get(v41, v42, ElementTypeOrSelf, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
              result = 1;
            }

            else
            {
              result = 0;
            }

            if (__p != v65)
            {
              v50 = result;
              free(__p);
              result = v50;
            }

            goto LABEL_70;
          }

          if (!mlir::TensorType::hasRank(&v53))
          {
            goto LABEL_59;
          }

          mlir::ArrayAttr::getValue(&v53);
          if (!v44)
          {
            goto LABEL_64;
          }

          if (v44 == 1)
          {
            v45 = *mlir::ArrayAttr::getValue(&v53) == 1;
            if (!*mlir::ArrayAttr::getValue(&v53))
            {
              v46 = v54;
LABEL_63:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
LABEL_66:
              result = 1;
LABEL_70:
              if (__b != v68)
              {
                v51 = result;
                free(__b);
                return v51;
              }

              return result;
            }
          }

          else
          {
LABEL_59:
            v45 = 0;
          }

          if (!v18 && !v45)
          {
            v46 = mlir::UnrankedTensorType::get(ElementType);
            goto LABEL_63;
          }

LABEL_64:
          mlir::ArrayAttr::getValue(&v54);
          std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v48, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
          v49 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49);
          if (__p)
          {
            v64 = __p;
            operator delete(__p);
          }

          goto LABEL_66;
        }

LABEL_36:
        v33 = ElementType;
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v37 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      goto LABEL_38;
    }

    if (mlir::TensorType::hasRank(&v54))
    {
      mlir::ArrayAttr::getValue(&v54);
      v35 = v34;
      __b = v68;
      HIDWORD(v67) = 4;
      if (v34 < 5)
      {
        if (v34)
        {
          memset_pattern16(v68, &unk_1A75989B0, 8 * v34);
        }

        v36 = v68;
      }

      else
      {
        LODWORD(v67) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v34, 8);
        v36 = __b;
        memset_pattern16(__b, &unk_1A75989B0, 8 * v35);
      }

      LODWORD(v67) = v35;
      v37 = mlir::RankedTensorType::get(v36, v35, ElementType, 0);
      if (__b != v68)
      {
        v47 = v37;
        free(__b);
        v37 = v47;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v33 = mlir::Float32Type::get(this, a2);
LABEL_37:
  v37 = mlir::UnrankedTensorType::get(v33);
LABEL_38:
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    v52 = v37;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v38 + 1, 8);
    v37 = v52;
    LODWORD(v38) = *(a11 + 8);
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionArgMinOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v71 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v55 = a6;
  LOBYTE(v56) = 0;
  v57 = 0;
  v58 = v16;
  v59 = a9;
  v60 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v55);
    if (v57 == 1)
    {
      v57 = 0;
    }

    mlir::OperationName::OperationName(&v56, "mps.reduction_argmin", 20, Context);
    v57 = 1;
  }

  v61 = a4;
  v62 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(this, a2);
    v18 = v58;
    v19 = v61;
    v20 = v62;
    ElementTypeOrSelf = mlir::IntegerType::get(this, 0x20u, 1u);
    v69 = v19;
    v70 = v20;
    v22 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v23 = 0;
    if (v70 >= 2)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(*v24 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 0;
    }

    v54 = v24;
    if (!v24)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = ElementTypeOrSelf;
    if (ElementTypeOrSelf)
    {
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      ElementType = mlir::TensorType::getElementType(&v54);
      if (v23)
      {
LABEL_19:
        if (mlir::TensorType::hasRank(&v54))
        {
          v28 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*v28 + 136);
          if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v28 = 0;
          }

          v53 = v28;
          if (!v28)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
          }

          if (mlir::TensorType::hasRank(&v53))
          {
            mlir::ArrayAttr::getValue(&v53);
            if (v31 >= 2)
            {
              return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
            }
          }

          __b = v68;
          v67 = 0x600000000;
          if (mlir::matchConstantWithIntVector<long long>(v23, &__b))
          {
            __p = v65;
            v64 = 0x600000000;
            Value = mlir::ArrayAttr::getValue(&v54);
            {
              v41 = __p;
              v42 = v64;
              if (!ElementTypeOrSelf)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v54);
              }

              v43 = mlir::RankedTensorType::get(v41, v42, ElementTypeOrSelf, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
              result = 1;
            }

            else
            {
              result = 0;
            }

            if (__p != v65)
            {
              v50 = result;
              free(__p);
              result = v50;
            }

            goto LABEL_70;
          }

          if (!mlir::TensorType::hasRank(&v53))
          {
            goto LABEL_59;
          }

          mlir::ArrayAttr::getValue(&v53);
          if (!v44)
          {
            goto LABEL_64;
          }

          if (v44 == 1)
          {
            v45 = *mlir::ArrayAttr::getValue(&v53) == 1;
            if (!*mlir::ArrayAttr::getValue(&v53))
            {
              v46 = v54;
LABEL_63:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
LABEL_66:
              result = 1;
LABEL_70:
              if (__b != v68)
              {
                v51 = result;
                free(__b);
                return v51;
              }

              return result;
            }
          }

          else
          {
LABEL_59:
            v45 = 0;
          }

          if (!v18 && !v45)
          {
            v46 = mlir::UnrankedTensorType::get(ElementType);
            goto LABEL_63;
          }

LABEL_64:
          mlir::ArrayAttr::getValue(&v54);
          std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v48, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
          v49 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49);
          if (__p)
          {
            v64 = __p;
            operator delete(__p);
          }

          goto LABEL_66;
        }

LABEL_36:
        v33 = ElementType;
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v37 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      goto LABEL_38;
    }

    if (mlir::TensorType::hasRank(&v54))
    {
      mlir::ArrayAttr::getValue(&v54);
      v35 = v34;
      __b = v68;
      HIDWORD(v67) = 4;
      if (v34 < 5)
      {
        if (v34)
        {
          memset_pattern16(v68, &unk_1A75989B0, 8 * v34);
        }

        v36 = v68;
      }

      else
      {
        LODWORD(v67) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v34, 8);
        v36 = __b;
        memset_pattern16(__b, &unk_1A75989B0, 8 * v35);
      }

      LODWORD(v67) = v35;
      v37 = mlir::RankedTensorType::get(v36, v35, ElementType, 0);
      if (__b != v68)
      {
        v47 = v37;
        free(__b);
        v37 = v47;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v33 = mlir::Float32Type::get(this, a2);
LABEL_37:
  v37 = mlir::UnrankedTensorType::get(v33);
LABEL_38:
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    v52 = v37;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v38 + 1, 8);
    v37 = v52;
    LODWORD(v38) = *(a11 + 8);
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionLogSumExpOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_logsumexp", 23, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionMaxOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_max", 17, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionMeanOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_mean", 18, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionMinOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_min", 17, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionOrOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_or", 16, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionSumOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_sum", 17, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionVarianceOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_variance", 22, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionProdOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v67 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = v15;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "mps.reduction_prod", 18, Context);
    v55 = 1;
    a1 = v16;
  }

  *&v59 = a4;
  *(&v59 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v56;
    v66 = v59;
    v19 = mlir::ValueRange::dereference_iterator(&v66, 0);
    v20 = 0;
    if (*(&v66 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v66, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v52 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v52);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v52))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v51 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v51))
        {
          mlir::ArrayAttr::getValue(&v51);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v65;
        v64 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v62;
          v61 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v52);
          {
            v38 = __p;
            v39 = v61;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
            v41 = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v62)
          {
            v48 = result;
            free(__p);
            result = v48;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v51))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v51);
        if (!v42)
        {
          goto LABEL_60;
        }

        if (v42 == 1)
        {
          v43 = *mlir::ArrayAttr::getValue(&v51) == 1;
          if (!*mlir::ArrayAttr::getValue(&v51))
          {
            v44 = v52;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v44);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v65)
            {
              v49 = result;
              free(__b);
              return v49;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v43 = 0;
        }

        if (!v18 && !v43)
        {
          v44 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v52);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v46, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v47 = mlir::RankedTensorType::get(__p, (v61 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v34 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v52))
      {
        mlir::ArrayAttr::getValue(&v52);
        v32 = v31;
        __b = v65;
        HIDWORD(v64) = 4;
        if (v31 < 5)
        {
          if (v31)
          {
            memset_pattern16(v65, &unk_1A75989B0, 8 * v31);
          }

          v33 = v65;
        }

        else
        {
          LODWORD(v64) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v65, v31, 8);
          v33 = __b;
          memset_pattern16(__b, &unk_1A75989B0, 8 * v32);
        }

        LODWORD(v64) = v32;
        v34 = mlir::RankedTensorType::get(v33, v32, ElementType, 0);
        if (__b != v65)
        {
          v45 = v34;
          free(__b);
          v34 = v45;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v34 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v35 = *(a11 + 8);
  if (v35 >= *(a11 + 12))
  {
    v50 = v34;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
    v34 = v50;
    LODWORD(v35) = *(a11 + 8);
  }

  *(*a11 + 8 * v35) = v34;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::SortOp::inferReturnTypes(mlir::Float32Type *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v44[0] = a4;
  v44[1] = a5;
  if (a5)
  {
    v12 = mlir::ValueRange::dereference_iterator(v44, 0);
    v43[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43[1] = v13;
    if (v43[0] && (mlir::ElementsAttr::getShapedType(v43) & 1) != 0)
    {
      Shape = mlir::ShapedType::getShape(v43);
      v16 = v15;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v43[0]);
      v18 = mlir::RankedTensorType::get(Shape, v16, ElementTypeOrSelf, 0);
      v19 = *(a11 + 8);
      if (v19 >= *(a11 + 12))
      {
        v42 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v19 + 1, 8);
        v18 = v42;
        LODWORD(v19) = *(a11 + 8);
      }

      *(*a11 + 8 * v19) = v18;
      ++*(a11 + 8);
      v20 = mlir::ShapedType::getShape(v43);
      v22 = v21;
      v23 = mlir::IntegerType::get(this, 0x20u, 1u);
      v24 = mlir::RankedTensorType::get(v20, v22, v23, 0);
    }

    else
    {
      v25 = mlir::ValueRange::dereference_iterator(v44, 0);
      v26 = mlir::getElementTypeOrSelf(v25);
      v27 = mlir::UnrankedTensorType::get(v26);
      v28 = *(a11 + 8);
      if (v28 >= *(a11 + 12))
      {
        v39 = v27;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v28 + 1, 8);
        v27 = v39;
        LODWORD(v28) = *(a11 + 8);
      }

      *(*a11 + 8 * v28) = v27;
      ++*(a11 + 8);
      v29 = mlir::IntegerType::get(this, 0x20u, 1u);
      v24 = mlir::UnrankedTensorType::get(v29);
    }

    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      v38 = v24;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v30 + 1, 8);
      v24 = v38;
      v30 = *(a11 + 8);
    }

    *(*a11 + 8 * v30) = v24;
  }

  else
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      v40 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
      v32 = v40;
      LODWORD(v33) = *(a11 + 8);
    }

    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    v34 = mlir::IntegerType::get(this, 0x20u, 1u);
    v35 = mlir::UnrankedTensorType::get(v34);
    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v41 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v36 + 1, 8);
      v35 = v41;
      LODWORD(v36) = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v35;
  }

  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::NormalizationOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v36[0] = a4;
  v36[1] = a5;
  if (a5 == 5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v36, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(mlir::ValueRange::dereference_iterator(v36, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(mlir::ValueRange::dereference_iterator(v36, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(mlir::ValueRange::dereference_iterator(v36, 3) + 8) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(mlir::ValueRange::dereference_iterator(v36, 4) + 8) & 0xFFFFFFFFFFFFFFF8;
    v33 = v35;
    v35[0] = v13;
    v35[1] = v14;
    v35[2] = v15;
    v35[3] = v16;
    v35[4] = v17;
    v34 = 0x600000005;
    v30 = v32;
    v31 = 0x300000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, 5uLL, 16);
    v18 = v31;
    v19 = v30;
    v20 = v30 + 16 * v31;
    v20[2] = xmmword_1E77C4F90;
    v20[3] = *&off_1E77C4FA0;
    *v20 = xmmword_1E77C4F70;
    v20[1] = *&off_1E77C4F80;
    v20[4] = xmmword_1E77C4FB0;
    v21 = (v18 + 5);
    LODWORD(v31) = v18 + 5;
    mlir::ValueRange::ValueRange(v29, v33, v34);
    if (v23)
    {
      v24 = *(a11 + 8);
      if (v24 >= *(a11 + 12))
      {
        v28 = BroadcastedOperandsType;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v24 + 1, 8);
        BroadcastedOperandsType = v28;
        LODWORD(v24) = *(a11 + 8);
      }

      *(*a11 + 8 * v24) = BroadcastedOperandsType;
      ++*(a11 + 8);
      v25 = 1;
      v26 = v30;
      if (v30 == v32)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v25 = 0;
      v26 = v30;
      if (v30 == v32)
      {
LABEL_12:
        if (v33 != v35)
        {
          free(v33);
        }

        return v25;
      }
    }

    free(v26);
    goto LABEL_12;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

void *mlir::mps::anonymous namespace::getBroadcastedOperandsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = a2;
  v11 = mlir::TypeRange::dereference_iterator(a5, 0);
  v19 = v11;
  if (a6 >= 2)
  {
    v12 = 1;
    v13 = mlir::TypeRange::dereference_iterator(a5, 1);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v11, v13, 0);
    if (BroadcastedType)
    {
      v15 = 2;
      while (1)
      {
        v11 = BroadcastedType;
        if (a6 == v15)
        {
          break;
        }

        v16 = mlir::TypeRange::dereference_iterator(a5, v15);
        BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v11, v16, 0);
        ++v15;
        if (!BroadcastedType)
        {
          v12 = v15 - 1;
          goto LABEL_8;
        }
      }

      v19 = BroadcastedType;
    }

    else
    {
      v11 = v19;
LABEL_8:
      v19 = v11;
      v18 = mlir::TypeRange::dereference_iterator(a5, v12);
      mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(a1, v9, "output type ", &v19, " and ", (a3 + 16 * v12), " type ", &v18, " are not broadcast compatible");
      return 0;
    }
  }

  return v11;
}

BOOL mlir::mps::NormalizationOp::verify(uint64_t **this)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v2)
  {
    v47 = "invalid type for input.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v60;
      v21 = __p;
      if (v60 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v60 = v19;
      operator delete(v21);
    }

    v22 = v57;
    if (v57)
    {
      v23 = v58;
      v24 = v57;
      if (v58 != v57)
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
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v3 = v2;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v4)
  {
    v47 = "invalid type for mean.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v60;
      v29 = __p;
      if (v60 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v60 = v27;
      operator delete(v29);
    }

    v22 = v57;
    if (v57)
    {
      v30 = v58;
      v24 = v57;
      if (v58 != v57)
      {
        do
        {
          v32 = *--v30;
          v31 = v32;
          *v30 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v30 != v22);
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v5 = v4;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v6)
  {
    v47 = "invalid type for variance.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v60;
      v35 = __p;
      if (v60 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v60 = v33;
      operator delete(v35);
    }

    v22 = v57;
    if (v57)
    {
      v36 = v58;
      v24 = v57;
      if (v58 != v57)
      {
        do
        {
          v38 = *--v36;
          v37 = v38;
          *v36 = 0;
          if (v38)
          {
            MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
          }
        }

        while (v36 != v22);
        goto LABEL_74;
      }

LABEL_75:
      v58 = v22;
      operator delete(v24);
    }

LABEL_76:
    v18 = v54;
    if (v54 == v56)
    {
      return v17;
    }

    goto LABEL_77;
  }

  v7 = v6;
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v8)
  {
    v47 = "invalid type for gamma.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v60;
      v41 = __p;
      if (v60 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v60 = v39;
      operator delete(v41);
    }

    v22 = v57;
    if (v57)
    {
      v42 = v58;
      v24 = v57;
      if (v58 != v57)
      {
        do
        {
          v44 = *--v42;
          v43 = v44;
          *v42 = 0;
          if (v44)
          {
            MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
          }
        }

        while (v42 != v22);
LABEL_74:
        v24 = v57;
        goto LABEL_75;
      }

      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*((*this)[9] + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v10)
  {
    v51 = &v53;
    v53 = v3;
    v54 = v5;
    v55 = v7;
    v56[0] = v9;
    v56[1] = v10;
    v52 = 0x600000005;
    v47 = v49;
    v48 = 0x300000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, 5uLL, 16);
    v11 = v48;
    v12 = v47;
    v13 = v47 + 16 * v48;
    v13[2] = xmmword_1E77C4F90;
    v13[3] = *&off_1E77C4FA0;
    *v13 = xmmword_1E77C4F70;
    v13[1] = *&off_1E77C4F80;
    v13[4] = xmmword_1E77C4FB0;
    v14 = (v11 + 5);
    LODWORD(v48) = v11 + 5;
    v15 = (*this)[3];
    mlir::ValueRange::ValueRange(v46, v51, v52);
    v17 = v16;
    if (v47 != v49)
    {
      free(v47);
    }

    v18 = v51;
    if (v51 == &v53)
    {
      return v17;
    }

LABEL_77:
    free(v18);
    return v17;
  }

  v47 = "invalid type for beta.";
  v50 = 259;
  mlir::OpState::emitOpError(this, &v47, &v51);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
  }

  if (v62 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v52);
  }

  return v17;
}

BOOL mlir::mps::InstanceNormOp::verify(uint64_t **this)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = (*this)[9];
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v42 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v41 = v5;
  if (v2)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v43 = "input and axes type must be a tensor type";
    v46 = 259;
    mlir::OpState::emitOpError(this, &v43, v47);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v56 != 1)
    {
      return v9;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v54;
      v12 = __p;
      if (v54 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v54 = v10;
      operator delete(v12);
    }

    v13 = v51;
    if (!v51)
    {
      goto LABEL_64;
    }

    v14 = v52;
    v15 = v51;
    if (v52 == v51)
    {
      goto LABEL_63;
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
    goto LABEL_62;
  }

  if (mlir::TensorType::hasRank(&v41))
  {
    mlir::ArrayAttr::getValue(&v41);
    if (v20 >= 2)
    {
      v43 = "axes tensor must have rank 0 or 1";
      v46 = 259;
      mlir::OpState::emitOpError(this, &v43, v47);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v56 != 1)
      {
        return v9;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v54;
        v23 = __p;
        if (v54 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v54 = v21;
        operator delete(v23);
      }

      v13 = v51;
      if (!v51)
      {
        goto LABEL_64;
      }

      v24 = v52;
      v15 = v51;
      if (v52 == v51)
      {
LABEL_63:
        v52 = v13;
        operator delete(v15);
LABEL_64:
        v35 = v49;
        if (v49 != &v50)
        {
LABEL_65:
          free(v35);
          return v9;
        }

        return v9;
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

      while (v24 != v13);
LABEL_62:
      v15 = v51;
      goto LABEL_63;
    }
  }

  if (!mlir::TensorType::hasRank(&v41) || !mlir::TensorType::hasRank(&v42) || (mlir::ArrayAttr::getValue(&v41), v27 < 1) || (v28 = *mlir::ArrayAttr::getValue(&v41), mlir::ArrayAttr::getValue(&v42), v28 <= v29))
  {
    v43 = v45;
    v44 = 0x400000000;
    if (!mlir::TensorType::hasRank(&v42) || (mlir::matchConstantWithIntVector<long long>(*((*this)[9] + 56), &v43) & 1) == 0)
    {
      goto LABEL_60;
    }

    v47[0] = &v48;
    v47[1] = 0x600000000;
    v31 = v43;
    v32 = v44;
    mlir::ArrayAttr::getValue(&v42);
    if (v47[0] != &v48)
    {
      free(v47[0]);
    }

    if (!PositiveAxes)
    {
      v9 = 0;
      v35 = v43;
      if (v43 == v45)
      {
        return v9;
      }
    }

    else
    {
LABEL_60:
      v9 = 1;
      v35 = v43;
      if (v43 == v45)
      {
        return v9;
      }
    }

    goto LABEL_65;
  }

  v38 = *mlir::ArrayAttr::getValue(&v41);
  mlir::ArrayAttr::getValue(&v42);
  v37 = v30;
  llvm::formatv<long long,long long>(&v43, "axes tensor shape {0} is incompatible with input rank of {1}", &v38, &v37);
  v40 = 263;
  v39 = &v43;
  mlir::OpState::emitOpError(this, &v39, v47);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v47);
  return v9;
}

const char *llvm::formatv<long long,long long>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char **a3@<X1>, const char **a4@<X2>)
{
  v4 = __s;
  v6 = *a3;
  v7 = *a4;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v4;
  a1[1] = __s;
  a1[9] = (a1 + 5);
  a1[2] = (a1 + 9);
  a1[3] = 2;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A17838;
  a1[6] = v6;
  a1[7] = &unk_1F1A17838;
  a1[8] = v7;
  a1[10] = (a1 + 7);
  return __s;
}

BOOL mlir::mps::inferConv2DParams(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15)
{
  v114 = a2;
  v123[4] = *MEMORY[0x1E69E9840];
  v121 = v123;
  v122 = 0x400000000;
  v118 = v120;
  v119 = 0x400000000;
  v115 = v117;
  v116 = 0x800000000;
  if (a5)
  {
    mlir::getIntValues<long long>(a5, a6, &v121, 1);
  }

  if (a7)
  {
    mlir::getIntValues<long long>(a7, a8, &v118, 1);
  }

  if (a9)
  {
    mlir::getIntValues<long long>(a9, a10, &v115, 1);
  }

  if (v119)
  {
    v20 = v118;
    v21 = 8 * v119;
    do
    {
      if (*v20 <= 0)
      {
        v30 = "dilationRate must be > 0 for all dimensions";
        goto LABEL_20;
      }

      ++v20;
      v21 -= 8;
    }

    while (v21);
  }

  v22 = a15;
  v23 = a13;
  if (a11 == 1)
  {
    v34 = *(a12 + 8);
    if (v34 == 4)
    {
      v35 = a13[2];
      v36 = v35 > 4;
      if (v35 == 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v34 <= 4)
      {
        if (*(a12 + 12) > 3u || (llvm::SmallVectorBase<unsigned int>::grow_pod(a12, (a12 + 16), 4uLL, 8), v23 = a13, v34 = *(a12 + 8), v34 != 4))
        {
          v42 = v23;
          bzero((*a12 + 8 * v34), 32 - 8 * v34);
          v23 = v42;
        }
      }

      *(a12 + 8) = 4;
      v35 = v23[2];
      v36 = v35 > 4;
      if (v35 == 4)
      {
LABEL_25:
        v37 = *(a14 + 8);
        v38 = v37 > 2;
        if (v37 == 2)
        {
          goto LABEL_26;
        }

LABEL_162:
        if (!v38)
        {
          v112 = v23;
          v105 = v37;
          v106 = v37;
          if (*(a14 + 12) <= 1u)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a14, (a14 + 16), 2uLL, 8);
            v105 = *(a14 + 8);
            v106 = *(a14 + 8);
          }

          memset_pattern16((*a14 + 8 * v105), &unk_1A75989B0, 16 - 8 * v37);
          v23 = v112;
          *(a14 + 8) = v106 - v37 + 2;
          v39 = *(v22 + 8);
          v40 = v39 > 2;
          if (v39 == 2)
          {
            goto LABEL_112;
          }

          goto LABEL_27;
        }

        *(a14 + 8) = 2;
        v39 = *(v22 + 8);
        v40 = v39 > 2;
        if (v39 != 2)
        {
LABEL_27:
          if (v40)
          {
            v41 = 2;
          }

          else
          {
            v111 = v23;
            v76 = v39;
            v77 = v39;
            if (*(v22 + 12) <= 1u)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v22, (v22 + 16), 2uLL, 8);
              v76 = *(v22 + 8);
              v77 = *(v22 + 8);
            }

            memset_pattern16((*v22 + 8 * v76), &unk_1A75989B0, 16 - 8 * v39);
            v41 = v77 - v39 + 2;
            v23 = v111;
          }

          *(v22 + 8) = v41;
        }

LABEL_112:
        v78 = *a12;
        *v78 = *a3;
        v78[1] = a3[3];
        v78[2] = a3[1];
        v78[3] = a3[2];
        if (a5 && v122)
        {
          v79 = 0;
          v80 = v121;
          v81 = *a14;
          v82 = *a14 + 8;
          for (i = 8 * v122; i; i -= 8)
          {
            v85 = v80[v79];
            if (v79 <= 1)
            {
              if (!v79)
              {
                if (v85 != 1)
                {
                  v30 = "stride != 1 not supported for dim 3";
                  goto LABEL_20;
                }

                goto LABEL_118;
              }

              v84 = v81;
              if (v79 != 1)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v84 = v82;
              if (v79 != 2)
              {
                if (v79 != 3)
                {
LABEL_171:
                  v31 = mlir::emitOptionalError<char const(&)[41]>(a1, v114, "stride num dimensions should be <= 4");
                  goto LABEL_21;
                }

                if (v85 != 1)
                {
                  v30 = "stride != 1 not supported for dim 0";
                  goto LABEL_20;
                }

                goto LABEL_118;
              }
            }

            *v84 = v85;
LABEL_118:
            ++v79;
          }
        }

        if (a7 && v119)
        {
          v86 = 0;
          v87 = v118;
          v88 = *v22;
          v89 = *v22 + 8;
          for (j = 8 * v119; j; j -= 8)
          {
            v92 = v87[v86];
            if (v86 <= 1)
            {
              if (!v86)
              {
                if (v92 != 1)
                {
LABEL_139:
                  v30 = "dilationRate != 1 not supported for dim 3";
                  goto LABEL_20;
                }

                goto LABEL_132;
              }

              v91 = v88;
              if (v86 != 1)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v91 = v89;
              if (v86 != 2)
              {
                if (v86 != 3)
                {
LABEL_170:
                  v31 = mlir::emitOptionalError<char const(&)[39]>(a1, v114, "dilationRate num dimensions should be <= 4");
                  goto LABEL_21;
                }

                if (v92 != 1)
                {
                  v30 = "dilationRate != 1 not supported for dim 0";
                  goto LABEL_20;
                }

                goto LABEL_132;
              }
            }

            *v91 = v92;
LABEL_132:
            ++v86;
          }
        }

        if (!a9 || !v116)
        {
          goto LABEL_152;
        }

        v93 = 0;
        v94 = v115;
        v95 = *v23;
        v96 = *v23 + 24;
        v97 = *v23 + 16;
        v98 = *v23 + 8;
        v99 = 8 * v116;
        while (1)
        {
          if (v93 > 3)
          {
            v100 = v97;
            if (v93 != 4)
            {
              if (v93 != 5)
              {
                goto LABEL_144;
              }

              v100 = v96;
            }
          }

          else
          {
            v100 = v95;
            if (v93 != 2)
            {
              v100 = v98;
              if (v93 != 3)
              {
                goto LABEL_144;
              }
            }
          }

          *v100 = v94[v93];
LABEL_144:
          ++v93;
          v99 -= 8;
          if (!v99)
          {
            goto LABEL_152;
          }
        }
      }
    }

    if (v36)
    {
      v23[2] = 4;
      v37 = *(a14 + 8);
      v38 = v37 > 2;
      if (v37 != 2)
      {
        goto LABEL_162;
      }
    }

    else
    {
      v102 = v35;
      v103 = v35;
      if (v23[3] <= 3)
      {
        v107 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v23 + 4, 4uLL, 8);
        v23 = v107;
        v102 = v107[2];
        v103 = v107[2];
      }

      v104 = v23;
      bzero((*v23 + 8 * v102), 32 - 8 * v35);
      v23 = v104;
      v22 = a15;
      v23[2] = v103 - v35 + 4;
      v37 = *(a14 + 8);
      v38 = v37 > 2;
      if (v37 != 2)
      {
        goto LABEL_162;
      }
    }

LABEL_26:
    v39 = *(v22 + 8);
    v40 = v39 > 2;
    if (v39 != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_112;
  }

  if (a11)
  {
    v32 = mlir::emitOptionalError<char const(&)[41]>(a1, v114, "Unsupported dataLayout");
    v33 = v115;
    if (v115 == v117)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v24 = a13[2];
  if (v24 == 4)
  {
    v25 = *(a14 + 8);
    v26 = v25 > 2;
    if (v25 == 2)
    {
      goto LABEL_15;
    }

LABEL_47:
    if (v26)
    {
      *(a14 + 8) = 2;
      v27 = *(v22 + 8);
      v28 = v27 > 2;
      if (v27 != 2)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v108 = v23;
      v46 = v25;
      v47 = v25;
      if (*(a14 + 12) <= 1u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a14, (a14 + 16), 2uLL, 8);
        v46 = *(a14 + 8);
        v47 = *(a14 + 8);
      }

      memset_pattern16((*a14 + 8 * v46), &unk_1A75989B0, 16 - 8 * v25);
      v23 = v108;
      *(a14 + 8) = v47 - v25 + 2;
      v27 = *(v22 + 8);
      v28 = v27 > 2;
      if (v27 != 2)
      {
        goto LABEL_54;
      }
    }

LABEL_16:
    if (*(a12 + 12) <= 3u)
    {
      goto LABEL_17;
    }

LABEL_61:
    if (!a4)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  if (v24 <= 4)
  {
    v43 = a13[2];
    v44 = a13[2];
    if (a13[3] <= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a13, a13 + 4, 4uLL, 8);
      v23 = a13;
      v43 = a13[2];
      v44 = a13[2];
    }

    v45 = v23;
    bzero((*v23 + 8 * v43), 32 - 8 * v24);
    v23 = v45;
    v22 = a15;
    v23[2] = v44 - v24 + 4;
    v25 = *(a14 + 8);
    v26 = v25 > 2;
    if (v25 != 2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    a13[2] = 4;
    v25 = *(a14 + 8);
    v26 = v25 > 2;
    if (v25 != 2)
    {
      goto LABEL_47;
    }
  }

LABEL_15:
  v27 = *(v22 + 8);
  v28 = v27 > 2;
  if (v27 == 2)
  {
    goto LABEL_16;
  }

LABEL_54:
  if (v28)
  {
    *(v22 + 8) = 2;
    if (*(a12 + 12) > 3u)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v109 = v23;
    v48 = v27;
    v49 = v27;
    if (*(v22 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v22, (v22 + 16), 2uLL, 8);
      v48 = *(v22 + 8);
      v49 = *(v22 + 8);
    }

    memset_pattern16((*v22 + 8 * v48), &unk_1A75989B0, 16 - 8 * v27);
    v23 = v109;
    *(v22 + 8) = v49 - v27 + 2;
    if (*(a12 + 12) > 3u)
    {
      goto LABEL_61;
    }
  }

LABEL_17:
  v29 = v23;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a12, (a12 + 16), 4uLL, 8);
  v23 = v29;
  if (!a4)
  {
    goto LABEL_66;
  }

LABEL_62:
  v50 = *(a12 + 8);
  v51 = 8 * a4;
  do
  {
    v52 = *a3;
    if (v50 >= *(a12 + 12))
    {
      v110 = v22;
      v53 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a12, (a12 + 16), v50 + 1, 8);
      v23 = v53;
      v22 = v110;
      v50 = *(a12 + 8);
    }

    *(*a12 + 8 * v50) = v52;
    v50 = *(a12 + 8) + 1;
    *(a12 + 8) = v50;
    ++a3;
    v51 -= 8;
  }

  while (v51);
LABEL_66:
  if (!a5 || !v122)
  {
LABEL_81:
    if (a7 && v119)
    {
      v61 = 0;
      v62 = v118;
      v63 = *v22;
      v64 = *v22 + 8;
      for (k = 8 * v119; k; k -= 8)
      {
        v66 = v62[v61];
        if (v61 > 1)
        {
          v67 = v63;
          if (v61 != 2)
          {
            v67 = v64;
            if (v61 != 3)
            {
              goto LABEL_170;
            }
          }

          *v67 = v66;
        }

        else if (v61)
        {
          if (v61 != 1)
          {
            goto LABEL_170;
          }

          if (v66 != 1)
          {
            v30 = "dilationRate != 1 not supported for dim 2";
            goto LABEL_20;
          }
        }

        else if (v66 != 1)
        {
          goto LABEL_139;
        }

        ++v61;
      }
    }

    if (a9 && v116)
    {
      v68 = 0;
      v69 = v115;
      v70 = *v23;
      v71 = *v23 + 24;
      v72 = *v23 + 16;
      v73 = *v23 + 8;
      for (m = 8 * v116; m; m -= 8)
      {
        if (v68 > 5)
        {
          v75 = v72;
          if (v68 != 6)
          {
            if (v68 != 7)
            {
              goto LABEL_100;
            }

            v75 = v71;
          }
        }

        else
        {
          v75 = v70;
          if (v68 != 4)
          {
            v75 = v73;
            if (v68 != 5)
            {
              goto LABEL_100;
            }
          }
        }

        *v75 = v69[v68];
LABEL_100:
        ++v68;
      }
    }

LABEL_152:
    v32 = 1;
    v33 = v115;
    if (v115 == v117)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v54 = 0;
  v55 = v121;
  v56 = *a14;
  v57 = *a14 + 8;
  v58 = 8 * v122;
  while (1)
  {
    v59 = v55[v54];
    if (v54 > 1)
    {
      break;
    }

    if (v54)
    {
      if (v54 != 1)
      {
        goto LABEL_172;
      }

      if (v59 != 1)
      {
        v30 = "stride != 1 not supported for dim 2 of NCHW";
        goto LABEL_20;
      }
    }

    else if (v59 != 1)
    {
      v30 = "stride != 1 not supported for dim 3 of NCHW";
      goto LABEL_20;
    }

LABEL_70:
    ++v54;
    v58 -= 8;
    if (!v58)
    {
      goto LABEL_81;
    }
  }

  v60 = v56;
  if (v54 == 2 || (v60 = v57, v54 == 3))
  {
    *v60 = v59;
    goto LABEL_70;
  }

LABEL_172:
  v30 = "stride attr num dimensions should be <= 4";
LABEL_20:
  v31 = mlir::emitOptionalError<char const(&)[41]>(a1, v114, v30);
LABEL_21:
  v32 = v31;
  v33 = v115;
  if (v115 != v117)
  {
LABEL_153:
    free(v33);
  }

LABEL_154:
  if (v118 != v120)
  {
    free(v118);
  }

  if (v121 != v123)
  {
    free(v121);
  }

  return v32;
}

uint64_t mlir::mps::Conv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v46[0] = a4;
  v46[1] = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v35 = a6;
  LOBYTE(v36) = 0;
  v37 = 0;
  v38 = v14;
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v42 = a9;
  v43 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v35);
    if (v37 == 1)
    {
      v37 = 0;
    }

    mlir::OperationName::OperationName(&v36, "mps.conv_2d", 11, Context);
    v37 = 1;
  }

  v44 = a4;
  v45 = a5;
  if (a5 >= 2 && (v19 = mlir::UnknownLoc::get(this, a2), mlir::mps::Conv2DOpAdaptor::verify(&v35, v19)))
  {
    v33[3] = *(&v38 + 1);
    v33[4] = *(&v40 + 1);
    v34 = *(&v39 + 1);
    v33[2] = v39;
    mlir::IntegerAttr::getValue(&v34, &v32);
    if (DWORD2(v32) > 0x40)
    {
      MEMORY[0x1AC55A040]();
    }

    v24 = mlir::ValueRange::dereference_iterator(v46, 0);
    mlir::ValueRange::dereference_iterator(v46, 1);
    v33[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8));
    v33[1] = v25;
    if (v33[0] && (mlir::ElementsAttr::getShapedType(v33) & 1) != 0)
    {
      operator new();
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v27);
    }

    v28 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v29 = a11[2];
    if (v29 >= a11[3])
    {
      v31 = v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v29 + 1, 8);
      v28 = v31;
      v29 = a11[2];
    }

    *(*a11 + 8 * v29) = v28;
  }

  else
  {
    v20 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v20);
    v22 = a11[2];
    if (v22 >= a11[3])
    {
      v30 = v21;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v22 + 1, 8);
      v21 = v30;
      LODWORD(v22) = a11[2];
    }

    *(*a11 + 8 * v22) = v21;
  }

  ++a11[2];
  return 1;
}

BOOL mlir::mps::Conv2DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v55 = "'mps.conv_2d' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 != v64)
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
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = a1[4];
  if (!v54)
  {
    v55 = "'mps.conv_2d' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v32 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v53 = a1[5];
  if (!v53)
  {
    v55 = "'mps.conv_2d' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v38 != v24);
        goto LABEL_87;
      }

LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v3 = a1[6];
  if (!v3)
  {
    v55 = "'mps.conv_2d' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v44 != v24);
LABEL_87:
        v26 = v64;
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (a1[7])
  {
    v52 = a1[8];
    if (v52)
    {
      if (a1[9])
      {
        v55 = v3;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Value = mlir::BaseMemRefType::operator mlir::ShapedType(v49);
          v61 = v5;
          Shape = mlir::ShapedType::getShape(&Value);
          Type = 4;
          if (v7 == 1 && *Shape == Type && (v50 = v52, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v8, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
          {
            v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Value = mlir::BaseMemRefType::operator mlir::ShapedType(v49);
            v61 = v10;
            v11 = mlir::ShapedType::getShape(&Value);
            Type = 4;
            if (v12 == 1 && *v11 == Type && (v50 = v54, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v13, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
              v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
              v56 = v14;
              Type = mlir::ElementsAttr::getType(&v55);
              Value = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
              v61 = v15;
              v16 = mlir::ShapedType::getShape(&Value);
              v58 = xmmword_1A7595C20;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::ArrayAttr::getValue(&v50);
                v49[1] = v19;
                isSplat = mlir::ElementsAttr::isSplat(v49);
                if (mlir::Type::isUnsignedInteger(&isSplat, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v20;
  }

  v55 = "'mps.conv_2d' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2, &v55, &Value);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

uint64_t mlir::mps::anonymous namespace::inferConv2DReturnType(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = a4;
  mlir::ValueRange::ValueRange(&v22, &v25, 2uLL);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  v25 = v13;
  v26 = v14;
  if (!v13)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "cannot conv2D a non-shaped inputType");
  }

  v15 = v13;
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a4);
  if (!v16)
  {
    return mlir::emitOptionalError<char const(&)[39]>(a1, a2, "cannot conv2D a non-shaped weightsType");
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a6 = mlir::UnrankedTensorType::get(v12);
    return 1;
  }

  v22 = v24;
  v23 = 0x400000000;
  Shape = mlir::ShapedType::getShape(&v25);
  {
    result = 0;
    v20 = v22;
    if (v22 == v24)
    {
      return result;
    }

    goto LABEL_12;
  }

  *a6 = mlir::RankedTensorType::get(v22, v23, v12, 0);
  result = 1;
  v20 = v22;
  if (v22 != v24)
  {
LABEL_12:
    v21 = result;
    free(v20);
    return v21;
  }

  return result;
}

uint64_t mlir::mps::Conv2DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a2;
  v144[4] = *MEMORY[0x1E69E9840];
  v121 = a4;
  v122 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v110 = a6;
  LOBYTE(v111) = 0;
  v112 = 0;
  v113 = v16;
  v114 = v17;
  v115 = v18;
  v116 = v19;
  v117 = a9;
  v20 = a5;
  v118 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v110);
    if (v112 == 1)
    {
      v112 = 0;
    }

    mlir::OperationName::OperationName(&v111, "mps.conv_2d_data_gradient", 25, Context);
    v112 = 1;
    v20 = v122;
  }

  v119 = a4;
  v120 = a5;
  if (v20 < 2 || (v22 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv2DDataGradientOpAdaptor::verify(&v110, v22)))
  {
    v37 = mlir::Float32Type::get(this, a2);
LABEL_52:
    v62 = mlir::UnrankedTensorType::get(v37);
    goto LABEL_53;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v121, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v121, 1);
  v25 = 0;
  if (v122 == 3)
  {
    v25 = mlir::ValueRange::dereference_iterator(&v121, 2);
  }

  v100 = *(&v113 + 1);
  v101 = v25;
  v98 = *(&v114 + 1);
  v99 = v114;
  v95 = v115;
  v96 = v113;
  v97 = *(&v115 + 1);
  v94 = v116;
  v26 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v27 = v26->i64[0];
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_26;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_26;
      }
    }

    v31 = v29;
    v32 = v30;
    do
    {
      v33 = v32 >> 1;
      v34 = &v31[2 * (v32 >> 1)];
      v36 = *v34;
      v35 = v34 + 2;
      v32 += ~(v32 >> 1);
      if (v36 < v28)
      {
        v31 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    while (v32);
    if (v31 != &v29[2 * v30] && *v31 == v28)
    {
      v38 = v31[1];
      v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v39)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v38 = 0;
  v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    goto LABEL_41;
  }

LABEL_27:
  v40 = v14;
  v41 = a3;
  v42 = *v39;
  {
    mlir::Builder::getI32VectorAttr();
    v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_29;
    }

LABEL_39:
    a3 = v41;
    v14 = v40;
    goto LABEL_41;
  }

  v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_39;
  }

LABEL_29:
  v46 = v44;
  v47 = v45;
  a3 = v41;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
  v14 = v40;
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v52 = v46[1];
    goto LABEL_42;
  }

LABEL_41:
  v52 = 0;
LABEL_42:
  *&v109 = v26;
  *(&v109 + 1) = v38;
  v108[0] = v39;
  v108[1] = v52;
  v107 = v109;
  v142 = v26;
  v143 = v39;
  mlir::ValueRange::ValueRange(&v128, &v142, 2uLL);
  if (!v26 || !mlir::ElementsAttr::getShapedType(&v107) || !v108[0] || (mlir::ElementsAttr::getShapedType(v108) & 1) == 0)
  {
    v37 = v53;
    goto LABEL_52;
  }

  v142 = v144;
  v143 = 0x400000000;
  if (!v101)
  {
    v105 = v100;
    v106 = v97;
    v103 = v98;
    v104 = v99;
    v139 = v141;
    memset(v141, 0, sizeof(v141));
    v140 = 0x400000004;
    if (v107)
    {
      Shape = mlir::ShapedType::getShape(&v107);
      if (v68 != 4)
      {
        v70 = mlir::emitOptionalError<char const(&)[41]>(v14, a3, "Conv2DDataGradientOp input should be rank 4");
        v62 = 0;
        goto LABEL_116;
      }

      v69 = Shape;
    }

    else
    {
      v69 = v141;
    }

    v137[0] = v138;
    v137[1] = 0x400000000;
    v135[0] = v136;
    v135[1] = 0x400000000;
    v133[0] = v134;
    v133[1] = 0x200000000;
    v131[0] = v132;
    v131[1] = 0x200000000;
    if (v96)
    {
      v71 = *(v96 + 8);
    }

    else
    {
      v71 = 1;
    }

    v76 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v106);
    v78 = v77;
    v79 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v105);
    v81 = v80;
    v82 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v104);
    if (mlir::mps::inferConv2DParams(v14, a3, v69, 4, v76, v78, v79, v81, v82, v83, v71, v137, v135, v133, v131))
    {
      if (v103)
      {
        UInt = mlir::IntegerAttr::getUInt(&v103);
      }

      else
      {
        UInt = 1;
      }

      if (v94)
      {
        v85 = *(v94 + 8);
      }

      else
      {
        v85 = 3;
      }

      if (v95)
      {
        v86 = *(v95 + 8);
      }

      else
      {
        v86 = 2;
      }

      v102[0] = mlir::ShapedType::getShape(v108);
      v102[1] = v87;
      if (v87 == 4)
      {
        mlir::mps::ShapeWithLayout::ShapeWithLayout(&v128, v102, v85);
        v125 = v127;
        v126 = 0x400000000;
        mlir::mps::ShapeWithLayout::ShapeWithLayout(v123, &v128);
        if (v123[0] != &v124)
        {
          free(v123[0]);
        }

        if (v70)
        {
          v62 = mlir::RankedTensorType::get(v125, v126, v53, 0);
        }

        else
        {
          v62 = 0;
        }

        if (v125 != v127)
        {
          v88 = v62;
          free(v125);
          v62 = v88;
        }

        if (v128 != v130)
        {
          v89 = v62;
          free(v128);
          v62 = v89;
        }
      }

      else
      {
        v70 = mlir::emitOptionalError<char const(&)[41]>(v14, a3, "Conv2dGradient weights should be rank 4");
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
      v70 = 0;
    }

    v90 = v62;
    if (v131[0] != v132)
    {
      free(v131[0]);
      v62 = v90;
    }

    if (v133[0] != v134)
    {
      free(v133[0]);
      v62 = v90;
    }

    if (v135[0] != v136)
    {
      free(v135[0]);
      v62 = v90;
    }

    if (v137[0] != v138)
    {
      free(v137[0]);
      v62 = v90;
    }

LABEL_116:
    v74 = v139;
    if (v139 == v141)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v101, &v142) & 1) == 0)
  {
    v62 = mlir::UnrankedTensorType::get(v53);
    v70 = 1;
    goto LABEL_118;
  }

  v54 = v143;
  if (!v143)
  {
    goto LABEL_76;
  }

  v55 = v142;
  v56 = (v143 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v57 = v142;
  if (v56 >= 3)
  {
    v58 = v56 + 1;
    v57 = &v142->i64[v58 & 0x3FFFFFFFFFFFFFFCLL];
    v59 = v142 + 1;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61 = v58 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v65 = vmovn_s64(vceqq_s64(v59[-1], v60));
      if (v65.i8[0])
      {
        v59[-1].i64[0] = 0x8000000000000000;
        if ((v65.i8[4] & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else if ((v65.i8[4] & 1) == 0)
      {
LABEL_59:
        v66 = vmovn_s64(vceqq_s64(*v59, v60));
        if (v66.i8[0])
        {
          goto LABEL_60;
        }

        goto LABEL_64;
      }

      v59[-1].i64[1] = 0x8000000000000000;
      v66 = vmovn_s64(vceqq_s64(*v59, v60));
      if (v66.i8[0])
      {
LABEL_60:
        v59->i64[0] = 0x8000000000000000;
        if (v66.i8[4])
        {
          goto LABEL_65;
        }

        goto LABEL_56;
      }

LABEL_64:
      if (v66.i8[4])
      {
LABEL_65:
        v59->i64[1] = 0x8000000000000000;
      }

LABEL_56:
      v59 += 2;
      v61 -= 4;
      if (!v61)
      {
        if (v58 == (v58 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_76;
        }

        break;
      }
    }
  }

  v75 = &v55->i8[8 * v54];
  do
  {
    if (*v57 == -1)
    {
      *v57 = 0x8000000000000000;
    }

    ++v57;
  }

  while (v57 != v75);
LABEL_76:
  v72 = mlir::ShapedType::getShape(&v109);
  v128 = v130;
  v129 = 0x400000000;
  if (v70)
  {
    v62 = mlir::RankedTensorType::get(v128, v129, v53, 0);
  }

  else
  {
    v62 = 0;
  }

  v74 = v128;
  if (v128 != v130)
  {
LABEL_117:
    v91 = v62;
    free(v74);
    v62 = v91;
  }

LABEL_118:
  if (v142 != v144)
  {
    v92 = v62;
    free(v142);
    v62 = v92;
  }

  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v63 = *(a11 + 8);
  if (v63 >= *(a11 + 12))
  {
    v93 = v62;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v63 + 1, 8);
    v62 = v93;
    v63 = *(a11 + 8);
  }

  *(*a11 + 8 * v63) = v62;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::Conv2DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 != v64)
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
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = a1[4];
  if (!v54)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v32 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v53 = a1[5];
  if (!v53)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v38 != v24);
        goto LABEL_87;
      }

LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v3 = a1[6];
  if (!v3)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v44 != v24);
LABEL_87:
        v26 = v64;
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (a1[7])
  {
    v52 = a1[8];
    if (v52)
    {
      if (a1[9])
      {
        v55 = v3;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Value = mlir::BaseMemRefType::operator mlir::ShapedType(v49);
          v61 = v5;
          Shape = mlir::ShapedType::getShape(&Value);
          Type = 4;
          if (v7 == 1 && *Shape == Type && (v50 = v52, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v8, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
          {
            v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Value = mlir::BaseMemRefType::operator mlir::ShapedType(v49);
            v61 = v10;
            v11 = mlir::ShapedType::getShape(&Value);
            Type = 4;
            if (v12 == 1 && *v11 == Type && (v50 = v54, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v13, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
              v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
              v56 = v14;
              Type = mlir::ElementsAttr::getType(&v55);
              Value = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
              v61 = v15;
              v16 = mlir::ShapedType::getShape(&Value);
              v58 = xmmword_1A7595C20;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::ArrayAttr::getValue(&v50);
                v49[1] = v19;
                isSplat = mlir::ElementsAttr::isSplat(v49);
                if (mlir::Type::isUnsignedInteger(&isSplat, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d_data_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d_data_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d_data_gradient' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v20;
  }

  v55 = "'mps.conv_2d_data_gradient' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2, &v55, &Value);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v143[4] = *MEMORY[0x1E69E9840];
  v120 = a4;
  v121 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v109 = a6;
  LOBYTE(v110) = 0;
  v111 = 0;
  v112 = v16;
  v113 = v17;
  v114 = v18;
  v115 = v19;
  v116 = a9;
  v20 = a5;
  v117 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v109);
    if (v111 == 1)
    {
      v111 = 0;
    }

    mlir::OperationName::OperationName(&v110, "mps.conv_2d_weights_gradient", 28, Context);
    v111 = 1;
    v20 = v121;
  }

  v118 = a4;
  v119 = a5;
  if (v20 < 3 || (v22 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv2DWeightsGradientOpAdaptor::verify(&v109, v22)))
  {
    v37 = mlir::Float32Type::get(this, a2);
LABEL_50:
    v60 = mlir::UnrankedTensorType::get(v37);
    goto LABEL_51;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v120, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v120, 1);
  v25 = mlir::ValueRange::dereference_iterator(&v120, 2);
  v99 = *(&v112 + 1);
  v100 = v25;
  v97 = *(&v113 + 1);
  v98 = v113;
  v94 = v114;
  v95 = v112;
  v96 = *(&v114 + 1);
  v93 = v115;
  v26 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26->i64[0];
  {
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_24;
    }
  }

  else
  {
    mlir::Builder::getI32VectorAttr();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_24;
    }
  }

  v31 = v29;
  v32 = v30;
  do
  {
    v33 = v32 >> 1;
    v34 = &v31[2 * (v32 >> 1)];
    v36 = *v34;
    v35 = v34 + 2;
    v32 += ~(v32 >> 1);
    if (v36 < v28)
    {
      v31 = v35;
    }

    else
    {
      v32 = v33;
    }
  }

  while (v32);
  if (v31 == &v29[2 * v30] || *v31 != v28)
  {
LABEL_24:
    v38 = 0;
    v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v38 = v31[1];
  v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    goto LABEL_39;
  }

LABEL_25:
  v40 = *v39;
  {
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_39;
    }
  }

  else
  {
    mlir::Builder::getI32VectorAttr();
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_39;
    }
  }

  v44 = v42;
  v45 = v43;
  do
  {
    v46 = v45 >> 1;
    v47 = &v44[2 * (v45 >> 1)];
    v49 = *v47;
    v48 = v47 + 2;
    v45 += ~(v45 >> 1);
    if (v49 < v41)
    {
      v44 = v48;
    }

    else
    {
      v45 = v46;
    }
  }

  while (v45);
  if (v44 != &v42[2 * v43] && *v44 == v41)
  {
    v50 = v44[1];
    goto LABEL_40;
  }

LABEL_39:
  v50 = 0;
LABEL_40:
  *&v108 = v26;
  *(&v108 + 1) = v38;
  v107[0] = v39;
  v107[1] = v50;
  v106 = v108;
  v141 = v26;
  v142 = v39;
  mlir::ValueRange::ValueRange(&v127, &v141, 2uLL);
  if (!v26 || !mlir::ElementsAttr::getShapedType(&v106) || !v107[0] || (mlir::ElementsAttr::getShapedType(v107) & 1) == 0)
  {
    v37 = v51;
    goto LABEL_50;
  }

  v141 = v143;
  v142 = 0x400000000;
  if (!v100)
  {
    v104 = v99;
    v105 = v96;
    v102 = v97;
    v103 = v98;
    v65 = v140;
    v138 = v140;
    memset(v140, 0, sizeof(v140));
    v139 = 0x400000004;
    if (v106)
    {
      Shape = mlir::ShapedType::getShape(&v106);
      if (v67 != 4)
      {
        v69 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Conv2DDataGradientOp input should be rank 4");
        v60 = 0;
LABEL_109:
        v73 = v138;
        goto LABEL_110;
      }

      v68 = Shape;
    }

    else
    {
      v68 = v140;
    }

    v136[0] = v137;
    v136[1] = 0x400000000;
    v134[0] = v135;
    v134[1] = 0x400000000;
    v132[0] = v133;
    v132[1] = 0x200000000;
    v130[0] = v131;
    v130[1] = 0x200000000;
    if (v95)
    {
      v70 = *(v95 + 8);
    }

    else
    {
      v70 = 1;
    }

    v75 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v105);
    v77 = v76;
    v78 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v104);
    v80 = v79;
    v81 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
    if (mlir::mps::inferConv2DParams(a2, a3, v68, 4, v75, v77, v78, v80, v81, v82, v70, v136, v134, v132, v130))
    {
      if (v102)
      {
        UInt = mlir::IntegerAttr::getUInt(&v102);
      }

      else
      {
        UInt = 1;
      }

      if (v93)
      {
        v84 = *(v93 + 8);
      }

      else
      {
        v84 = 3;
      }

      if (v94)
      {
        v85 = *(v94 + 8);
      }

      else
      {
        v85 = 2;
      }

      v101[0] = mlir::ShapedType::getShape(v107);
      v101[1] = v86;
      if (v86 == 4)
      {
        mlir::mps::ShapeWithLayout::ShapeWithLayout(&v127, v101, v84);
        v124 = v126;
        v125 = 0x400000000;
        mlir::mps::ShapeWithLayout::ShapeWithLayout(v122, &v127);
        if (v122[0] != &v123)
        {
          free(v122[0]);
        }

        if (v69)
        {
          v60 = mlir::RankedTensorType::get(v124, v125, v51, 0);
        }

        else
        {
          v60 = 0;
        }

        v65 = v140;
        if (v124 != v126)
        {
          v90 = v60;
          free(v124);
          v60 = v90;
        }

        if (v127 != v129)
        {
          v91 = v60;
          free(v127);
          v60 = v91;
        }

        goto LABEL_101;
      }

      v69 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Conv2dGradient weights should be rank 4");
      v60 = 0;
    }

    else
    {
      v60 = 0;
      v69 = 0;
    }

    v65 = v140;
LABEL_101:
    v87 = v60;
    if (v130[0] != v131)
    {
      free(v130[0]);
      v60 = v87;
    }

    if (v132[0] != v133)
    {
      free(v132[0]);
      v60 = v87;
    }

    if (v134[0] != v135)
    {
      free(v134[0]);
      v60 = v87;
    }

    if (v136[0] != v137)
    {
      free(v136[0]);
      v60 = v87;
    }

    goto LABEL_109;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v100, &v141) & 1) == 0)
  {
    v60 = mlir::UnrankedTensorType::get(v51);
    v69 = 1;
    goto LABEL_112;
  }

  v52 = v142;
  if (!v142)
  {
    goto LABEL_74;
  }

  v53 = v141;
  v54 = (v142 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v55 = v141;
  if (v54 >= 3)
  {
    v56 = v54 + 1;
    v55 = &v141->i64[v56 & 0x3FFFFFFFFFFFFFFCLL];
    v57 = v141 + 1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v63 = vmovn_s64(vceqq_s64(v57[-1], v58));
      if (v63.i8[0])
      {
        v57[-1].i64[0] = 0x8000000000000000;
        if ((v63.i8[4] & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else if ((v63.i8[4] & 1) == 0)
      {
LABEL_57:
        v64 = vmovn_s64(vceqq_s64(*v57, v58));
        if (v64.i8[0])
        {
          goto LABEL_58;
        }

        goto LABEL_62;
      }

      v57[-1].i64[1] = 0x8000000000000000;
      v64 = vmovn_s64(vceqq_s64(*v57, v58));
      if (v64.i8[0])
      {
LABEL_58:
        v57->i64[0] = 0x8000000000000000;
        if (v64.i8[4])
        {
          goto LABEL_63;
        }

        goto LABEL_54;
      }

LABEL_62:
      if (v64.i8[4])
      {
LABEL_63:
        v57->i64[1] = 0x8000000000000000;
      }

LABEL_54:
      v57 += 2;
      v59 -= 4;
      if (!v59)
      {
        if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_74;
        }

        break;
      }
    }
  }

  v74 = &v53->i8[8 * v52];
  do
  {
    if (*v55 == -1)
    {
      *v55 = 0x8000000000000000;
    }

    ++v55;
  }

  while (v55 != v74);
LABEL_74:
  v71 = mlir::ShapedType::getShape(&v108);
  v65 = v129;
  v127 = v129;
  v128 = 0x400000000;
  if (v69)
  {
    v60 = mlir::RankedTensorType::get(v127, v128, v51, 0);
  }

  else
  {
    v60 = 0;
  }

  v73 = v127;
LABEL_110:
  if (v73 != v65)
  {
    v88 = v60;
    free(v73);
    v60 = v88;
  }

LABEL_112:
  if (v141 != v143)
  {
    v89 = v60;
    free(v141);
    v60 = v89;
  }

  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v61 = *(a11 + 8);
  if (v61 >= *(a11 + 12))
  {
    v92 = v60;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v61 + 1, 8);
    v60 = v92;
    v61 = *(a11 + 8);
  }

  *(*a11 + 8 * v61) = v60;
  ++*(a11 + 8);
  return 1;
}