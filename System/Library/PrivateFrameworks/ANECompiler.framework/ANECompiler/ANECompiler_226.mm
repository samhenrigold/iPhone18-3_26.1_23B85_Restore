uint64_t mlir::mps::TopKOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = mlir::UnrankedTensorType::get(a2);
  v5 = *(v3 + 8);
  if (v5 >= *(v3 + 12))
  {
    v11 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v5 + 1, 8);
    v4 = v11;
    LODWORD(v5) = *(v3 + 8);
  }

  *(*v3 + 8 * v5) = v4;
  ++*(v3 + 8);
  v6 = *a1;
  v7 = mlir::IntegerType::get(*a1[1], 0x20u, 1u);
  v8 = mlir::UnrankedTensorType::get(v7);
  v9 = *(v6 + 8);
  if (v9 >= *(v6 + 12))
  {
    v12 = v8;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v9 + 1, 8);
    v8 = v12;
    LODWORD(v9) = *(v6 + 8);
  }

  *(*v6 + 8 * v9) = v8;
  ++*(v6 + 8);
  return 1;
}

void *llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v5 = a3 - a2;
  v6 = (a3 - a2) >> 3;
  if (v6 >= 5)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v6, 8);
    a2 = v7;
    v8 = *(a1 + 2);
    if (v7 == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a2 != a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v8), a2, v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + (v5 >> 3);
  return a1;
}

BOOL mlir::mps::TopKOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *(*(*this + 9) + 88);
  v48 = 0;
  v49 = 0;
  v46[0] = &v48;
  v41[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v41);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v46, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<int>(v48, v49);
  v43 = SingleInt;
  v44 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 1;
  }

  if (SingleInt > 0)
  {
    v5 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v5)
    {
      goto LABEL_38;
    }

    v6 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_38;
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
      v38 = v10[1];
      v39 = v5;
      v40 = v38;
      if (mlir::ElementsAttr::getShapedType(&v39))
      {
LABEL_39:
        {
          return 0;
        }

        v46[0] = &v47;
        v46[1] = 0x100000000;
        v26 = *(*(*this + 9) + 56);
        mlir::ShapedType::getShape(&v39);
        v28 = v27;
        v48 = 0;
        v49 = 0;
        v45 = &v48;
        v41[0] = v26;
        v29 = mlir::Value::getDefiningOp(v41);
        if (v29 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v45, v29) & 1) != 0)
        {
        }

        else
        {
          mlir::emitOptionalError<char const(&)[41]>(0, 0, "axes is not a constant");
        }

        v30 = 1;
        v45 = 1;
        mlir::ShapedType::getShape(&v39);
        if (v31 >= 1)
        {
          v32 = *v46[0];
          v30 = *(mlir::ShapedType::getShape(&v39) + 8 * v32);
          v45 = v30;
        }

        result = 1;
        if (v30 != 0x8000000000000000 && v30 < v43)
        {
          v41[0] = "k is larger than input minor dimension, ";
          v42 = 259;
          mlir::OpState::emitOpError(this, v41, &v48);
          mlir::InFlightDiagnostic::operator<<<int &>(&v48, &v43);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, " > ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v34, &v45);
          v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
          result = v36;
        }

        if (v46[0] != &v47)
        {
          v37 = result;
          free(v46[0]);
          return v37;
        }

        return result;
      }

      return 1;
    }

LABEL_38:
    v39 = v5;
    v40 = 0;
    if (mlir::ElementsAttr::getShapedType(&v39))
    {
      goto LABEL_39;
    }

    return 1;
  }

  v41[0] = "K must be larger than 0";
  v42 = 259;
  mlir::OpState::emitOpError(this, v41, &v48);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
  v17 = result;
  if (v48)
  {
    mlir::InFlightDiagnostic::report(&v48);
    result = v17;
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v55;
      v20 = __p;
      if (v55 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v55 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v52;
    if (v52)
    {
      v22 = v53;
      v23 = v52;
      if (v53 != v52)
      {
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
        v23 = v52;
      }

      v53 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v50 != &v51)
    {
      free(v50);
      return v17;
    }
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::verifyConstantAxis(mlir::mps::_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v52[6] = *MEMORY[0x1E69E9840];
  v3 = *(this + 9);
  v4 = *(v3 + 32 * a2 + 24);
  v5 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
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
    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  v40[0] = v5;
  v40[1] = v16;
  v50 = v52;
  v51 = 0x600000000;
  if (mlir::ElementsAttr::getShapedType(v40) && (mlir::matchConstantWithIntVector<long long>(v4, &v50) & 1) != 0 && v51)
  {
    v17 = v50;
    v18 = 8 * v51;
    while (1)
    {
      v39 = *v17;
      mlir::ShapedType::getShape(v40);
      v41[0] = v39;
      if (v39 < -v19 || v19 <= v39)
      {
        break;
      }

      ++v17;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    v32[0] = -v19;
    v37[0] = (v19 - 1);
    mlir::emitOptionalError<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(0, 0, "invalid axis ", v41, " is outside of the range [", v32, ", ", v37, "]");
    mlir::ShapedType::getShape(v40);
    v32[0] = "failed: constant axis ({0}) is not within range for the input tensor rank ({1})";
    v32[1] = 79;
    v32[2] = v36;
    v32[3] = 2;
    v33 = 1;
    v34[0] = &unk_1F1A177C0;
    v34[1] = &v39;
    v35[0] = &unk_1F1A17838;
    v35[1] = v23;
    v36[0] = v34;
    v36[1] = v35;
    v38 = 263;
    v37[0] = v32;
    mlir::Operation::emitOpError(this, v37, v41);
    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49)
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

  else
  {
LABEL_24:
    v21 = 1;
  }

  if (v50 != v52)
  {
    free(v50);
  }

  return v21;
}

__n128 mlir::InFlightDiagnostic::operator<<<int &>(uint64_t a1, int *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 2;
    v12 = v3;
    v4 = *(a1 + 32);
    v5 = &v11;
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v11 && v2 + 24 * v4 > &v11)
      {
        v9 = &v11 - v2;
        v10 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v4 + 1, 24);
        a1 = v10;
        v2 = *(v10 + 24);
        v5 = &v9[v2];
      }

      else
      {
        v8 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v4 + 1, 24);
        a1 = v8;
        v2 = *(v8 + 24);
        v5 = &v11;
      }
    }

    v6 = (v2 + 24 * *(a1 + 32));
    result = *v5;
    v6[1].n128_u64[0] = v5[1].n128_u64[0];
    *v6 = result;
    ++*(a1 + 32);
  }

  return result;
}

uint64_t mlir::mps::TopKGradientOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68[2] = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = v13;
  v64 = a9;
  v65 = a10;
  if (a6)
  {
    v14 = a1;
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "mps.top_k_grad", 14, Context);
    v62 = 1;
    a1 = v14;
  }

  v66 = a4;
  v67 = a5;
  if (!a5)
  {
    v43 = mlir::Float32Type::get(a1, a2);
    v40 = mlir::UnrankedTensorType::get(v43);
    v41 = *(a11 + 8);
    if (v41 < *(a11 + 12))
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || (v57 = v66, v58 = 0, v16 = mlir::ValueRange::dereference_iterator(&v57, 0), v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8)), v55[0] = v17, v55[1] = v18, v57 = v66, v58 = 1, v57 = mlir::ValueRange::offset_base(&v57, 1), v58 = 0, v19 = mlir::ValueRange::dereference_iterator(&v57, 0), v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8)), v54[0] = v20, v54[1] = v21, v57 = v66, v58 = 2, v57 = mlir::ValueRange::offset_base(&v57, 2), v58 = 0, v22 = mlir::ValueRange::dereference_iterator(&v57, 0), v57 = 0, v58 = 0, v56 = &v57, v68[0] = v22, (DefiningOp = mlir::Value::getDefiningOp(v68)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v56, DefiningOp) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(v57, v58), !v17) || !v20 || (v25 = SingleInt, (SingleInt & 0x100000000) == 0) || !mlir::ElementsAttr::getShapedType(v55) || !mlir::ElementsAttr::getShapedType(v54) || (mlir::ShapedType::getShape(v55), !v26) || (mlir::ShapedType::getShape(v54), !v27) || (mlir::ShapedType::getShape(v55), v29 = v28, mlir::ShapedType::getShape(v54), v29 != v30))
  {
    v57 = v66;
    v58 = 0;
    v38 = mlir::ValueRange::dereference_iterator(&v57, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38);
    v40 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v41 = *(a11 + 8);
    if (v41 < *(a11 + 12))
    {
LABEL_24:
      *(*a11 + 8 * v41) = v40;
      ++*(a11 + 8);
      return 1;
    }

LABEL_28:
    v44 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
    v40 = v44;
    LODWORD(v41) = *(a11 + 8);
    goto LABEL_24;
  }

  mlir::ShapedType::getShape(v55);
  v32 = (v31 & (v25 >> 63)) + v25;
  if (v32 >= v31)
  {
    v57 = v66;
    v58 = 0;
    v47 = mlir::ValueRange::dereference_iterator(&v57, 0);
    v48 = mlir::getElementTypeOrSelf(v47);
    return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v48);
  }

  Shape = mlir::ShapedType::getShape(v55);
  v34 = mlir::ShapedType::getShape(v55);
  llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v57, Shape, (v34 + 8 * v35));
  mlir::ShapedType::getShape(v55);
  if (v36 >= 1)
  {
    for (i = 0; i < v45; ++i)
    {
      if (v32 != i && *(v57 + i) == 0x8000000000000000)
      {
        v46 = mlir::ShapedType::getShape(v54);
        *(v57 + i) = *(v46 + 8 * i);
      }

      mlir::ShapedType::getShape(v55);
    }
  }

  v49 = v57;
  v50 = v58;
  v68[0] = v66;
  v68[1] = 0;
  v51 = mlir::ValueRange::dereference_iterator(v68, 0);
  v52 = mlir::getElementTypeOrSelf(v51);
  v53 = mlir::RankedTensorType::get(v49, v50, v52, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v53);
  if (v57 != &v59)
  {
    free(v57);
  }

  return 1;
}

BOOL mlir::mps::TopKGradientOp::verify(uint64_t **this)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v13 = v2;
    mlir::Builder::getZeroAttr();
    v2 = v13;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v14 = v7[1];
LABEL_15:
  v84[0] = v2;
  v84[1] = v14;
  v15 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *v15;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v26 = v15;
    mlir::Builder::getZeroAttr();
    v15 = v26;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_29;
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
    v34 = v20[1];
    v82 = v15;
    v83 = v34;
    if (!mlir::ElementsAttr::getShapedType(v84))
    {
      return 1;
    }

    goto LABEL_30;
  }

LABEL_29:
  v82 = v15;
  v83 = 0;
  if (!mlir::ElementsAttr::getShapedType(v84))
  {
    return 1;
  }

LABEL_30:
  if (!mlir::ElementsAttr::getShapedType(&v82))
  {
    return 1;
  }

  mlir::ShapedType::getShape(v84);
  v28 = v27;
  mlir::ShapedType::getShape(&v82);
  if (v28 != v29)
  {
    v70[0] = "failed: input and gradient tensors must have the same rank, but got {0} and {1}";
    v70[1] = 79;
    v70[2] = v74;
    v70[3] = 2;
    LOBYTE(v71) = 1;
    v72[0] = &unk_1F1A18360;
    v72[1] = v84;
    v73[0] = &unk_1F1A18360;
    v73[1] = &v82;
    v74[0] = v72;
    v74[1] = v73;
    v81 = 263;
    v80[0] = v70;
    mlir::OpState::emitOpError(this, v80, &v87);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    v36 = result;
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
      result = v36;
    }

    if (v96 == 1)
    {
      if (v95 != &v96)
      {
        free(v95);
        result = v36;
      }

      v37 = __p;
      if (__p)
      {
        v38 = v94;
        v39 = __p;
        if (v94 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v94 = v37;
        operator delete(v39);
        result = v36;
      }

      v40 = v91;
      if (v91)
      {
        v41 = v92;
        v42 = v91;
        if (v92 != v91)
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
          v42 = v91;
        }

        v92 = v40;
        operator delete(v42);
        result = v36;
      }

      if (v89 != &v90)
      {
        free(v89);
        return v36;
      }
    }

    return result;
  }

  {
    return 0;
  }

  v85[0] = &v86;
  v85[1] = 0x100000000;
  v30 = *((*this)[9] + 88);
  mlir::ShapedType::getShape(v84);
  v32 = v31;
  v87 = 0;
  v88 = 0;
  v80[0] = &v87;
  v70[0] = v30;
  DefiningOp = mlir::Value::getDefiningOp(v70);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v80, DefiningOp) & 1) != 0)
  {
  }

  else
  {
    mlir::emitOptionalError<char const(&)[41]>(0, 0, "axes is not a constant");
  }

  v45 = *((*this)[9] + 120);
  v87 = 0;
  v88 = 0;
  v80[0] = &v87;
  v70[0] = v45;
  v46 = mlir::Value::getDefiningOp(v70);
  if (v46)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v80, v46))
    {
      SingleInt = mlir::getSingleIntValue<int>(v87, v88);
      v78 = SingleInt;
      v79 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        if (SingleInt <= 0)
        {
          v70[0] = "failed: k must positive";
          v71 = 259;
          v57 = v70;
        }

        else
        {
          v50 = SingleInt;
          v51 = 1;
          v77 = 1;
          mlir::ShapedType::getShape(v84);
          if (v52 >= 1)
          {
            v53 = *v85[0];
            v51 = *(mlir::ShapedType::getShape(v84) + 8 * v53);
            v77 = v51;
          }

          if (v51 != 0x8000000000000000 && v51 < v50)
          {
            v70[0] = "failed: k is larger than input minor dimension, ";
            v71 = 259;
            mlir::OpState::emitOpError(this, v70, &v87);
            mlir::InFlightDiagnostic::operator<<<int &>(&v87, &v78);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " > ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v55, &v77);
            goto LABEL_80;
          }

          v58 = 1;
          v76 = 1;
          mlir::ShapedType::getShape(&v82);
          if (v59 >= 1)
          {
            v60 = *v85[0];
            v58 = *(mlir::ShapedType::getShape(&v82) + 8 * v60);
            v76 = v58;
          }

          if (v58 == 0x8000000000000000 || v58 == v78)
          {
            v75 = 0;
            mlir::ShapedType::getShape(v84);
            if (v62 < 1)
            {
LABEL_91:
              result = 1;
              v48 = v85[0];
              if (v85[0] != &v86)
              {
                goto LABEL_61;
              }

              return result;
            }

            v63 = 1;
            while (1)
            {
              v66 = v63 - 1;
              if (v63 - 1 != *v85[0] && *(mlir::ShapedType::getShape(v84) + 8 * v66) != 0x8000000000000000 && *(mlir::ShapedType::getShape(&v82) + 8 * v66) != 0x8000000000000000)
              {
                v67 = *(mlir::ShapedType::getShape(v84) + 8 * v66);
                if (v67 != *(mlir::ShapedType::getShape(&v82) + 8 * v66))
                {
                  break;
                }
              }

              v75 = v63;
              mlir::ShapedType::getShape(v84);
              if (v63++ >= v64)
              {
                goto LABEL_91;
              }
            }

            v69 = *(mlir::ShapedType::getShape(v84) + 8 * v66);
            v68 = *(mlir::ShapedType::getShape(&v82) + 8 * v66);
            llvm::formatv<long long &,long long,long long>(v70, "failed: input tensor and input gradient tensor shape do not match along dimension {0}, {1} != {2}", &v75, &v69, &v68);
          }

          else
          {
            llvm::formatv<long long &,int &>(v70, "failed: input gradient dimension at axis dimension is not equal k: {0} != {1}", &v76, &v78);
          }

          v81 = 263;
          v80[0] = v70;
          v57 = v80;
        }

        mlir::OpState::emitOpError(this, v57, &v87);
        v56 = &v87;
LABEL_80:
        v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
        result = v61;
        v48 = v85[0];
        if (v85[0] != &v86)
        {
          goto LABEL_61;
        }

        return result;
      }
    }
  }

  result = 1;
  v48 = v85[0];
  if (v85[0] != &v86)
  {
LABEL_61:
    v49 = result;
    free(v48);
    return v49;
  }

  return result;
}

const char *llvm::formatv<long long &,int &>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char *a3@<X1>, const char *a4@<X2>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v6;
  a1[1] = __s;
  a1[9] = (a1 + 5);
  a1[2] = (a1 + 9);
  a1[3] = 2;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A177C0;
  a1[6] = a3;
  a1[7] = &unk_1F1A183F0;
  a1[8] = a4;
  a1[10] = (a1 + 7);
  return __s;
}

const char *llvm::formatv<long long &,long long,long long>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char *a3@<X1>, const char **a4@<X2>, const char **a5@<X3>)
{
  v6 = __s;
  v8 = *a4;
  v9 = *a5;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v6;
  a1[1] = __s;
  a1[11] = (a1 + 5);
  a1[2] = (a1 + 11);
  a1[3] = 3;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A177C0;
  a1[6] = a3;
  a1[7] = &unk_1F1A17838;
  a1[8] = v8;
  a1[9] = &unk_1F1A17838;
  a1[10] = v9;
  a1[12] = (a1 + 7);
  a1[13] = (a1 + 9);
  return __s;
}

uint64_t mlir::mps::SliceOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = *MEMORY[0x1E69E9840];
  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "mps.slice", 9, Context);
    v61 = 1;
    a1 = v13;
  }

  v64 = a4;
  v65 = a5;
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
LABEL_27:
    v43 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v44 = *(a11 + 8);
    if (v44 >= *(a11 + 12))
    {
      v52 = v43;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v44 + 1, 8);
      v43 = v52;
      LODWORD(v44) = *(a11 + 8);
    }

    *(*a11 + 8 * v44) = v43;
    ++*(a11 + 8);
    return 1;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || ((v56 = v64, v57 = 0, v15 = mlir::ValueRange::dereference_iterator(&v56, 0), v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8)), v53[0] = v16, v53[1] = v17, v56 = v64, v57 = 1, v56 = mlir::ValueRange::offset_base(&v56, 1), v57 = 0, v18 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v54 = &v56, v55 = v18, (DefiningOp = mlir::Value::getDefiningOp(&v55)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, DefiningOp) ? (LODWORD(v23) = 0, v22 = 0, v21 = 0) : (SingleInt = mlir::getSingleIntValue<int>(v56, v57), v21 = SingleInt & 0xFFFFFF00, v22 = SingleInt, v23 = HIDWORD(SingleInt) & 1), (v56 = v64, v57 = 2, v56 = mlir::ValueRange::offset_base(&v56, 2), v57 = 0, v25 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v54 = &v56, v55 = v25, (v26 = mlir::Value::getDefiningOp(&v55)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v26) ? (LODWORD(v30) = 0, v29 = 0, v28 = 0) : (v27 = mlir::getSingleIntValue<int>(v56, v57), v28 = v27 & 0xFFFFFF00, v29 = v27, v30 = HIDWORD(v27) & 1), (v56 = v64, v57 = 3, v56 = mlir::ValueRange::offset_base(&v56, 3), v57 = 0, v31 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v54 = &v56, v55 = v31, (v32 = mlir::Value::getDefiningOp(&v55)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v32) & 1) == 0 || (v33 = mlir::getSingleIntValue<int>(v56, v57), ((v16 != 0) & v23 & v30) != 1) || (v33 & 0x100000000) == 0))
  {
    v56 = v64;
    v57 = 0;
    v42 = mlir::ValueRange::dereference_iterator(&v56, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v42);
    goto LABEL_27;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v16);
  }

  else
  {
    v34 = v33;
    mlir::ShapedType::getShape(v53);
    v36 = (v35 & ((v21 | v22) >> 63)) + (v21 | v22);
    if (v36 >= v35 || (v34 & 0x80000000) != 0 || (v37 = v34, *(mlir::ShapedType::getShape(v53) + 8 * v36) != 0x8000000000000000) && (v38 = v34 + (v28 | v29) + (*(mlir::ShapedType::getShape(v53) + 8 * v36) & ((v28 | v29) >> 63)), v38 > *(mlir::ShapedType::getShape(v53) + 8 * v36)))
    {
      v56 = v64;
      v57 = 0;
      v39 = mlir::ValueRange::dereference_iterator(&v56, 0);
      v40 = mlir::getElementTypeOrSelf(v39);
      return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v40);
    }

    Shape = mlir::ShapedType::getShape(v53);
    v46 = mlir::ShapedType::getShape(v53);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v56, Shape, (v46 + 8 * v47));
    v48 = v56;
    if (*(v56 + v36) != 0x8000000000000000)
    {
      *(v56 + v36) = v37;
    }

    v49 = v57;
    isSplat = mlir::ElementsAttr::isSplat(v53);
    v51 = mlir::RankedTensorType::get(v48, v49, isSplat, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v51);
    if (v56 != &v58)
    {
      free(v56);
    }
  }

  return 1;
}

BOOL mlir::mps::SliceOp::verify(uint64_t **this)
{
  v70 = *MEMORY[0x1E69E9840];
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
      v27 = v7[1];
      v58 = v2;
      v59 = v27;
      if (!mlir::ElementsAttr::getShapedType(&v58))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v58 = v2;
  v59 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v58))
  {
    return 1;
  }

LABEL_15:
  mlir::ShapedType::getShape(&v58);
  v14 = v13;
  v57 = v13;
  v15 = *((*this)[9] + 56);
  v60 = 0;
  v61 = 0;
  v54[0] = &v60;
  v41 = v15;
  DefiningOp = mlir::Value::getDefiningOp(&v41);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v54, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<int>(v60, v61);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 1;
  }

  v18 = (v14 & (SingleInt >> 63)) + SingleInt;
  v56 = v18;
  if (v18 < 0 || v18 >= v14)
  {
    v41 = "failed: axis value {0} does not fit tensor rank ({1})";
    v42 = 53;
    v43 = &v50;
    v44 = 2;
    v45 = 1;
    v46 = &unk_1F1A177C0;
    v47 = &v56;
    v48 = &unk_1F1A177C0;
    v49 = &v57;
    v50 = &v46;
    v51 = &v48;
    v55 = 263;
    v54[0] = &v41;
    mlir::OpState::emitOpError(this, v54, &v60);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    v29 = result;
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
      result = v29;
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
        result = v29;
      }

      v30 = __p;
      if (__p)
      {
        v31 = v67;
        v32 = __p;
        if (v67 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v67 = v30;
        operator delete(v32);
        result = v29;
      }

      v33 = v64;
      if (v64)
      {
        v34 = v65;
        v35 = v64;
        if (v65 != v64)
        {
          do
          {
            v37 = *--v34;
            v36 = v37;
            *v34 = 0;
            if (v37)
            {
              MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
            }
          }

          while (v34 != v33);
          v35 = v64;
        }

        v65 = v33;
        operator delete(v35);
        result = v29;
      }

      if (v62 != &v63)
      {
        free(v62);
        return v29;
      }
    }

    return result;
  }

  v19 = *((*this)[9] + 88);
  v60 = 0;
  v61 = 0;
  v54[0] = &v60;
  v41 = v19;
  v20 = mlir::Value::getDefiningOp(&v41);
  if (!v20)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v54, v20) & 1) == 0)
  {
    return 1;
  }

  v21 = mlir::getSingleIntValue<int>(v60, v61);
  if ((v21 & 0x100000000) == 0)
  {
    return 1;
  }

  v22 = v21;
  if (*(mlir::ShapedType::getShape(&v58) + 8 * v18) == 0x8000000000000000)
  {
    return 1;
  }

  v23 = (*(mlir::ShapedType::getShape(&v58) + 8 * v18) & (v22 >> 63)) + v22;
  v53 = v23;
  if (v23 >= 0 && v23 < *(mlir::ShapedType::getShape(&v58) + 8 * v18))
  {
    matched = mlir::matchConstantWithIntValue<int>(*((*this)[9] + 120));
    if ((matched & 0x100000000) != 0)
    {
      v52 = matched;
      if ((matched & 0x80000000) != 0 || (v25 = v53 + matched, v25 > *(mlir::ShapedType::getShape(&v58) + 8 * v18)))
      {
        v40 = *(mlir::ShapedType::getShape(&v58) + 8 * v18);
        llvm::formatv<long long &,long long,long long &>(&v41, "failed: length value {0} does not fit within the dimension size ({1}) with start value ({2})", &v52, &v40, &v53);
        v55 = 263;
        v54[0] = &v41;
        mlir::OpState::emitOpError(this, v54, &v60);
        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
        return v26;
      }
    }

    return 1;
  }

  v38 = *(mlir::ShapedType::getShape(&v58) + 8 * v18);
  v41 = "failed: start value {0} does not fit dimension size ({1})";
  v42 = 57;
  v43 = &v50;
  v44 = 2;
  v45 = 1;
  v46 = &unk_1F1A177C0;
  v47 = &v53;
  v48 = &unk_1F1A17838;
  v49 = v38;
  v50 = &v46;
  v51 = &v48;
  v55 = 263;
  v54[0] = &v41;
  mlir::OpState::emitOpError(this, v54, &v60);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    v39 = result;
    mlir::InFlightDiagnostic::report(&v60);
    result = v39;
  }

  if (v69 == 1)
  {
    v26 = result;
    mlir::Diagnostic::~Diagnostic(&v61);
    return v26;
  }

  return result;
}

const char *llvm::formatv<long long &,long long,long long &>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char *a3@<X1>, const char **a4@<X2>, const char *a5@<X3>)
{
  v7 = __s;
  v9 = *a4;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v7;
  a1[1] = __s;
  a1[11] = (a1 + 5);
  a1[2] = (a1 + 11);
  a1[3] = 3;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A177C0;
  a1[6] = a3;
  a1[7] = &unk_1F1A17838;
  a1[8] = v9;
  a1[9] = &unk_1F1A177C0;
  a1[10] = a5;
  a1[12] = (a1 + 7);
  a1[13] = (a1 + 9);
  return __s;
}

BOOL mlir::mps::anonymous namespace::verifyStridedSlice(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v141 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*v8 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11 = v10;
  if (!v10)
  {
    v8 = 0;
  }

  v117 = v8;
  v12 = *(*(*(a5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v14 = v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v15 = *(*(*(a6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v17 = v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v18 = *(*(*(a7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v20 = v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11)
  {
    v21 = !v14;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || !v17;
  if (v22 || !v20)
  {
    v126 = "cannot run strided slice a non-tensor type";
    v128[8] = 259;
    mlir::Operation::emitOpError(a1, &v126, &v129);
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
    if (v129)
    {
      mlir::InFlightDiagnostic::report(&v129);
    }

    if (v140 == 1)
    {
      if (v139 != &v140)
      {
        free(v139);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v138;
        v29 = __p;
        if (v138 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v138 = v27;
        operator delete(v29);
      }

      v30 = v135;
      if (v135)
      {
        v31 = v136;
        v32 = v135;
        if (v136 != v135)
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
          v32 = v135;
        }

        v136 = v30;
        operator delete(v32);
      }

      v44 = v132;
      if (v132 != &v134)
      {
LABEL_77:
        free(v44);
      }
    }
  }

  else
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      {
        return 0;
      }

      v115 = 0;
      v116 = 0;
      v113 = 0;
      v114 = 0;
      v111 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v129 = &v115;
      if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a5, &v129))
      {
        v126 = &v113;
        if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a6, &v126))
        {
          v122 = &v111;
          if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a7, &v122))
          {
            v126 = v128;
            v127 = 0x400000000;
            mlir::ArrayAttr::getValue(&v117);
            v108 = v42;
            if (a3)
            {
              v129 = &v109;
              if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a3, &v129))
              {
                NumElements = mlir::ElementsAttr::getNumElements(v109, v110);
                v108 = NumElements;
                mlir::ElementsAttr::getValues<llvm::APInt>(&v109, &v129);
                LOWORD(v122) = v129;
                if (v129 == 1)
                {
                  v123 = v130;
                }

                else
                {
                  (*(*v130 + 16))(&v123);
                }

                v53 = v131;
                v124[0] = v131;
                LOWORD(v118) = v132;
                if (v132 == 1)
                {
                  v119 = v133;
                }

                else
                {
                  (*(*v133 + 16))(&v119);
                  v53 = v124[0];
                }

                v120[0] = v134;
                if (v53 != v134)
                {
                  do
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v122, &v103);
                    if (v104 > 0x40)
                    {
                      v56 = *v103;
                    }

                    else if (v104)
                    {
                      v56 = v103 << -v104 >> -v104;
                    }

                    else
                    {
                      v56 = 0;
                    }

                    if (v56 == -1)
                    {
                      v57 = 0x8000000000000000;
                    }

                    else
                    {
                      v57 = v56;
                    }

                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v126, v57);
                    if (v104 >= 0x41 && v103)
                    {
                      MEMORY[0x1AC55A040](v103, 0x1000C8000313F17);
                    }

                    ++v124[0];
                  }

                  while (v124[0] != v120[0]);
                }

                if ((v118 & 1) == 0)
                {
                  v54 = v119;
                  v119 = 0;
                  if (v54)
                  {
                    (*(*v54 + 8))(v54);
                  }
                }

                if ((v122 & 1) == 0)
                {
                  v55 = v123;
                  v123 = 0;
                  if (v55)
                  {
                    (*(*v55 + 8))(v55);
                  }
                }

                mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v129);
                goto LABEL_113;
              }
            }

            else
            {
              if (!a4)
              {
                NumElements = v42;
                goto LABEL_113;
              }

              v129 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8));
              v130 = v46;
              if (v129 && mlir::ElementsAttr::getShapedType(&v129))
              {
                Shape = mlir::ShapedType::getShape(&v129);
                if (v48)
                {
                  v49 = Shape;
                  v50 = 8 * v48;
                  do
                  {
                    v51 = *v49++;
                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v126, v51);
                    v50 -= 8;
                  }

                  while (v50);
                }

                mlir::ShapedType::getShape(&v129);
                NumElements = v52;
                v108 = v52;
LABEL_113:
                if (mlir::ElementsAttr::getNumElements(v115, v116) > NumElements || mlir::ElementsAttr::getNumElements(v113, v114) > NumElements || mlir::ElementsAttr::getNumElements(v111, v112) > NumElements)
                {
                  v122 = "Slice specification lengths: begin (";
                  v125 = 259;
                  mlir::Operation::emitOpError(a1, &v122, &v129);
                  v118 = mlir::ElementsAttr::getNumElements(v115, v116);
                  mlir::InFlightDiagnostic::operator<<<long long &>(&v129, &v118);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v58, ") end (");
                  v60 = v59;
                  v103 = mlir::ElementsAttr::getNumElements(v113, v114);
                  mlir::InFlightDiagnostic::operator<<<long long &>(v60, &v103);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v61, ") stride (");
                  v63 = v62;
                  v107 = mlir::ElementsAttr::getNumElements(v111, v112);
                  mlir::InFlightDiagnostic::operator<<<long long &>(v63, &v107);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v64, ") must be lower or equal to input rank ");
                  mlir::InFlightDiagnostic::operator<<<long long &>(v65, &v108);
                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v129);
                  goto LABEL_117;
                }

                v122 = v124;
                v123 = 0x400000000;
                mlir::getIntValues<long long>(v111, v112, &v122, 1);
                if (v123)
                {
                  v67 = v122;
                  v68 = 8 * v123;
                  while (*v67)
                  {
                    ++v67;
                    v68 -= 8;
                    if (!v68)
                    {
                      goto LABEL_123;
                    }
                  }

                  v118 = "stride cannot be 0";
                  v121 = 259;
                  mlir::Operation::emitOpError(a1, &v118, &v129);
                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v129);
                  goto LABEL_150;
                }

LABEL_123:
                if (!(a3 | a4))
                {
                  v26 = 1;
LABEL_150:
                  if (v122 != v124)
                  {
                    free(v122);
                  }

LABEL_117:
                  v44 = v126;
                  if (v126 == v128)
                  {
                    return v26;
                  }

                  goto LABEL_77;
                }

                v118 = v120;
                v119 = 0x400000000;
                Attr = mlir::Operation::getAttr(a1, "begin_mask", 0xAuLL);
                v71 = mlir::Operation::getAttr(a1, "end_mask", 8uLL);
                v73 = mlir::Operation::getAttr(a1, "shrink_axis_mask", 0x10uLL);
                {
                  Value = mlir::ArrayAttr::getValue(&v117);
                  if (a4)
                  {
                  }

                  else
                  {
                  }

                  if (!a4)
                  {
                  }

                  v106 = v78;
                  v107 = v77;
                  v79 = v76;
                  if (v76 == v119)
                  {
                    if (!v119)
                    {
LABEL_142:
                      v26 = 1;
                      goto LABEL_148;
                    }

                    v80 = Value;
                    v81 = 0;
                    while (1)
                    {
                      v82 = *(v118 + v81);
                      v83 = *(Value + 8 * v81);
                      v84 = v83 == 0x8000000000000000 || v82 == 0x8000000000000000;
                      if (!v84 && v82 != v83)
                      {
                        break;
                      }

                      if (v76 == ++v81)
                      {
                        goto LABEL_142;
                      }
                    }

                    v102 = v81;
                    v105 = 257;
                    mlir::Operation::emitOpError(a1, &v103, &v129);
                    mlir::InFlightDiagnostic::operator<<<char const*&>(&v129, &v107);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v92, "[");
                    mlir::InFlightDiagnostic::operator<<<unsigned long>(v93, &v102);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v94, "] = ");
                    mlir::InFlightDiagnostic::operator<<<long long &>(v95, (v80 + 8 * v102));
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v96, " should match dimension size: ");
                    mlir::InFlightDiagnostic::operator<<<long long &>(v97, v118 + v102);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v98, " deduced from ");
                    mlir::InFlightDiagnostic::operator<<<char const*&>(v99, &v106);
                  }

                  else
                  {
                    v105 = 257;
                    mlir::Operation::emitOpError(a1, &v103, &v129);
                    mlir::InFlightDiagnostic::operator<<<char const*&>(&v129, &v107);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v86, " rank ");
                    v102 = v79;
                    mlir::InFlightDiagnostic::operator<<<unsigned long>(v87, &v102);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v88, " is not consistent with rank deduced from ");
                    mlir::InFlightDiagnostic::operator<<<char const*&>(v89, &v106);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v90, " ");
                    v101 = v119;
                    mlir::InFlightDiagnostic::operator<<<unsigned long>(v91, &v101);
                  }

                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v129);
                }

                else
                {
                  v26 = 0;
                }

LABEL_148:
                if (v118 != v120)
                {
                  free(v118);
                }

                goto LABEL_150;
              }
            }

            v26 = 1;
            goto LABEL_117;
          }
        }
      }
    }

    return 1;
  }

  return v26;
}

uint64_t mlir::mps::StridedSliceOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77[4] = *MEMORY[0x1E69E9840];
  v74[0] = a4;
  v74[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v65 = a6;
  LOBYTE(v66) = 0;
  v67 = 0;
  v68 = v16;
  v69 = v17;
  v70 = a9;
  v71 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v65);
    if (v67 == 1)
    {
      v67 = 0;
    }

    mlir::OperationName::OperationName(&v66, "mps.strided_slice", 17, Context);
    v67 = 1;
  }

  v72 = a4;
  v73 = a5;
  if (a5 < 4)
  {
    goto LABEL_66;
  }

  v19 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mps::StridedSliceOpAdaptor::verify(&v65, v19))
  {
    goto LABEL_66;
  }

  v62 = v68;
  mlir::IntegerAttr::getValue(&v62, &v75);
  if (v76 > 0x40)
  {
    v20 = *v75;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v20 = v75;
  }

  v62 = v69;
  mlir::IntegerAttr::getValue(&v62, &v75);
  if (v76 > 0x40)
  {
    v56 = *v75;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v56 = v75;
  }

  v62 = *(&v69 + 1);
  mlir::IntegerAttr::getValue(&v62, &v75);
  if (v76 > 0x40)
  {
    v21 = *v75;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v21 = v75;
  }

  v22 = *(&v68 + 1);
  v23 = mlir::ValueRange::dereference_iterator(v74, 0);
  v24 = mlir::ValueRange::dereference_iterator(v74, 1);
  v25 = mlir::ValueRange::dereference_iterator(v74, 2);
  v26 = mlir::ValueRange::dereference_iterator(v74, 3);
  v27 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = *(*v27 + 136);
  if (v28 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v28 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v27 = 0;
  }

  v64 = v27;
  v30 = *(*(*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v32 = v30 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v33 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v35 = v33 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v36 = *(*(*(v26 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v38 = v36 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v27 || !v32 || !v35 || !v38)
  {
    if (mlir::emitOptionalError<char const(&)[39]>(a2, a3, "cannot run strided slice a non-tensor type"))
    {
      v43 = 0;
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (*(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v27);
    goto LABEL_67;
  }

  v75 = v77;
  v76 = 0x400000000;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = &v62;
  v44 = v26;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v24, &v57);
  v57 = &v60;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v25, &v57);
  v57 = &v58;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v44, &v57);
  Value = mlir::ArrayAttr::getValue(&v64);
  v43 = 0;
  if (v47)
  {
    v48 = v75;
    v49 = v76;
    ElementType = mlir::TensorType::getElementType(&v64);
    v43 = mlir::RankedTensorType::get(v48, v49, ElementType, 0);
  }

  if (v75 != v77)
  {
    v51 = v43;
    free(v75);
    v43 = v51;
  }

  if (!v47)
  {
LABEL_65:
    v52 = mlir::ValueRange::dereference_iterator(v74, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
    if (!ElementTypeOrSelf)
    {
LABEL_66:
      ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    }

LABEL_67:
    v43 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

LABEL_68:
  v53 = *(a11 + 8);
  if (v53 >= *(a11 + 12))
  {
    v55 = v43;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v53 + 1, 8);
    v43 = v55;
    v53 = *(a11 + 8);
  }

  *(*a11 + 8 * v53) = v43;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::StridedSliceOpAdaptor::verify(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1[3])
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[6];
      if (v4)
      {
        v33[0] = a1[3];
        Value = mlir::AffineMapAttr::getValue(v33);
        if (mlir::Type::isUnsignedInteger(&Value, 32))
        {
          v33[0] = v3;
          Value = mlir::AffineMapAttr::getValue(v33);
          if (mlir::Type::isUnsignedInteger(&Value, 32))
          {
            v33[0] = v4;
            Value = mlir::AffineMapAttr::getValue(v33);
            if (mlir::Type::isUnsignedInteger(&Value, 32))
            {
              return 1;
            }

            else
            {
              v33[0] = "'mps.strided_slice' op attribute 'shrink_axis_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
              v34 = 259;
              mlir::emitError(a2, v33, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            }
          }

          else
          {
            v33[0] = "'mps.strided_slice' op attribute 'end_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
            v34 = 259;
            mlir::emitError(a2, v33, &Value);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if (v44 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v36);
            }
          }

          return v5;
        }

        v33[0] = "'mps.strided_slice' op attribute 'begin_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
        v34 = 259;
        mlir::emitError(a2, v33, &Value);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v42;
            v28 = __p;
            if (v42 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v42 = v26;
            operator delete(v28);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v29 = v40;
          v11 = v39;
          if (v40 == v39)
          {
LABEL_73:
            v40 = v9;
            operator delete(v11);
LABEL_74:
            if (v37 != &v38)
            {
              free(v37);
            }

            return v5;
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

          while (v29 != v9);
LABEL_72:
          v11 = v39;
          goto LABEL_73;
        }
      }

      else
      {
        v33[0] = "'mps.strided_slice' op requires attribute 'shrink_axis_mask'";
        v34 = 259;
        mlir::emitError(a2, v33, &Value);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v20 = __p;
          if (__p)
          {
            v21 = v42;
            v22 = __p;
            if (v42 != __p)
            {
              do
              {
                v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
              }

              while (v21 != v20);
              v22 = __p;
            }

            v42 = v20;
            operator delete(v22);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v23 = v40;
          v11 = v39;
          if (v40 == v39)
          {
            goto LABEL_73;
          }

          do
          {
            v25 = *--v23;
            v24 = v25;
            *v23 = 0;
            if (v25)
            {
              MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
            }
          }

          while (v23 != v9);
          goto LABEL_72;
        }
      }
    }

    else
    {
      v33[0] = "'mps.strided_slice' op requires attribute 'end_mask'";
      v34 = 259;
      mlir::emitError(a2, v33, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v44 == 1)
      {
        if (v43 != &v44)
        {
          free(v43);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v42;
          v16 = __p;
          if (v42 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v42 = v14;
          operator delete(v16);
        }

        v9 = v39;
        if (!v39)
        {
          goto LABEL_74;
        }

        v17 = v40;
        v11 = v39;
        if (v40 == v39)
        {
          goto LABEL_73;
        }

        do
        {
          v19 = *--v17;
          v18 = v19;
          *v17 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v17 != v9);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v33[0] = "'mps.strided_slice' op requires attribute 'begin_mask'";
    v34 = 259;
    mlir::emitError(a2, v33, &Value);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v42;
        v8 = __p;
        if (v42 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v42 = v6;
        operator delete(v8);
      }

      v9 = v39;
      if (!v39)
      {
        goto LABEL_74;
      }

      v10 = v40;
      v11 = v39;
      if (v40 == v39)
      {
        goto LABEL_73;
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
      goto LABEL_72;
    }
  }

  return v5;
}

BOOL mlir::mps::StridedSliceGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v38[0] = a4;
  v38[1] = a5;
  if (a5 == 5)
  {
    v13 = mlir::ValueRange::dereference_iterator(v38, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v34 = v16;
    if (!v16)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot run strided slice grad a non-tensor type");
    }

    v35 = v37;
    v36 = 0x400000000;
    v17 = mlir::ValueRange::dereference_iterator(v38, 1);
    if ((mlir::matchConstantWithIntVector<long long>(v17, &v35) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
      v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
LABEL_31:
      v30 = *(a11 + 8);
      if (v30 >= *(a11 + 12))
      {
        v33 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v30 + 1, 8);
        v23 = v33;
        LODWORD(v30) = *(a11 + 8);
      }

      *(*a11 + 8 * v30) = v23;
      ++*(a11 + 8);
      if (v35 != v37)
      {
        free(v35);
      }

      return 1;
    }

    v18 = v36;
    v19 = v35;
    if (!v36)
    {
      goto LABEL_30;
    }

    if (v36 <= 3)
    {
      v20 = 0;
LABEL_36:
      v31 = v18 - v20;
      v32 = (v19 + 8 * v20);
      do
      {
        if (*v32 == -1)
        {
          *v32 = 0x8000000000000000;
        }

        ++v32;
        --v31;
      }

      while (v31);
LABEL_30:
      ElementType = mlir::TensorType::getElementType(&v34);
      v23 = mlir::RankedTensorType::get(v19, v18, ElementType, 0);
      goto LABEL_31;
    }

    v20 = v36 & 0xFFFFFFFC;
    v24 = (v35 + 16);
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    v26 = v20;
    while (1)
    {
      v27 = vmovn_s64(vceqq_s64(v24[-1], v25));
      if (v27.i8[0])
      {
        v24[-1].i64[0] = 0x8000000000000000;
        if ((v27.i8[4] & 1) == 0)
        {
LABEL_22:
          v28 = vmovn_s64(vceqq_s64(*v24, v25));
          if ((v28.i8[0] & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }
      }

      else if ((v27.i8[4] & 1) == 0)
      {
        goto LABEL_22;
      }

      v24[-1].i64[1] = 0x8000000000000000;
      v28 = vmovn_s64(vceqq_s64(*v24, v25));
      if ((v28.i8[0] & 1) == 0)
      {
LABEL_23:
        if (v28.i8[4])
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_27:
      v24->i64[0] = 0x8000000000000000;
      if (v28.i8[4])
      {
LABEL_28:
        v24->i64[1] = 0x8000000000000000;
      }

LABEL_19:
      v24 += 2;
      v26 -= 4;
      if (!v26)
      {
        if (v20 == v18)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      }
    }
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::CropOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = *MEMORY[0x1E69E9840];
  v72 = a6;
  LOBYTE(v73) = 0;
  v74 = 0;
  v75 = a9;
  v76 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v72);
    if (v74 == 1)
    {
      v74 = 0;
    }

    mlir::OperationName::OperationName(&v73, "mps.crop", 8, Context);
    v74 = 1;
    a1 = v13;
  }

  v77 = a4;
  v78 = a5;
  if (!a5)
  {
    v26 = mlir::Float32Type::get(a1, a2);
    v23 = mlir::UnrankedTensorType::get(v26);
    v24 = *(a11 + 8);
    if (v24 < *(a11 + 12))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || (v69 = v77, v70 = 0, v15 = mlir::ValueRange::dereference_iterator(&v69, 0), v63[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8)), v63[1] = v16, !v63[0]))
  {
    v69 = v77;
    v70 = 0;
    v21 = mlir::ValueRange::dereference_iterator(&v69, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
    v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v24 = *(a11 + 8);
    if (v24 < *(a11 + 12))
    {
LABEL_12:
      *(*a11 + 8 * v24) = v23;
LABEL_13:
      ++*(a11 + 8);
      return 1;
    }

LABEL_16:
    v27 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v24 + 1, 8);
    v23 = v27;
    LODWORD(v24) = *(a11 + 8);
    goto LABEL_12;
  }

  if ((mlir::ElementsAttr::getShapedType(v63) & 1) == 0)
  {
    v28 = v63[0];
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    goto LABEL_13;
  }

  mlir::ShapedType::getShape(v63);
  v18 = v17;
  v69 = v71;
  HIDWORD(v70) = 4;
  if (v17 < 5)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    v20 = 8 * v17;
    v19 = v71;
  }

  else
  {
    LODWORD(v70) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, v17, 8);
    v19 = v69;
    v20 = 8 * v18;
  }

  memset_pattern16(v19, &unk_1A75D94C0, v20);
LABEL_23:
  LODWORD(v70) = v18;
  v66 = v77;
  v67 = 1;
  v66 = mlir::ValueRange::offset_base(&v66, 1);
  v67 = 0;
  v30 = mlir::ValueRange::dereference_iterator(&v66, 0);
  v66 = 0;
  v67 = 0;
  v64 = &v66;
  v65 = v30;
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v66, v67);
    v33 = SingleInt & 0xFFFFFF00;
    v34 = SingleInt;
    v35 = HIDWORD(SingleInt) & 1;
  }

  else
  {
    LOBYTE(v35) = 0;
    v34 = 0;
    v33 = 0;
  }

  v66 = v77;
  v67 = 2;
  v66 = mlir::ValueRange::offset_base(&v66, 2);
  v67 = 0;
  v36 = mlir::ValueRange::dereference_iterator(&v66, 0);
  v66 = 0;
  v67 = 0;
  v64 = &v66;
  v65 = v36;
  v37 = mlir::Value::getDefiningOp(&v65);
  if (v37 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v37))
  {
    v38 = mlir::getSingleIntValue<int>(v66, v67);
    v61 = v38 & 0xFFFFFF00;
    v62 = v38;
    v39 = HIDWORD(v38) & 1;
  }

  else
  {
    LODWORD(v39) = 0;
    v61 = 0;
    v62 = 0;
  }

  v66 = v77;
  v67 = 3;
  v66 = mlir::ValueRange::offset_base(&v66, 3);
  v67 = 0;
  v40 = mlir::ValueRange::dereference_iterator(&v66, 0);
  v66 = 0;
  v67 = 0;
  v64 = &v66;
  v65 = v40;
  v41 = mlir::Value::getDefiningOp(&v65);
  if (v41 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v41))
  {
    v42 = mlir::getSingleIntValue<int>(v66, v67);
    v43 = v42 & 0xFFFFFF00;
    v44 = v42;
    v45 = HIDWORD(v42) & 1;
    if ((v35 & 1) == 0)
    {
LABEL_34:
      v46 = v69;
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v45) = 0;
    v44 = 0;
    v43 = 0;
    if ((v35 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v47 = (v18 & ((v33 | v34) >> 63)) + (v33 | v34);
  if (v47 < 0 || v18 <= v47)
  {
    goto LABEL_47;
  }

  Shape = mlir::ShapedType::getShape(v63);
  v49 = mlir::ShapedType::getShape(v63);
  llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v66, Shape, (v49 + 8 * v50));
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v69, &v66);
  if (v66 != &v68)
  {
    free(v66);
  }

  v51 = 0x8000000000000000;
  v46 = v69;
  if ((v39 & v45) == 1)
  {
    v52 = *(v69 + v47);
    if (v52 == 0x8000000000000000)
    {
      goto LABEL_45;
    }

    v53 = v52 - ((v61 | v62) + v44 + v43);
    if (v53 < 0 || (v51 = v53 & 0x7FFFFFFF, v52 < v51))
    {
LABEL_47:
      v66 = v77;
      v67 = 0;
      v58 = mlir::ValueRange::dereference_iterator(&v66, 0);
      v59 = mlir::getElementTypeOrSelf(v58);
      result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v59);
      v57 = v69;
      if (v69 == v71)
      {
        return result;
      }

LABEL_48:
      v60 = result;
      free(v57);
      return v60;
    }
  }

  *(v69 + v47) = v51;
LABEL_45:
  v54 = v70;
  isSplat = mlir::ElementsAttr::isSplat(v63);
  v56 = mlir::RankedTensorType::get(v46, v54, isSplat, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v56);
  result = 1;
  v57 = v69;
  if (v69 != v71)
  {
    goto LABEL_48;
  }

  return result;
}

uint64_t mlir::mps::CropOp::verify(uint64_t **this)
{
  v105 = *MEMORY[0x1E69E9840];
  LOBYTE(v93) = 0;
  v94 = 0;
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
  v92[0] = v2;
  v92[1] = v13;
  v14 = *((*this)[9] + 56);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v14;
  DefiningOp = mlir::Value::getDefiningOp(&v73);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v95, v96);
    v17 = SingleInt & 0xFF00000000;
    v18 = SingleInt & 0xFFFFFF00;
    v19 = SingleInt;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

  v20 = v19 | v18;
  v91 = BYTE4(v17);
  v90 = v19 | v18 | v17;
  if (mlir::ElementsAttr::getShapedType(v92) && (v17 & 0x100000000) != 0)
  {
    mlir::ShapedType::getShape(v92);
    v89 = v21;
    if (v18 >> 31)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 + v20;
    if (v23 < 0 || v23 >= v21)
    {
      v73 = "failed: axis value {0} does not fit tensor rank ({1})";
      v74 = 53;
      v75 = &v82;
      v76 = 2;
      v77 = 1;
      v78 = &unk_1F1A183F0;
      v79 = &v90;
      v80 = &unk_1F1A177C0;
      v81 = &v89;
      v82 = &v78;
      v83 = &v80;
      v88 = 263;
      v87[0] = &v73;
      mlir::OpState::emitOpError(this, v87, &v95);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v102;
          v45 = __p;
          if (v102 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v102 = v43;
          operator delete(v45);
        }

        v32 = v99;
        if (!v99)
        {
          goto LABEL_149;
        }

        v46 = v100;
        v34 = v99;
        if (v100 == v99)
        {
          goto LABEL_148;
        }

        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v32);
        goto LABEL_147;
      }

      return v28;
    }

    if (*(mlir::ShapedType::getShape(v92) + 8 * v23) != 0x8000000000000000)
    {
      v93 = *(mlir::ShapedType::getShape(v92) + 8 * v23);
      v94 = 1;
    }
  }

  v24 = *((*this)[9] + 88);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v24;
  v25 = mlir::Value::getDefiningOp(&v73);
  if (!v25 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, v25) & 1) == 0)
  {
    v27 = 0;
    BYTE4(v89) = 0;
    LODWORD(v89) = 0;
    goto LABEL_48;
  }

  v26 = mlir::getSingleIntValue<int>(v95, v96);
  v27 = v26;
  LODWORD(v89) = v26;
  BYTE4(v89) = BYTE4(v26);
  if ((v26 & 0x100000000) == 0)
  {
LABEL_48:
    v35 = 1;
    goto LABEL_49;
  }

  v86 = v26;
  if ((v26 & 0x80000000) != 0)
  {
    v73 = "failed: amount_before value {0} must be positive";
    v74 = 48;
    v75 = &v80;
    v76 = 1;
    v77 = 1;
    v78 = &unk_1F1A177C0;
    v79 = &v86;
    v80 = &v78;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v102;
        v55 = __p;
        if (v102 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v102 = v53;
        operator delete(v55);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v56 = v100;
      v34 = v99;
      if (v100 == v99)
      {
        goto LABEL_148;
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

      while (v56 != v32);
      goto LABEL_147;
    }

    return v28;
  }

  if (v94 == 1 && v93 < v26)
  {
    v73 = "failed: amount_before value {0} does not fit dimension size ({1})";
    v74 = 65;
    v75 = &v82;
    v76 = 2;
    v77 = 1;
    v78 = &unk_1F1A177C0;
    v79 = &v86;
    v80 = &unk_1F1A177C0;
    v81 = &v93;
    v82 = &v78;
    v83 = &v80;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v102;
        v31 = __p;
        if (v102 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v102 = v29;
        operator delete(v31);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v33 = v100;
      v34 = v99;
      if (v100 == v99)
      {
LABEL_148:
        v100 = v32;
        operator delete(v34);
LABEL_149:
        if (v97 != &v98)
        {
          free(v97);
        }

        return v28;
      }

      do
      {
        v50 = *--v33;
        v49 = v50;
        *v33 = 0;
        if (v50)
        {
          MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
LABEL_147:
      v34 = v99;
      goto LABEL_148;
    }

    return v28;
  }

  v35 = 0;
LABEL_49:
  v36 = *((*this)[9] + 120);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v36;
  v37 = mlir::Value::getDefiningOp(&v73);
  if (!v37 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, v37) & 1) == 0)
  {
    BYTE4(v86) = 0;
    LODWORD(v86) = 0;
LABEL_69:
    v28 = 1;
    if ((v94 & 1) == 0)
    {
      return v28;
    }

    return 1;
  }

  v38 = mlir::getSingleIntValue<int>(v95, v96);
  LODWORD(v86) = v38;
  BYTE4(v86) = BYTE4(v38);
  if ((v38 & 0x100000000) == 0)
  {
    goto LABEL_69;
  }

  v85 = v38;
  if ((v38 & 0x80000000) != 0)
  {
    v73 = "failed: amount_after value {0} must be positive";
    v74 = 47;
    v75 = &v80;
    v76 = 1;
    v77 = 1;
    v78 = &unk_1F1A177C0;
    v79 = &v85;
    v80 = &v78;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v102;
        v61 = __p;
        if (v102 != __p)
        {
          do
          {
            v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v102 = v59;
        operator delete(v61);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v62 = v100;
      v34 = v99;
      if (v100 == v99)
      {
        goto LABEL_148;
      }

      do
      {
        v64 = *--v62;
        v63 = v64;
        *v62 = 0;
        if (v64)
        {
          MEMORY[0x1AC55A040](v63, 0x1000C8077774924);
        }
      }

      while (v62 != v32);
      goto LABEL_147;
    }

    return v28;
  }

  if (v94 != 1 || v93 >= v38)
  {
    if (v94 && (v35 & 1) == 0)
    {
      v28 = 1;
      v65 = v93 - (v27 + v38);
      if (v65 < 0 || v93 < v65)
      {
        v73 = "failed: amount_before value {0} and amount_after value {1} do not fit dimension size ({2})";
        v74 = 90;
        v75 = v84;
        v76 = 3;
        v77 = 1;
        v78 = &unk_1F1A183F0;
        v79 = &v89;
        v80 = &unk_1F1A183F0;
        v81 = &v86;
        v82 = &unk_1F1A177C0;
        v83 = &v93;
        v84[0] = &v78;
        v84[1] = &v80;
        v84[2] = &v82;
        v88 = 263;
        v87[0] = &v73;
        mlir::OpState::emitOpError(this, v87, &v95);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
        if (v95)
        {
          mlir::InFlightDiagnostic::report(&v95);
        }

        if (v104 == 1)
        {
          if (v103 != &v104)
          {
            free(v103);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v102;
            v68 = __p;
            if (v102 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v102 = v66;
            operator delete(v68);
          }

          v32 = v99;
          if (!v99)
          {
            goto LABEL_149;
          }

          v69 = v100;
          v34 = v99;
          if (v100 == v99)
          {
            goto LABEL_148;
          }

          do
          {
            v71 = *--v69;
            v70 = v71;
            *v69 = 0;
            if (v71)
            {
              MEMORY[0x1AC55A040](v70, 0x1000C8077774924);
            }
          }

          while (v69 != v32);
          goto LABEL_147;
        }
      }

      return v28;
    }

    return 1;
  }

  v73 = "failed: amount_after value {0} does not fit dimension size ({1})";
  v74 = 64;
  v75 = &v82;
  v76 = 2;
  v77 = 1;
  v78 = &unk_1F1A177C0;
  v79 = &v85;
  v80 = &unk_1F1A177C0;
  v81 = &v93;
  v82 = &v78;
  v83 = &v80;
  v88 = 263;
  v87[0] = &v73;
  mlir::OpState::emitOpError(this, v87, &v95);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v102;
      v41 = __p;
      if (v102 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v102 = v39;
      operator delete(v41);
    }

    v32 = v99;
    if (!v99)
    {
      goto LABEL_149;
    }

    v42 = v100;
    v34 = v99;
    if (v100 == v99)
    {
      goto LABEL_148;
    }

    do
    {
      v52 = *--v42;
      v51 = v52;
      *v42 = 0;
      if (v52)
      {
        MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
      }
    }

    while (v42 != v32);
    goto LABEL_147;
  }

  return v28;
}

uint64_t mlir::mps::ReverseOp::verify(mlir::mps::ReverseOp *this)
{
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
    v26 = v2;
    v27 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v26))
    {
      return 1;
    }

    goto LABEL_15;
  }

  v20 = v7[1];
  v26 = v2;
  v27 = v20;
  if (!mlir::ElementsAttr::getShapedType(&v26))
  {
    return 1;
  }

LABEL_15:
  if (*(*this + 68) != 1)
  {
    v13 = *(*(*this + 72) + 56);
    if (v13)
    {
      v24 = 0;
      v25 = 0;
      v23 = &v24;
      v21 = v13;
      DefiningOp = mlir::Value::getDefiningOp(&v21);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v23, DefiningOp))
        {
          v22[0] = 0;
          v22[1] = 0;
          v21 = v22;
          v15 = *this;
          v16 = v24;
          v17 = v25;
          mlir::ShapedType::getShape(&v26);
          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v21, v22[0]);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(uint64_t a1, void **a2)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a2, result);
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::validateUniqueAxes(mlir::mps::_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t **a5)
{
  v43[4] = *MEMORY[0x1E69E9840];
  v41 = v43;
  v42 = 0x400000000;
  v8 = 1;
  mlir::getIntValues<long long>(a2, a3, &v41, 1);
  if (v42)
  {
    v10 = v41;
    v11 = &v41[v42];
    v12 = a5 + 1;
    while (1)
    {
      v13 = *v10;
      v31 = 0;
      {
        break;
      }

      v14 = *v12;
      if (!*v12)
      {
LABEL_14:
        operator new();
      }

      v15 = *v12;
      do
      {
        v16 = v15[4];
        if (v31 >= v16)
        {
          if (v16 >= v31)
          {
            v29 = "axis must be unique";
            v30 = 259;
            mlir::Operation::emitOpError(a1, &v29, v32);
            v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
            if (v32[0])
            {
              mlir::InFlightDiagnostic::report(v32);
            }

            if (v40 == 1)
            {
              if (v39 != &v40)
              {
                free(v39);
              }

              v20 = __p;
              if (__p)
              {
                v21 = v38;
                v22 = __p;
                if (v38 != __p)
                {
                  do
                  {
                    v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
                  }

                  while (v21 != v20);
                  v22 = __p;
                }

                v38 = v20;
                operator delete(v22);
              }

              v23 = v35;
              if (v35)
              {
                v24 = v36;
                v25 = v35;
                if (v36 != v35)
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
                  v25 = v35;
                }

                v36 = v23;
                operator delete(v25);
              }

              if (v33 != &v34)
              {
                free(v33);
              }
            }

            goto LABEL_38;
          }

          ++v15;
        }

        v15 = *v15;
      }

      while (v15);
      while (1)
      {
        while (1)
        {
          v17 = v14;
          v18 = v14[4];
          if (v31 >= v18)
          {
            break;
          }

          v14 = *v17;
          if (!*v17)
          {
            goto LABEL_14;
          }
        }

        if (v18 >= v31)
        {
          break;
        }

        v14 = v17[1];
        if (!v14)
        {
          goto LABEL_14;
        }
      }

      if (++v10 == v11)
      {
        v8 = 1;
        v19 = v41;
        if (v41 != v43)
        {
          goto LABEL_39;
        }

        return v8;
      }
    }

    v8 = 0;
    v19 = v41;
    if (v41 != v43)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_38:
    v19 = v41;
    if (v41 != v43)
    {
LABEL_39:
      free(v19);
    }
  }

  return v8;
}

BOOL mlir::mps::SplitOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v124[6] = *MEMORY[0x1E69E9840];
  v117 = a4;
  v118 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v109 = a6;
  LOBYTE(v110) = 0;
  v111 = 0;
  v112 = v16;
  v113 = a9;
  v17 = a5;
  v114 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v109);
    if (v111 == 1)
    {
      v111 = 0;
    }

    mlir::OperationName::OperationName(&v110, "mps.split", 9, Context);
    v111 = 1;
    v17 = v118;
  }

  v115 = a4;
  v116 = a5;
  if (v17 < 2 || (v19 = mlir::UnknownLoc::get(this, a2), !mlir::mps::SplitOpAdaptor::verify(&v109, v19)))
  {
    v29 = mlir::Float32Type::get(this, a2);
    v30 = mlir::UnrankedTensorType::get(v29);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
      v91 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v31 + 1, 8);
      v30 = v91;
      LODWORD(v31) = *(a11 + 8);
    }

    *(*a11 + 8 * v31) = v30;
    goto LABEL_17;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v117, 0);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v21)
  {
    v33 = mlir::ValueRange::dereference_iterator(&v117, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v35);
    }

    v36 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      v92 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
      v36 = v92;
      v37 = *(a11 + 8);
    }

    *(*a11 + 8 * v37) = v36;
LABEL_17:
    ++*(a11 + 8);
    return 1;
  }

  v23 = v21;
  v24 = v22;
  v25 = mlir::ValueRange::dereference_iterator(&v117, 1);
  v26 = v118;
  if (v118 == 3)
  {
    v93 = mlir::ValueRange::dereference_iterator(&v117, 2);
    v94 = v112;
    if (v112)
    {
LABEL_13:
      UInt = mlir::IntegerAttr::getUInt(&v94);
      v28 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v93 = 0;
    v94 = v112;
    if (v112)
    {
      goto LABEL_13;
    }
  }

  UInt = 0;
  v28 = 0;
LABEL_26:
  v108[0] = v23;
  v108[1] = v24;
  v106 = UInt;
  v107 = v28;
  v122 = v124;
  v123 = 0x600000000;
  LOBYTE(v104) = 0;
  v105 = 0;
  v38 = 0x8000000000000000;
  v103 = 0x8000000000000000;
  if (!mlir::ElementsAttr::getShapedType(v108))
  {
    goto LABEL_46;
  }

  mlir::ShapedType::getShape(v108);
  v40 = v39;
  if (mlir::mps::getAxis(a2, a3, v25, v39, &v104))
  {
    if (v105 == 1)
    {
      Shape = mlir::ShapedType::getShape(v108);
      v43 = v42;
      v44 = 0;
      v38 = Shape[v104];
      v103 = v38;
      LODWORD(v123) = 0;
      v45 = (8 * v42) >> 3;
      if (v45 > HIDWORD(v123))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v45, 8);
        v44 = v123;
      }

      if (v43)
      {
        memcpy(v122 + 8 * v44, Shape, 8 * v43);
        v44 = v123;
      }

      LODWORD(v123) = v44 + v43;
      v46 = 1;
      v119 = v121;
      v120 = 0x600000000;
      if (v26 != 3)
      {
        goto LABEL_34;
      }

LABEL_47:
      v95 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v93 + 8) & 0xFFFFFFFFFFFFFFF8));
      v96 = v51;
      if ((mlir::ElementsAttr::getShapedType(&v95) & 1) == 0)
      {
        goto LABEL_107;
      }

      if ((mlir::matchConstantWithIntVector<long long>(v93, &v119) & 1) == 0)
      {
        if ((v28 & 1) == 0)
        {
          UInt = *mlir::ShapedType::getShape(&v95);
          LOBYTE(v107) = 1;
          v106 = UInt;
          if (UInt == 0x8000000000000000)
          {
            goto LABEL_107;
          }
        }

        v52 = v120;
        if (UInt != v120)
        {
          if (UInt >= v120)
          {
            if (UInt > HIDWORD(v120))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v121, UInt, 8);
              v52 = v120;
            }

            if (UInt != v52)
            {
              bzero(&v119[8 * v52], 8 * (UInt - v52));
            }
          }

          LODWORD(v120) = UInt;
        }

        if (UInt)
        {
          v53 = v119;
          v54 = 8 * UInt;
LABEL_70:
          memset_pattern16(v53, &unk_1A75D94C0, v54);
        }
      }

LABEL_71:
      if (mlir::ElementsAttr::getShapedType(v108))
      {
        if (v120)
        {
          v55 = v119;
          v56 = v104;
          do
          {
            v57 = v122;
            if (v46)
            {
              *(v122 + v56) = *v55;
            }

            v58 = v123;
            isSplat = mlir::ElementsAttr::isSplat(v108);
            v60 = mlir::RankedTensorType::get(v57, v58, isSplat, 0);
            v61 = *(a11 + 8);
            if (v61 >= *(a11 + 12))
            {
              v62 = v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v61 + 1, 8);
              v60 = v62;
              v61 = *(a11 + 8);
            }

            *(*a11 + 8 * v61) = v60;
            ++*(a11 + 8);
            v55 += 8;
          }

          while (v55 != &v119[8 * v120]);
        }

        goto LABEL_106;
      }

      v63 = mlir::ElementsAttr::isSplat(v108);
      v64 = mlir::UnrankedTensorType::get(v63);
      v65 = v64;
      v66 = v120;
      if (*(a11 + 12) < v120)
      {
        *(a11 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v66, 8);
        v67 = *a11;
        if (v66 >= 4)
        {
          v68 = v67 + (v66 & 0xFFFFFFFC);
          v69 = v66 & 3;
          v76 = vdupq_n_s64(v65);
          v77 = v67 + 1;
          v78 = v66 & 0xFFFFFFFC;
          do
          {
            v77[-1] = v76;
            *v77 = v76;
            v77 += 2;
            v78 -= 4;
          }

          while (v78);
          if ((v66 & 0xFFFFFFFC) == v66)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v68 = *a11;
          v69 = v66;
        }

        do
        {
          *v68++ = v65;
          --v69;
        }

        while (v69);
LABEL_93:
        v72 = (a11 + 8);
        goto LABEL_105;
      }

      v70 = *a11;
      v72 = (a11 + 8);
      v71 = *(a11 + 8);
      if (v71 >= v120)
      {
        v73 = v120;
      }

      else
      {
        v73 = *(a11 + 8);
      }

      if (v73)
      {
        if (v73 < 4)
        {
          v74 = *a11;
          v75 = v73;
          do
          {
LABEL_97:
            *v74++ = v64;
            --v75;
          }

          while (v75);
          goto LABEL_98;
        }

        v74 = v70 + (v73 & 0xFFFFFFFC);
        v75 = v73 & 3;
        v79 = vdupq_n_s64(v64);
        v80 = v70 + 1;
        v81 = v73 & 0xFFFFFFFC;
        do
        {
          v80[-1] = v79;
          *v80 = v79;
          v80 += 2;
          v81 -= 4;
        }

        while (v81);
        if (v73 != (v73 & 0xFFFFFFFC))
        {
          goto LABEL_97;
        }
      }

LABEL_98:
      if (v71 < v66)
      {
        v82 = v66 - v71;
        v83 = (v70 + 8 * v71);
        if (v66 - v71 >= 4)
        {
          v84 = v83 + (v82 & 0xFFFFFFFFFFFFFFFCLL);
          v85 = v82 & 3;
          v86 = vdupq_n_s64(v64);
          v87 = v83 + 1;
          v88 = v82 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v87[-1] = v86;
            *v87 = v86;
            v87 += 2;
            v88 -= 4;
          }

          while (v88);
          if (v82 == (v82 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_105;
          }
        }

        else
        {
          v84 = v70 + v71;
          v85 = v66 - v71;
        }

        do
        {
          *v84++ = v64;
          --v85;
        }

        while (v85);
      }

LABEL_105:
      *v72 = v66;
LABEL_106:
      result = 1;
LABEL_107:
      if (v119 != v121)
      {
        v89 = result;
        free(v119);
        result = v89;
      }

      goto LABEL_109;
    }

    if (v40 < 1)
    {
      v46 = 0;
      v38 = 0x8000000000000000;
      v119 = v121;
      v120 = 0x600000000;
      if (v26 == 3)
      {
        goto LABEL_47;
      }

LABEL_34:
      if (!v28)
      {
        goto LABEL_107;
      }

      if (v38 == 0x8000000000000000)
      {
        if (!UInt)
        {
          goto LABEL_71;
        }

        if (UInt < 7)
        {
          v47 = 0;
          v48 = v121;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v121, UInt, 8);
          v47 = v120;
          v48 = v119;
        }

        if (UInt != v47)
        {
          bzero(&v48[8 * v47], 8 * (UInt - v47));
        }

        LODWORD(v120) = UInt;
        v54 = 8 * UInt;
        v53 = v48;
        goto LABEL_70;
      }

      {
        v95 = "infer split sizes from total size={0} and num_splits={1} failed.";
        v96 = 64;
        v97 = v102;
        v98 = 2;
        v99 = 1;
        v100[0] = &unk_1F1A177C0;
        v100[1] = &v103;
        v101[0] = &unk_1F1A2EBB0;
        v101[1] = &v106;
        v102[0] = v100;
        v102[1] = v101;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, a3, &v95);
        goto LABEL_107;
      }

      goto LABEL_71;
    }

    v49 = v123;
    v50 = v40 + 1;
    v38 = 0x8000000000000000;
    do
    {
      if (v49 >= HIDWORD(v123))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v49 + 1, 8);
        v49 = v123;
      }

      *(v122 + v49) = 0x8000000000000000;
      v49 = v123 + 1;
      LODWORD(v123) = v123 + 1;
      --v50;
    }

    while (v50 > 1);
LABEL_46:
    v46 = 0;
    v119 = v121;
    v120 = 0x600000000;
    if (v26 == 3)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  result = 0;
LABEL_109:
  if (v122 != v124)
  {
    v90 = result;
    free(v122);
    return v90;
  }

  return result;
}

BOOL mlir::mps::SplitOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    return 1;
  }

  v13[0] = *(a1 + 24);
  v15[0] = mlir::AffineMapAttr::getValue(v13);
  if (mlir::Type::isUnsignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.split' op attribute 'num_splits' failed to satisfy constraint: 32-bit unsigned integer attribute";
  v14 = 259;
  mlir::emitError(a2, v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
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
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::mps::SplitOp::verify(uint64_t **this)
{
  v1 = this;
  v149[6] = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v128[0] = v2;
  v128[1] = v13;
  v14 = *(*v1 + 9);
  if (v14)
  {
    v15 = (*v1 - 2);
  }

  else
  {
    v15 = 0;
  }

  v16 = 0x8000000000000000;
  v127 = 0x8000000000000000;
  LOBYTE(v125) = 0;
  v126 = 0;
  if (!mlir::ElementsAttr::getShapedType(v128))
  {
    v115 = 0;
    v117 = 0;
    v20 = *v1;
    if (*(*v1 + 17) != 2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v22 = v149;
    v147 = v149;
    v148 = 0x600000000;
LABEL_28:
    v116 = 1;
LABEL_29:
    LOBYTE(v132) = 0;
    v134 = 0;
    v118[0] = (*v1)[2 * ((*(*v1 + 11) >> 23) & 1) + 8];
    if (v118[0])
    {
      mlir::IntegerAttr::getValue(v118, &v135);
      if (v136[0] >= 0x41)
      {
        v23 = v135;
      }

      else
      {
        v23 = &v135;
      }

      v24 = *v23;
      if (v136[0] >= 0x41 && v135)
      {
        MEMORY[0x1AC55A040]();
      }

      v123 = v24;
      v124 = 1;
      if (v24)
      {
        if (v14 == v24)
        {
          if (v127 != 0x8000000000000000)
          {
            v129 = v131;
            v130 = 0x600000000;
            if (v25)
            {
              std::optional<llvm::SmallVector<long long,6u>>::operator=[abi:nn200100]<llvm::SmallVector<long long,6u>&,void>(&v132, &v129);
            }

            else
            {
              if ((v124 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:nn200100]();
                goto LABEL_249;
              }

              llvm::formatv<long long &,unsigned int &>(v118, "infer split sizes from total size={0} and num_splits={1} failed.", &v127, &v123);
              v122 = 263;
              v120 = v118;
              mlir::OpState::emitOpError(v1, &v120, &v135);
              v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v135);
            }

            if (v129 != v131)
            {
              free(v129);
            }

            if ((v25 & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          goto LABEL_43;
        }

        v119 = 259;
        mlir::OpState::emitOpError(v1, v118, &v135);
        v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
        if (v135)
        {
          mlir::InFlightDiagnostic::report(&v135);
        }

        if (v146 != 1)
        {
          goto LABEL_234;
        }

        if (v145 != &v146)
        {
          free(v145);
        }

        v62 = __p;
        if (__p)
        {
          v63 = v144;
          v64 = __p;
          if (v144 != __p)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = __p;
          }

          v144 = v62;
          operator delete(v64);
        }

        v57 = v141;
        if (!v141)
        {
          goto LABEL_232;
        }

        v65 = v142;
        v59 = v141;
        if (v142 == v141)
        {
          goto LABEL_231;
        }

        do
        {
          v67 = *--v65;
          v66 = v67;
          *v65 = 0;
          if (v67)
          {
            MEMORY[0x1AC55A040](v66, 0x1000C8077774924);
          }
        }

        while (v65 != v57);
      }

      else
      {
        v119 = 259;
        mlir::OpState::emitOpError(v1, v118, &v135);
        v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
        if (v135)
        {
          mlir::InFlightDiagnostic::report(&v135);
        }

        if (v146 != 1)
        {
          goto LABEL_234;
        }

        if (v145 != &v146)
        {
          free(v145);
        }

        v54 = __p;
        if (__p)
        {
          v55 = v144;
          v56 = __p;
          if (v144 != __p)
          {
            do
            {
              v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
            }

            while (v55 != v54);
            v56 = __p;
          }

          v144 = v54;
          operator delete(v56);
        }

        v57 = v141;
        if (!v141)
        {
          goto LABEL_232;
        }

        v58 = v142;
        v59 = v141;
        if (v142 == v141)
        {
          goto LABEL_231;
        }

        do
        {
          v61 = *--v58;
          v60 = v61;
          *v58 = 0;
          if (v61)
          {
            MEMORY[0x1AC55A040](v60, 0x1000C8077774924);
          }
        }

        while (v58 != v57);
      }

LABEL_230:
      v59 = v141;
      goto LABEL_231;
    }

    v124 = 0;
    v123 = 0;
    if (!v14)
    {
      v26 = 0;
LABEL_131:
      v24 = 1;
      if (v127 != 0x8000000000000000 && v26 != v127)
      {
        v118[0] = "sum of result dimension lengths along split axis must equal input dimension length along split axis";
        v119 = 259;
        mlir::OpState::emitOpError(v1, v118, &v135);
        v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
        if (v135)
        {
          mlir::InFlightDiagnostic::report(&v135);
        }

        if (v146 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v136);
          if (v134 == 1)
          {
            goto LABEL_235;
          }

          goto LABEL_238;
        }
      }

      goto LABEL_234;
    }

LABEL_43:
    v113 = v1;
    v114 = v149;
    v26 = 0;
    v27 = 0;
    v112 = 0;
    v111 = 0;
    v110 = v14 - 1;
    while (1)
    {
      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v27) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v29)
      {
        goto LABEL_58;
      }

      v30 = *v29;
      {
        v31 = *(v28 + 421);
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (!v33)
        {
          goto LABEL_58;
        }
      }

      else
      {
        mlir::Builder::getI32VectorAttr();
        v31 = *(v28 + 421);
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (!v33)
        {
          goto LABEL_58;
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
        v51 = v34[1];
        v120 = v29;
        v121 = v51;
        if (mlir::ElementsAttr::getShapedType(&v120))
        {
          goto LABEL_59;
        }

LABEL_44:
        v26 = 0x8000000000000000;
        if (++v27 == v14)
        {
          goto LABEL_94;
        }
      }

      else
      {
LABEL_58:
        v120 = v29;
        v121 = 0;
        if (!mlir::ElementsAttr::getShapedType(&v120))
        {
          goto LABEL_44;
        }

LABEL_59:
        if (v16 != 0x8000000000000000)
        {
          mlir::ShapedType::getShape(&v120);
          if (v40 != v16)
          {
            v118[0] = "invalid rank for result, expected rank ";
            v119 = 259;
            v24 = &v135;
            mlir::OpState::emitOpError(v113, v118, &v135);
            v22 = v149;
            if (!v135)
            {
              goto LABEL_157;
            }

            LODWORD(v129) = 2;
            v130 = v16;
            v76 = v138;
            v77 = &v129;
            v78 = v137;
            if (v138 < v139)
            {
              goto LABEL_156;
            }

            if (v137 > &v129 || v137 + 24 * v138 <= &v129)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
              v77 = &v129;
              v78 = v137;
              goto LABEL_247;
            }

LABEL_249:
            v109 = (&v129 - v78);
            llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 24, v140, v76 + 1, 24);
            v78 = v137;
            v77 = &v109[v137];
LABEL_247:
            v22 = v114;
LABEL_156:
            v79 = &v78[24 * v138];
            v80 = *v77;
            *(v79 + 2) = v77[2];
            *v79 = v80;
            ++v138;
LABEL_157:
            v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
            if (v135)
            {
              mlir::InFlightDiagnostic::report(&v135);
            }

            if (v146 == 1)
            {
              if (v145 != &v146)
              {
                free(v145);
              }

              v81 = __p;
              if (__p)
              {
                v82 = v144;
                v83 = __p;
                if (v144 != __p)
                {
                  do
                  {
                    v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
                  }

                  while (v82 != v81);
                  v83 = __p;
                }

                v144 = v81;
                operator delete(v83);
              }

              v57 = v141;
              if (v141)
              {
                v84 = v142;
                v59 = v141;
                if (v142 != v141)
                {
                  do
                  {
                    v86 = *--v84;
                    v85 = v86;
                    *v84 = 0;
                    if (v86)
                    {
                      MEMORY[0x1AC55A040](v85, 0x1000C8077774924);
                    }
                  }

                  while (v84 != v57);
                  goto LABEL_230;
                }

LABEL_231:
                v142 = v57;
                operator delete(v59);
              }

LABEL_232:
              if (v137 != v140)
              {
                free(v137);
              }
            }

LABEL_234:
            if (v134 == 1)
            {
              goto LABEL_235;
            }

            goto LABEL_238;
          }
        }

        Shape = mlir::ShapedType::getShape(&v120);
        if (v126 == 1)
        {
          v43 = Shape;
          v44 = v14;
          v45 = v16;
          v46 = v15;
          v47 = v28;
          v48 = v42;
          v49 = v125;
          v50 = *(Shape + 8 * v125);
          if (mlir::ElementsAttr::getShapedType(v128) && ((mlir::verifyCompatibleShape(v43, v49, v117, v49) & 1) == 0 || (mlir::verifyCompatibleShape(&v43[v49 + 1], v48 - (v49 + 1), &v117[v49 + 1], v115 - (v49 + 1)) & 1) == 0))
          {
            v118[0] = "result shape must match input shape along non-axis dimensions";
            v119 = 259;
            mlir::OpState::emitOpError(v113, v118, &v135);
            v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
            if (v135)
            {
              mlir::InFlightDiagnostic::report(&v135);
            }

            v22 = v149;
            if (v146 != 1)
            {
              goto LABEL_234;
            }

            if (v145 != &v146)
            {
              free(v145);
            }

            v87 = __p;
            if (__p)
            {
              v88 = v144;
              v89 = __p;
              if (v144 != __p)
              {
                do
                {
                  v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
                }

                while (v88 != v87);
                v89 = __p;
              }

              v144 = v87;
              operator delete(v89);
            }

            v57 = v141;
            if (!v141)
            {
              goto LABEL_232;
            }

            v90 = v142;
            v59 = v141;
            if (v142 == v141)
            {
              goto LABEL_231;
            }

            do
            {
              v92 = *--v90;
              v91 = v92;
              *v90 = 0;
              if (v92)
              {
                MEMORY[0x1AC55A040](v91, 0x1000C8077774924);
              }
            }

            while (v90 != v57);
            goto LABEL_230;
          }

          if (v116)
          {
            v28 = v47;
            if (v124 != 1)
            {
              goto LABEL_74;
            }

            v15 = v46;
            if (v50 == 0x8000000000000000)
            {
              v50 = 0x8000000000000000;
              goto LABEL_75;
            }

            v16 = v45;
            if (v134 == 1)
            {
              v14 = v44;
              if (v50 != *(v132 + v27))
              {
                v118[0] = "inferred dimension size along axis must be compatible with result shape at axis";
                v119 = 259;
                mlir::OpState::emitOpError(v113, v118, &v135);
                v101 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
                v24 = v101;
                if (v135)
                {
                  mlir::InFlightDiagnostic::report(&v135);
                }

                v22 = v149;
                if (v146 != 1)
                {
                  goto LABEL_234;
                }

                if (v145 != &v146)
                {
                  free(v145);
                }

                v102 = __p;
                if (__p)
                {
                  v103 = v144;
                  v104 = __p;
                  if (v144 != __p)
                  {
                    do
                    {
                      v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
                    }

                    while (v103 != v102);
                    v104 = __p;
                  }

                  v144 = v102;
                  operator delete(v104);
                }

                v57 = v141;
                if (!v141)
                {
                  goto LABEL_232;
                }

                v105 = v142;
                v59 = v141;
                if (v142 == v141)
                {
                  goto LABEL_231;
                }

                do
                {
                  v107 = *--v105;
                  v106 = v107;
                  *v105 = 0;
                  if (v107)
                  {
                    MEMORY[0x1AC55A040](v106, 0x1000C8077774924);
                  }
                }

                while (v105 != v57);
                goto LABEL_230;
              }
            }

            else
            {
              v14 = v44;
              if (v27 >= v110)
              {
                if ((v111 & (v50 > v112)) == 1)
                {
                  v53 = "Dim length along axis in the last result tensor must be <= that in the first (N - 1) tensors. N: number of results";
                  goto LABEL_242;
                }
              }

              else
              {
                if ((v111 & (v50 != v112)) == 1)
                {
                  v53 = "Dim length along axis in the results (except the last one) must be same";
LABEL_242:
                  v118[0] = v53;
                  v119 = 259;
                  mlir::OpState::emitOpError(v113, v118, &v135);
                  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v135);
                  v22 = v149;
                  if (v134 != 1)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_235;
                }

                v112 = v50;
                v111 = 1;
              }
            }
          }

          else
          {
            v28 = v47;
            if (v50 == 0x8000000000000000)
            {
              v50 = 0x8000000000000000;
LABEL_74:
              v15 = v46;
LABEL_75:
              v16 = v45;
              v14 = v44;
              goto LABEL_77;
            }

            v15 = v46;
            v16 = v45;
            v14 = v44;
            if (v50 != v147[v27])
            {
              v119 = 259;
              mlir::OpState::emitOpError(v113, v118, &v135);
              v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
              if (v135)
              {
                mlir::InFlightDiagnostic::report(&v135);
              }

              v22 = v149;
              if (v146 != 1)
              {
                goto LABEL_234;
              }

              if (v145 != &v146)
              {
                free(v145);
              }

              v95 = __p;
              if (__p)
              {
                v96 = v144;
                v97 = __p;
                if (v144 != __p)
                {
                  do
                  {
                    v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
                  }

                  while (v96 != v95);
                  v97 = __p;
                }

                v144 = v95;
                operator delete(v97);
              }

              v57 = v141;
              if (!v141)
              {
                goto LABEL_232;
              }

              v98 = v142;
              v59 = v141;
              if (v142 == v141)
              {
                goto LABEL_231;
              }

              do
              {
                v100 = *--v98;
                v99 = v100;
                *v98 = 0;
                if (v100)
                {
                  MEMORY[0x1AC55A040](v99, 0x1000C8077774924);
                }
              }

              while (v98 != v57);
              goto LABEL_230;
            }
          }
        }

        else
        {
          v50 = 0x8000000000000000;
        }

LABEL_77:
        if (v50 == 0x8000000000000000 || v26 == 0x8000000000000000)
        {
          v26 = 0x8000000000000000;
        }

        else
        {
          v26 += v50;
        }

        if (++v27 == v14)
        {
LABEL_94:
          v1 = v113;
          v22 = v149;
          if (v26 != 0x8000000000000000)
          {
            goto LABEL_131;
          }

          v24 = 1;
          if (v134 != 1)
          {
            goto LABEL_238;
          }

LABEL_235:
          v93 = v132;
          v94 = &v133;
LABEL_236:
          if (v93 != v94)
          {
            free(v93);
          }

          goto LABEL_238;
        }
      }
    }
  }

  mlir::ShapedType::getShape(v128);
  v16 = v17;
  if (!mlir::mps::getAxis((*v1)[3], 1, *((*v1)[9] + 56), v17, &v125))
  {
    return 0;
  }

  if (v126 != 1)
  {
    return 1;
  }

  v18 = mlir::ShapedType::getShape(v128);
  v115 = v19;
  v117 = v18;
  v127 = *(v18 + 8 * v125);
  v20 = *v1;
  if (*(*v1 + 17) == 2)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = *(v20[9] + 88);
  v22 = v149;
  v147 = v149;
  v148 = 0x600000000;
  if (!v21 || (mlir::matchConstantWithIntVector<long long>(v21, &v147) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v148 == v14)
  {
    v116 = 0;
    goto LABEL_29;
  }

  v119 = 259;
  mlir::OpState::emitOpError(v1, v118, &v135);
  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
  if (v135)
  {
    mlir::InFlightDiagnostic::report(&v135);
  }

  if (v146 == 1)
  {
    if (v145 != &v146)
    {
      free(v145);
    }

    v68 = __p;
    if (__p)
    {
      v69 = v144;
      v70 = __p;
      if (v144 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v144 = v68;
      operator delete(v70);
    }

    v71 = v141;
    if (v141)
    {
      v72 = v142;
      v73 = v141;
      if (v142 != v141)
      {
        do
        {
          v75 = *--v72;
          v74 = v75;
          *v72 = 0;
          if (v75)
          {
            MEMORY[0x1AC55A040](v74, 0x1000C8077774924);
          }
        }

        while (v72 != v71);
        v73 = v141;
      }

      v142 = v71;
      operator delete(v73);
    }

    v93 = v137;
    v94 = v140;
    goto LABEL_236;
  }

LABEL_238:
  if (v147 != v22)
  {
    free(v147);
  }

  return v24;
}

uint64_t mlir::mps::anonymous namespace::inferSplitSizes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v6 = (a1 + a2 - 1) / a2;
  v7 = a1 / v6;
  v8 = a1 / v6;
  __src = v29;
  v28 = 6;
  if ((a1 / v6) >= 7)
  {
    v27 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v29, v8, 8);
    v9 = __src;
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = v7 & 3;
    v12 = vdupq_n_s64(v6);
    v13 = (__src + 16);
    v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13[-1] = v12;
      *v13 = v12;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v7 != (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      do
      {
        v9[v10++] = v6;
        --v11;
      }

      while (v11);
    }

    goto LABEL_24;
  }

  v9 = v29;
  if (!v8)
  {
    goto LABEL_24;
  }

  v15 = vdupq_n_s64(v7 - 1);
  v16 = v8 + 1;
  v17 = vmovn_s64(vcgeq_u64(v15, xmmword_1A7598670));
  if (v17.i8[0])
  {
    v29[0] = (a1 + a2 - 1) / a2;
    v18 = v16 & 0xE;
    if ((v17.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v29[1] = (a1 + a2 - 1) / a2;
    v9 = v29;
    if (v18 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v18 = v16 & 0xE;
  if (v17.i8[4])
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = v29;
  if (v18 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75989F0));
  if (v19.i8[0])
  {
    v29[2] = (a1 + a2 - 1) / a2;
    if ((v19.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v19.i8[4] & 1) == 0)
  {
LABEL_16:
    v9 = v29;
    if (v18 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v29[3] = (a1 + a2 - 1) / a2;
  v9 = v29;
  if (v18 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v20 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75DA400));
  if (v20.i8[0])
  {
    v29[4] = (a1 + a2 - 1) / a2;
  }

  v9 = v29;
  if (v20.i8[4])
  {
    v29[5] = (a1 + a2 - 1) / a2;
    v9 = v29;
  }

LABEL_24:
  v27 = v8;
  v21 = a1 - v7 * v6;
  if (v21)
  {
    if (v28 <= v8)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v29, v8 + 1, 8);
      LODWORD(v8) = v27;
      v9 = __src;
    }

    v9[v8] = v21;
    LODWORD(v8) = ++v27;
  }

  if (v8 == a2)
  {
    if (&__src == a3)
    {
      goto LABEL_44;
    }

    v22 = *(a3 + 8);
    if (v22 >= v8)
    {
      if (v8)
      {
        memmove(*a3, __src, 8 * a2);
      }

      goto LABEL_43;
    }

    if (*(a3 + 12) >= v8)
    {
      if (v22)
      {
        memmove(*a3, __src, 8 * v22);
        goto LABEL_41;
      }
    }

    else
    {
      *(a3 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), a2, 8);
    }

    v22 = 0;
LABEL_41:
    if (v27 != v22)
    {
      memcpy((*a3 + 8 * v22), __src + 8 * v22, 8 * (v27 - v22));
    }

LABEL_43:
    *(a3 + 8) = v8;
LABEL_44:
    v23 = 1;
    v24 = __src;
    if (__src == v29)
    {
      return v23;
    }

    goto LABEL_34;
  }

  v23 = 0;
  v24 = __src;
  if (__src != v29)
  {
LABEL_34:
    free(v24);
  }

  return v23;
}

const char *llvm::formatv<long long &,unsigned int &>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char *a3@<X1>, const char *a4@<X2>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v6;
  a1[1] = __s;
  a1[9] = (a1 + 5);
  a1[2] = (a1 + 9);
  a1[3] = 2;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A177C0;
  a1[6] = a3;
  a1[7] = &unk_1F1A18438;
  a1[8] = a4;
  a1[10] = (a1 + 7);
  return __s;
}

uint64_t std::optional<llvm::SmallVector<long long,6u>>::operator=[abi:nn200100]<llvm::SmallVector<long long,6u>&,void>(uint64_t result, uint64_t a2)
{
  if (*(result + 64) != 1)
  {
    v7 = (result + 16);
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (result == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      goto LABEL_17;
    }

    if (v8 < 7)
    {
      v9 = result;
      v11 = *(a2 + 8);
    }

    else
    {
      v9 = result;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v8, 8);
      v11 = *(v10 + 8);
      if (!v11)
      {
LABEL_16:
        result = v9;
        *(v9 + 8) = v8;
LABEL_17:
        *(result + 64) = 1;
        return result;
      }

      a2 = v10;
      v7 = *v9;
    }

    memcpy(v7, *a2, 8 * v11);
    goto LABEL_16;
  }

  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(result + 8);
    if (v3 >= v2)
    {
      if (v2)
      {
        v12 = result;
        memmove(*result, *a2, 8 * v2);
        result = v12;
        *(v12 + 8) = v2;
        return result;
      }

      goto LABEL_21;
    }

    if (*(result + 12) < v2)
    {
      *(result + 8) = 0;
      v4 = a2;
      v5 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v2, 8);
      a2 = v4;
      result = v5;
      v3 = 0;
      v6 = *(v4 + 8);
      if (*(v4 + 8))
      {
        goto LABEL_23;
      }

LABEL_21:
      *(result + 8) = v2;
      return result;
    }

    if (v3)
    {
      v13 = result;
      v14 = a2;
      memmove(*result, *a2, 8 * v3);
      a2 = v14;
      result = v13;
      v6 = *(v14 + 8) - v3;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v3 = 0;
      v6 = *(a2 + 8);
      if (!*(a2 + 8))
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v15 = 8 * v3;
    v16 = result;
    memcpy((*result + v15), (*a2 + v15), 8 * v6);
    result = v16;
    *(v16 + 8) = v2;
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v16 = *a7;
    v41 = a7[1];
  }

  else
  {
    v16 = 0uLL;
    v41 = 0u;
  }

  v32 = a6;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = v16;
  v36 = v41;
  v37 = a9;
  v38 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(&v33, "mps.singlegate_rnn", 18, Context);
    v34 = 1;
  }

  v39 = a4;
  v40 = a5;
  v18 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mps::SingleGateRNNOpAdaptor::verify(&v32, v18))
  {
    v22 = mlir::Float32Type::get(this, v19);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a11 + 8);
    v25 = (a11 + 8);
    if (v24 < *(a11 + 12))
    {
LABEL_14:
      v26 = *a11;
LABEL_22:
      v26[v24] = v23;
      ++*v25;
      return 1;
    }

LABEL_18:
    v28 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v24 + 1, 8);
    v23 = v28;
    LODWORD(v24) = *(a11 + 8);
    goto LABEL_14;
  }

  *&v41 = a4;
  *(&v41 + 1) = a5;
  if (a5)
  {
    v20 = *(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(a11 + 8);
    if (v21 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v21 + 1, 8);
      LODWORD(v21) = *(a11 + 8);
    }

    *(*a11 + 8 * v21) = v20;
    ++*(a11 + 8);
  }

  else if (!mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands"))
  {
    v29 = mlir::Float32Type::get(this, v27);
    v23 = mlir::UnrankedTensorType::get(v29);
    v24 = *(a11 + 8);
    v25 = (a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      v31 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v24 + 1, 8);
      v23 = v31;
      LODWORD(v24) = *(a11 + 8);
    }

    v26 = *a11;
    goto LABEL_22;
  }

  if (*(&v35 + 1))
  {
    v26 = *a11;
    v23 = **a11;
    v25 = (a11 + 8);
    v24 = *(a11 + 8);
    if (v24 < *(a11 + 12))
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  return 1;
}

BOOL mlir::mps::SingleGateRNNOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.singlegate_rnn' op requires attribute 'activation'";
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

  return v2;
}

BOOL mlir::mps::anonymous namespace::verifySingleGateRNN(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v125 = *MEMORY[0x1E69E9840];
  v109[0] = a2;
  v109[1] = a3;
  v108[0] = a4;
  v108[1] = a5;
  v107[0] = a6;
  v107[1] = a7;
  v106[0] = a11;
  v106[1] = a12;
  if (!a2)
  {
    return 1;
  }

  v12 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || a4 == 0;
  if (v12 || *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v109);
  v16 = v15;
  v17 = mlir::ShapedType::getShape(v108);
  if (v16 == 3)
  {
    v103 = v18;
    if (v18 < 2)
    {
      v105 = 259;
      mlir::Operation::emitOpError(a1, v104, &v113);
      v19 = &v103;
LABEL_10:
      mlir::InFlightDiagnostic::operator<<<unsigned long>(&v113, v19);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v20, ", should be 2 or greater.");
      goto LABEL_11;
    }

    v34 = 0;
    v35 = Shape[2];
    do
    {
      if (v34 < v18 - 2)
      {
        v36 = 1;
      }

      else
      {
        v36 = Shape[2];
      }

      v37 = *(v17 + 8 * v34);
      if (v36 != 0x8000000000000000 && v37 != 0x8000000000000000 && v37 != v36)
      {
        v105 = 259;
        mlir::Operation::emitOpError(a1, v104, &v113);
        if (v113)
        {
          LODWORD(v110) = 3;
          v111 = "square matrix of size [";
          v112 = 23;
          v42 = &v110;
          v43 = v115;
          if (v116 >= v117)
          {
            if (v115 <= &v110 && v115 + 24 * v116 > &v110)
            {
              v96 = &v110 - v115;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v43 = v115;
              v42 = (v115 + v96);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v42 = &v110;
              v43 = v115;
            }
          }

          v44 = &v43[24 * v116];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          v46 = ++v116;
          if (v113)
          {
            LODWORD(v110) = 2;
            v111 = v35;
            v47 = &v110;
            v48 = v115;
            if (v46 >= v117)
            {
              if (v115 <= &v110 && v115 + 24 * v46 > &v110)
              {
                v97 = &v110 - v115;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v46 + 1, 24);
                v48 = v115;
                v47 = (v115 + v97);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v46 + 1, 24);
                v47 = &v110;
                v48 = v115;
              }
            }

            v49 = &v48[24 * v116];
            v50 = *v47;
            *(v49 + 2) = v47[2];
            *v49 = v50;
            v51 = ++v116;
            if (v113)
            {
              LODWORD(v110) = 3;
              v111 = ", ";
              v112 = 2;
              v52 = &v110;
              v53 = v115;
              if (v51 >= v117)
              {
                if (v115 <= &v110 && v115 + 24 * v51 > &v110)
                {
                  v98 = &v110 - v115;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v51 + 1, 24);
                  v53 = v115;
                  v52 = (v115 + v98);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v51 + 1, 24);
                  v52 = &v110;
                  v53 = v115;
                }
              }

              v54 = &v53[24 * v116];
              v55 = *v52;
              *(v54 + 2) = v52[2];
              *v54 = v55;
              v56 = ++v116;
              if (v113)
              {
                LODWORD(v110) = 2;
                v111 = v35;
                v57 = &v110;
                v58 = v115;
                if (v56 >= v117)
                {
                  if (v115 <= &v110 && v115 + 24 * v56 > &v110)
                  {
                    v99 = &v110 - v115;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v56 + 1, 24);
                    v58 = v115;
                    v57 = (v115 + v99);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v56 + 1, 24);
                    v57 = &v110;
                    v58 = v115;
                  }
                }

                v59 = &v58[24 * v116];
                v60 = *v57;
                *(v59 + 2) = v57[2];
                *v59 = v60;
                v61 = ++v116;
                if (v113)
                {
                  LODWORD(v110) = 3;
                  v111 = "].";
                  v112 = 2;
                  v62 = &v110;
                  v63 = v115;
                  if (v61 >= v117)
                  {
                    if (v115 <= &v110 && v115 + 24 * v61 > &v110)
                    {
                      v100 = &v110 - v115;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v61 + 1, 24);
                      v63 = v115;
                      v62 = (v115 + v100);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v61 + 1, 24);
                      v62 = &v110;
                      v63 = v115;
                    }
                  }

                  v64 = &v63[24 * v116];
                  v65 = *v62;
                  *(v64 + 2) = v62[2];
                  *v64 = v65;
                  ++v116;
                }
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
        v66 = result;
        if (v113)
        {
          mlir::InFlightDiagnostic::report(&v113);
          result = v66;
        }

        if (v124)
        {
          if (v123 != &v124)
          {
            free(v123);
            result = v66;
          }

          v67 = __p;
          if (__p)
          {
            v68 = v122;
            v69 = __p;
            if (v122 != __p)
            {
              do
              {
                v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
              }

              while (v68 != v67);
              v69 = __p;
            }

            v122 = v67;
            operator delete(v69);
            result = v66;
          }

          v70 = v119;
          if (v119)
          {
            v71 = v120;
            v72 = v119;
            if (v120 != v119)
            {
              do
              {
                v74 = *--v71;
                v73 = v74;
                *v71 = 0;
                if (v74)
                {
                  MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
                }
              }

              while (v71 != v70);
              v72 = v119;
            }

            v120 = v70;
            operator delete(v72);
            result = v66;
          }

          if (v115 != v118)
          {
            free(v115);
            return v66;
          }
        }

        return result;
      }

      ++v34;
    }

    while (v18 != v34);
    if (v107[0] && *(*v107[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v40 = mlir::ShapedType::getShape(v107);
      v110 = v41;
      if (v41 <= 1)
      {
        v105 = 259;
        mlir::Operation::emitOpError(a1, v104, &v113);
        v19 = &v110;
        goto LABEL_10;
      }

      v75 = 0;
      while (1)
      {
        v76 = v75 >= v41 - 2 ? Shape[v75 + 3 - v41] : 1;
        v101 = v76;
        if (v76 != 0x8000000000000000)
        {
          v77 = *(v40 + 8 * v75);
          if (v77 != 0x8000000000000000 && v77 != v76)
          {
            break;
          }
        }

        if (v41 == ++v75)
        {
          goto LABEL_81;
        }
      }

      v102 = v75;
      v105 = 259;
      v79 = v40;
      mlir::Operation::emitOpError(a1, v104, &v113);
      mlir::InFlightDiagnostic::operator<<<unsigned long>(&v113, &v102);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v80, "] = ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v81, (v79 + 8 * v102));
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v82, ", expected ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v83, &v101);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v84, ".");
LABEL_11:
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v113);
      return v22;
    }

LABEL_81:
    if (a9)
    {
      if (*(*a9 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v85 = v109[0];
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v109[0]);
        if (!mlir::OpTrait::util::getBroadcastedType(v85, a9, ElementTypeOrSelf))
        {
          v93 = a1;
          v105 = 259;
          goto LABEL_100;
        }
      }
    }

    if (v106[0] && *(*v106[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v87 = mlir::ShapedType::getShape(v106);
      if (v88 == 3 && (*v87 == 0x8000000000000000 || *Shape == 0x8000000000000000 || *Shape == *v87))
      {
        v89 = v87[1];
        if (v89 == 0x8000000000000000 || (v90 = Shape[1], v90 == 0x8000000000000000) || v90 == v89)
        {
          v91 = v87[2];
          result = 1;
          if (v91 == 0x8000000000000000)
          {
            return result;
          }

          v92 = Shape[2];
          if (v92 == 0x8000000000000000 || v92 == v91)
          {
            return result;
          }
        }
      }

      v105 = 259;
      v93 = a1;
LABEL_100:
      mlir::Operation::emitOpError(v93, v104, &v113);
      v21 = &v113;
      goto LABEL_11;
    }

    return 1;
  }

  v104[0] = "Invalid input tensor rank: ";
  v105 = 259;
  mlir::Operation::emitOpError(a1, v104, &v113);
  if (v113)
  {
    LODWORD(v110) = 5;
    v111 = v16;
    v23 = &v110;
    v24 = v115;
    if (v116 >= v117)
    {
      if (v115 <= &v110 && v115 + 24 * v116 > &v110)
      {
        v94 = &v110 - v115;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
        v24 = v115;
        v23 = (v115 + v94);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
        v23 = &v110;
        v24 = v115;
      }
    }

    v25 = &v24[24 * v116];
    v26 = *v23;
    *(v25 + 2) = v23[2];
    *v25 = v26;
    v27 = ++v116;
    if (v113)
    {
      LODWORD(v110) = 3;
      v111 = ", should be 3.";
      v112 = 14;
      v28 = &v110;
      v29 = v115;
      if (v27 >= v117)
      {
        if (v115 <= &v110 && v115 + 24 * v27 > &v110)
        {
          v95 = &v110 - v115;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v27 + 1, 24);
          v29 = v115;
          v28 = (v115 + v95);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v27 + 1, 24);
          v28 = &v110;
          v29 = v115;
        }
      }

      v30 = &v29[24 * v116];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v116;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  if (v113)
  {
    v33 = result;
    mlir::InFlightDiagnostic::report(&v113);
    result = v33;
  }

  if (v124 == 1)
  {
    v22 = result;
    mlir::Diagnostic::~Diagnostic(&v114);
    return v22;
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v42[0] = a4;
  v42[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v43 = a7[1];
    v44 = *(a7 + 8);
  }

  else
  {
    v44 = 0;
    v16 = 0uLL;
    v43 = 0u;
  }

  v32 = a6;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = v16;
  v36 = v43;
  v37 = v44;
  v38 = a9;
  v39 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(&v33, "mps.singlegate_rnn_gradient", 27, Context);
    v34 = 1;
  }

  v40 = a4;
  v41 = a5;
  v18 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mps::SingleGateRNNGradientOpAdaptor::verify(&v32, v18))
  {
    goto LABEL_23;
  }

  *&v43 = a4;
  *(&v43 + 1) = a5;
  if (a5)
  {
    v20 = *(mlir::ValueRange::dereference_iterator(&v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(a11 + 8);
    if (v21 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v21 + 1, 8);
      LODWORD(v21) = *(a11 + 8);
    }

    *(*a11 + 8 * v21) = v20;
    ++*(a11 + 8);
    *&v43 = a4;
    *(&v43 + 1) = a5;
    if (a5 != 1)
    {
      v22 = *(mlir::ValueRange::dereference_iterator(&v43, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
      v23 = *(a11 + 8);
      if (v23 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
        LODWORD(v23) = *(a11 + 8);
      }

      *(*a11 + 8 * v23) = v22;
      ++*(a11 + 8);
      goto LABEL_18;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[41]>(a2, v13, "invalid number of operands"))
  {
    goto LABEL_23;
  }

  if (!mlir::emitOptionalError<char const(&)[41]>(a2, v13, "invalid number of operands"))
  {
    goto LABEL_23;
  }

LABEL_18:
  if (*(&v35 + 1))
  {
    *&v43 = 0;
    v24 = mlir::ValueRange::dereference_iterator(v42, 0);
    {
      v25 = v43;
      v26 = *(a11 + 8);
      if (v26 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
        LODWORD(v26) = *(a11 + 8);
      }

      *(*a11 + 8 * v26) = v25;
LABEL_26:
      ++*(a11 + 8);
      return 1;
    }

LABEL_23:
    v27 = mlir::Float32Type::get(this, v19);
    v28 = mlir::UnrankedTensorType::get(v27);
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      v31 = v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
      v28 = v31;
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    goto LABEL_26;
  }

  return 1;
}

BOOL mlir::mps::SingleGateRNNGradientOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.singlegate_rnn_gradient' op requires attribute 'activation'";
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

  return v2;
}

BOOL mlir::mps::anonymous namespace::inferRNNHiddenStateType(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = *(*a3 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  if (v6)
  {
    if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      *a4 = v6;
    }

    else
    {
      v20 = v22;
      v21 = 0x400000000;
      Value = mlir::ArrayAttr::getValue(&v19);
      v9 = v21;
      v11 = v10 - 1;
      if (v10 != 1)
      {
        v16 = (Value + 8);
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (v9 >= HIDWORD(v21))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v9 + 1, 8);
            v9 = v21;
          }

          *(v20 + v9) = v17;
          v9 = v21 + 1;
          LODWORD(v21) = v21 + 1;
          --v11;
        }

        while (v11);
      }

      v12 = v20;
      v13 = v9;
      ElementType = mlir::TensorType::getElementType(&v19);
      *a4 = mlir::RankedTensorType::get(v12, v13, ElementType, 0);
      if (v20 != v22)
      {
        free(v20);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "RNN non-tensor input type");
  }
}

BOOL mlir::mps::anonymous namespace::verifyLSTM(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v185 = *MEMORY[0x1E69E9840];
  v169[0] = a3;
  v169[1] = a4;
  v168[0] = a5;
  v168[1] = a6;
  v167[0] = a7;
  v167[1] = a8;
  v166[0] = a9;
  v166[1] = a10;
  v165[0] = a13;
  v165[1] = a14;
  v164[0] = a15;
  v164[1] = a16;
  v163[0] = a17;
  v163[1] = a18;
  v162[0] = a19;
  v162[1] = a20;
  if (!a3)
  {
    return 1;
  }

  result = 1;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || !a5 || *(*a5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v169);
  v25 = v24;
  v26 = mlir::ShapedType::getShape(v168);
  if (v25 != 3)
  {
    v160[0] = "Invalid input tensor rank: ";
    v161 = 259;
    mlir::Operation::emitOpError(a1, v160, &v173);
    if (v173)
    {
      LODWORD(v170) = 5;
      v171 = v25;
      v32 = &v170;
      v33 = v176;
      if (v177 >= HIDWORD(v177))
      {
        if (v176 <= &v170 && v176 + 24 * v177 > &v170)
        {
          v150 = &v170 - v176;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
          v33 = v176;
          v32 = (v176 + v150);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
          v32 = &v170;
          v33 = v176;
        }
      }

      v34 = &v33[24 * v177];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      v36 = (v177 + 1);
      LODWORD(v177) = v177 + 1;
      if (v173)
      {
        LODWORD(v170) = 3;
        v171 = ", should be 3.";
        v172 = 14;
        v37 = &v170;
        v38 = v176;
        if (v36 >= HIDWORD(v177))
        {
          if (v176 <= &v170 && v176 + 24 * v36 > &v170)
          {
            v151 = &v170 - v176;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v36 + 1, 24);
            v38 = v176;
            v37 = (v176 + v151);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v36 + 1, 24);
            v37 = &v170;
            v38 = v176;
          }
        }

        v39 = &v38[24 * v177];
        v40 = *v37;
        *(v39 + 2) = v37[2];
        *v39 = v40;
        LODWORD(v177) = v177 + 1;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
    if (v173)
    {
      v41 = result;
      mlir::InFlightDiagnostic::report(&v173);
      result = v41;
    }

    if (v184 == 1)
    {
      v42 = result;
      mlir::Diagnostic::~Diagnostic(&v174);
      return v42;
    }

    return result;
  }

  v159 = v27;
  if (v27 <= 1)
  {
    v161 = 259;
    mlir::Operation::emitOpError(a1, v160, &v173);
    v28 = &v159;
LABEL_8:
    mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, v28);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v29, ", should be 2 or greater.");
    goto LABEL_9;
  }

  v43 = *(Shape + 16);
  v44 = v43;
  v45 = a2;
  if ((a2 & 1) == 0)
  {
    v44 = 0x8000000000000000;
    if (v43 != 0x8000000000000000)
    {
      v46 = v43 + 3;
      if (v43 >= 0)
      {
        v46 = *(Shape + 16);
      }

      if ((v46 & 0xFFFFFFFFFFFFFFFCLL) != v43)
      {
        v160[0] = "Invalid input last dimension size: ";
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        mlir::InFlightDiagnostic::operator<<<long long &>(&v173, (Shape + 16));
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v91, ", should be divisible by four.");
        goto LABEL_9;
      }

      v44 = v46 >> 2;
    }
  }

  v47 = 0;
  v48 = v27 - 2;
  do
  {
    if (v47 < v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = v44;
    }

    v50 = 4 * v49;
    if (v49 == 0x8000000000000000)
    {
      v50 = 0x8000000000000000;
    }

    if (v27 == 2)
    {
      v49 = v50;
    }

    v51 = *(v26 + 8 * v47);
    if (v49 != 0x8000000000000000 && v51 != 0x8000000000000000 && v51 != v49)
    {
      v161 = 259;
      mlir::Operation::emitOpError(a1, v160, &v173);
      if (v173)
      {
        LODWORD(v170) = 3;
        v171 = "matrix of size [";
        v172 = 16;
        v58 = &v170;
        v59 = v176;
        if (v177 >= HIDWORD(v177))
        {
          if (v176 <= &v170 && v176 + 24 * v177 > &v170)
          {
            v152 = &v170 - v176;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
            v59 = v176;
            v58 = (v176 + v152);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
            v58 = &v170;
            v59 = v176;
          }
        }

        v60 = &v59[24 * v177];
        v61 = *v58;
        *(v60 + 2) = v58[2];
        *v60 = v61;
        v62 = (v177 + 1);
        LODWORD(v177) = v177 + 1;
        if (v173)
        {
          LODWORD(v170) = 2;
          v171 = (4 * v44);
          v63 = &v170;
          v64 = v176;
          if (v62 >= HIDWORD(v177))
          {
            if (v176 <= &v170 && v176 + 24 * v62 > &v170)
            {
              v153 = &v170 - v176;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v62 + 1, 24);
              v64 = v176;
              v63 = (v176 + v153);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v62 + 1, 24);
              v63 = &v170;
              v64 = v176;
            }
          }

          v65 = &v64[24 * v177];
          v66 = *v63;
          *(v65 + 2) = v63[2];
          *v65 = v66;
          v67 = (v177 + 1);
          LODWORD(v177) = v177 + 1;
          if (v173)
          {
            LODWORD(v170) = 3;
            v171 = ", ";
            v172 = 2;
            v68 = &v170;
            v69 = v176;
            if (v67 >= HIDWORD(v177))
            {
              if (v176 <= &v170 && v176 + 24 * v67 > &v170)
              {
                v154 = &v170 - v176;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v67 + 1, 24);
                v69 = v176;
                v68 = (v176 + v154);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v67 + 1, 24);
                v68 = &v170;
                v69 = v176;
              }
            }

            v70 = &v69[24 * v177];
            v71 = *v68;
            *(v70 + 2) = v68[2];
            *v70 = v71;
            v72 = (v177 + 1);
            LODWORD(v177) = v177 + 1;
            if (v173)
            {
              LODWORD(v170) = 2;
              v171 = v44;
              v73 = &v170;
              v74 = v176;
              if (v72 >= HIDWORD(v177))
              {
                if (v176 <= &v170 && v176 + 24 * v72 > &v170)
                {
                  v155 = &v170 - v176;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v72 + 1, 24);
                  v74 = v176;
                  v73 = (v176 + v155);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v72 + 1, 24);
                  v73 = &v170;
                  v74 = v176;
                }
              }

              v75 = &v74[24 * v177];
              v76 = *v73;
              *(v75 + 2) = v73[2];
              *v75 = v76;
              v77 = (v177 + 1);
              LODWORD(v177) = v177 + 1;
              if (v173)
              {
                LODWORD(v170) = 3;
                v171 = "].";
                v172 = 2;
                v78 = &v170;
                v79 = v176;
                if (v77 >= HIDWORD(v177))
                {
                  if (v176 <= &v170 && v176 + 24 * v77 > &v170)
                  {
                    v156 = &v170 - v176;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v77 + 1, 24);
                    v79 = v176;
                    v78 = (v176 + v156);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v77 + 1, 24);
                    v78 = &v170;
                    v79 = v176;
                  }
                }

                v80 = &v79[24 * v177];
                v81 = *v78;
                *(v80 + 2) = v78[2];
                *v80 = v81;
                LODWORD(v177) = v177 + 1;
              }
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
      v82 = result;
      if (v173)
      {
        mlir::InFlightDiagnostic::report(&v173);
        result = v82;
      }

      if (v184)
      {
        if (v183 != &v184)
        {
          free(v183);
          result = v82;
        }

        v83 = __p;
        if (__p)
        {
          v84 = v182;
          v85 = __p;
          if (v182 != __p)
          {
            do
            {
              v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
            }

            while (v84 != v83);
            v85 = __p;
          }

          v182 = v83;
          operator delete(v85);
          result = v82;
        }

        v86 = v179;
        if (v179)
        {
          v87 = v180;
          v88 = v179;
          if (v180 != v179)
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
            v88 = v179;
          }

          v180 = v86;
          operator delete(v88);
          result = v82;
        }

        if (v176 != v178)
        {
          free(v176);
          return v82;
        }
      }

      return result;
    }

    ++v47;
    --v27;
  }

  while (v27);
  if (v167[0] && *(*v167[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v54 = mlir::ShapedType::getShape(v167);
    v170 = v55;
    v56 = v55 - 1;
    if (v55 <= 1)
    {
LABEL_100:
      v160[0] = v57;
      v161 = 259;
      mlir::Operation::emitOpError(a1, v160, &v173);
      v28 = &v170;
      goto LABEL_8;
    }

    v92 = 0;
    v93 = a1;
    v45 = a2;
    do
    {
      if (v92 >= v55 - 2)
      {
        v94 = *(Shape - 8 * v55 + 24 + 8 * v92);
        v157 = v94;
        if (v56 == v92 && (a2 & 1) == 0 && v94 != 0x8000000000000000)
        {
LABEL_86:
          v94 /= 4;
          v157 = v94;
        }
      }

      else
      {
        v157 = 1;
        v94 = 1;
        if (v56 == v92 && (a2 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v95 = *(v54 + 8 * v92);
      if (v94 != 0x8000000000000000 && v95 != 0x8000000000000000 && v95 != v94)
      {
        v158 = v92;
        goto LABEL_176;
      }

      ++v92;
    }

    while (v55 != v92);
  }

  if (!v166[0] || *(*v166[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_119:
    if (a11 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v45)
      {
        v105 = v169[0];
        v106 = v169[0];
      }

      else
      {
        v173 = &v175;
        v174 = 0x400000000;
        v175 = *Shape;
        LODWORD(v174) = 1;
        v176 = *(Shape + 8);
        LODWORD(v174) = 2;
        v177 = *(Shape + 16);
        LODWORD(v174) = 3;
        if (v177 != 0x8000000000000000)
        {
          v177 /= 4;
        }

        isSplat = mlir::ElementsAttr::isSplat(v169);
        v160[0] = mlir::RankedTensorType::get(&v175, 3, isSplat, 0);
        v106 = mlir::TensorType::operator mlir::ShapedType(v160);
        if (v173 != &v175)
        {
          free(v173);
        }

        v105 = v169[0];
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      if (!mlir::OpTrait::util::getBroadcastedType(v106, a11, ElementTypeOrSelf))
      {
        v161 = 259;
        v111 = a1;
        goto LABEL_175;
      }
    }

    if (v162[0] && *(*v162[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v110 = mlir::ShapedType::getShape(v162);
      v111 = a1;
      if (v112 != 3 || *v110 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v110)
      {
        goto LABEL_143;
      }

      v113 = v110[1];
      if (v113 != 0x8000000000000000)
      {
        v114 = *(Shape + 8);
        if (v114 != 0x8000000000000000 && v114 != v113)
        {
          goto LABEL_143;
        }
      }

      v115 = *(Shape + 16);
      if (v115 != 0x8000000000000000)
      {
        v115 *= 4;
      }

      v116 = v110[2];
      if (v116 != 0x8000000000000000 && v115 != 0x8000000000000000 && v115 != v116)
      {
LABEL_143:
LABEL_157:
        v160[0] = v117;
        v161 = 259;
LABEL_175:
        mlir::Operation::emitOpError(v111, v160, &v173);
        v30 = &v173;
        goto LABEL_9;
      }
    }

    if (v164[0] && *(*v164[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if ((v118 = mlir::ShapedType::getShape(v164), v111 = a1, v119 != 3) || *v118 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v118 || (v120 = v118[1], v120 != 0x8000000000000000) && (v121 = *(Shape + 8), v121 != 0x8000000000000000) && v121 != v120 || (v122 = v118[2], v122 != 0x8000000000000000) && (v123 = *(Shape + 16), v123 != 0x8000000000000000) && v123 != v122)
      {
        goto LABEL_157;
      }
    }

    if (v165[0] && *(*v165[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v124 = mlir::ShapedType::getShape(v165);
      if (v125 != 1)
      {
        v141 = v125;
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        v170 = v141;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v170);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v142, ", should be 1.");
        goto LABEL_9;
      }

      if (v44 == 0x8000000000000000)
      {
        v126 = 0x8000000000000000;
      }

      else
      {
        v126 = 4 * v44;
      }

      v170 = v126;
      if (v126 != 0x8000000000000000 && *v124 != 0x8000000000000000 && *v124 != v126)
      {
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        v127 = &v173;
        v128 = &v170;
        goto LABEL_178;
      }
    }

    if (v163[0] && *(*v163[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v129 = mlir::ShapedType::getShape(v163);
      v170 = v130;
      if ((v130 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v131 = v129;
        v132 = 3 - v130;
        if (v130 == 2)
        {
          v134 = *(Shape + 8 * v132);
          v157 = v134;
          v133 = *v129;
        }

        else
        {
          v133 = *v129;
          if (*v129 == 1)
          {
            v134 = 1;
          }

          else
          {
            v134 = *(Shape + 8 * v132);
          }

          v157 = v134;
        }

        if (v134 == 0x8000000000000000 || v133 == 0x8000000000000000 || v133 == v134)
        {
          v145 = (Shape - 8 * v130 + 32);
          v144 = 1;
          while (1)
          {
            v146 = v144 >= v130 - 2 ? *v145 : 1;
            v157 = v146;
            if (v146 != 0x8000000000000000)
            {
              v147 = v129[v144];
              if (v147 != 0x8000000000000000 && v147 != v146)
              {
                break;
              }
            }

            ++v144;
            ++v145;
            if (v130 == v144)
            {
              return 1;
            }
          }
        }

        else
        {
          v144 = 0;
        }

        v158 = v144;
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v158);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v149, "] = ");
        v138 = &v131[v158];
        goto LABEL_177;
      }

      v161 = 259;
      mlir::Operation::emitOpError(a1, v160, &v173);
      mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v170);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, ", should be 2 or 3.");
      goto LABEL_9;
    }

    return 1;
  }

  v54 = mlir::ShapedType::getShape(v166);
  v170 = v98;
  v99 = v98 - 1;
  if (v98 <= 1)
  {
    goto LABEL_100;
  }

  v100 = 0;
  v93 = a1;
  v45 = a2;
  while (1)
  {
    if (v100 >= v98 - 2)
    {
      v101 = *(Shape - 8 * v98 + 24 + 8 * v100);
      v157 = v101;
      if (v99 != v100 || (a2 & 1) != 0 || v101 == 0x8000000000000000)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v157 = 1;
      v101 = 1;
      if (v99 != v100 || (a2 & 1) != 0)
      {
        goto LABEL_110;
      }
    }

    v101 /= 4;
    v157 = v101;
LABEL_110:
    v102 = *(v54 + 8 * v100);
    v103 = v101 == 0x8000000000000000 || v102 == 0x8000000000000000;
    if (!v103 && v102 != v101)
    {
      break;
    }

    if (v98 == ++v100)
    {
      goto LABEL_119;
    }
  }

  v158 = v100;
LABEL_176:
  v160[0] = v107;
  v161 = 259;
  v135 = v54;
  mlir::Operation::emitOpError(v93, v160, &v173);
  mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v158);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v136, "] = ");
  v138 = (v135 + 8 * v158);
LABEL_177:
  mlir::InFlightDiagnostic::operator<<<long long &>(v137, v138);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v139, ", expected ");
  v128 = &v157;
LABEL_178:
  mlir::InFlightDiagnostic::operator<<<long long &>(v127, v128);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v140, ".");
LABEL_9:
  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v173);
  return v31;
}

BOOL mlir::mps::LSTMOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v59[0] = a4;
  v59[1] = a5;
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
    *v46 = *(a7 + 56);
    *(&v46[1] + 4) = *(a7 + 68);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    memset(v46, 0, 28);
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v47 = a6;
  LOBYTE(v48) = 0;
  v49 = 0;
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v53 = v18;
  v54[0] = *v46;
  *(v54 + 12) = *(&v46[1] + 4);
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    v19 = a1;
    Context = mlir::Attribute::getContext(&v47);
    if (v49 == 1)
    {
      v49 = 0;
    }

    mlir::OperationName::OperationName(&v48, "mps.lstm", 8, Context);
    v49 = 1;
    a1 = v19;
  }

  v57 = a4;
  v58 = a5;
  if (!a5)
  {
    v32 = mlir::Float32Type::get(a1, a2);
    v33 = mlir::UnrankedTensorType::get(v32);
    v34 = *(a11 + 8);
    if (v34 >= *(a11 + 12))
    {
      v44 = v33;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v34 + 1, 8);
      v33 = v44;
      LODWORD(v34) = *(a11 + 8);
    }

    *(*a11 + 8 * v34) = v33;
    goto LABEL_40;
  }

  mlir::UnknownLoc::get(a1, a2);
  v21 = *(mlir::ValueRange::dereference_iterator(v59, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v21)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot handle a non-tensor input type");
  }

  v22 = *(*v21 + 136);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v24 = v23 ? v21 : 0;
  v45 = v24;
  if (!v24)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot handle a non-tensor input type");
  }

  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    Value = mlir::ArrayAttr::getValue(&v45);
    v46[0] = &v46[2];
    v46[1] = 0x400000000;
    if (v26)
    {
      LODWORD(v27) = 0;
      v28 = 8 * v26;
      do
      {
        v29 = *Value;
        if (v27 >= HIDWORD(v46[1]))
        {
          v30 = v27;
          v27 = Value;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v46, &v46[2], v30 + 1, 8);
          Value = v27;
          LODWORD(v27) = v46[1];
        }

        *(v46[0] + v27) = v29;
        v27 = ++LODWORD(v46[1]);
        ++Value;
        v28 -= 8;
      }

      while (v28);
      v35 = v46[0];
      v36 = (v46[0] + 8 * v27);
      v37 = *(v36 - 1);
      if (v37 == 0x8000000000000000)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0;
      v35 = &v46[2];
      v36 = &v46[2];
      v37 = v46[1];
    }

    *(v36 - 1) = (v37 / 4);
LABEL_30:
    ElementType = mlir::TensorType::getElementType(&v45);
    v21 = mlir::RankedTensorType::get(v35, v27, ElementType, 0);
    if (v46[0] != &v46[2])
    {
      free(v46[0]);
    }
  }

  v39 = *(a11 + 8);
  if (v39 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v39 + 1, 8);
    LODWORD(v39) = *(a11 + 8);
  }

  *(*a11 + 8 * v39) = v21;
  v40 = *(a11 + 12);
  v41 = (*(a11 + 8) + 1);
  *(a11 + 8) = v41;
  if (v41 >= v40)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
    LODWORD(v41) = *(a11 + 8);
  }

  *(*a11 + 8 * v41) = v21;
  v42 = (*(a11 + 8) + 1);
  *(a11 + 8) = v42;
  if (!*(&v52 + 1))
  {
    return 1;
  }

  v43 = v45;
  if (v42 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v42 + 1, 8);
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v43;
LABEL_40:
  ++*(a11 + 8);
  return 1;
}

void mlir::mps::LSTMOp::downgradeToVersion(uint64_t **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v23[0] = &unk_1F1A17630;
  v23[1] = 0x100000001;
  v24 = 0;
  v4 = *(a2 + 8);
  if (v4 && (v4 != 1 || *(a2 + 12)) || *(v3[2 * ((*(v3 + 11) >> 23) & 1) + 10] + 8) != 3)
  {
    v14 = *(v3 + 9);
    v15 = v3 - 2;
    if (!v14)
    {
      v15 = 0;
    }

    *a3 = v15;
    *(a3 + 8) = v14;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but IOFZ gate layout is only supported from version {1}";
    v16[1] = 109;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_1F1A17760;
    v18[1] = a2;
    v19[0] = &unk_1F1A17790;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
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
          v11 = v28;
        }

        v29 = v9;
        operator delete(v11);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

BOOL mlir::mps::LSTMGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = *MEMORY[0x1E69E9840];
  *&v67 = a4;
  *(&v67 + 1) = a5;
  if (a5)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(&v67, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v14)
    {
      v15 = *(*v14 + 136);
      if (v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      v55 = v17;
      if (v17)
      {
        if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_26;
        }

        Value = mlir::ArrayAttr::getValue(&v55);
        *&v56 = v57;
        *(&v56 + 1) = 0x400000000;
        if (v19)
        {
          LODWORD(v20) = 0;
          v21 = 8 * v19;
          do
          {
            v22 = *Value;
            if (v20 >= HIDWORD(v56))
            {
              v23 = v20;
              v20 = Value;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v57, v23 + 1, 8);
              Value = v20;
              LODWORD(v20) = DWORD2(v56);
            }

            *(v56 + 8 * v20) = v22;
            v20 = ++DWORD2(v56);
            ++Value;
            v21 -= 8;
          }

          while (v21);
          v25 = v56;
          v26 = (v56 + 8 * v20);
          v27 = *(v26 - 1);
          if (v27 == 0x8000000000000000)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v20 = 0;
          v25 = v57;
          v26 = v57;
          v27 = *(&v56 + 1);
        }

        *(v26 - 1) = 4 * v27;
LABEL_24:
        ElementType = mlir::TensorType::getElementType(&v55);
        v14 = mlir::RankedTensorType::get(v25, v20, ElementType, 0);
        if (v56 != v57)
        {
          free(v56);
        }

LABEL_26:
        v29 = *(a11 + 8);
        if (v29 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
          LODWORD(v29) = *(a11 + 8);
        }

        *(*a11 + 8 * v29) = v14;
        ++*(a11 + 8);
        v56 = v67;
        if (*(&v67 + 1) < 2uLL)
        {
          if (!mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands"))
          {
            return 0;
          }
        }

        else
        {
          v30 = *(mlir::ValueRange::dereference_iterator(&v56, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
          v31 = *(a11 + 8);
          if (v31 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v31 + 1, 8);
            LODWORD(v31) = *(a11 + 8);
          }

          *(*a11 + 8 * v31) = v30;
          ++*(a11 + 8);
        }

        v54 = 0;
        {
          v32 = v54;
          v33 = *(a11 + 8);
          if (v33 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
            LODWORD(v33) = *(a11 + 8);
          }

          *(*a11 + 8 * v33) = v32;
          v34 = *(a11 + 12);
          v35 = (*(a11 + 8) + 1);
          *(a11 + 8) = v35;
          v36 = v35 >= v34;
          v37 = a6;
          v38 = a7;
          if (v36)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
            v38 = a7;
            v37 = a6;
            *(*a11 + 8 * (*(a11 + 8))++) = v32;
            if (a7)
            {
              goto LABEL_38;
            }
          }

          else
          {
            *(*a11 + 8 * v35) = v32;
            ++*(a11 + 8);
            if (a7)
            {
LABEL_38:
              v39 = *v38;
              v40 = v38[1];
              v41 = v38[2];
              v42 = v38[4];
              v68 = v38[3];
              v69 = v42;
              v70 = *(v38 + 10);
              goto LABEL_43;
            }
          }

          v70 = 0;
          v39 = 0uLL;
          v68 = 0u;
          v69 = 0u;
          v40 = 0uLL;
          v41 = 0uLL;
LABEL_43:
          *&v56 = v37;
          BYTE8(v56) = 0;
          v57[0] = 0;
          v58 = v39;
          v59 = v40;
          v60 = v41;
          v43 = v67;
          v61 = v68;
          v62 = v69;
          v63 = v70;
          v64 = a9;
          v65 = a10;
          if (v37)
          {
            v53 = v67;
            Context = mlir::Attribute::getContext(&v56);
            if (v57[0] == 1)
            {
              v57[0] = 0;
            }

            mlir::OperationName::OperationName(&v56 + 1, "mps.lstm_gradient", 17, Context);
            v57[0] = 1;
            v43 = v53;
          }

          v66 = v43;
          v45 = vaddvq_s32(v61) + v62;
          v46 = HIDWORD(v62);
          v68.i64[0] = v43;
          v47 = v45 + DWORD1(v62) + DWORD2(v62);
          v68.i64[1] = v47;
          if (v47)
          {
            v48 = mlir::ValueRange::offset_base(&v68, (v45 + DWORD1(v62) + DWORD2(v62)));
            if (v68.i64[1] == v46 + v47)
            {
              return 1;
            }
          }

          else
          {
            v48 = v43;
            if (!HIDWORD(v62))
            {
              return 1;
            }
          }

          v68 = v48;
          v49 = mlir::ValueRange::dereference_iterator(&v68, 0);
          if (v49)
          {
            v50 = *(v49 + 8) & 0xFFFFFFFFFFFFFFF8;
            v51 = *(a11 + 8);
            if (v51 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v51 + 1, 8);
              LODWORD(v51) = *(a11 + 8);
            }

            *(*a11 + 8 * v51) = v50;
            ++*(a11 + 8);
          }

          return 1;
        }

        return 0;
      }
    }

    else
    {
      v55 = 0;
    }

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot handle a non-tensor input type");
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::anonymous namespace::verifyGRU(uint64_t *a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v150 = *MEMORY[0x1E69E9840];
  v134[0] = a4;
  v134[1] = a5;
  v133[0] = a6;
  v133[1] = a7;
  v132[0] = a9;
  v132[1] = a10;
  v131[0] = a13;
  v131[1] = a14;
  v130[0] = a15;
  v130[1] = a16;
  if (!a4)
  {
    return 1;
  }

  result = 1;
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || !a6 || *(*a6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v134);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v133);
  if (v22 == 3)
  {
    v25 = v23;
    v127 = v24;
    v26 = a1;
    if (v24 <= 1)
    {
      v129 = 259;
      mlir::Operation::emitOpError(a1, v128, &v138);
      v27 = &v127;
      goto LABEL_8;
    }

    v41 = *(Shape + 16);
    v42 = v41;
    v43 = a2;
    if ((a2 & 1) == 0)
    {
      v42 = 0x8000000000000000;
      if (v41 != 0x8000000000000000)
      {
        v42 = v41 / 3;
        if (3 * (v41 / 3) != v41)
        {
          v128[0] = "Invalid input last dimension size: ";
          v129 = 259;
          mlir::Operation::emitOpError(a1, v128, &v138);
          mlir::InFlightDiagnostic::operator<<<long long &>(&v138, (Shape + 16));
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v87, ", should be divisible by three.");
          goto LABEL_9;
        }
      }
    }

    v44 = 0;
    v45 = v24 - 2;
    v46 = a3;
    do
    {
      if (v44 < v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = v42;
      }

      if (v24 == 2)
      {
        v47 *= 3;
      }

      v48 = *(v25 + 8 * v44);
      if (v47 != 0x8000000000000000 && v48 != 0x8000000000000000 && v48 != v47)
      {
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        if (v138)
        {
          LODWORD(v135) = 3;
          v136 = "matrix of size [";
          v137 = 16;
          v54 = &v135;
          v55 = v141;
          if (v142 >= HIDWORD(v142))
          {
            if (v141 <= &v135 && v141 + 24 * v142 > &v135)
            {
              v120 = &v135 - v141;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
              v55 = v141;
              v54 = (v141 + v120);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
              v54 = &v135;
              v55 = v141;
            }
          }

          v56 = &v55[24 * v142];
          v57 = *v54;
          *(v56 + 2) = v54[2];
          *v56 = v57;
          v58 = (v142 + 1);
          LODWORD(v142) = v142 + 1;
          if (v138)
          {
            LODWORD(v135) = 2;
            v136 = 3 * v42;
            v59 = &v135;
            v60 = v141;
            if (v58 >= HIDWORD(v142))
            {
              if (v141 <= &v135 && v141 + 24 * v58 > &v135)
              {
                v121 = &v135 - v141;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v58 + 1, 24);
                v60 = v141;
                v59 = (v141 + v121);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v58 + 1, 24);
                v59 = &v135;
                v60 = v141;
              }
            }

            v61 = &v60[24 * v142];
            v62 = *v59;
            *(v61 + 2) = v59[2];
            *v61 = v62;
            v63 = (v142 + 1);
            LODWORD(v142) = v142 + 1;
            if (v138)
            {
              LODWORD(v135) = 3;
              v136 = ", ";
              v137 = 2;
              v64 = &v135;
              v65 = v141;
              if (v63 >= HIDWORD(v142))
              {
                if (v141 <= &v135 && v141 + 24 * v63 > &v135)
                {
                  v122 = &v135 - v141;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v63 + 1, 24);
                  v65 = v141;
                  v64 = (v141 + v122);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v63 + 1, 24);
                  v64 = &v135;
                  v65 = v141;
                }
              }

              v66 = &v65[24 * v142];
              v67 = *v64;
              *(v66 + 2) = v64[2];
              *v66 = v67;
              v68 = (v142 + 1);
              LODWORD(v142) = v142 + 1;
              if (v138)
              {
                LODWORD(v135) = 2;
                v136 = v42;
                v69 = &v135;
                v70 = v141;
                if (v68 >= HIDWORD(v142))
                {
                  if (v141 <= &v135 && v141 + 24 * v68 > &v135)
                  {
                    v123 = &v135 - v141;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v68 + 1, 24);
                    v70 = v141;
                    v69 = (v141 + v123);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v68 + 1, 24);
                    v69 = &v135;
                    v70 = v141;
                  }
                }

                v71 = &v70[24 * v142];
                v72 = *v69;
                *(v71 + 2) = v69[2];
                *v71 = v72;
                v73 = (v142 + 1);
                LODWORD(v142) = v142 + 1;
                if (v138)
                {
                  LODWORD(v135) = 3;
                  v136 = "].";
                  v137 = 2;
                  v74 = &v135;
                  v75 = v141;
                  if (v73 >= HIDWORD(v142))
                  {
                    if (v141 <= &v135 && v141 + 24 * v73 > &v135)
                    {
                      v124 = &v135 - v141;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v73 + 1, 24);
                      v75 = v141;
                      v74 = (v141 + v124);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v73 + 1, 24);
                      v74 = &v135;
                      v75 = v141;
                    }
                  }

                  v76 = &v75[24 * v142];
                  v77 = *v74;
                  *(v76 + 2) = v74[2];
                  *v76 = v77;
                  LODWORD(v142) = v142 + 1;
                }
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
        v78 = result;
        if (v138)
        {
          mlir::InFlightDiagnostic::report(&v138);
          result = v78;
        }

        if (v149)
        {
          if (v148 != &v149)
          {
            free(v148);
            result = v78;
          }

          v79 = __p;
          if (__p)
          {
            v80 = v147;
            v81 = __p;
            if (v147 != __p)
            {
              do
              {
                v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
              }

              while (v80 != v79);
              v81 = __p;
            }

            v147 = v79;
            operator delete(v81);
            result = v78;
          }

          v82 = v144;
          if (v144)
          {
            v83 = v145;
            v84 = v144;
            if (v145 != v144)
            {
              do
              {
                v86 = *--v83;
                v85 = v86;
                *v83 = 0;
                if (v86)
                {
                  MEMORY[0x1AC55A040](v85, 0x1000C8077774924);
                }
              }

              while (v83 != v82);
              v84 = v144;
            }

            v145 = v82;
            operator delete(v84);
            result = v78;
          }

          if (v141 != v143)
          {
            free(v141);
            return v78;
          }
        }

        return result;
      }

      ++v44;
      --v24;
    }

    while (v24);
    if (v132[0] && *(*v132[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v51 = mlir::ShapedType::getShape(v132);
      v135 = v52;
      v53 = v52 - 1;
      if (v52 <= 1)
      {
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        v27 = &v135;
LABEL_8:
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v138, v27);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, ", should be 2 or greater.");
LABEL_9:
        v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
        return v30;
      }

      v88 = v51;
      v89 = 0;
      v26 = a1;
      v46 = a3;
      v43 = a2;
      do
      {
        if (v89 >= v52 - 2)
        {
          v90 = *(Shape - 8 * v52 + 24 + 8 * v89);
          v125 = v90;
          if (v53 != v89 || (a2 & 1) != 0 || v90 == 0x8000000000000000)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v125 = 1;
          v90 = 1;
          if (v53 != v89 || (a2 & 1) != 0)
          {
            goto LABEL_83;
          }
        }

        v90 /= 3;
        v125 = v90;
LABEL_83:
        v91 = *(v88 + 8 * v89);
        if (v90 != 0x8000000000000000 && v91 != 0x8000000000000000 && v91 != v90)
        {
          v126 = v89;
          v129 = 259;
          mlir::Operation::emitOpError(a1, v128, &v138);
          mlir::InFlightDiagnostic::operator<<<unsigned long>(&v138, &v126);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v110, "] = ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v111, (v88 + 8 * v126));
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v112, ", expected ");
          v114 = &v125;
          goto LABEL_133;
        }

        ++v89;
      }

      while (v52 != v89);
    }

    if (a11 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v43)
      {
        v94 = v134[0];
        v95 = v134[0];
      }

      else
      {
        v138 = &v140;
        v139 = 0x400000000;
        v140 = *Shape;
        LODWORD(v139) = 1;
        v141 = *(Shape + 8);
        LODWORD(v139) = 2;
        v142 = *(Shape + 16);
        LODWORD(v139) = 3;
        if (v142 != 0x8000000000000000)
        {
          v142 /= 3;
        }

        isSplat = mlir::ElementsAttr::isSplat(v134);
        v128[0] = mlir::RankedTensorType::get(&v140, 3, isSplat, 0);
        v95 = mlir::TensorType::operator mlir::ShapedType(v128);
        if (v138 != &v140)
        {
          free(v138);
        }

        v94 = v134[0];
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v94);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v95, a11, ElementTypeOrSelf);
      v26 = a1;
      v46 = a3;
      if (!BroadcastedType)
      {
        goto LABEL_132;
      }
    }

    if (v131[0] && *(*v131[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v99 = mlir::ShapedType::getShape(v131);
      v26 = a1;
      if (v100 != 3)
      {
        goto LABEL_118;
      }

      v46 = a3;
      v101 = 3;
      if (a3)
      {
        v101 = 4;
      }

      if (*v99 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v99)
      {
        goto LABEL_118;
      }

      v102 = v99[1];
      if (v102 != 0x8000000000000000)
      {
        v103 = *(Shape + 8);
        if (v103 != 0x8000000000000000 && v103 != v102)
        {
          goto LABEL_118;
        }
      }

      v104 = *(Shape + 16);
      v105 = v104 * v101;
      if (v104 == 0x8000000000000000)
      {
        v105 = 0x8000000000000000;
      }

      v106 = v99[2];
      if (v106 != 0x8000000000000000 && v105 != 0x8000000000000000 && v105 != v106)
      {
LABEL_118:
LABEL_132:
        v128[0] = v107;
        v129 = 259;
        mlir::Operation::emitOpError(v26, v128, &v138);
        v29 = &v138;
        goto LABEL_9;
      }
    }

    if (v130[0] && (v46 & 1) == 0)
    {
      goto LABEL_132;
    }

    if (v130[0] && *(*v130[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v108 = mlir::ShapedType::getShape(v130);
      if (v109 != 1)
      {
        v116 = v109;
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        v135 = v116;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v138, &v135);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v117, ", should be 1.");
        goto LABEL_9;
      }

      v135 = v42;
      if (v42 != 0x8000000000000000 && *v108 != 0x8000000000000000 && *v108 != v42)
      {
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        v113 = &v138;
        v114 = &v135;
LABEL_133:
        mlir::InFlightDiagnostic::operator<<<long long &>(v113, v114);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v115, ".");
        goto LABEL_9;
      }
    }

    return 1;
  }

  v128[0] = "Invalid input tensor rank: ";
  v129 = 259;
  mlir::Operation::emitOpError(a1, v128, &v138);
  if (v138)
  {
    LODWORD(v135) = 5;
    v136 = v22;
    v31 = &v135;
    v32 = v141;
    if (v142 >= HIDWORD(v142))
    {
      if (v141 <= &v135 && v141 + 24 * v142 > &v135)
      {
        v118 = &v135 - v141;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
        v32 = v141;
        v31 = (v141 + v118);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
        v31 = &v135;
        v32 = v141;
      }
    }

    v33 = &v32[24 * v142];
    v34 = *v31;
    *(v33 + 2) = v31[2];
    *v33 = v34;
    v35 = (v142 + 1);
    LODWORD(v142) = v142 + 1;
    if (v138)
    {
      LODWORD(v135) = 3;
      v136 = ", should be 3.";
      v137 = 14;
      v36 = &v135;
      v37 = v141;
      if (v35 >= HIDWORD(v142))
      {
        if (v141 <= &v135 && v141 + 24 * v35 > &v135)
        {
          v119 = &v135 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v35 + 1, 24);
          v37 = v141;
          v36 = (v141 + v119);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v35 + 1, 24);
          v36 = &v135;
          v37 = v141;
        }
      }

      v38 = &v37[24 * v142];
      v39 = *v36;
      *(v38 + 2) = v36[2];
      *v38 = v39;
      LODWORD(v142) = v142 + 1;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
  if (v138)
  {
    v40 = result;
    mlir::InFlightDiagnostic::report(&v138);
    result = v40;
  }

  if (v149 == 1)
  {
    v30 = result;
    mlir::Diagnostic::~Diagnostic(&v139);
    return v30;
  }

  return result;
}

BOOL mlir::mps::GRUOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v64[2] = *MEMORY[0x1E69E9840];
  v64[0] = a4;
  v64[1] = a5;
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
    *v49 = *(a7 + 56);
    v50[0] = *(a7 + 18);
  }

  else
  {
    v18 = 0;
    v50[0] = 0;
    v15 = 0uLL;
    *v49 = 0u;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v51 = a6;
  LOBYTE(v52) = 0;
  v53 = 0;
  v54 = v15;
  v55 = v16;
  v56 = v17;
  v57 = v18;
  v58 = *v49;
  v59 = v50[0];
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v19 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(&v52, "mps.gru", 7, Context);
    v53 = 1;
    a1 = v19;
  }

  v62 = a4;
  v63 = a5;
  if (!a5)
  {
    v34 = mlir::Float32Type::get(a1, a2);
    v35 = mlir::UnrankedTensorType::get(v34);
    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v47 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v36 + 1, 8);
      v35 = v47;
      LODWORD(v36) = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v35;
    goto LABEL_41;
  }

  mlir::UnknownLoc::get(a1, a2);
  v21 = *(mlir::ValueRange::dereference_iterator(v64, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v21)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot handle a non-tensor input type");
  }

  v22 = *(*v21 + 136);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v24 = v23 ? v21 : 0;
  v48 = v24;
  if (!v24)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot handle a non-tensor input type");
  }

  v25 = v21;
  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    Value = mlir::ArrayAttr::getValue(&v48);
    v27 = mlir::ArrayAttr::getValue(&v48);
    v29 = (v27 + 8 * v28);
    v49[0] = v50;
    v49[1] = 0x400000000;
    v30 = (v29 - Value) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v50;
      if (v29 == Value)
      {
LABEL_27:
        v37 = v31 + ((v29 - Value) >> 3);
        LODWORD(v49[1]) = v31 + ((v29 - Value) >> 3);
        v38 = v37 - 1;
        v39 = *(v32 + v37 - 1);
        if (v39 != 0x8000000000000000)
        {
          *(v32 + v38) = v39 / 3;
        }

        ElementType = mlir::TensorType::getElementType(&v48);
        v25 = mlir::RankedTensorType::get(v32, v37, ElementType, 0);
        v41 = v49[0];
        if (v39 != 0x8000000000000000)
        {
          v42 = 3;
          if (*(&v55 + 1))
          {
            v42 = 4;
          }

          *(v49[0] + v38) *= v42;
        }

        v43 = LODWORD(v49[1]);
        v44 = mlir::TensorType::getElementType(&v48);
        v21 = mlir::RankedTensorType::get(v41, v43, v44, 0);
        if (v49[0] != v50)
        {
          free(v49[0]);
        }

        goto LABEL_35;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v50, v30, 8);
      v31 = v49[1];
      v32 = v49[0];
      if (v29 == Value)
      {
        goto LABEL_27;
      }
    }

    memcpy(v32 + 8 * v31, Value, v29 - Value);
    v31 = v49[1];
    v32 = v49[0];
    goto LABEL_27;
  }

LABEL_35:
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v25;
  v46 = (*(a11 + 8) + 1);
  *(a11 + 8) = v46;
  if (!*(&v56 + 1))
  {
    return 1;
  }

  if (v46 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v46 + 1, 8);
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v21;
LABEL_41:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::GRUGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = *MEMORY[0x1E69E9840];
  *&v60 = a4;
  *(&v60 + 1) = a5;
  if (a5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v60, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = *(*v13 + 136);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v50 = v16;
      if (v16)
      {
        if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_25;
        }

        Value = mlir::ArrayAttr::getValue(&v50);
        v18 = mlir::ArrayAttr::getValue(&v50);
        v20 = (v18 + 8 * v19);
        *&v51 = v52;
        *(&v51 + 1) = 0x400000000;
        v21 = (v20 - Value) >> 3;
        if (v21 < 5)
        {
          v22 = 0;
          v23 = v52;
          if (v20 == Value)
          {
LABEL_21:
            v25 = v22 + ((v20 - Value) >> 3);
            DWORD2(v51) = v25;
            v26 = &v23[8 * v25];
            v27 = *(v26 - 1);
            if (v27 != 0x8000000000000000)
            {
              *(v26 - 1) = 3 * v27;
            }

            ElementType = mlir::TensorType::getElementType(&v50);
            v13 = mlir::RankedTensorType::get(v23, v25, ElementType, 0);
            if (v51 != v52)
            {
              free(v51);
            }

LABEL_25:
            v29 = *(a11 + 8);
            if (v29 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
              LODWORD(v29) = *(a11 + 8);
            }

            *(*a11 + 8 * v29) = v13;
            ++*(a11 + 8);
            v51 = v60;
            if (*(&v60 + 1) < 2uLL)
            {
              if (!mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands"))
              {
                return 0;
              }
            }

            else
            {
              v30 = *(mlir::ValueRange::dereference_iterator(&v51, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
              v31 = *(a11 + 8);
              if (v31 >= *(a11 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v31 + 1, 8);
                LODWORD(v31) = *(a11 + 8);
              }

              *(*a11 + 8 * v31) = v30;
              ++*(a11 + 8);
            }

            v49 = 0;
            {
              v32 = v49;
              v33 = *(a11 + 8);
              if (v33 >= *(a11 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
                LODWORD(v33) = *(a11 + 8);
              }

              *(*a11 + 8 * v33) = v32;
              ++*(a11 + 8);
              if (a7)
              {
                v34 = *a7;
                v35 = a7[1];
                v36 = a7[2];
                v61[0] = a7[3];
                *(v61 + 12) = *(a7 + 60);
              }

              else
              {
                v34 = 0uLL;
                memset(v61, 0, 28);
                v35 = 0uLL;
                v36 = 0uLL;
              }

              v37 = v60;
              *&v51 = a6;
              BYTE8(v51) = 0;
              v52[0] = 0;
              v53 = v34;
              v54 = v35;
              v55 = v36;
              *v56 = v61[0];
              *&v56[12] = *(v61 + 12);
              v57 = a9;
              v58 = a10;
              if (a6)
              {
                v48 = v60;
                Context = mlir::Attribute::getContext(&v51);
                if (v52[0] == 1)
                {
                  v52[0] = 0;
                }

                mlir::OperationName::OperationName(&v51 + 1, "mps.gru_gradient", 16, Context);
                v52[0] = 1;
                v37 = v48;
              }

              v59 = v37;
              v39 = vaddvq_s32(*v56) + *&v56[16];
              v40 = *&v56[24];
              *&v61[0] = v37;
              v41 = v39 + *&v56[20];
              *(&v61[0] + 1) = (v39 + *&v56[20]);
              if (v39 + *&v56[20])
              {
                v42 = mlir::ValueRange::offset_base(v61, (v39 + *&v56[20]));
                if (*(&v61[0] + 1) == v40 + v41)
                {
                  return 1;
                }
              }

              else
              {
                v42 = v37;
                if (!*&v56[24])
                {
                  return 1;
                }
              }

              v61[0] = v42;
              v43 = mlir::ValueRange::dereference_iterator(v61, 0);
              if (v43)
              {
                v44 = *(v43 + 8) & 0xFFFFFFFFFFFFFFF8;
                v45 = *(a11 + 8);
                if (v45 >= *(a11 + 12))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
                  LODWORD(v45) = *(a11 + 8);
                }

                *(*a11 + 8 * v45) = v44;
                ++*(a11 + 8);
              }

              return 1;
            }

            return 0;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v52, v21, 8);
          v22 = DWORD2(v51);
          v23 = v51;
          if (v20 == Value)
          {
            goto LABEL_21;
          }
        }

        memcpy(&v23[8 * v22], Value, v20 - Value);
        v22 = DWORD2(v51);
        v23 = v51;
        goto LABEL_21;
      }
    }

    else
    {
      v50 = 0;
    }

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot handle a non-tensor input type");
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::ConcatOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v89 = *MEMORY[0x1E69E9840];
  v79 = a4;
  v80 = a5;
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v71 = a6;
  LOBYTE(v72) = 0;
  v73 = 0;
  v74 = v13;
  v75 = a9;
  v14 = a5;
  v76 = a10;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v71);
    if (v73 == 1)
    {
      v73 = 0;
    }

    mlir::OperationName::OperationName(&v72, "mps.concat", 10, Context);
    v73 = 1;
    v14 = v80;
    a1 = v15;
  }

  v77 = a4;
  v78 = a5;
  if (v14 <= 1)
  {
    v17 = mlir::Float32Type::get(a1, a2);
    v18 = mlir::UnrankedTensorType::get(v17);
    goto LABEL_68;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (v80 < 2)
  {
    v19 = v79;
  }

  else
  {
    v19 = mlir::ValueRange::offset_base(&v79, v80 - 1);
  }

  v84 = v19;
  v85 = 0;
  v64 = mlir::ValueRange::dereference_iterator(&v84, 0);
  v87 = v79;
  v88 = v80 - 1;
  v20 = mlir::ValueRange::dereference_iterator(&v87, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v22 = ElementTypeOrSelf;
  LOBYTE(v69) = 0;
  v70 = 0;
  v84 = v86;
  v85 = 0x400000000;
  v23 = v88;
  v82 = v87;
  v83 = 0;
  if (!v88)
  {
LABEL_64:
    v18 = mlir::UnrankedTensorType::get(v22);
    v50 = 0;
    v51 = v84;
    if (v84 != v86)
    {
LABEL_65:
      free(v51);
    }

    goto LABEL_66;
  }

  v62 = ElementTypeOrSelf;
  v63 = 0;
  v24 = 0;
  v25 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v28) = 1;
  while (1)
  {
    v29 = *(mlir::ValueRange::dereference_iterator(&v82, v24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(*v29 + 136);
    if (v30 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v30 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v29 = 0;
    }

    v68 = v29;
    if (!v29)
    {
      v54 = "cannot concat a non-tensor type";
      goto LABEL_73;
    }

    if (v26)
    {
      goto LABEL_40;
    }

    if (!mlir::TensorType::hasRank(&v68))
    {
      v26 = 0;
      if (!mlir::TensorType::hasRank(&v68))
      {
        goto LABEL_52;
      }

LABEL_43:
      Value = mlir::ArrayAttr::getValue(&v68);
      v67 = 1;
      if (v39)
      {
        v40 = Value;
      }

      else
      {
        v40 = &v67;
      }

      if (v39 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v39;
      }

      if (v41 == v27)
      {
        v42 = 0;
        v43 = v84;
        do
        {
          v81[0] = v43[v42];
          v81[1] = v40[v42];
          v44 = mlir::mps::mergeDynamicDims(v81, 2);
          v43 = v84;
          *&v84[8 * v42++] = v44;
        }

        while (v27 != v42);
        goto LABEL_52;
      }

      v54 = "all inputs must have equal rank";
LABEL_73:
      v55 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, v54);
      goto LABEL_74;
    }

    mlir::ArrayAttr::getValue(&v68);
    if (v32 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v32;
    }

    if (!mlir::mps::getAxis(a2, a3, v64, v27, &v69))
    {
      v55 = 0;
LABEL_74:
      v18 = 0;
      v50 = !v55;
      v51 = v84;
      if (v84 != v86)
      {
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (v70 != 1)
    {
      break;
    }

    v33 = v85;
    if (v27 != v85)
    {
      if (v27 >= v85)
      {
        if (v27 > HIDWORD(v85))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v27, 8);
          v33 = v85;
        }

        if (v27 != v33)
        {
          bzero(&v84[8 * v33], 8 * (v27 - v33));
        }
      }

      LODWORD(v85) = v27;
    }

    v34 = mlir::ArrayAttr::getValue(&v68);
    v35 = mlir::ArrayAttr::getValue(&v68);
    v37 = (v35 + 8 * v36);
    if (v37 != v34)
    {
      memmove(v84, v34, v37 - v34);
    }

    v63 = 1;
LABEL_40:
    v26 = 1;
    if (mlir::TensorType::hasRank(&v68))
    {
      goto LABEL_43;
    }

LABEL_52:
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (mlir::TensorType::hasRank(&v68))
    {
      mlir::ArrayAttr::getValue(&v68);
      if (v45 < 1)
      {
        v47 = 1;
      }

      else
      {
        v46 = mlir::ArrayAttr::getValue(&v68);
        v47 = *(v46 + 8 * v69);
        if (v47 == 0x8000000000000000)
        {
          goto LABEL_15;
        }
      }

      v25 += v47;
      v28 = 1;
      v24 = v83 + 1;
      v83 = v24;
      if (v24 == v23)
      {
LABEL_59:
        v22 = v62;
        if (!v26)
        {
          goto LABEL_64;
        }

        v48 = v84;
        if (v63)
        {
          v49 = 0x8000000000000000;
          if (v28)
          {
            v49 = v25;
          }

          *&v84[8 * v69] = v49;
        }

        goto LABEL_88;
      }
    }

    else
    {
LABEL_15:
      v25 = 0;
LABEL_16:
      v28 = 0;
      v24 = v83 + 1;
      v83 = v24;
      if (v24 == v23)
      {
        goto LABEL_59;
      }
    }
  }

  if (v27 > HIDWORD(v85))
  {
    LODWORD(v85) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v27, 8);
    v56 = v84;
    v57 = v27;
    v58 = v84;
    goto LABEL_86;
  }

  v48 = v84;
  v59 = v85;
  if (v85)
  {
    if (v85 >= v27)
    {
      v60 = v27;
    }

    else
    {
      v60 = v85;
    }

    v61 = v84;
    memset_pattern16(v84, &unk_1A75D94C0, 8 * v60);
    v48 = v61;
  }

  v57 = v27 - v59;
  if (v27 > v59)
  {
    v58 = v48;
    v56 = v48 + 8 * v59;
LABEL_86:
    memset_pattern16(v56, &unk_1A75D94C0, 8 * v57);
    v48 = v58;
  }

  LODWORD(v85) = v27;
  v22 = v62;
LABEL_88:
  v18 = mlir::RankedTensorType::get(v48, v85, v22, 0);
  v50 = 0;
  v51 = v84;
  if (v84 != v86)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v50)
  {
    return 0;
  }

LABEL_68:
  v53 = *(a11 + 8);
  if (v53 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v53 + 1, 8);
    v53 = *(a11 + 8);
  }

  *(*a11 + 8 * v53) = v18;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ConcatOp::verify(uint64_t **this)
{
  v133 = *MEMORY[0x1E69E9840];
  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_17;
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
      v72 = v8[1];
      v99 = v3;
      v100 = v72;
      if (!mlir::ElementsAttr::getShapedType(&v99))
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v99 = v3;
  v100 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v99))
  {
    return 1;
  }

LABEL_18:
  mlir::ShapedType::getShape(&v99);
  v15 = v14;
  LOBYTE(v97) = 0;
  v98 = 0;
  Axis = mlir::mps::getAxis((*this)[3], 1, *((*this)[9] + 32 * (*(*this + 17) - 1) + 24), v14, &v97);
  result = 0;
  if (!Axis)
  {
    return result;
  }

  if (v98 != 1)
  {
    return 1;
  }

  v18 = v97;
  Shape = mlir::ShapedType::getShape(&v99);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v99);
  LOBYTE(v95) = 0;
  v96 = 0;
  v20 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v23 = 0;
    v22 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v21 = v20[17];
  v22 = (v21 - 1);
  if (v21 == 1)
  {
    return 1;
  }

  v23 = *(v20 + 9);
LABEL_23:
  v24 = 0;
  v25 = ~v18;
  v87 = &Shape[v18 + 1];
  v88 = v18 + 1;
  while (1)
  {
    v26 = (*(*(v23 + 32 * v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v26)
    {
      goto LABEL_39;
    }

    v27 = *v26;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v37 = v26;
      mlir::Builder::getI32VectorAttr();
      v26 = v37;
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_39;
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
      v46 = v31[1];
      v93 = v26;
      v94 = v46;
      if (mlir::getElementTypeOrSelf(v26) == ElementTypeOrSelf)
      {
        goto LABEL_62;
      }

      goto LABEL_40;
    }

LABEL_39:
    v93 = v26;
    v94 = 0;
    if (mlir::getElementTypeOrSelf(v26) == ElementTypeOrSelf)
    {
      goto LABEL_62;
    }

LABEL_40:
    v104[0] = "element type of operand and result differ";
    LOWORD(v106) = 259;
    mlir::OpState::emitOpError(this, v104, v124);
    if (v124[0])
    {
      mlir::InFlightDiagnostic::report(v124);
    }

    if (v132 == 1)
    {
      if (v131 != &v132)
      {
        free(v131);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v130;
        v40 = __p;
        if (v130 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v130 = v38;
        operator delete(v40);
      }

      v41 = v127;
      if (v127)
      {
        v42 = v128;
        v43 = v127;
        if (v128 != v127)
        {
          do
          {
            v45 = *--v42;
            v44 = v45;
            *v42 = 0;
            if (v45)
            {
              MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
            }
          }

          while (v42 != v41);
          v43 = v127;
        }

        v128 = v41;
        operator delete(v43);
      }

      if (v125 != &v126)
      {
        free(v125);
      }
    }

LABEL_62:
    if ((mlir::ElementsAttr::getShapedType(&v93) & 1) == 0)
    {
      goto LABEL_25;
    }

    v47 = mlir::ShapedType::getShape(&v93);
    v92 = 1;
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = &v92;
    }

    if (v48 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v48;
    }

    if (v50 != v15)
    {
      v104[0] = "all inputs must have equal rank";
      LOWORD(v106) = 259;
      mlir::OpState::emitOpError(this, v104, v115);
      if (v115[0])
      {
        mlir::InFlightDiagnostic::report(v115);
      }

      if (v123 == 1)
      {
        if (v122 != &v123)
        {
          free(v122);
        }

        v51 = v120;
        if (v120)
        {
          v52 = v121;
          v53 = v120;
          if (v121 != v120)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = v120;
          }

          v121 = v51;
          operator delete(v53);
        }

        v54 = v118;
        if (v118)
        {
          v55 = v119;
          v56 = v118;
          if (v119 != v118)
          {
            do
            {
              v58 = *--v55;
              v57 = v58;
              *v55 = 0;
              if (v58)
              {
                MEMORY[0x1AC55A040](v57, 0x1000C8077774924);
              }
            }

            while (v55 != v54);
            v56 = v118;
          }

          v119 = v54;
          operator delete(v56);
        }

        if (v116 != &v117)
        {
          free(v116);
        }
      }
    }

    v59 = v97;
    if ((mlir::verifyCompatibleShape(Shape, v97, v49, v97) & 1) == 0 || (mlir::verifyCompatibleShape(v87, &v15[v25], &v49[v88], &v15[v25]) & 1) == 0)
    {
      break;
    }

    if ((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8])
    {
      v60 = &v49[v59];
      if (v96 == 1)
      {
        if ((mlir::verifyCompatibleShape(v60, 1, &v95, 1) & 1) == 0)
        {
          v90[0] = "all input shapes must match along axis ";
          v91 = 259;
          mlir::OpState::emitOpError(this, v90, v104);
          if (v104[0])
          {
            v101 = 3;
            v102 = "dimension when interleaving";
            v103 = 27;
            v61 = &v101;
            v62 = v105;
            if (v106 >= v107)
            {
              if (v105 <= &v101 && v105 + 24 * v106 > &v101)
              {
                v86 = &v101 - v105;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                v62 = v105;
                v61 = (v105 + v86);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                v61 = &v101;
                v62 = v105;
              }
            }

            v63 = &v62[24 * v106];
            v64 = *v61;
            *(v63 + 2) = *(v61 + 2);
            *v63 = v64;
            ++v106;
          }

          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
          v65 = result;
          if (v104[0])
          {
            mlir::InFlightDiagnostic::report(v104);
            result = v65;
          }

          if (v114 == 1)
          {
            if (v113 != &v114)
            {
              free(v113);
              result = v65;
            }

            v66 = v111;
            if (v111)
            {
              v67 = v112;
              v68 = v111;
              if (v112 != v111)
              {
                do
                {
                  v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
                }

                while (v67 != v66);
                v68 = v111;
              }

              v112 = v66;
              operator delete(v68);
              result = v65;
            }

            v69 = v109;
            if (!v109)
            {
              goto LABEL_138;
            }

            v70 = v110;
            v71 = v109;
            if (v110 == v109)
            {
              goto LABEL_137;
            }

            do
            {
              v84 = *--v70;
              v83 = v84;
              *v70 = 0;
              if (v84)
              {
                MEMORY[0x1AC55A040](v83, 0x1000C8077774924);
              }
            }

            while (v70 != v69);
            goto LABEL_136;
          }

          return result;
        }
      }

      else
      {
        v95 = *v60;
        v96 = 1;
      }
    }

LABEL_25:
    if (++v24 == v22)
    {
      return 1;
    }
  }

  v90[0] = "invalid input tensor shapes, all input shapes must ";
  v91 = 259;
  mlir::OpState::emitOpError(this, v90, v104);
  if (v104[0])
  {
    v101 = 3;
    v102 = "match except at axis";
    v103 = 20;
    v73 = &v101;
    v74 = v105;
    if (v106 >= v107)
    {
      if (v105 <= &v101 && v105 + 24 * v106 > &v101)
      {
        v85 = &v101 - v105;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
        v74 = v105;
        v73 = (v105 + v85);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
        v73 = &v101;
        v74 = v105;
      }
    }

    v75 = &v74[24 * v106];
    v76 = *v73;
    *(v75 + 2) = *(v73 + 2);
    *v75 = v76;
    ++v106;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
  v65 = result;
  if (v104[0])
  {
    mlir::InFlightDiagnostic::report(v104);
    result = v65;
  }

  if (v114 == 1)
  {
    if (v113 != &v114)
    {
      free(v113);
      result = v65;
    }

    v77 = v111;
    if (v111)
    {
      v78 = v112;
      v79 = v111;
      if (v112 != v111)
      {
        do
        {
          v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
        }

        while (v78 != v77);
        v79 = v111;
      }

      v112 = v77;
      operator delete(v79);
      result = v65;
    }

    v69 = v109;
    if (!v109)
    {
      goto LABEL_138;
    }

    v80 = v110;
    v71 = v109;
    if (v110 == v109)
    {
LABEL_137:
      v110 = v69;
      operator delete(v71);
      result = v65;
LABEL_138:
      if (v105 != v108)
      {
        free(v105);
        return v65;
      }

      return result;
    }

    do
    {
      v82 = *--v80;
      v81 = v82;
      *v80 = 0;
      if (v82)
      {
        MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
      }
    }

    while (v80 != v69);
LABEL_136:
    v71 = v109;
    goto LABEL_137;
  }

  return result;
}