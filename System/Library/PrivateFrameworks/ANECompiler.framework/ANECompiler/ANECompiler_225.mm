BOOL mlir::mps::PermuteOp::verify(uint64_t **this)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v67 = v3;
  v6 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  v66 = v6;
  if (!v3)
  {
    v65 = 259;
    mlir::OpState::emitOpError(this, v63, &v71);
    if (v71)
    {
      v15 = *(*((*this)[9] + 24) + 8);
      v16 = &v68;
      mlir::DiagnosticArgument::DiagnosticArgument(&v68, v15 & 0xFFFFFFFFFFFFFFF8);
      v17 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v75 > &v68)
        {
          v58 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v17 = v74;
          v16 = (v74 + v58);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v16 = &v68;
          v17 = v74;
        }
      }

      v18 = &v17[24 * v75];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v75;
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v71);
    if (v71)
    {
      mlir::InFlightDiagnostic::report(&v71);
    }

    if (v83 != 1)
    {
      return v14;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v81;
      v22 = __p;
      if (v81 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v81 = v20;
      operator delete(v22);
    }

    v23 = v78;
    if (v78)
    {
      v24 = v79;
      v25 = v78;
      if (v79 != v78)
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
        goto LABEL_57;
      }

LABEL_58:
      v79 = v23;
      operator delete(v25);
    }

LABEL_59:
    v39 = v74;
    if (v74 == v77)
    {
      return v14;
    }

    goto LABEL_60;
  }

  if (!v6)
  {
    v65 = 259;
    mlir::OpState::emitOpError(this, v63, &v71);
    if (v71)
    {
      v28 = *(*((*this)[9] + 56) + 8);
      v29 = &v68;
      mlir::DiagnosticArgument::DiagnosticArgument(&v68, v28 & 0xFFFFFFFFFFFFFFF8);
      v30 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v75 > &v68)
        {
          v59 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v30 = v74;
          v29 = (v74 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v29 = &v68;
          v30 = v74;
        }
      }

      v31 = &v30[24 * v75];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v75;
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v71);
    if (v71)
    {
      mlir::InFlightDiagnostic::report(&v71);
    }

    if (v83 != 1)
    {
      return v14;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v81;
      v35 = __p;
      if (v81 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v81 = v33;
      operator delete(v35);
    }

    v23 = v78;
    if (v78)
    {
      v36 = v79;
      v25 = v78;
      if (v79 != v78)
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

        while (v36 != v23);
LABEL_57:
        v25 = v78;
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    goto LABEL_59;
  }

  if (!mlir::TensorType::hasRank(&v67) || !mlir::TensorType::hasRank(&v66))
  {
    return 1;
  }

  mlir::ArrayAttr::getValue(&v67);
  v10 = v9;
  Value = mlir::ArrayAttr::getValue(&v66);
  if (mlir::ShapedType::getNumElements(Value, v12) == v10)
  {
    v71 = &v73;
    v72 = 0x400000000;
    if (mlir::matchConstantWithIntVector<long long>(*((*this)[9] + 56), &v71))
    {
      v13 = (*this)[3];
      LOBYTE(v63[0]) = 0;
      v64 = 0;
    }

    else
    {
      v14 = 1;
    }

    v39 = v71;
    if (v71 == &v73)
    {
      return v14;
    }

LABEL_60:
    free(v39);
    return v14;
  }

  v63[0] = "perm tensor length must equal input tensor rank, ";
  v65 = 259;
  mlir::OpState::emitOpError(this, v63, &v71);
  v41 = mlir::ArrayAttr::getValue(&v66);
  NumElements = mlir::ShapedType::getNumElements(v41, v42);
  if (v71)
  {
    v68 = 2;
    v69 = NumElements;
    v44 = &v68;
    v45 = v74;
    if (v75 >= v76)
    {
      if (v74 <= &v68 && v74 + 24 * v75 > &v68)
      {
        v60 = &v68 - v74;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
        v45 = v74;
        v44 = (v74 + v60);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
        v44 = &v68;
        v45 = v74;
      }
    }

    v46 = &v45[24 * v75];
    v47 = *v44;
    *(v46 + 2) = *(v44 + 2);
    *v46 = v47;
    v48 = ++v75;
    if (v71)
    {
      v68 = 3;
      v69 = " != ";
      v70 = 4;
      v49 = &v68;
      v50 = v74;
      if (v48 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v48 > &v68)
        {
          v61 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v48 + 1, 24);
          v50 = v74;
          v49 = (v74 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v48 + 1, 24);
          v49 = &v68;
          v50 = v74;
        }
      }

      v51 = &v50[24 * v75];
      v52 = *v49;
      *(v51 + 2) = *(v49 + 2);
      *v51 = v52;
      v53 = ++v75;
      if (v71)
      {
        v68 = 5;
        v69 = v10;
        v54 = &v68;
        v55 = v74;
        if (v53 >= v76)
        {
          if (v74 <= &v68 && v74 + 24 * v53 > &v68)
          {
            v62 = &v68 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v53 + 1, 24);
            v55 = v74;
            v54 = (v74 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v53 + 1, 24);
            v54 = &v68;
            v55 = v74;
          }
        }

        v56 = &v55[24 * v75];
        v57 = *v54;
        *(v56 + 2) = *(v54 + 2);
        *v56 = v57;
        ++v75;
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v71);
  if (v71)
  {
    mlir::InFlightDiagnostic::report(&v71);
  }

  if (v83 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v72);
  }

  return v14;
}

BOOL mlir::mps::anonymous namespace::permuteShapeWithAxes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, char *a7)
{
  v13[1] = 0;
  v14 = a7;
  v12 = v13;
  v13[0] = 0;
  if (a6)
  {
    v7 = *a5;
    v10 = (v14 & (*a5 >> 63)) + *a5;
    v11 = v7;
    if (v14 > v10)
    {
      operator new();
    }

    v8 = mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[7],char const(&)[15],unsigned long &>(a1, a2, "invalid axis (", &v11, ") for ", "input of rank ", &v14);
  }

  else
  {
    v8 = 1;
  }

  std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v12, v13[0]);
  return v8;
}

uint64_t mlir::mps::OneHotOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, unint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v46 = a6;
  LOBYTE(v47) = 0;
  v48 = 0;
  v49 = v14;
  v50 = a9;
  v51 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v46);
    if (v48 == 1)
    {
      v48 = 0;
    }

    mlir::OperationName::OperationName(&v47, "mps.one_hot", 11, Context);
    v48 = 1;
  }

  v52 = a4;
  v53 = a5;
  if (a5 && (v16 = mlir::UnknownLoc::get(this, a2), mlir::mps::OneHotOpAdaptor::verify(&v46, v16)))
  {
    v43 = v52;
    v44 = 0;
    v17 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    v20 = v19;
    v43 = v52;
    v44 = 1;
    v43 = mlir::ValueRange::offset_base(&v43, 1);
    v44 = 0;
    v21 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43 = v52;
    v44 = 2;
    v43 = mlir::ValueRange::offset_base(&v43, 2);
    v44 = 0;
    v23 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43 = &v45;
    v44 = 0x100000000;
    v41[0] = &v42;
    v41[1] = 0x100000000;
    if (v18 && v22 && v24 && (v54 = v52, v55 = 1, v54 = mlir::ValueRange::offset_base(&v54, 1), v55 = 0, v25 = mlir::ValueRange::dereference_iterator(&v54, 0), (mlir::matchConstantWithIntVector<unsigned long long>(v25, &v43) & 1) != 0) && (Axis = mlir::mps::OneHotOpGenericAdaptor<mlir::ValueRange>::getAxis(&v46), (mlir::matchConstantWithIntVector<long long>(Axis, v41) & 1) != 0))
    {
      v40 = 0;
      v27 = *v43;
      v28 = *v41[0];
      v54 = v49;
      Value = mlir::AffineMapAttr::getValue(&v54);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
    }

    else
    {
      v54 = v49;
      v33 = mlir::AffineMapAttr::getValue(&v54);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
      v35 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v36 = *(a11 + 8);
      if (v36 >= *(a11 + 12))
      {
        v39 = v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v36 + 1, 8);
        v35 = v39;
        LODWORD(v36) = *(a11 + 8);
      }

      *(*a11 + 8 * v36) = v35;
      ++*(a11 + 8);
    }

    if (v41[0] != &v42)
    {
      free(v41[0]);
    }

    if (v43 != &v45)
    {
      free(v43);
    }
  }

  else
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      v38 = v31;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v32 + 1, 8);
      v31 = v38;
      LODWORD(v32) = *(a11 + 8);
    }

    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
  }

  return 1;
}

BOOL mlir::mps::OneHotOpAdaptor::verify(uint64_t a1, uint64_t a2)
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
    v12 = "'mps.one_hot' op requires attribute 'resultElementType'";
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

uint64_t mlir::mps::OneHotOpGenericAdaptor<mlir::ValueRange>::getAxis(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 2;
  v2 = mlir::ValueRange::offset_base(&v2, 2);
  v3 = 0;
  return mlir::ValueRange::dereference_iterator(&v2, 0);
}

void mlir::mps::anonymous namespace::inferOneHotReturnType(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t *a6)
{
  v25[16] = *MEMORY[0x1E69E9840];
  v22[0] = a1;
  v22[1] = a2;
  mlir::ShapedType::getShape(v22);
  if (a4 >= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + a4;
  if (v11 + a4 < 0 || (v13 = v12 & 0x7FFFFFFF, mlir::ShapedType::getShape(v22), v13 >= v14))
  {
    *a6 = mlir::UnrankedTensorType::get(a5);
  }

  else
  {
    __dst = v25;
    v24 = 0x1000000000;
    Shape = mlir::ShapedType::getShape(v22);
    v17 = v15;
    v18 = v24;
    if (v15 != v24)
    {
      if (v15 >= v24)
      {
        if (v15 > HIDWORD(v24))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v25, v15, 8);
          v18 = v24;
        }

        if (v17 != v18)
        {
          bzero(__dst + 8 * v18, 8 * (v17 - v18));
        }
      }

      LODWORD(v24) = v17;
    }

    v19 = 8 * v13;
    v20 = __dst;
    if (v12)
    {
      memmove(__dst, Shape, 8 * v13);
      v20 = __dst;
    }

    v21 = (v20 + 8 * v13);
    *v21 = a3;
    if (8 * v17 != v19)
    {
      memmove(v21 + 1, &Shape[8 * v13], 8 * v17 - v19);
      v20 = __dst;
    }

    *a6 = mlir::RankedTensorType::get(v20, v24, a5, 0);
    if (__dst != v25)
    {
      free(__dst);
    }
  }
}

uint64_t mlir::mps::OneHotOp::verify(uint64_t **this)
{
  v72[1] = *MEMORY[0x1E69E9840];
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
      v46 = v7[1];
      v55 = v2;
      v56 = v46;
      if (mlir::ElementsAttr::getShapedType(&v55))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v55 = v2;
  v56 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v55))
  {
    return 1;
  }

LABEL_15:
  v71[0] = v72;
  v71[1] = 0x100000000;
  if (mlir::matchConstantWithIntVector<long long>(*((*this)[9] + 88), v71))
  {
    mlir::ShapedType::getShape(&v55);
    v14 = v13;
    v54 = 0;
    {
      v16 = (v14 - 1);
      v17 = *(mlir::ShapedType::getShape(&v55) + 8 * (v14 - 1));
      v18 = 1;
      if (v17 != 0x8000000000000000 && v17 != 1)
      {
        v53 = 259;
        mlir::OpState::emitOpError(this, &v52, v60);
        if (v60[0])
        {
          v57 = 2;
          v58 = v17;
          v19 = &v57;
          v20 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v48 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v20 = v61;
              v19 = (v61 + v48);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v19 = &v57;
              v20 = v61;
            }
          }

          v21 = &v20[24 * v62];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          v23 = ++v62;
          if (v60[0])
          {
            v57 = 3;
            v59 = 17;
            v24 = &v57;
            v25 = v61;
            if (v23 >= v63)
            {
              if (v61 <= &v57 && v61 + 24 * v23 > &v57)
              {
                v49 = &v57 - v61;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v23 + 1, 24);
                v25 = v61;
                v24 = (v61 + v49);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v23 + 1, 24);
                v24 = &v57;
                v25 = v61;
              }
            }

            v26 = &v25[24 * v62];
            v27 = *v24;
            *(v26 + 2) = *(v24 + 2);
            *v26 = v27;
            v28 = ++v62;
            if (v60[0])
            {
              v57 = 2;
              v58 = v16;
              v29 = &v57;
              v30 = v61;
              if (v28 >= v63)
              {
                if (v61 <= &v57 && v61 + 24 * v28 > &v57)
                {
                  v50 = &v57 - v61;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
                  v30 = v61;
                  v29 = (v61 + v50);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
                  v29 = &v57;
                  v30 = v61;
                }
              }

              v31 = &v30[24 * v62];
              v32 = *v29;
              *(v31 + 2) = *(v29 + 2);
              *v31 = v32;
              v33 = ++v62;
              if (v60[0])
              {
                v57 = 3;
                v58 = ".";
                v59 = 1;
                v34 = &v57;
                v35 = v61;
                if (v33 >= v63)
                {
                  if (v61 <= &v57 && v61 + 24 * v33 > &v57)
                  {
                    v51 = &v57 - v61;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
                    v35 = v61;
                    v34 = (v61 + v51);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
                    v34 = &v57;
                    v35 = v61;
                  }
                }

                v36 = &v35[24 * v62];
                v37 = *v34;
                *(v36 + 2) = *(v34 + 2);
                *v36 = v37;
                ++v62;
              }
            }
          }
        }

        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
        if (v60[0])
        {
          mlir::InFlightDiagnostic::report(v60);
        }

        if (v70 == 1)
        {
          if (v69 != &v70)
          {
            free(v69);
          }

          v38 = __p;
          if (__p)
          {
            v39 = v68;
            v40 = __p;
            if (v68 != __p)
            {
              do
              {
                v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
              }

              while (v39 != v38);
              v40 = __p;
            }

            v68 = v38;
            operator delete(v40);
          }

          v41 = v65;
          if (v65)
          {
            v42 = v66;
            v43 = v65;
            if (v66 != v65)
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
              v43 = v65;
            }

            v66 = v41;
            operator delete(v43);
          }

          if (v61 != v64)
          {
            free(v61);
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v18;
}

uint64_t mlir::mps::anonymous namespace::validateSingleAxis(mlir::mps::_anonymous_namespace_ *this, const char *a2, uint64_t a3, const char **a4, uint64_t *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = &a2[a3 & (a2 >> 63)];
  if (v7 < 0 || v7 >= a3)
  {
    v41 = "invalid axis: ";
    v42 = 259;
    mlir::Operation::emitOpError(this, &v41, v46);
    if (v46[0])
    {
      v43 = 2;
      v44 = a2;
      v9 = &v43;
      v10 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v37 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v10 = v47;
          v9 = (v47 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v9 = &v43;
          v10 = v47;
        }
      }

      v11 = &v10[24 * v48];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v48;
      if (v46[0])
      {
        v43 = 3;
        v44 = ", axis must be in ";
        v45 = 18;
        v14 = &v43;
        v15 = v47;
        if (v13 >= v49)
        {
          if (v47 <= &v43 && v47 + 24 * v13 > &v43)
          {
            v38 = &v43 - v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v13 + 1, 24);
            v15 = v47;
            v14 = (v47 + v38);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v13 + 1, 24);
            v14 = &v43;
            v15 = v47;
          }
        }

        v16 = &v15[24 * v48];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        v18 = ++v48;
        if (v46[0])
        {
          v43 = 3;
          v44 = "range - rank <= axis < rank, rank = ";
          v45 = 36;
          v19 = &v43;
          v20 = v47;
          if (v18 >= v49)
          {
            if (v47 <= &v43 && v47 + 24 * v18 > &v43)
            {
              v39 = &v43 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v18 + 1, 24);
              v20 = v47;
              v19 = (v47 + v39);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v18 + 1, 24);
              v19 = &v43;
              v20 = v47;
            }
          }

          v21 = &v20[24 * v48];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          v23 = ++v48;
          if (v46[0])
          {
            v43 = 2;
            v44 = a3;
            v24 = &v43;
            v25 = v47;
            if (v23 >= v49)
            {
              if (v47 <= &v43 && v47 + 24 * v23 > &v43)
              {
                v40 = &v43 - v47;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v23 + 1, 24);
                v25 = v47;
                v24 = (v47 + v40);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v23 + 1, 24);
                v24 = &v43;
                v25 = v47;
              }
            }

            v26 = &v25[24 * v48];
            v27 = *v24;
            *(v26 + 2) = *(v24 + 2);
            *v26 = v27;
            ++v48;
          }
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v54;
        v30 = __p;
        if (v54 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v54 = v28;
        operator delete(v30);
      }

      v31 = v51;
      if (v51)
      {
        v32 = v52;
        v33 = v51;
        if (v52 != v51)
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
          v33 = v51;
        }

        v52 = v31;
        operator delete(v33);
      }

      if (v47 != v50)
      {
        free(v47);
      }
    }
  }

  else
  {
    *a4 = v7;
    return 1;
  }

  return v8;
}

uint64_t mlir::mps::ScatterNDOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v72[2] = *MEMORY[0x1E69E9840];
  v72[0] = a4;
  v72[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v64 = a6;
  LOBYTE(v65) = 0;
  v66 = 0;
  v67 = v16;
  v68 = a9;
  v69 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v64);
    if (v66 == 1)
    {
      v66 = 0;
    }

    mlir::OperationName::OperationName(&v65, "mps.scatter_nd", 14, Context);
    v66 = 1;
  }

  v70 = a4;
  v71 = a5;
  if (a5 < 3 || (v18 = mlir::UnknownLoc::get(this, a2), !mlir::mps::ScatterNDOpAdaptor::verify(&v64, v18)))
  {
    v35 = mlir::Float32Type::get(this, a2);
    v36 = mlir::UnrankedTensorType::get(v35);
    v37 = a11[2];
    if (v37 >= a11[3])
    {
      v55 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v37 + 1, 8);
      v36 = v55;
      LODWORD(v37) = a11[2];
    }

    *(*a11 + 8 * v37) = v36;
    goto LABEL_22;
  }

  v19 = mlir::ValueRange::dereference_iterator(v72, 0);
  v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v22 = v21;
  v23 = mlir::ValueRange::dereference_iterator(v72, 1);
  v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8));
  v26 = v25;
  v27 = mlir::ValueRange::dereference_iterator(v72, 2);
  v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v27 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v20 || !v24 || (v30 = v28) == 0)
  {
    v39 = mlir::ValueRange::dereference_iterator(v72, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v39);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v41);
    }

    v42 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v43 = a11[2];
    if (v43 >= a11[3])
    {
      v56 = v42;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v43 + 1, 8);
      v42 = v56;
      v43 = a11[2];
    }

    *(*a11 + 8 * v43) = v42;
    goto LABEL_22;
  }

  v31 = v29;
  v57 = v20;
  v58 = v22;
  if (mlir::ElementsAttr::getShapedType(&v57))
  {
    Shape = mlir::ShapedType::getShape(&v57);
    if (!v33)
    {
LABEL_36:
      v53 = v57;
      v54 = a11[2];
      if (v54 >= a11[3])
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 4, v54 + 1, 8);
        LODWORD(v54) = a11[2];
      }

      *(*a11 + 8 * v54) = v53;
LABEL_22:
      ++a11[2];
      return 1;
    }

    v34 = 8 * v33;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v34 -= 8;
      if (!v34)
      {
        goto LABEL_36;
      }
    }
  }

  {
    goto LABEL_36;
  }

  BatchDims = mlir::mps::detail::ScatterNDOpGenericAdaptorBase::getBatchDims(&v64);
  v61 = v63;
  v62 = 0x400000000;
  if (v45)
  {
    v46 = v61;
    v47 = v62;
    v48 = mlir::getElementTypeOrSelf(v20);
    *&v59 = v46;
    *(&v59 + 1) = v47;
    v60 = 1;
    result = mlir::ShapedType::cloneWith(&v57, &v59, v48);
    v57 = result;
    v58 = v49;
  }

  else
  {
    v50 = mlir::ValueRange::dereference_iterator(v72, 0);
    v51 = mlir::getElementTypeOrSelf(v50);
  }

  if (v61 != v63)
  {
    v52 = result;
    free(v61);
    result = v52;
  }

  if (v45)
  {
    goto LABEL_36;
  }

  return result;
}

BOOL mlir::mps::ScatterNDOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v25[0] = *(a1 + 24);
      v27[0] = mlir::AffineMapAttr::getValue(v25);
      if (mlir::Type::isUnsignedInteger(v27, 32))
      {
        return 1;
      }

      v25[0] = "'mps.scatter_nd' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v26 = 259;
      mlir::emitError(a2, v25, v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v33;
          v20 = __p;
          if (v33 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v33 = v18;
          operator delete(v20);
        }

        v7 = v30;
        if (!v30)
        {
          goto LABEL_55;
        }

        v21 = v31;
        v9 = v30;
        if (v31 == v30)
        {
LABEL_54:
          v31 = v7;
          operator delete(v9);
LABEL_55:
          if (v28 != &v29)
          {
            free(v28);
          }

          return v3;
        }

        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v21 != v7);
LABEL_53:
        v9 = v30;
        goto LABEL_54;
      }
    }

    else
    {
      v25[0] = "'mps.scatter_nd' op requires attribute 'mode'";
      v26 = 259;
      mlir::emitError(a2, v25, v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v12 = __p;
        if (__p)
        {
          v13 = v33;
          v14 = __p;
          if (v33 != __p)
          {
            do
            {
              v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
            }

            while (v13 != v12);
            v14 = __p;
          }

          v33 = v12;
          operator delete(v14);
        }

        v7 = v30;
        if (!v30)
        {
          goto LABEL_55;
        }

        v15 = v31;
        v9 = v30;
        if (v31 == v30)
        {
          goto LABEL_54;
        }

        do
        {
          v17 = *--v15;
          v16 = v17;
          *v15 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v15 != v7);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v25[0] = "'mps.scatter_nd' op requires attribute 'batch_dims'";
    v26 = 259;
    mlir::emitError(a2, v25, v27);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v33;
        v6 = __p;
        if (v33 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v33 = v4;
        operator delete(v6);
      }

      v7 = v30;
      if (!v30)
      {
        goto LABEL_55;
      }

      v8 = v31;
      v9 = v30;
      if (v31 == v30)
      {
        goto LABEL_54;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
        }
      }

      while (v8 != v7);
      goto LABEL_53;
    }
  }

  return v3;
}

uint64_t mlir::mps::anonymous namespace::scatterNDRankInferrable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a5;
  v10[1] = a6;
  if (mlir::ElementsAttr::getShapedType(v12))
  {
    return 1;
  }

  if (mlir::ElementsAttr::getShapedType(v10))
  {
    Shape = mlir::ShapedType::getShape(v10);
    v9 = *(Shape + 8 * v8 - 8) != 0x8000000000000000;
  }

  else
  {
    v9 = 0;
  }

  return mlir::ElementsAttr::getShapedType(v11) & v9;
}

uint64_t *mlir::mps::detail::ScatterNDOpGenericAdaptorBase::getBatchDims(mlir::mps::detail::ScatterNDOpGenericAdaptorBase *this)
{
  v5 = *(this + 3);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

BOOL mlir::mps::anonymous namespace::inferScatterNDShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v10 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v42[0] = a3;
  v42[1] = a4;
  v41[0] = a5;
  v41[1] = a6;
  v40[0] = a7;
  v40[1] = a8;
  if (mlir::ElementsAttr::getShapedType(v42))
  {
    Shape = mlir::ShapedType::getShape(v42);
    v14 = v12;
    v15 = *(a10 + 8);
    if (v12 != v15)
    {
      if (v12 >= v15)
      {
        if (v12 > *(a10 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a10, (a10 + 16), v12, 8);
          v15 = *(a10 + 8);
        }

        if (v14 != v15)
        {
          bzero((*a10 + 8 * v15), 8 * (v14 - v15));
        }
      }

      *(a10 + 8) = v14;
    }

    if (v14)
    {
      memmove(*a10, Shape, 8 * v14);
    }

    if (mlir::ElementsAttr::getShapedType(v42))
    {
      v16 = mlir::ShapedType::getShape(v42);
      if (!v17)
      {
        return 1;
      }

      v18 = 8 * v17;
      while (*v16 != 0x8000000000000000)
      {
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    v14 = 0x8000000000000000;
  }

  if (!mlir::ElementsAttr::getShapedType(v40) || !mlir::ElementsAttr::getShapedType(v41))
  {
    return 1;
  }

  v19 = mlir::ShapedType::getShape(v41);
  v21 = v20;
  v23 = mlir::ShapedType::getShape(v40);
  v39 = v21;
  v24 = v23[v22 - 1];
  v38 = v24;
  if (v24 == 0x8000000000000000)
  {
    if (v14 == 0x8000000000000000)
    {
      return 1;
    }

    v24 = (v14 + ~a9 - v21 + v22);
    v38 = v24;
  }

  if (v24 <= 0)
  {
    return mlir::emitOptionalError<char const(&)[36],char const(&)[49],long long &,char const(&)[6]>(a1, v10, "invalid input tensor shapes: minor ", "dimension of indices must have positive length, ", &v38, " <= 0");
  }

  if (v22 - 1 > v21)
  {
    v43 = (v22 - 1);
    return mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(a1, v10, "invalid input tensor shapes: requires ", "|updates| >= |indices| - 1, ", &v39, " < ", &v43);
  }

  v26 = &v21[a9 - v22 + 1 + v24];
  if (v14 != 0x8000000000000000)
  {
    v27 = v14 == v26;
    v26 = v14;
    if (!v27)
    {
      return mlir::emitOptionalError<char const(&)[31],char const(&)[45],char const(&)[25]>(a1, v10, "Rank of data array must equal ", "number of outer dimensions in index array + ", "rank of slice to update.");
    }
  }

  if ((mlir::ElementsAttr::getShapedType(v42) & 1) == 0)
  {
    llvm::SmallVectorImpl<long long>::assign(a10, v26, 0x8000000000000000);
  }

  if (a9)
  {
    v28 = *a10;
    v29 = 8 * a9;
    v30 = v19;
    do
    {
      v43 = *v28;
      v31 = *v23++;
      v44 = v31;
      v32 = *v30++;
      v45 = v32;
      *v28++ = mlir::mps::mergeDynamicDims(&v43, 3);
      v29 -= 8;
    }

    while (v29);
  }

  v33 = v19 + 8 * v21;
  if (v33 != v33 - 8 * v26 + 8 * v24 + 8 * a9)
  {
    v34 = 8 * &v24[a9] - 8 * v26;
    v35 = (v33 - 8);
    v36 = (*a10 + 8 * *(a10 + 8) - 8);
    do
    {
      v43 = *v36;
      v37 = *v35--;
      v44 = v37;
      *v36-- = mlir::mps::mergeDynamicDims(&v43, 2);
      v34 += 8;
    }

    while (v34);
  }

  return 1;
}

BOOL mlir::mps::ScatterNDOp::verify(uint64_t **this)
{
  v155 = *MEMORY[0x1E69E9840];
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
  v139[0] = v2;
  v139[1] = v13;
  v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    mlir::Builder::getZeroAttr();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_29;
  }

  v25 = v19[1];
LABEL_30:
  v138[0] = v14;
  v138[1] = v25;
  v26 = (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = *v26;
  {
    mlir::Builder::getZeroAttr();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (v30)
    {
      goto LABEL_33;
    }

LABEL_44:
    v37 = 0;
    goto LABEL_45;
  }

  v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  if (!v30)
  {
    goto LABEL_44;
  }

LABEL_33:
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
    goto LABEL_44;
  }

  v37 = v31[1];
LABEL_45:
  v137[0] = v26;
  v137[1] = v37;
  v38 = 0x8000000000000000;
  v134 = 0x8000000000000000;
  v135 = 0x8000000000000000;
  v136 = 0x8000000000000000;
  if (mlir::ElementsAttr::getShapedType(v138))
  {
    Shape = mlir::ShapedType::getShape(v138);
    v38 = v40;
    v136 = v40;
    if (!mlir::ElementsAttr::getShapedType(v137))
    {
      goto LABEL_47;
    }

LABEL_50:
    v41 = mlir::ShapedType::getShape(v137);
    v43 = v46;
    v42 = v41[v46 - 1];
    v134 = v42;
    if (!mlir::ElementsAttr::getShapedType(v139))
    {
      goto LABEL_48;
    }

    goto LABEL_51;
  }

  Shape = 0;
  if (mlir::ElementsAttr::getShapedType(v137))
  {
    goto LABEL_50;
  }

LABEL_47:
  v41 = 0;
  v42 = 0x8000000000000000;
  v43 = 0x8000000000000000;
  if (!mlir::ElementsAttr::getShapedType(v139))
  {
LABEL_48:
    v44 = 0;
    v45 = 0x8000000000000000;
    goto LABEL_52;
  }

LABEL_51:
  v44 = mlir::ShapedType::getShape(v139);
  v45 = v47;
  v135 = v47;
LABEL_52:
  v140 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v140, &v143);
  if (LODWORD(v144[0]) > 0x40)
  {
    v48 = *v143;
    MEMORY[0x1AC55A040]();
    if (v38 == 0x8000000000000000)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v48 = v143;
    if (v38 == 0x8000000000000000)
    {
      goto LABEL_57;
    }
  }

  if (v48 >= v38)
  {
    goto LABEL_61;
  }

LABEL_57:
  if ((v43 == 0x8000000000000000 || v48 < v43) && (v45 == 0x8000000000000000 || v48 < v45))
  {
    v122 = v42;
    v123 = v45;
    v140 = v142;
    v141 = 0x400000000;
    if (v48)
    {
      if (v48 < 5)
      {
        v69 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v142, v48, 8);
        v69 = v141;
      }

      if (v48 != v69)
      {
        bzero(&v140[8 * v69], 8 * (v48 - v69));
      }

      v70 = 0;
      LODWORD(v141) = v48;
      do
      {
        if (mlir::ElementsAttr::getShapedType(v138))
        {
          v73 = Shape[v70];
          if (!mlir::ElementsAttr::getShapedType(v137))
          {
            goto LABEL_99;
          }
        }

        else
        {
          v73 = 0x8000000000000000;
          if (!mlir::ElementsAttr::getShapedType(v137))
          {
LABEL_99:
            v74 = 0x8000000000000000;
            if (!mlir::ElementsAttr::getShapedType(v139))
            {
              goto LABEL_103;
            }

            goto LABEL_95;
          }
        }

        v74 = v41[v70];
        if (!mlir::ElementsAttr::getShapedType(v139))
        {
LABEL_103:
          v71 = 0x8000000000000000;
          goto LABEL_96;
        }

LABEL_95:
        v71 = v44[v70];
LABEL_96:
        v143 = v73;
        v144[0] = v74;
        v144[1] = v71;
        v72 = mlir::mps::mergeDynamicDims(&v143, 3);
        *&v140[8 * v70++] = v72;
      }

      while (v48 != v70);
    }

    if ((mlir::ElementsAttr::getShapedType(v138) & 1) != 0 && (mlir::verifyCompatibleShape(Shape, v48, v140, v141) & 1) == 0)
    {
      v124 = "invalid updates tensor shape: input tensor shapes ";
      v128 = 259;
      mlir::OpState::emitOpError(this, &v124, &v143);
      if (v143)
      {
        LODWORD(v129) = 3;
        v130 = "must match along batch dimensions";
        v131 = 33;
        v81 = &v129;
        v82 = v145;
        if (v146 >= v147)
        {
          if (v145 <= &v129 && v145 + 24 * v146 > &v129)
          {
            v119 = &v129 - v145;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
            v82 = v145;
            v81 = (v145 + v119);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
            v81 = &v129;
            v82 = v145;
          }
        }

        v83 = &v82[24 * v146];
        v84 = *v81;
        *(v83 + 2) = v81[2];
        *v83 = v84;
        ++v146;
      }

      v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v143);
      if (v143)
      {
        mlir::InFlightDiagnostic::report(&v143);
      }

      if (v154 == 1)
      {
        if (v153 != &v154)
        {
          free(v153);
        }

        v85 = __p;
        if (__p)
        {
          v86 = v152;
          v87 = __p;
          if (v152 != __p)
          {
            do
            {
              v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
            }

            while (v86 != v85);
            v87 = __p;
          }

          v152 = v85;
          operator delete(v87);
        }

        v88 = v149;
        if (v149)
        {
          v89 = v150;
          v90 = v149;
          if (v150 != v149)
          {
            do
            {
              v92 = *--v89;
              v91 = v92;
              *v89 = 0;
              if (v92)
              {
                MEMORY[0x1AC55A040](v91, 0x1000C8077774924);
              }
            }

            while (v89 != v88);
            goto LABEL_160;
          }

LABEL_161:
          v150 = v88;
          operator delete(v90);
        }

LABEL_162:
        if (v145 != v148)
        {
          free(v145);
          v67 = v140;
          if (v140 == v142)
          {
            return v58;
          }

          goto LABEL_85;
        }
      }
    }

    else
    {
      if (!mlir::ElementsAttr::getShapedType(v137) || (mlir::verifyCompatibleShape(v41, v48, v140, v141) & 1) != 0)
      {
        if (mlir::ElementsAttr::getShapedType(v139) && (mlir::verifyCompatibleShape(v44, v48, v140, v141) & 1) == 0)
        {
          v124 = "invalid data tensor shape: input tensor shapes ";
          v128 = 259;
          mlir::OpState::emitOpError(this, &v124, &v143);
          if (v143)
          {
            LODWORD(v129) = 3;
            v130 = "must match along batch dimensions";
            v131 = 33;
            v103 = &v129;
            v104 = v145;
            if (v146 >= v147)
            {
              if (v145 <= &v129 && v145 + 24 * v146 > &v129)
              {
                v121 = &v129 - v145;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
                v104 = v145;
                v103 = (v145 + v121);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
                v103 = &v129;
                v104 = v145;
              }
            }

            v105 = &v104[24 * v146];
            v106 = *v103;
            *(v105 + 2) = v103[2];
            *v105 = v106;
            ++v146;
          }

          v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v143);
          if (v143)
          {
            mlir::InFlightDiagnostic::report(&v143);
          }

          if (v154 == 1)
          {
            mlir::Diagnostic::~Diagnostic(v144);
            v67 = v140;
            if (v140 == v142)
            {
              return v58;
            }

            goto LABEL_85;
          }

          goto LABEL_177;
        }

        v75 = v123;
        if (!mlir::ElementsAttr::getShapedType(v137) || !mlir::ElementsAttr::getShapedType(v138))
        {
          goto LABEL_176;
        }

        v76 = v43 - 1;
        if (v38 < (v43 - 1))
        {
          v124 = "invalid input tensor shapes: requires ";
          v128 = 259;
          mlir::OpState::emitOpError(this, &v124, &v143);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v143, "|updates| >= |indices| - 1, ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v77, &v136);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v78, " < ");
          v129 = (v43 - 1);
          mlir::InFlightDiagnostic::operator<<<long long &>(v79, &v129);
          goto LABEL_186;
        }

        v107 = v122;
        if (v122 == 0x8000000000000000)
        {
          if (v123 == 0x8000000000000000 || (v107 = v76 - (v48 + v38) + v123, v134 = v107, v107 == 0x8000000000000000))
          {
            v124 = "invalid input tensor shapes: minor dimension of indices was dynamic and could not be inferred";
            v125 = 93;
            v126 = 0;
            v127 = 0;
            LOBYTE(v128) = 1;
            v132 = 263;
            v129 = &v124;
            mlir::OpState::emitOpError(this, &v129, &v143);
            v80 = &v143;
            goto LABEL_186;
          }
        }

        else if (v123 == 0x8000000000000000)
        {
          v135 = v48 - v43 + v38 + v122 + 1;
          v75 = v135;
        }

        else if (v123 != v48 - v43 + v38 + v122 + 1)
        {
          v124 = "Rank of data array must equal number of outer ";
          v128 = 259;
          mlir::OpState::emitOpError(this, &v124, &v143);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v143, "dimensions in indices array + rank of slice to update, ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v112, &v135);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v113, " != ");
          v129 = (v122 + v48);
          mlir::InFlightDiagnostic::operator<<<unsigned long>(v114, &v129);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v115, " + ");
          v133 = v38 - (v43 - 1);
          mlir::InFlightDiagnostic::operator<<<long long &>(v116, &v133);
          goto LABEL_186;
        }

        if (v107 <= 0)
        {
          v124 = "invalid input tensor shapes: minor dimension of ";
          v128 = 259;
          mlir::OpState::emitOpError(this, &v124, &v143);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v143, "indices must have positive length, ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v109, &v134);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v110, " <= 0");
        }

        else
        {
          v108 = v38 - (v43 - 1);
          if (mlir::verifyCompatibleShape(&Shape[v48], v76 - v48, &v41[v48], v76 - v48))
          {
            if (!mlir::ElementsAttr::getShapedType(v139) || (mlir::verifyCompatibleShape(&Shape[v76], v108, &v44[v107 + v48], v75 - (v107 + v48)) & 1) != 0)
            {
LABEL_176:
              v58 = 1;
              goto LABEL_177;
            }

            v124 = "invalid input tensor shape: updates tensor ";
            v128 = 259;
            mlir::OpState::emitOpError(this, &v124, &v143);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v143, "shape and data tensor shape must match along inner dimensions");
          }

          else
          {
            v124 = "invalid input tensor shape: updates tensor ";
            v128 = 259;
            mlir::OpState::emitOpError(this, &v124, &v143);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v143, "shape and indices tensor shape must match along outer ");
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v111, "dimensions");
          }
        }

LABEL_186:
        v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v143);
        v67 = v140;
        if (v140 == v142)
        {
          return v58;
        }

        goto LABEL_85;
      }

      v124 = "invalid indices tensor shape: input tensor shapes ";
      v128 = 259;
      mlir::OpState::emitOpError(this, &v124, &v143);
      if (v143)
      {
        LODWORD(v129) = 3;
        v130 = "must match along batch dimensions";
        v131 = 33;
        v93 = &v129;
        v94 = v145;
        if (v146 >= v147)
        {
          if (v145 <= &v129 && v145 + 24 * v146 > &v129)
          {
            v120 = &v129 - v145;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
            v94 = v145;
            v93 = (v145 + v120);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
            v93 = &v129;
            v94 = v145;
          }
        }

        v95 = &v94[24 * v146];
        v96 = *v93;
        *(v95 + 2) = v93[2];
        *v95 = v96;
        ++v146;
      }

      v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v143);
      if (v143)
      {
        mlir::InFlightDiagnostic::report(&v143);
      }

      if (v154 == 1)
      {
        if (v153 != &v154)
        {
          free(v153);
        }

        v97 = __p;
        if (__p)
        {
          v98 = v152;
          v99 = __p;
          if (v152 != __p)
          {
            do
            {
              v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
            }

            while (v98 != v97);
            v99 = __p;
          }

          v152 = v97;
          operator delete(v99);
        }

        v88 = v149;
        if (v149)
        {
          v100 = v150;
          v90 = v149;
          if (v150 != v149)
          {
            do
            {
              v102 = *--v100;
              v101 = v102;
              *v100 = 0;
              if (v102)
              {
                MEMORY[0x1AC55A040](v101, 0x1000C8077774924);
              }
            }

            while (v100 != v88);
LABEL_160:
            v90 = v149;
            goto LABEL_161;
          }

          goto LABEL_161;
        }

        goto LABEL_162;
      }
    }

LABEL_177:
    v67 = v140;
    if (v140 == v142)
    {
      return v58;
    }

    goto LABEL_85;
  }

LABEL_61:
  v140 = "invalid batch dimensions: ";
  v142[8] = 259;
  mlir::OpState::emitOpError(this, &v140, &v143);
  if (v143)
  {
    LODWORD(v124) = 5;
    v125 = v48;
    v49 = &v124;
    v50 = v145;
    if (v146 >= v147)
    {
      if (v145 <= &v124 && v145 + 24 * v146 > &v124)
      {
        v117 = &v124 - v145;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
        v50 = v145;
        v49 = (v145 + v117);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
        v49 = &v124;
        v50 = v145;
      }
    }

    v51 = &v50[24 * v146];
    v52 = *v49;
    *(v51 + 2) = v49[2];
    *v51 = v52;
    v53 = ++v146;
    if (v143)
    {
      LODWORD(v124) = 3;
      v125 = ", must be less than ranks of all input tensors";
      v126 = 46;
      v54 = &v124;
      v55 = v145;
      if (v53 >= v147)
      {
        if (v145 <= &v124 && v145 + 24 * v53 > &v124)
        {
          v118 = &v124 - v145;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v53 + 1, 24);
          v55 = v145;
          v54 = (v145 + v118);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v53 + 1, 24);
          v54 = &v124;
          v55 = v145;
        }
      }

      v56 = &v55[24 * v146];
      v57 = *v54;
      *(v56 + 2) = v54[2];
      *v56 = v57;
      ++v146;
    }
  }

  v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v143);
  if (v143)
  {
    mlir::InFlightDiagnostic::report(&v143);
  }

  if (v154 == 1)
  {
    if (v153 != &v154)
    {
      free(v153);
    }

    v59 = __p;
    if (__p)
    {
      v60 = v152;
      v61 = __p;
      if (v152 != __p)
      {
        do
        {
          v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
        }

        while (v60 != v59);
        v61 = __p;
      }

      v152 = v59;
      operator delete(v61);
    }

    v62 = v149;
    if (v149)
    {
      v63 = v150;
      v64 = v149;
      if (v150 != v149)
      {
        do
        {
          v66 = *--v63;
          v65 = v66;
          *v63 = 0;
          if (v66)
          {
            MEMORY[0x1AC55A040](v65, 0x1000C8077774924);
          }
        }

        while (v63 != v62);
        v64 = v149;
      }

      v150 = v62;
      operator delete(v64);
    }

    v67 = v145;
    if (v145 != v148)
    {
LABEL_85:
      free(v67);
    }
  }

  return v58;
}

uint64_t llvm::SmallVectorImpl<long long>::resize(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(result + 12) < a2)
      {
        v4 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), a2, 8);
        result = v4;
        v2 = *(v4 + 8);
      }

      if (a2 != v2)
      {
        v5 = result;
        bzero((*result + 8 * v2), 8 * (a2 - v2));
        result = v5;
      }
    }

    *(result + 8) = a2;
  }

  return result;
}

BOOL mlir::mps::getAxis(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = a2;
  v16 = 0;
  v17 = 0;
  v14 = a4;
  v15 = &v16;
  v18 = a3;
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v15, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v16, v17);
  v16 = SingleInt;
  LOBYTE(v17) = v11;
  v12 = 1;
  if (v11)
  {
    *a5 = SingleInt;
    *(a5 + 8) = 1;
    if (SingleInt < 0)
    {
      SingleInt += a4;
      *a5 = SingleInt;
      if (SingleInt < 0)
      {
        return mlir::emitOptionalError<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(a1, v7, "invalid axis tensor: [", &v16, "], axis must be in range -rank <= axis < rank,", " rank = ", &v14);
      }
    }

    if (SingleInt >= a4)
    {
      return mlir::emitOptionalError<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(a1, v7, "invalid axis tensor: [", &v16, "], axis must be in range -rank <= axis < rank,", " rank = ", &v14);
    }
  }

  return v12;
}

BOOL mlir::emitOptionalError<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char a2, char *a3, char **a4, char *a5, char *a6, char **a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(&v23, a3, a4, a5, a6, a7);
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

BOOL mlir::mps::ScatterOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v51[0] = a4;
  v51[1] = a5;
  if (a5 == 4)
  {
    v13 = mlir::ValueRange::dereference_iterator(v51, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v46 = v16;
    v17 = *(mlir::ValueRange::dereference_iterator(v51, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = 0;
    }

    v45 = v17;
    if (v16)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot scatter a non-tensor type");
    }

    v44 = v16;
    if (mlir::TensorType::hasRank(&v44))
    {
      Value = mlir::ArrayAttr::getValue(&v44);
      if (!v24)
      {
LABEL_43:
        v40 = v44;
        v41 = *(a11 + 8);
        if (v41 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
          LODWORD(v41) = *(a11 + 8);
        }

        *(*a11 + 8 * v41) = v40;
        ++*(a11 + 8);
        return 1;
      }

      v25 = 8 * v24;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_43;
        }
      }
    }

    if (mlir::TensorType::hasRank(&v45))
    {
      v26 = mlir::ArrayAttr::getValue(&v45);
      v28 = v27;
      LOBYTE(v42) = 0;
      v43 = 0;
      v29 = mlir::ValueRange::dereference_iterator(v51, 3);
      if (!mlir::mps::getAxis(a2, a3, v29, v28, &v42))
      {
        return 0;
      }

      if (v43)
      {
        __dst = v50;
        v49 = 0x400000000;
        if (mlir::TensorType::hasRank(&v46))
        {
          llvm::SmallVectorImpl<long long>::resize(&__dst, v28);
          v30 = mlir::ArrayAttr::getValue(&v46);
          v31 = mlir::ArrayAttr::getValue(&v46);
          v33 = (v31 + 8 * v32);
          if (v33 != v30)
          {
            memmove(__dst, v30, v33 - v30);
          }
        }

        else
        {
          llvm::SmallVectorImpl<long long>::assign(&__dst, v28, 0x8000000000000000);
        }

        if (v28 >= 1)
        {
          v34 = 0;
          v35 = v42;
          do
          {
            if (v35 != v34)
            {
              v47[0] = *(__dst + v34);
              v47[1] = *(v26 + 8 * v34);
              v36 = mlir::mps::mergeDynamicDims(v47, 2);
              *(__dst + v34) = v36;
            }

            ++v34;
          }

          while (v28 != v34);
        }

        v37 = __dst;
        v38 = v49;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v46);
        v44 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
        if (__dst != v50)
        {
          free(__dst);
        }
      }
    }

    goto LABEL_43;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

_DWORD *llvm::SmallVectorImpl<long long>::assign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v14 = *a1;
    v16 = *(a1 + 8);
    result = (a1 + 8);
    v15 = v16;
    if (v16 >= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 < 4)
      {
        v18 = v14;
        v19 = v17;
        do
        {
LABEL_19:
          *v18++ = a3;
          --v19;
        }

        while (v19);
        goto LABEL_20;
      }

      v18 = &v14->i64[v17 & 0xFFFFFFFC];
      v19 = v17 & 3;
      v20 = vdupq_n_s64(a3);
      v21 = v14 + 1;
      v22 = v17 & 0xFFFFFFFC;
      do
      {
        v21[-1] = v20;
        *v21 = v20;
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      if (v17 != (v17 & 0xFFFFFFFC))
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    v23 = a2 - v15;
    if (a2 > v15)
    {
      v24 = (v14 + 8 * v15);
      if (v23 >= 4)
      {
        v25 = &v24->i64[v23 & 0xFFFFFFFFFFFFFFFCLL];
        v26 = v23 & 3;
        v27 = vdupq_n_s64(a3);
        v28 = v24 + 1;
        v29 = v23 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v28[-1] = v27;
          *v28 = v27;
          v28 += 2;
          v29 -= 4;
        }

        while (v29);
        if (v23 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v25 = &v14->i64[v15];
        v26 = a2 - v15;
      }

      do
      {
        *v25++ = a3;
        --v26;
      }

      while (v26);
    }

LABEL_7:
    *result = a2;
    return result;
  }

  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  v7 = *a1;
  v8 = *a1;
  v9 = a2;
  if (a2 >= 4)
  {
    v8 = (v7 + 8 * (a2 & 0xFFFFFFFFFFFFFFFCLL));
    v9 = a2 & 3;
    v10 = vdupq_n_s64(a3);
    v11 = v7 + 1;
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == a2)
    {
      result = v5;
      goto LABEL_7;
    }
  }

  do
  {
    v8->i64[0] = a3;
    v8 = (v8 + 8);
    --v9;
  }

  while (v9);
  result = v5;
  *v5 = a2;
  return result;
}

BOOL mlir::mps::ScatterOp::verify(uint64_t **this)
{
  v92 = *MEMORY[0x1E69E9840];
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
  v82[0] = v2;
  v82[1] = v13;
  v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    mlir::Builder::getZeroAttr();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_29;
  }

  v25 = v19[1];
LABEL_30:
  v81[0] = v14;
  v81[1] = v25;
  v26 = (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = *v26;
  {
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_44;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_44;
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
    v50 = v31[1];
    v79 = v26;
    v80 = v50;
    if (!mlir::ElementsAttr::getShapedType(v81))
    {
      return 1;
    }

    goto LABEL_45;
  }

LABEL_44:
  v79 = v26;
  v80 = 0;
  if (!mlir::ElementsAttr::getShapedType(v81))
  {
    return 1;
  }

LABEL_45:
  mlir::ShapedType::getShape(v81);
  v38 = v37;
  LOBYTE(v77) = 0;
  v78 = 0;
  Axis = mlir::mps::getAxis((*this)[3], 1, *((*this)[9] + 120), v37, &v77);
  result = 0;
  if (!Axis)
  {
    return result;
  }

  if (v78 != 1)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v81);
  if (mlir::ElementsAttr::getShapedType(&v79))
  {
    if (*mlir::ShapedType::getShape(&v79) != 0x8000000000000000)
    {
      v42 = v77;
      if (*(mlir::ShapedType::getShape(v81) + 8 * v42) != 0x8000000000000000)
      {
        v43 = Shape[v42];
        if (v43 != *mlir::ShapedType::getShape(&v79))
        {
          v75[0] = "invalid updates tensor shape, shape at axis must ";
          v76 = 259;
          mlir::OpState::emitOpError(this, v75, &v86);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v86, "equal length of indices tensor");
          v69 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v86);
          return v69;
        }
      }
    }
  }

  if (!mlir::ElementsAttr::getShapedType(v82))
  {
    return 1;
  }

  mlir::ShapedType::getShape(v82);
  if (v44 == v38)
  {
    v45 = mlir::ShapedType::getShape(v82);
    v46 = v77;
    if ((mlir::verifyCompatibleShape(Shape, v77, v45, v77) & 1) == 0 || (mlir::verifyCompatibleShape(&Shape[v46 + 1], &v38[~v46], &v45[v46 + 1], &v38[~v46]) & 1) == 0)
    {
      v75[0] = "invalid input tensor shapes, updates shape and ";
      v76 = 259;
      mlir::OpState::emitOpError(this, v75, &v86);
      if (!v86)
      {
        goto LABEL_73;
      }

      v83 = 3;
      v84 = "data shape must match except at axis";
      v85 = 36;
      v47 = v89;
      v48 = &v83;
      v49 = v88;
      if (v89 < v90)
      {
        goto LABEL_72;
      }

      if (v88 > &v83 || v88 + 24 * v89 <= &v83)
      {
        goto LABEL_84;
      }

      v72 = &v83 - v88;
      goto LABEL_94;
    }

    return 1;
  }

  v75[0] = "invalid input tensor shapes, updates rank and result ";
  v76 = 259;
  mlir::OpState::emitOpError(this, v75, &v86);
  if (v86)
  {
    v83 = 3;
    v84 = "rank must be equal, ";
    v85 = 20;
    v51 = &v83;
    v52 = v88;
    if (v89 >= v90)
    {
      if (v88 <= &v83 && v88 + 24 * v89 > &v83)
      {
        v71 = &v83 - v88;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        v52 = v88;
        v51 = &v71[v88];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        v51 = &v83;
        v52 = v88;
      }
    }

    v53 = v52 + 24 * v89;
    v54 = *v51;
    *(v53 + 16) = *(v51 + 2);
    *v53 = v54;
    v55 = ++v89;
    if (v86)
    {
      v83 = 2;
      v84 = v38;
      v56 = &v83;
      v57 = v88;
      if (v55 >= v90)
      {
        if (v88 <= &v83 && v88 + 24 * v55 > &v83)
        {
          v73 = &v83 - v88;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v55 + 1, 24);
          v57 = v88;
          v56 = &v73[v88];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v55 + 1, 24);
          v56 = &v83;
          v57 = v88;
        }
      }

      v58 = v57 + 24 * v89;
      v59 = *v56;
      *(v58 + 16) = *(v56 + 2);
      *v58 = v59;
      v60 = ++v89;
      if (v86)
      {
        v83 = 3;
        v84 = " != ";
        v85 = 4;
        v61 = &v83;
        v62 = v88;
        if (v60 >= v90)
        {
          if (v88 <= &v83 && v88 + 24 * v60 > &v83)
          {
            v74 = &v83 - v88;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v60 + 1, 24);
            v62 = v88;
            v61 = &v74[v88];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v60 + 1, 24);
            v61 = &v83;
            v62 = v88;
          }
        }

        v63 = v62 + 24 * v89;
        v64 = *v61;
        *(v63 + 16) = *(v61 + 2);
        *v63 = v64;
        ++v89;
      }
    }
  }

  mlir::ShapedType::getShape(v82);
  if (v86)
  {
    v83 = 2;
    v84 = v65;
    v47 = v89;
    v48 = &v83;
    v49 = v88;
    if (v89 < v90)
    {
LABEL_72:
      v66 = v49 + 24 * v89;
      v67 = *v48;
      *(v66 + 16) = *(v48 + 2);
      *v66 = v67;
      ++v89;
      goto LABEL_73;
    }

    if (v88 > &v83 || v88 + 24 * v89 <= &v83)
    {
LABEL_84:
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v47 + 1, 24);
      v48 = &v83;
      v49 = v88;
      goto LABEL_72;
    }

    v72 = &v83 - v88;
LABEL_94:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v47 + 1, 24);
    v49 = v88;
    v48 = &v72[v88];
    goto LABEL_72;
  }

LABEL_73:
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v86);
  if (v86)
  {
    v68 = result;
    mlir::InFlightDiagnostic::report(&v86);
    result = v68;
  }

  if (v91[160] == 1)
  {
    v69 = result;
    mlir::Diagnostic::~Diagnostic(&v87);
    return v69;
  }

  return result;
}

BOOL mlir::mps::ScatterAlongAxisOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v64[2] = *MEMORY[0x1E69E9840];
  v64[0] = a4;
  v64[1] = a5;
  if (a5 == 4)
  {
    v13 = mlir::ValueRange::dereference_iterator(v64, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v58 = v16;
    v17 = *(mlir::ValueRange::dereference_iterator(v64, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = 0;
    }

    v57 = v17;
    v20 = *(mlir::ValueRange::dereference_iterator(v64, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(*v20 + 136);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v20 = 0;
    }

    v56 = v20;
    if (v16)
    {
      v23 = v57 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23 || v20 == 0)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot scatter_along_axis a non-tensor type");
    }

    v55 = v16;
    if (mlir::TensorType::hasRank(&v55))
    {
      Value = mlir::ArrayAttr::getValue(&v55);
      if (!v28)
      {
        goto LABEL_68;
      }

      v29 = 8 * v28;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_68;
        }
      }
    }

    if (mlir::TensorType::hasRank(&v57) || mlir::TensorType::hasRank(&v56))
    {
      if (mlir::TensorType::hasRank(&v57))
      {
        v30 = mlir::ArrayAttr::getValue(&v57);
        mlir::ArrayAttr::getValue(&v57);
        v32 = v31;
        if (!mlir::TensorType::hasRank(&v56))
        {
LABEL_40:
          v33 = 0;
          goto LABEL_43;
        }
      }

      else
      {
        v30 = 0;
        v32 = 0;
        if (!mlir::TensorType::hasRank(&v56))
        {
          goto LABEL_40;
        }
      }

      v33 = mlir::ArrayAttr::getValue(&v56);
      mlir::ArrayAttr::getValue(&v56);
      v32 = v34;
LABEL_43:
      __dst = v63;
      v62 = 4;
      if (v32 < 5)
      {
        if (!v32)
        {
          goto LABEL_48;
        }

        v36 = 8 * v32;
        v35 = v63;
      }

      else
      {
        v61 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v63, v32, 8);
        v35 = __dst;
        v36 = 8 * v32;
      }

      memset_pattern16(v35, &unk_1A75D94C0, v36);
LABEL_48:
      v61 = v32;
      LOBYTE(v53) = 0;
      v54 = 0;
      v37 = mlir::ValueRange::dereference_iterator(v64, 3);
      Axis = mlir::mps::getAxis(a2, a3, v37, v32, &v53);
      if (Axis)
      {
        if (v54 == 1)
        {
          if (mlir::TensorType::hasRank(&v58))
          {
            llvm::SmallVectorImpl<long long>::resize(&__dst, v32);
            v39 = mlir::ArrayAttr::getValue(&v58);
            v40 = mlir::ArrayAttr::getValue(&v58);
            v42 = (v40 + 8 * v41);
            if (v42 != v39)
            {
              memmove(__dst, v39, v42 - v39);
            }
          }

          if (v32 >= 1)
          {
            v43 = 0;
            v44 = v53;
            do
            {
              if (v44 == v43)
              {
                goto LABEL_57;
              }

              if (mlir::TensorType::hasRank(&v57))
              {
                v47 = *(v30 + 8 * v43);
                if (!mlir::TensorType::hasRank(&v56))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v47 = 0x8000000000000000;
                if (!mlir::TensorType::hasRank(&v56))
                {
LABEL_63:
                  v45 = 0x8000000000000000;
                  goto LABEL_56;
                }
              }

              v45 = *(v33 + 8 * v43);
LABEL_56:
              v59[0] = *(__dst + v43);
              v59[1] = v47;
              v59[2] = v45;
              v46 = mlir::mps::mergeDynamicDims(v59, 3);
              *(__dst + v43) = v46;
LABEL_57:
              ++v43;
            }

            while (v32 != v43);
          }
        }

        v48 = __dst;
        v49 = v61;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v58);
        v55 = mlir::RankedTensorType::get(v48, v49, ElementTypeOrSelf, 0);
      }

      if (__dst != v63)
      {
        free(__dst);
      }

      if (!Axis)
      {
        return 0;
      }
    }

LABEL_68:
    v51 = v55;
    v52 = *(a11 + 8);
    if (v52 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v52 + 1, 8);
      LODWORD(v52) = *(a11 + 8);
    }

    *(*a11 + 8 * v52) = v51;
    ++*(a11 + 8);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::ScatterAlongAxisOp::verify(uint64_t **this)
{
  v159[4] = *MEMORY[0x1E69E9840];
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
  v141[0] = v2;
  v141[1] = v13;
  v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    mlir::Builder::getZeroAttr();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_29;
  }

  v25 = v19[1];
LABEL_30:
  v140[0] = v14;
  v140[1] = v25;
  v26 = (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v27 = *v26;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_44;
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
      v37 = v31[1];
      goto LABEL_45;
    }
  }

LABEL_44:
  v37 = 0;
LABEL_45:
  v139[0] = v26;
  v139[1] = v37;
  v157 = v159;
  v158 = 0x400000000;
  if (mlir::ElementsAttr::getShapedType(v140) && mlir::ElementsAttr::getShapedType(v139))
  {
    mlir::ShapedType::getShape(v140);
    v39 = v38;
    Shape = mlir::ShapedType::getShape(v140);
    mlir::ShapedType::getShape(v139);
    if (v41 != v39)
    {
      v137[0] = "invalid input tensor shapes, indices rank and";
      v138 = 259;
      mlir::OpState::emitOpError(this, v137, &v145);
      if (v145)
      {
        v142 = 3;
        v143 = " updates rank must be equal, ";
        v144 = 29;
        v84 = &v142;
        v85 = v147;
        if (v148 >= v149)
        {
          if (v147 <= &v142 && v147 + 24 * v148 > &v142)
          {
            v127 = &v142 - v147;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
            v85 = v147;
            v84 = (v147 + v127);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
            v84 = &v142;
            v85 = v147;
          }
        }

        v86 = &v85[24 * v148];
        v87 = *v84;
        *(v86 + 2) = *(v84 + 2);
        *v86 = v87;
        ++v148;
      }

      mlir::ShapedType::getShape(v139);
      if (v145)
      {
        v142 = 2;
        v143 = v88;
        v89 = &v142;
        v90 = v147;
        if (v148 >= v149)
        {
          if (v147 <= &v142 && v147 + 24 * v148 > &v142)
          {
            v128 = &v142 - v147;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
            v90 = v147;
            v89 = (v147 + v128);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
            v89 = &v142;
            v90 = v147;
          }
        }

        v91 = &v90[24 * v148];
        v92 = *v89;
        *(v91 + 2) = *(v89 + 2);
        *v91 = v92;
        v93 = ++v148;
        if (v145)
        {
          v142 = 3;
          v143 = " != ";
          v144 = 4;
          v94 = &v142;
          v95 = v147;
          if (v93 >= v149)
          {
            if (v147 <= &v142 && v147 + 24 * v93 > &v142)
            {
              v130 = &v142 - v147;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v93 + 1, 24);
              v95 = v147;
              v94 = (v147 + v130);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v93 + 1, 24);
              v94 = &v142;
              v95 = v147;
            }
          }

          v96 = &v95[24 * v148];
          v97 = *v94;
          *(v96 + 2) = *(v94 + 2);
          *v96 = v97;
          v98 = ++v148;
          if (v145)
          {
            v142 = 2;
            v143 = v39;
            v99 = &v142;
            v100 = v147;
            if (v98 >= v149)
            {
              if (v147 <= &v142 && v147 + 24 * v98 > &v142)
              {
                v133 = &v142 - v147;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v98 + 1, 24);
                v100 = v147;
                v99 = (v147 + v133);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v98 + 1, 24);
                v99 = &v142;
                v100 = v147;
              }
            }

            v101 = &v100[24 * v148];
            v102 = *v99;
            *(v101 + 2) = *(v99 + 2);
            *v101 = v102;
            ++v148;
          }
        }
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v145);
      if (v145)
      {
        mlir::InFlightDiagnostic::report(&v145);
      }

      if (v156 != 1)
      {
        goto LABEL_72;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v103 = __p;
      if (__p)
      {
        v104 = v154;
        v105 = __p;
        if (v154 != __p)
        {
          do
          {
            v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
          }

          while (v104 != v103);
          v105 = __p;
        }

        v154 = v103;
        operator delete(v105);
      }

      v79 = v151;
      if (v151)
      {
        v106 = v152;
        v81 = v151;
        if (v152 != v151)
        {
          do
          {
            v108 = *--v106;
            v107 = v108;
            *v106 = 0;
            if (v108)
            {
              MEMORY[0x1AC55A040](v107, 0x1000C8077774924);
            }
          }

          while (v106 != v79);
          goto LABEL_147;
        }

LABEL_148:
        v152 = v79;
        operator delete(v81);
      }

LABEL_149:
      if (v147 != v150)
      {
        free(v147);
      }

      goto LABEL_72;
    }

    v42 = mlir::ShapedType::getShape(v140);
    v44 = v43;
    v45 = mlir::ShapedType::getShape(v139);
    v47 = mlir::verifyCompatibleShape(v45, v46, v42, v44);
    if (v47)
    {
      v48 = v158;
      if (v39 != v158)
      {
        if (v39 >= v158)
        {
          if (v39 > HIDWORD(v158))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v159, v39, 8);
            v48 = v158;
          }

          if (v39 != v48)
          {
            bzero(&v157[v48], 8 * &v39[-v48]);
          }
        }

        LODWORD(v158) = v39;
      }

      if (v39 <= 0)
      {
        Shape = v157;
        goto LABEL_65;
      }

      for (i = 0; i != v39; ++i)
      {
        v145 = *(v42 + 8 * i);
        v146 = v45[i];
        v50 = mlir::mps::mergeDynamicDims(&v145, 2);
        Shape = v157;
        v157[i] = v50;
      }
    }

    else
    {
      v137[0] = "invalid input tensor shapes, indices shape and ";
      v138 = 259;
      mlir::OpState::emitOpError(this, v137, &v145);
      if (v145)
      {
        v142 = 3;
        v143 = "updates shape must be equal";
        v144 = 27;
        v109 = &v142;
        v110 = v147;
        if (v148 >= v149)
        {
          if (v147 <= &v142 && v147 + 24 * v148 > &v142)
          {
            v131 = &v142 - v147;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
            v110 = v147;
            v109 = (v147 + v131);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
            v109 = &v142;
            v110 = v147;
          }
        }

        v111 = &v110[24 * v148];
        v112 = *v109;
        *(v111 + 2) = *(v109 + 2);
        *v111 = v112;
        ++v148;
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v145);
      if (v145)
      {
        mlir::InFlightDiagnostic::report(&v145);
      }

      if (v156 == 1)
      {
        if (v155 != &v156)
        {
          free(v155);
        }

        v113 = __p;
        if (__p)
        {
          v114 = v154;
          v115 = __p;
          if (v154 != __p)
          {
            do
            {
              v114 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v114 - 1);
            }

            while (v114 != v113);
            v115 = __p;
          }

          v154 = v113;
          operator delete(v115);
        }

        v116 = v151;
        if (v151)
        {
          v117 = v152;
          v118 = v151;
          if (v152 != v151)
          {
            do
            {
              v120 = *--v117;
              v119 = v120;
              *v117 = 0;
              if (v120)
              {
                MEMORY[0x1AC55A040](v119, 0x1000C8077774924);
              }
            }

            while (v117 != v116);
            v118 = v151;
          }

          v152 = v116;
          operator delete(v118);
        }

        if (v147 != v150)
        {
          free(v147);
        }
      }
    }

    if ((v47 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (mlir::ElementsAttr::getShapedType(v140))
    {
      Shape = mlir::ShapedType::getShape(v140);
      v51 = v140;
    }

    else
    {
      if (!mlir::ElementsAttr::getShapedType(v139))
      {
LABEL_71:
        v42 = 1;
        goto LABEL_72;
      }

      Shape = mlir::ShapedType::getShape(v139);
      v51 = v139;
    }

    mlir::ShapedType::getShape(v51);
    v39 = v52;
  }

LABEL_65:
  if (!mlir::ElementsAttr::getShapedType(v141))
  {
    goto LABEL_71;
  }

  mlir::ShapedType::getShape(v141);
  if (v53 != v39)
  {
    v137[0] = "invalid input tensor shapes, indices rank and ";
    v138 = 259;
    mlir::OpState::emitOpError(this, v137, &v145);
    if (v145)
    {
      v142 = 3;
      v143 = "result rank must be equal, ";
      v144 = 27;
      v57 = &v142;
      v58 = v147;
      if (v148 >= v149)
      {
        if (v147 <= &v142 && v147 + 24 * v148 > &v142)
        {
          v125 = &v142 - v147;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
          v58 = v147;
          v57 = (v147 + v125);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
          v57 = &v142;
          v58 = v147;
        }
      }

      v59 = &v58[24 * v148];
      v60 = *v57;
      *(v59 + 2) = *(v57 + 2);
      *v59 = v60;
      v61 = ++v148;
      if (v145)
      {
        v142 = 2;
        v143 = v39;
        v62 = &v142;
        v63 = v147;
        if (v61 >= v149)
        {
          if (v147 <= &v142 && v147 + 24 * v61 > &v142)
          {
            v129 = &v142 - v147;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v61 + 1, 24);
            v63 = v147;
            v62 = (v147 + v129);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v61 + 1, 24);
            v62 = &v142;
            v63 = v147;
          }
        }

        v64 = &v63[24 * v148];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        v66 = ++v148;
        if (v145)
        {
          v142 = 3;
          v143 = " != ";
          v144 = 4;
          v67 = &v142;
          v68 = v147;
          if (v66 >= v149)
          {
            if (v147 <= &v142 && v147 + 24 * v66 > &v142)
            {
              v132 = &v142 - v147;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v66 + 1, 24);
              v68 = v147;
              v67 = (v147 + v132);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v66 + 1, 24);
              v67 = &v142;
              v68 = v147;
            }
          }

          v69 = &v68[24 * v148];
          v70 = *v67;
          *(v69 + 2) = *(v67 + 2);
          *v69 = v70;
          ++v148;
        }
      }
    }

    mlir::ShapedType::getShape(v141);
    if (v145)
    {
      v142 = 2;
      v143 = v71;
      v72 = &v142;
      v73 = v147;
      if (v148 >= v149)
      {
        if (v147 <= &v142 && v147 + 24 * v148 > &v142)
        {
          v126 = &v142 - v147;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
          v73 = v147;
          v72 = (v147 + v126);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
          v72 = &v142;
          v73 = v147;
        }
      }

      v74 = &v73[24 * v148];
      v75 = *v72;
      *(v74 + 2) = *(v72 + 2);
      *v74 = v75;
      ++v148;
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v145);
    if (v145)
    {
      mlir::InFlightDiagnostic::report(&v145);
    }

    if (v156 != 1)
    {
      goto LABEL_72;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v76 = __p;
    if (__p)
    {
      v77 = v154;
      v78 = __p;
      if (v154 != __p)
      {
        do
        {
          v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
        }

        while (v77 != v76);
        v78 = __p;
      }

      v154 = v76;
      operator delete(v78);
    }

    v79 = v151;
    if (v151)
    {
      v80 = v152;
      v81 = v151;
      if (v152 != v151)
      {
        do
        {
          v83 = *--v80;
          v82 = v83;
          *v80 = 0;
          if (v83)
          {
            MEMORY[0x1AC55A040](v82, 0x1000C8077774924);
          }
        }

        while (v80 != v79);
LABEL_147:
        v81 = v151;
        goto LABEL_148;
      }

      goto LABEL_148;
    }

    goto LABEL_149;
  }

  LOBYTE(v135) = 0;
  v136 = 0;
  v42 = 0;
  if (!mlir::mps::getAxis((*this)[3], 1, *((*this)[9] + 120), v39, &v135))
  {
    goto LABEL_72;
  }

  if (v136 != 1)
  {
    goto LABEL_71;
  }

  v54 = mlir::ShapedType::getShape(v141);
  v55 = v135;
  if (mlir::verifyCompatibleShape(Shape, v135, v54, v135) & 1) != 0 && (mlir::verifyCompatibleShape(&Shape[v55 + 1], &v39[~v55], &v54[v55 + 1], &v39[~v55]))
  {
    goto LABEL_71;
  }

  v137[0] = "invalid input tensor shapes, updates shape and ";
  v138 = 259;
  mlir::OpState::emitOpError(this, v137, &v145);
  if (v145)
  {
    v142 = 3;
    v143 = "data shape must match except at axis";
    v144 = 36;
    v121 = &v142;
    v122 = v147;
    if (v148 >= v149)
    {
      if (v147 <= &v142 && v147 + 24 * v148 > &v142)
      {
        v134 = &v142 - v147;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
        v122 = v147;
        v121 = (v147 + v134);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v150, v148 + 1, 24);
        v121 = &v142;
        v122 = v147;
      }
    }

    v123 = &v122[24 * v148];
    v124 = *v121;
    *(v123 + 2) = *(v121 + 2);
    *v123 = v124;
    ++v148;
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v145);
  if (v145)
  {
    mlir::InFlightDiagnostic::report(&v145);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v146);
  }

LABEL_72:
  if (v157 != v159)
  {
    free(v157);
  }

  return v42;
}

uint64_t mlir::mps::GatherNDOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, mlir::MLIRContext *a11)
{
  v13 = a3;
  v121 = *MEMORY[0x1E69E9840];
  v117 = a4;
  v118 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v109 = a6;
  LOBYTE(v110) = 0;
  v111 = 0;
  v112 = v16;
  v17 = a5;
  v113 = a9;
  v114 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v109);
    if (v111 == 1)
    {
      v111 = 0;
    }

    mlir::OperationName::OperationName(&v110, "mps.gather_nd", 13, Context);
    v111 = 1;
    v17 = v118;
  }

  v115 = a4;
  v116 = a5;
  if (v17 >= 2)
  {
    v19 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::GatherNDOpAdaptor::verify(&v109, v19))
    {
      v20 = mlir::ValueRange::dereference_iterator(&v117, 0);
      v101 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
      v102 = v21;
      v22 = mlir::ValueRange::dereference_iterator(&v117, 1);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v100[0] = v23;
      v100[1] = v24;
      if (!v101 || !v23)
      {
        v33 = mlir::ValueRange::dereference_iterator(&v117, 0);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
        if (!ElementTypeOrSelf)
        {
          ElementTypeOrSelf = mlir::Float32Type::get(this, v35);
        }

        v28 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
        goto LABEL_22;
      }

      v106 = v101;
      v107 = v102;
      v119 = v23;
      v120 = v24;
      if (!mlir::ElementsAttr::getShapedType(&v106) || (mlir::ElementsAttr::getShapedType(&v119) & 1) == 0 || (Shape = mlir::ShapedType::getShape(&v119), *(Shape + 8 * v26 - 8) == 0x8000000000000000))
      {
        v27 = mlir::getElementTypeOrSelf(v101);
        v106 = mlir::UnrankedTensorType::get(v27);
        v28 = mlir::TensorType::operator mlir::ShapedType(&v106);
LABEL_22:
        v36 = *(a11 + 2);
        if (v36 >= *(a11 + 3))
        {
          v97 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v36 + 1, 8);
          v28 = v97;
          v36 = *(a11 + 2);
        }

        *(*a11 + 8 * v36) = v28;
        ++*(a11 + 2);
        return 1;
      }

      v119 = *(&v112 + 1);
      mlir::IntegerAttr::getValue(&v119, &v106);
      if (v107 > 0x40)
      {
        v38 = *v106;
        MEMORY[0x1AC55A040]();
      }

      else
      {
        v38 = v106;
      }

      v106 = v108;
      v107 = 0x400000000;
      v39 = mlir::ShapedType::getShape(&v101);
      v41 = v40;
      v42 = mlir::ShapedType::getShape(v100);
      v105 = v38;
      v44 = (v41 - v38);
      if (v41 <= v38 || (v45 = v43 - v38, v43 <= v38))
      {
        if (!mlir::emitOptionalError<char const(&)[27],unsigned int &,char const(&)[47]>(a2, v13, "invalid batch dimensions: ", &v105, ", must be less than ranks of all input tensors"))
        {
LABEL_50:
          v65 = mlir::ValueRange::dereference_iterator(&v117, 0);
          v66 = mlir::getElementTypeOrSelf(v65);
          v67 = 0;
          v28 = 0;
          goto LABEL_68;
        }

LABEL_67:
        v37 = v106;
        v94 = v107;
        v95 = mlir::getElementTypeOrSelf(v101);
        v119 = mlir::RankedTensorType::get(v37, v94, v95, 0);
        v28 = mlir::TensorType::operator mlir::ShapedType(&v119);
        v67 = 1;
LABEL_68:
        if (v106 != v108)
        {
          v96 = v28;
          free(v106);
          v28 = v96;
        }

        if ((v67 & 1) == 0)
        {
          return v37;
        }

        goto LABEL_22;
      }

      v46 = v42;
      v104 = v41 - v38;
      v47 = v42 + 8 * v43;
      v49 = v47 - 8;
      v48 = *(v47 - 8);
      v103 = v48;
      if (v48 == 0x8000000000000000)
      {
        v50 = mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a2, v13, "inner-most dimension of indices array ", "cannot be inferred.");
        goto LABEL_49;
      }

      if (v48 > v44)
      {
        v50 = mlir::emitOptionalError<char const(&)[38],char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(a2, v13, "invalid input tensor shapes: rank of ", "updates tensor must be greater than or equal to ", "inner-most dimension of indices tensor, ", &v104, " < ", &v103);
        goto LABEL_49;
      }

      v51 = &v44[v45 + ~v48];
      if (v51 < 1)
      {
        v50 = mlir::emitOptionalError<char const(&)[41]>(a2, v13, "Rank of destination array must be greater than 0");
LABEL_49:
        if (!v50)
        {
          goto LABEL_50;
        }

        goto LABEL_67;
      }

      v52 = v51 + v38;
      v53 = v107;
      if (v52 != v107)
      {
        if (v52 >= v107)
        {
          v98 = v43;
          v99 = v47;
          if (v52 > HIDWORD(v107))
          {
            v54 = v48;
            v55 = v43 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v108, v52, 8);
            v45 = v55;
            v48 = v54;
            v43 = v98;
            v47 = v99;
            v53 = v107;
          }

          if (v52 != v53)
          {
            v56 = v48;
            v57 = v45;
            bzero(v106 + 8 * v53, 8 * (v52 - v53));
            v45 = v57;
            v48 = v56;
            v43 = v98;
            v47 = v99;
          }
        }

        LODWORD(v107) = v52;
        v52 = v52;
      }

      v58 = v106;
      v59 = v106 + 8 * v52;
      if (v48 != v44)
      {
        v60 = &v39[v41];
        v61 = v41;
        v62 = 8 * v41 - 8 * &v48[v38] - 8;
        if (v62 >= 0x58)
        {
          v69 = v106 + 8 * v52;
          v63 = &v39[v41];
          v64 = v69;
          if ((&v39[v61] - v69) >= 0x20)
          {
            v70 = (v62 >> 3) + 1;
            v71 = 8 * (v70 & 0x3FFFFFFFFFFFFFFCLL);
            v63 = &v60[v71 / 0xFFFFFFFFFFFFFFF8];
            v64 = &v59[-v71];
            v72 = &v39[v61 - 2];
            v73 = v69 - 16;
            v74 = v70 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v75 = *v72;
              *(v73 - 1) = *(v72 - 1);
              *v73 = v75;
              v72 -= 2;
              v73 -= 32;
              v74 -= 4;
            }

            while (v74);
            if (v70 == (v70 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          v63 = &v39[v41];
          v64 = v106 + 8 * v52;
        }

        v76 = &v60[v48 - v44];
        v77 = v64 - 8;
        do
        {
          v78 = *--v63;
          *v77 = v78;
          v77 -= 8;
        }

        while (v63 != v76);
      }

LABEL_57:
      v79 = 8 * v38;
      if (8 * v45 != 8)
      {
        v80 = &v59[8 * v48 + -8 * v44];
        v81 = v43;
        v82 = 8 * v43 - v79 - 16;
        if (v82 < 0xC8)
        {
          goto LABEL_63;
        }

        if ((&(&v46[v41])[v81] - &v58[&v48[v52 + v38]] - 8) < 0x20)
        {
          goto LABEL_63;
        }

        v83 = (v82 >> 3) + 1;
        v84 = 8 * (v83 & 0x3FFFFFFFFFFFFFFCLL);
        v49 -= v84;
        v80 -= v84;
        v85 = &v46[v81 - 5];
        v86 = (v58 + 8 * v52 + 8 * v48 + v79 - 8 * v41 - 16);
        v87 = v83 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v89 = *v85;
          v88 = v85[1];
          v85 -= 2;
          *(v86 - 1) = v89;
          *v86 = v88;
          v86 -= 2;
          v87 -= 4;
        }

        while (v87);
        if (v83 != (v83 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_63:
          v90 = (v80 - 8);
          do
          {
            v91 = *(v49 - 8);
            v49 -= 8;
            *v90-- = v91;
          }

          while (v49 != v47 - 8 * v45);
        }
      }

      if (v38)
      {
        do
        {
          v92 = *v46++;
          v119 = v92;
          v93 = *v39++;
          v120 = v93;
          *v58++ = mlir::mps::mergeDynamicDims(&v119, 2);
          v79 -= 8;
        }

        while (v79);
      }

      goto LABEL_67;
    }
  }

  v29 = mlir::Float32Type::get(this, a2);
  v30 = mlir::UnrankedTensorType::get(v29);
  v31 = *(a11 + 2);
  if (v31 >= *(a11 + 3))
  {
    v68 = v30;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v31 + 1, 8);
    v30 = v68;
    LODWORD(v31) = *(a11 + 2);
  }

  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 2);
  return 1;
}

BOOL mlir::mps::GatherNDOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v19[0] = *(a1 + 32);
    v21[0] = mlir::AffineMapAttr::getValue(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.gather_nd' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'mps.gather_nd' op requires attribute 'batch_dims'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
        }
      }

      while (v8 != v7);
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::mps::GatherNDOp::verify(uint64_t **this)
{
  v81 = *MEMORY[0x1E69E9840];
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
  v65[0] = v2;
  v65[1] = v13;
  v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
LABEL_29:
    v63 = v14;
    v64 = 0;
    v25 = 0x8000000000000000;
    v62 = 0x8000000000000000;
    if (mlir::ElementsAttr::getShapedType(v65))
    {
      goto LABEL_30;
    }

LABEL_33:
    Shape = 0;
    if (mlir::ElementsAttr::getShapedType(&v63))
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v32 = v19[1];
  v63 = v14;
  v64 = v32;
  v25 = 0x8000000000000000;
  v62 = 0x8000000000000000;
  if (!mlir::ElementsAttr::getShapedType(v65))
  {
    goto LABEL_33;
  }

LABEL_30:
  Shape = mlir::ShapedType::getShape(v65);
  v25 = v27;
  if (mlir::ElementsAttr::getShapedType(&v63))
  {
LABEL_31:
    v28 = mlir::ShapedType::getShape(&v63);
    v30 = v29;
    v31 = v28[v29 - 1];
    v62 = v31;
    goto LABEL_35;
  }

LABEL_34:
  v28 = 0;
  v31 = 0x8000000000000000;
  v30 = 0x8000000000000000;
LABEL_35:
  v60[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  mlir::IntegerAttr::getValue(v60, &v69);
  if (v70 > 0x40)
  {
    v33 = *v69;
    MEMORY[0x1AC55A040]();
    if (v25 == 0x8000000000000000)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v33 = v69;
    if (v25 == 0x8000000000000000)
    {
      goto LABEL_40;
    }
  }

  if (v25 <= v33)
  {
LABEL_42:
    v60[0] = "invalid batch dimensions: ";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &v69);
    if (v69)
    {
      LODWORD(v66) = 5;
      v67 = v33;
      v34 = &v66;
      v35 = v71;
      if (v72 >= v73)
      {
        if (v71 <= &v66 && v71 + 24 * v72 > &v66)
        {
          v58 = &v66 - v71;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
          v35 = v71;
          v34 = (v71 + v58);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
          v34 = &v66;
          v35 = v71;
        }
      }

      v36 = &v35[24 * v72];
      v37 = *v34;
      *(v36 + 2) = v34[2];
      *v36 = v37;
      v38 = ++v72;
      if (v69)
      {
        LODWORD(v66) = 3;
        v67 = ", must be less than ranks of all input tensors";
        v68 = 46;
        v39 = &v66;
        v40 = v71;
        if (v38 >= v73)
        {
          if (v71 <= &v66 && v71 + 24 * v38 > &v66)
          {
            v59 = &v66 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v38 + 1, 24);
            v40 = v71;
            v39 = (v71 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v38 + 1, 24);
            v39 = &v66;
            v40 = v71;
          }
        }

        v41 = &v40[24 * v72];
        v42 = *v39;
        *(v41 + 2) = v39[2];
        *v41 = v42;
        ++v72;
      }
    }

    v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
    if (v69)
    {
      mlir::InFlightDiagnostic::report(&v69);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v78;
        v46 = __p;
        if (v78 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v78 = v44;
        operator delete(v46);
      }

      v47 = v75;
      if (v75)
      {
        v48 = v76;
        v49 = v75;
        if (v76 != v75)
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
          v49 = v75;
        }

        v76 = v47;
        operator delete(v49);
      }

      if (v71 != v74)
      {
        free(v71);
      }
    }

    return v43;
  }

LABEL_40:
  if (v30 != 0x8000000000000000 && v33 >= v30)
  {
    goto LABEL_42;
  }

  v43 = 1;
  if (v25 != 0x8000000000000000 && v30 != 0x8000000000000000)
  {
    if (mlir::verifyCompatibleShape(Shape, v33, v28, v33))
    {
      if (v31 == 0x8000000000000000)
      {
        return v43;
      }

      if (v25 - v33 >= v31)
      {
        if ((~(v33 + v31) + v25 + v30) > 0)
        {
          return 1;
        }

        v60[0] = "Rank of destination array must be greater than 0";
        v61 = 259;
        mlir::OpState::emitOpError(this, v60, &v69);
        v56 = &v69;
      }

      else
      {
        v60[0] = "invalid input tensor shapes: rank of updates tensor ";
        v61 = 259;
        mlir::OpState::emitOpError(this, v60, &v69);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v69, "must be greater than or equal to inner-most dimension of ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, "indices tensor, ");
        v66 = v25 - v33;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v53, &v66);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " < ");
        mlir::InFlightDiagnostic::operator<<<long long &>(v55, &v62);
      }
    }

    else
    {
      v60[0] = "invalid input tensor shapes: input tensor shapes ";
      v61 = 259;
      mlir::OpState::emitOpError(this, v60, &v69);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v69, "must match along batch dimensions");
    }

    v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v69);
  }

  return v43;
}

uint64_t mlir::mps::GatherOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v67[0] = a4;
  v67[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = v16;
  v63 = a9;
  v64 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "mps.gather", 10, Context);
    v61 = 1;
  }

  v65 = a4;
  v66 = a5;
  if (a5 < 3 || (v18 = mlir::UnknownLoc::get(this, a2), !mlir::mps::GatherOpAdaptor::verify(&v59, v18)))
  {
    v41 = mlir::Float32Type::get(this, a2);
    v42 = mlir::UnrankedTensorType::get(v41);
    v43 = *(a11 + 8);
    if (v43 >= *(a11 + 12))
    {
      v50 = v42;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v43 + 1, 8);
      v42 = v50;
      LODWORD(v43) = *(a11 + 8);
    }

    *(*a11 + 8 * v43) = v42;
    goto LABEL_27;
  }

  v19 = mlir::ValueRange::dereference_iterator(v67, 0);
  v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v55[0] = v20;
  v55[1] = v21;
  v22 = mlir::ValueRange::dereference_iterator(v67, 1);
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
  v54[0] = v23;
  v54[1] = v24;
  if (!v20 || !v23)
  {
    v45 = mlir::ValueRange::dereference_iterator(v67, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v45);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v47);
    }

    v48 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v49 = *(a11 + 8);
    if (v49 >= *(a11 + 12))
    {
      v51 = v48;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v49 + 1, 8);
      v48 = v51;
      v49 = *(a11 + 8);
    }

    *(*a11 + 8 * v49) = v48;
    goto LABEL_27;
  }

  v25 = mlir::getElementTypeOrSelf(v20);
  v26 = mlir::UnrankedTensorType::get(v25);
  if (!mlir::ElementsAttr::getShapedType(v55) || !mlir::ElementsAttr::getShapedType(v54))
  {
    goto LABEL_21;
  }

  mlir::ShapedType::getShape(v55);
  v28 = v27;
  LOBYTE(v52) = 0;
  v53 = 0;
  v29 = mlir::ValueRange::dereference_iterator(v67, 2);
  if (mlir::mps::getAxis(a2, a3, v29, v28, &v52))
  {
    if (v53 != 1)
    {
      goto LABEL_21;
    }

    BatchDims = mlir::mps::detail::GatherOpGenericAdaptorBase::getBatchDims(&v59);
    v56 = v58;
    v57 = 0x400000000;
    Shape = mlir::ShapedType::getShape(v55);
    v33 = v32;
    v34 = mlir::ShapedType::getShape(v54);
    if (v36)
    {
      v37 = v56;
      v38 = v57;
      v39 = mlir::getElementTypeOrSelf(v55[0]);
      v26 = mlir::RankedTensorType::get(v37, v38, v39, 0);
    }

    if (v56 != v58)
    {
      free(v56);
    }

    if (v36)
    {
LABEL_21:
      v40 = *(a11 + 8);
      if (v40 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v40 + 1, 8);
        LODWORD(v40) = *(a11 + 8);
      }

      *(*a11 + 8 * v40) = v26;
LABEL_27:
      ++*(a11 + 8);
      return 1;
    }
  }

  return 0;
}

BOOL mlir::mps::GatherOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v19[0] = *(a1 + 32);
    v21[0] = mlir::AffineMapAttr::getValue(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.gather' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'mps.gather' op requires attribute 'batch_dims'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
        }
      }

      while (v8 != v7);
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t *mlir::mps::detail::GatherOpGenericAdaptorBase::getBatchDims(mlir::mps::detail::GatherOpGenericAdaptorBase *this)
{
  v5 = *(this + 4);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

BOOL mlir::mps::anonymous namespace::inferGatherShape(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, char *a7, unsigned int a8, uint64_t a9)
{
  v74[2] = *MEMORY[0x1E69E9840];
  v73 = a7;
  v72 = a8;
  v9 = a8;
  v10 = a4 - a8;
  if (a4 <= a8 || a6 < a8)
  {
    return mlir::emitOptionalError<char const(&)[27],unsigned int &,char const(&)[47]>(a1, a2, "invalid batch dimensions: ", &v72, ", must be less than ranks of all input tensors");
  }

  v13 = &a7[-a8];
  if (a7 < a8)
  {
    return mlir::emitOptionalError<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(a1, a2, "Axis must be greater than or equal to ", "batch dimensions, ", &v73, " < ", &v72);
  }

  v14 = a6 - a8;
  v15 = (v10 - 1);
  if (v10 - 1 + v14 >= 0)
  {
    v18 = &v15[a6];
    v19 = *(a9 + 8);
    if (&v15[a6] != v19)
    {
      if (&v15[a6] >= v19)
      {
        v70 = a7;
        v71 = a4;
        v69 = a8;
        if (v18 > *(a9 + 12))
        {
          v20 = a6;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), &v15[a6], 8);
          a7 = v70;
          a4 = v71;
          a6 = v20;
          a8 = v69;
          v19 = *(a9 + 8);
        }

        if (v18 != v19)
        {
          v21 = a6;
          bzero((*a9 + 8 * v19), 8 * (v18 - v19));
          a7 = v70;
          a4 = v71;
          a6 = v21;
          a8 = v69;
        }
      }

      *(a9 + 8) = v18;
      v19 = v18;
    }

    v22 = &a3[a4];
    v23 = *a9;
    v24 = *a9 + 8 * v19;
    v25 = (v13 - v15);
    if (v13 != v15)
    {
      v26 = 8 * a4 - 16;
      v27 = v26 - 8 * a7;
      if (v27 < 0x58)
      {
        v28 = &a3[a4];
        v29 = &v23[v19];
LABEL_26:
        v36 = v29 - 1;
        do
        {
          v37 = *--v28;
          *v36-- = v37;
        }

        while (v28 != &v22[v25]);
        goto LABEL_28;
      }

      v28 = &a3[a4];
      v29 = &v23[v19];
      if ((v28 - v23 - 8 * v19) < 0x20)
      {
        goto LABEL_26;
      }

      v30 = (v27 >> 3) + 1;
      v31 = 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
      v28 = &v22[v31 / 0xFFFFFFFFFFFFFFF8];
      v29 = (v24 - v31);
      v32 = (a3 + v26);
      v33 = &v23[v19 - 2];
      v34 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *v32;
        *(v33 - 1) = *(v32 - 1);
        *v33 = v35;
        v32 -= 2;
        v33 -= 4;
        v34 -= 4;
      }

      while (v34);
      if (v30 != (v30 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    if (a6 != v9)
    {
      v38 = &a5[a6];
      v39 = v24 + 8 * v25;
      v40 = a6;
      v41 = 8 * a6 - 8 * v9 - 8;
      if (v41 >= 0x98)
      {
        v43 = &a7[v19];
        v42 = &a5[a6];
        if (&a5[v40 - 1] + 8 * a4 - &v23[v43] >= 0x20)
        {
          v44 = (v41 >> 3) + 1;
          v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
          v42 = &v38[v45 / 0xFFFFFFFFFFFFFFF8];
          v39 -= v45;
          v46 = &a5[v40 - 2];
          v47 = (v23 + v43 * 8 - 8 * a4 - 8);
          v48 = v44 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v49 = *v46;
            *(v47 - 1) = *(v46 - 1);
            *v47 = v49;
            v46 -= 4;
            v47 -= 2;
            v48 -= 4;
          }

          while (v48);
          if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v42 = &a5[a6];
      }

      v50 = &v38[-v14];
      v51 = (v39 - 8);
      do
      {
        v52 = *--v42;
        *v51-- = v52;
      }

      while (v42 != v50);
    }

LABEL_37:
    if (a7 != v9)
    {
      v53 = &v13[-v10 - v14];
      v54 = v24 + 8 * v53 + 8;
      v55 = &v22[&v13[-v10]];
      v56 = 8 * a7 - 8 * v9 - 8;
      if (v56 < 0x88)
      {
        goto LABEL_43;
      }

      if ((&a3[a6 + a4] - &v23[&v9[v19]] - 8) < 0x20)
      {
        goto LABEL_43;
      }

      v57 = (v56 >> 3) + 1;
      v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
      v55 = (v55 - v58);
      v54 -= v58;
      v59 = &a3[a7 - 2];
      v60 = &v23[v19 - 1 + v53];
      v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v62 = *v59;
        *(v60 - 1) = *(v59 - 1);
        *v60 = v62;
        v59 -= 4;
        v60 -= 4;
        v61 -= 4;
      }

      while (v61);
      if (v57 != (v57 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_43:
        v63 = &v22[-v10];
        v64 = (v54 - 8);
        do
        {
          v65 = *--v55;
          *v64-- = v65;
        }

        while (v55 != v63);
      }
    }

    if (a8)
    {
      v66 = 8 * v9;
      do
      {
        v67 = *a5++;
        v74[0] = v67;
        v68 = *a3++;
        v74[1] = v68;
        *v23++ = mlir::mps::mergeDynamicDims(v74, 2);
        v66 -= 8;
      }

      while (v66);
    }

    return 1;
  }

  return mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a1, a2, "Rank of destination array must be greater than or equal ", "to 0");
}

BOOL mlir::mps::GatherAlongAxisOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v58[0] = a4;
  v58[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v58, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v52 = v16;
    v17 = *(mlir::ValueRange::dereference_iterator(v58, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = 0;
    }

    v51 = v17;
    if (v16)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return mlir::emitOptionalError<char const(&)[39]>(a2, a3, "cannot gather_along_axis a non-tensor type");
    }

    if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
      v26 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      if (!mlir::TensorType::hasRank(&v51))
      {
        goto LABEL_31;
      }
    }

    else
    {
      Value = mlir::ArrayAttr::getValue(&v51);
      v24 = v23;
      v25 = mlir::getElementTypeOrSelf(v16);
      v26 = mlir::RankedTensorType::get(Value, v24, v25, 0);
      if (!mlir::TensorType::hasRank(&v51))
      {
        goto LABEL_31;
      }
    }

    v28 = mlir::ArrayAttr::getValue(&v51);
    if (!v29)
    {
      goto LABEL_51;
    }

    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_51;
      }
    }

LABEL_31:
    if (mlir::TensorType::hasRank(&v52))
    {
      v32 = mlir::ArrayAttr::getValue(&v52);
      v33 = v31;
      __dst = v57;
      v56 = 4;
      if (v31 < 5)
      {
        if (!v31)
        {
          goto LABEL_37;
        }

        v35 = 8 * v31;
        v34 = v57;
      }

      else
      {
        v55 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v57, v31, 8);
        v34 = __dst;
        v35 = 8 * v33;
      }

      memset_pattern16(v34, &unk_1A75D94C0, v35);
LABEL_37:
      v55 = v33;
      LOBYTE(v49) = 0;
      v50 = 0;
      v36 = mlir::ValueRange::dereference_iterator(v58, 2);
      Axis = mlir::mps::getAxis(a2, a3, v36, v33, &v49);
      if (Axis)
      {
        if (v50 == 1)
        {
          if (mlir::TensorType::hasRank(&v51))
          {
            llvm::SmallVectorImpl<long long>::resize(&__dst, v33);
            v38 = mlir::ArrayAttr::getValue(&v51);
            v39 = mlir::ArrayAttr::getValue(&v51);
            v41 = (v39 + 8 * v40);
            if (v41 != v38)
            {
              memmove(__dst, v38, v41 - v38);
            }
          }

          if (v33 >= 1)
          {
            v42 = 0;
            v43 = v49;
            do
            {
              if (v43 != v42)
              {
                v53[0] = *(__dst + v42);
                v53[1] = *(v32 + 8 * v42);
                v44 = mlir::mps::mergeDynamicDims(v53, 2);
                *(__dst + v42) = v44;
              }

              ++v42;
            }

            while (v33 != v42);
          }
        }

        v45 = __dst;
        v46 = v55;
        v47 = mlir::getElementTypeOrSelf(v52);
        v26 = mlir::RankedTensorType::get(v45, v46, v47, 0);
      }

      if (__dst != v57)
      {
        free(__dst);
      }

      if (!Axis)
      {
        return 0;
      }
    }

LABEL_51:
    v48 = *(a11 + 8);
    if (v48 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v48 + 1, 8);
      LODWORD(v48) = *(a11 + 8);
    }

    *(*a11 + 8 * v48) = v26;
    ++*(a11 + 8);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::GatherAlongAxisOp::verify(uint64_t **this)
{
  v95 = *MEMORY[0x1E69E9840];
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
  v79[0] = v2;
  v79[1] = v13;
  v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 != &v17[2 * v18] && *v19 == v16)
  {
    v39 = v19[1];
    v77 = v14;
    v78 = v39;
    if (!mlir::ElementsAttr::getShapedType(v79))
    {
      return 1;
    }

    goto LABEL_30;
  }

LABEL_29:
  v77 = v14;
  v78 = 0;
  if (!mlir::ElementsAttr::getShapedType(v79))
  {
    return 1;
  }

LABEL_30:
  mlir::ShapedType::getShape(v79);
  v26 = v25;
  if (!mlir::ElementsAttr::getShapedType(&v77))
  {
    return 1;
  }

  mlir::ShapedType::getShape(&v77);
  if (v27 == v26)
  {
    LOBYTE(v73) = 0;
    v74 = 0;
    Axis = mlir::mps::getAxis((*this)[3], 1, *((*this)[9] + 88), v26, &v73);
    result = 0;
    if (!Axis)
    {
      return result;
    }

    if (v74 == 1)
    {
      Shape = mlir::ShapedType::getShape(v79);
      v31 = mlir::ShapedType::getShape(&v77);
      v32 = v73;
      if ((mlir::verifyCompatibleShape(Shape, v73, v31, v73) & 1) == 0 || (mlir::verifyCompatibleShape(&Shape[v32 + 1], &v26[~v32], &v31[v32 + 1], &v26[~v32]) & 1) == 0)
      {
        v75[0] = "invalid input tensor shapes, updates shape and ";
        v76 = 259;
        mlir::OpState::emitOpError(this, v75, &v83);
        if (v83)
        {
          v80 = 3;
          v81 = "indices shape must match except at axis";
          v82 = 39;
          v33 = &v80;
          v34 = v85;
          if (v86 >= v87)
          {
            if (v85 <= &v80 && v85 + 24 * v86 > &v80)
            {
              v72 = &v80 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v34 = v85;
              v33 = (v85 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v33 = &v80;
              v34 = v85;
            }
          }

          v35 = &v34[24 * v86];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v86;
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
        if (v83)
        {
          v37 = result;
          mlir::InFlightDiagnostic::report(&v83);
          result = v37;
        }

        if (v94 == 1)
        {
          v38 = result;
          mlir::Diagnostic::~Diagnostic(&v84);
          return v38;
        }

        return result;
      }
    }

    return 1;
  }

  v75[0] = "invalid input tensor shapes, updates rank and ";
  v76 = 259;
  mlir::OpState::emitOpError(this, v75, &v83);
  if (v83)
  {
    v80 = 3;
    v81 = "indices rank must be equal, ";
    v82 = 28;
    v40 = &v80;
    v41 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v80 && v85 + 24 * v86 > &v80)
      {
        v68 = &v80 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v41 = v85;
        v40 = (v85 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v40 = &v80;
        v41 = v85;
      }
    }

    v42 = &v41[24 * v86];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    v44 = ++v86;
    if (v83)
    {
      v80 = 2;
      v81 = v26;
      v45 = &v80;
      v46 = v85;
      if (v44 >= v87)
      {
        if (v85 <= &v80 && v85 + 24 * v44 > &v80)
        {
          v70 = &v80 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v44 + 1, 24);
          v46 = v85;
          v45 = (v85 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v44 + 1, 24);
          v45 = &v80;
          v46 = v85;
        }
      }

      v47 = &v46[24 * v86];
      v48 = *v45;
      *(v47 + 2) = *(v45 + 2);
      *v47 = v48;
      v49 = ++v86;
      if (v83)
      {
        v80 = 3;
        v81 = " != ";
        v82 = 4;
        v50 = &v80;
        v51 = v85;
        if (v49 >= v87)
        {
          if (v85 <= &v80 && v85 + 24 * v49 > &v80)
          {
            v71 = &v80 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v49 + 1, 24);
            v51 = v85;
            v50 = (v85 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v49 + 1, 24);
            v50 = &v80;
            v51 = v85;
          }
        }

        v52 = &v51[24 * v86];
        v53 = *v50;
        *(v52 + 2) = *(v50 + 2);
        *v52 = v53;
        ++v86;
      }
    }
  }

  mlir::ShapedType::getShape(&v77);
  if (v83)
  {
    v80 = 2;
    v81 = v54;
    v55 = &v80;
    v56 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v80 && v85 + 24 * v86 > &v80)
      {
        v69 = &v80 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v56 = v85;
        v55 = (v85 + v69);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v55 = &v80;
        v56 = v85;
      }
    }

    v57 = &v56[24 * v86];
    v58 = *v55;
    *(v57 + 2) = *(v55 + 2);
    *v57 = v58;
    ++v86;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
  v59 = result;
  if (v83)
  {
    mlir::InFlightDiagnostic::report(&v83);
    result = v59;
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
      result = v59;
    }

    v60 = __p;
    if (__p)
    {
      v61 = v92;
      v62 = __p;
      if (v92 != __p)
      {
        do
        {
          v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
        }

        while (v61 != v60);
        v62 = __p;
      }

      v92 = v60;
      operator delete(v62);
      result = v59;
    }

    v63 = v89;
    if (v89)
    {
      v64 = v90;
      v65 = v89;
      if (v90 != v89)
      {
        do
        {
          v67 = *--v64;
          v66 = v67;
          *v64 = 0;
          if (v67)
          {
            MEMORY[0x1AC55A040](v66, 0x1000C8077774924);
          }
        }

        while (v64 != v63);
        v65 = v89;
      }

      v90 = v63;
      operator delete(v65);
      result = v59;
    }

    if (v85 != v88)
    {
      free(v85);
      return v59;
    }
  }

  return result;
}

uint64_t mlir::mps::GatherOp::verify(uint64_t **this)
{
  v79 = *MEMORY[0x1E69E9840];
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
  v63[0] = v2;
  v63[1] = v13;
  v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
LABEL_29:
    v61 = v14;
    v62 = 0;
    if (mlir::ElementsAttr::getShapedType(v63))
    {
      goto LABEL_30;
    }

LABEL_33:
    Shape = 0;
    v27 = 0x8000000000000000;
    if (mlir::ElementsAttr::getShapedType(&v61))
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v31 = v19[1];
  v61 = v14;
  v62 = v31;
  if (!mlir::ElementsAttr::getShapedType(v63))
  {
    goto LABEL_33;
  }

LABEL_30:
  Shape = mlir::ShapedType::getShape(v63);
  v27 = v26;
  if (mlir::ElementsAttr::getShapedType(&v61))
  {
LABEL_31:
    v28 = mlir::ShapedType::getShape(&v61);
    v30 = v29;
    goto LABEL_35;
  }

LABEL_34:
  v28 = 0;
  v30 = 0x8000000000000000;
LABEL_35:
  v58[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  mlir::IntegerAttr::getValue(v58, &v67);
  if (v68 > 0x40)
  {
    v32 = *v67;
    MEMORY[0x1AC55A040]();
    v60 = v32;
    if (v27 == 0x8000000000000000)
    {
LABEL_40:
      if (v30 != 0x8000000000000000 && v32 > v30)
      {
        goto LABEL_42;
      }

      v42 = 1;
      if (v27 == 0x8000000000000000 || v30 == 0x8000000000000000)
      {
        return v42;
      }

      if (mlir::verifyCompatibleShape(Shape, v32, v28, v32))
      {
        LOBYTE(v64) = 0;
        LOBYTE(v65) = 0;
        v42 = 0;
        if (!mlir::mps::getAxis((*this)[3], 1, *((*this)[9] + 88), v27, &v64))
        {
          return v42;
        }

        if (v65 == 1)
        {
          if (v64 < v32)
          {
            v58[0] = "Axis must be greater than or equal to batch ";
            v59 = 259;
            mlir::OpState::emitOpError(this, v58, &v67);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v67, "dimensions, ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v51, &v64);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " < ");
            mlir::InFlightDiagnostic::operator<<<unsigned long>(v53, &v60);
LABEL_75:
            v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
            return v42;
          }

          if (&v27[v30 - 1] < 0)
          {
            v58[0] = "Rank of destination array must be greater than or equal to 0";
            v59 = 259;
            mlir::OpState::emitOpError(this, v58, &v67);
            v54 = &v67;
            goto LABEL_75;
          }
        }

        return 1;
      }

      v58[0] = "invalid input tensor shapes: input tensor shapes ";
      v59 = 259;
      mlir::OpState::emitOpError(this, v58, &v67);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v67, "must match along batch dimensions");
      goto LABEL_75;
    }
  }

  else
  {
    v32 = v67;
    v60 = v67;
    if (v27 == 0x8000000000000000)
    {
      goto LABEL_40;
    }
  }

  if (v32 < v27)
  {
    goto LABEL_40;
  }

LABEL_42:
  v58[0] = "invalid batch dimensions: ";
  v59 = 259;
  mlir::OpState::emitOpError(this, v58, &v67);
  if (v67)
  {
    LODWORD(v64) = 5;
    v65 = v32;
    v33 = &v64;
    v34 = v69;
    if (v70 >= v71)
    {
      if (v69 <= &v64 && v69 + 24 * v70 > &v64)
      {
        v56 = &v64 - v69;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v34 = v69;
        v33 = (v69 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v33 = &v64;
        v34 = v69;
      }
    }

    v35 = &v34[24 * v70];
    v36 = *v33;
    *(v35 + 2) = v33[2];
    *v35 = v36;
    v37 = ++v70;
    if (v67)
    {
      LODWORD(v64) = 3;
      v65 = ", must be less than ranks of all input tensors";
      v66 = 46;
      v38 = &v64;
      v39 = v69;
      if (v37 >= v71)
      {
        if (v69 <= &v64 && v69 + 24 * v37 > &v64)
        {
          v57 = &v64 - v69;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v37 + 1, 24);
          v39 = v69;
          v38 = (v69 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v37 + 1, 24);
          v38 = &v64;
          v39 = v69;
        }
      }

      v40 = &v39[24 * v70];
      v41 = *v38;
      *(v40 + 2) = v38[2];
      *v40 = v41;
      ++v70;
    }
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
  }

  if (v78 == 1)
  {
    if (v77 != &v78)
    {
      free(v77);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v76;
      v45 = __p;
      if (v76 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v76 = v43;
      operator delete(v45);
    }

    v46 = v73;
    if (v73)
    {
      v47 = v74;
      v48 = v73;
      if (v74 != v73)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
          }
        }

        while (v47 != v46);
        v48 = v73;
      }

      v74 = v46;
      operator delete(v48);
    }

    if (v69 != v72)
    {
      free(v69);
    }
  }

  return v42;
}

uint64_t mlir::mps::ResizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    *v57 = a7[2];
  }

  else
  {
    v14 = 0uLL;
    *v57 = 0u;
    v15 = 0uLL;
  }

  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = v14;
  v63 = v15;
  v64 = *v57;
  v65 = a9;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "mps.resize", 10, Context);
    v61 = 1;
  }

  v67 = a4;
  v68 = a5;
  if (!a5 || (v17 = mlir::UnknownLoc::get(this, a2), !mlir::mps::ResizeOpAdaptor::verify(&v59, v17)))
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
LABEL_32:
      v38 = v31;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v32 + 1, 8);
      v31 = v38;
      LODWORD(v32) = *(a11 + 8);
    }

LABEL_19:
    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
    return 1;
  }

  if (a5 == 1 || (v57[0] = v67, v57[1] = 0, v18 = mlir::ValueRange::dereference_iterator(v57, 0), v56[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8)), v56[1] = v19, !v56[0]))
  {
    v57[0] = v67;
    v57[1] = 0;
    v36 = mlir::ValueRange::dereference_iterator(v57, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    v31 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v57[0] = v58;
  v57[1] = 0x400000000;
  v20 = v67;
  v69 = v67;
  v70 = v64;
  if (v64)
  {
    v20 = mlir::ValueRange::offset_base(&v69, v64);
  }

  v69 = v20;
  v70 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v69, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v21, v57) & 1) == 0)
  {
    v69 = v67;
    v70 = 0;
    v39 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v40 = mlir::getElementTypeOrSelf(v39);
    v41 = mlir::UnrankedTensorType::get(v40);
    goto LABEL_41;
  }

  v22 = LODWORD(v57[1]);
  if (!LODWORD(v57[1]))
  {
    goto LABEL_35;
  }

  v23 = v57[0];
  v24 = (LODWORD(v57[1]) - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v25 = v57[0];
  if (v24 >= 3)
  {
    v26 = v24 + 1;
    v25 = v57[0] + 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
    v27 = (v57[0] + 16);
    v28.i64[0] = -1;
    v28.i64[1] = -1;
    v29 = v26 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v34 = vmovn_s64(vceqq_s64(v27[-1], v28));
      if (v34.i8[0])
      {
        v27[-1].i64[0] = 0x8000000000000000;
        if ((v34.i8[4] & 1) == 0)
        {
LABEL_24:
          v35 = vmovn_s64(vceqq_s64(*v27, v28));
          if ((v35.i8[0] & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }
      }

      else if ((v34.i8[4] & 1) == 0)
      {
        goto LABEL_24;
      }

      v27[-1].i64[1] = 0x8000000000000000;
      v35 = vmovn_s64(vceqq_s64(*v27, v28));
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_25:
        if (v35.i8[4])
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }

LABEL_29:
      v27->i64[0] = 0x8000000000000000;
      if (v35.i8[4])
      {
LABEL_30:
        v27->i64[1] = 0x8000000000000000;
      }

LABEL_21:
      v27 += 2;
      v29 -= 4;
      if (!v29)
      {
        if (v26 == (v26 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_35;
        }

        break;
      }
    }
  }

  v52 = &v23[8 * v22];
  do
  {
    if (*v25 == -1)
    {
      *v25 = 0x8000000000000000;
    }

    v25 += 8;
  }

  while (v25 != v52);
LABEL_35:
  if (!mlir::ElementsAttr::getShapedType(v56))
  {
LABEL_40:
    isSplat = mlir::ElementsAttr::isSplat(v56);
    v41 = mlir::RankedTensorType::get(v57[0], LODWORD(v57[1]), isSplat, 0);
LABEL_41:
    v49 = *(a11 + 8);
    if (v49 >= *(a11 + 12))
    {
      v55 = v41;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v49 + 1, 8);
      v41 = v55;
      LODWORD(v49) = *(a11 + 8);
    }

    *(*a11 + 8 * v49) = v41;
    ++*(a11 + 8);
    result = 1;
    v50 = v57[0];
    if (v57[0] != v58)
    {
      goto LABEL_44;
    }

    return result;
  }

  Shape = mlir::ShapedType::getShape(v56);
  if (v43 == LODWORD(v57[1]))
  {
    if (LODWORD(v57[1]))
    {
      v44 = Shape;
      v45 = 0;
      v46 = v57[0];
      do
      {
        v69 = v46[v45];
        v70 = *(v44 + 8 * v45);
        v47 = mlir::mps::mergeDynamicDims(&v69, 2);
        v46 = v57[0];
        *(v57[0] + v45++) = v47;
      }

      while (v45 < LODWORD(v57[1]));
    }

    goto LABEL_40;
  }

  v69 = v67;
  v70 = 0;
  v53 = mlir::ValueRange::dereference_iterator(&v69, 0);
  v54 = mlir::getElementTypeOrSelf(v53);
  result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v54);
  v50 = v57[0];
  if (v57[0] != v58)
  {
LABEL_44:
    v51 = result;
    free(v50);
    return v51;
  }

  return result;
}

BOOL mlir::mps::ResizeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 1;
  }

  v12 = "'mps.resize' op requires attribute 'mode'";
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

uint64_t mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v3 = mlir::UnrankedTensorType::get(a2);
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = v3;
  ++*(a1 + 8);
  return 1;
}

BOOL mlir::mps::verifyResize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v129 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = *v11;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_25;
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
    if (v16 == &v14[2 * v15] || *v16 != v13)
    {
LABEL_25:
      v119 = v11;
      v120 = 0;
      ShapedType = mlir::ElementsAttr::getShapedType(&v119);
      if (ShapedType)
      {
        goto LABEL_26;
      }

LABEL_32:
      NumElements = 0;
      v34 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v34)
      {
        goto LABEL_47;
      }

      goto LABEL_33;
    }

    goto LABEL_42;
  }

  v11 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v11)
  {
    goto LABEL_31;
  }

  v22 = *v11;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  v16 = v24;
  v26 = v25;
  do
  {
    v27 = v26 >> 1;
    v28 = &v16[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v23)
    {
      v16 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v16 == &v24[2 * v25] || *v16 != v23)
  {
LABEL_31:
    v119 = v11;
    v120 = 0;
    ShapedType = mlir::ElementsAttr::getShapedType(&v119);
    if (!ShapedType)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_42:
  v45 = v16[1];
  v119 = v11;
  v120 = v45;
  ShapedType = mlir::ElementsAttr::getShapedType(&v119);
  if (!ShapedType)
  {
    goto LABEL_32;
  }

LABEL_26:
  mlir::ShapedType::getShape(&v119);
  NumElements = v32;
  v34 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v34)
  {
    goto LABEL_47;
  }

LABEL_33:
  v35 = *v34;
  {
    v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v37 = *(v35 + 8);
    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v112 = v35;
    mlir::Builder::getI32VectorAttr();
    v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v37 = *(v112 + 8);
    v38 = *(v112 + 16);
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  v39 = v37;
  v40 = v38;
  do
  {
    v41 = v40 >> 1;
    v42 = &v39[2 * (v40 >> 1)];
    v44 = *v42;
    v43 = v42 + 2;
    v40 += ~(v40 >> 1);
    if (v44 < v36)
    {
      v39 = v43;
    }

    else
    {
      v40 = v41;
    }
  }

  while (v40);
  if (v39 == &v37[2 * v38] || *v39 != v36)
  {
LABEL_47:
    v117 = v34;
    v118 = 0;
    if (mlir::ElementsAttr::getShapedType(&v117))
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  v53 = v39[1];
  v117 = v34;
  v118 = v53;
  if (mlir::ElementsAttr::getShapedType(&v117))
  {
LABEL_48:
    Shape = mlir::ShapedType::getShape(&v117);
    if (v47)
    {
      v48 = 8 * v47;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v48 -= 8;
        if (!v48)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_52:
      if (ShapedType)
      {
        v49 = mlir::ShapedType::getShape(&v117);
        if (NumElements != mlir::ShapedType::getNumElements(v49, v50))
        {
          v115[0] = "Size of shape must match rank of input";
          v116 = 259;
          mlir::Operation::emitOpError(a1, v115, &v119);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
          v66 = result;
          if (v119)
          {
            mlir::InFlightDiagnostic::report(&v119);
            result = v66;
          }

          if (v128 == 1)
          {
            if (v127 != &v128)
            {
              free(v127);
            }

            v67 = __p;
            if (__p)
            {
              v68 = v126;
              v69 = __p;
              if (v126 != __p)
              {
                do
                {
                  v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
                }

                while (v68 != v67);
                v69 = __p;
              }

              v126 = v67;
              operator delete(v69);
            }

            v70 = v123;
            result = v66;
            if (!v123)
            {
              goto LABEL_153;
            }

            v71 = v124;
            v72 = v123;
            if (v124 == v123)
            {
              goto LABEL_152;
            }

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
            goto LABEL_151;
          }

          return result;
        }
      }

      v51 = mlir::ShapedType::getShape(&v117);
      NumElements = mlir::ShapedType::getNumElements(v51, v52);
      ShapedType = 1;
    }
  }

LABEL_56:
  if (!a6)
  {
    goto LABEL_95;
  }

  v54 = (*(a6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v54)
  {
    goto LABEL_86;
  }

  v55 = *v54;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_86;
    }
  }

  else
  {
    mlir::Builder::getI32VectorAttr();
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_86;
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
  if (v59 == &v57[2 * v58] || *v59 != v56)
  {
LABEL_86:
    v113 = v54;
    v114 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v113))
    {
      goto LABEL_95;
    }

    goto LABEL_87;
  }

  v82 = v59[1];
  v113 = v54;
  v114 = v82;
  if (!mlir::ElementsAttr::getShapedType(&v113))
  {
    goto LABEL_95;
  }

LABEL_87:
  v75 = mlir::ShapedType::getShape(&v113);
  if (v76)
  {
    v77 = 8 * v76;
    while (*v75 != 0x8000000000000000)
    {
      ++v75;
      v77 -= 8;
      if (!v77)
      {
        goto LABEL_91;
      }
    }

LABEL_95:
    if (!a7)
    {
      return 1;
    }

    v83 = (*(a7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v83)
    {
      goto LABEL_125;
    }

    v84 = *v83;
    {
      v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v86 = *(v84 + 8);
      v87 = *(v84 + 16);
      if (!v87)
      {
        goto LABEL_125;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v86 = *(v84 + 8);
      v87 = *(v84 + 16);
      if (!v87)
      {
        goto LABEL_125;
      }
    }

    v88 = v86;
    v89 = v87;
    do
    {
      v90 = v89 >> 1;
      v91 = &v88[2 * (v89 >> 1)];
      v93 = *v91;
      v92 = v91 + 2;
      v89 += ~(v89 >> 1);
      if (v93 < v85)
      {
        v88 = v92;
      }

      else
      {
        v89 = v90;
      }
    }

    while (v89);
    if (v88 != &v86[2 * v87] && *v88 == v85)
    {
      v111 = v88[1];
      v113 = v83;
      v114 = v111;
      if (!mlir::ElementsAttr::getShapedType(&v113))
      {
        return 1;
      }

LABEL_126:
      v100 = mlir::ShapedType::getShape(&v113);
      if (v101)
      {
        v102 = 8 * v101;
        while (*v100 != 0x8000000000000000)
        {
          ++v100;
          v102 -= 8;
          if (!v102)
          {
            goto LABEL_130;
          }
        }

        return 1;
      }

LABEL_130:
      if (ShapedType)
      {
        v103 = mlir::ShapedType::getShape(&v113);
        if (NumElements != mlir::ShapedType::getNumElements(v103, v104))
        {
          v115[0] = "Size of offset must match rank of input";
          v116 = 259;
          mlir::Operation::emitOpError(a1, v115, &v119);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
          v66 = result;
          if (v119)
          {
            mlir::InFlightDiagnostic::report(&v119);
            result = v66;
          }

          if (v128 == 1)
          {
            if (v127 != &v128)
            {
              free(v127);
            }

            v105 = __p;
            if (__p)
            {
              v106 = v126;
              v107 = __p;
              if (v126 != __p)
              {
                do
                {
                  v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
                }

                while (v106 != v105);
                v107 = __p;
              }

              v126 = v105;
              operator delete(v107);
            }

            v70 = v123;
            result = v66;
            if (!v123)
            {
              goto LABEL_153;
            }

            v108 = v124;
            v72 = v123;
            if (v124 == v123)
            {
LABEL_152:
              v124 = v70;
              operator delete(v72);
              result = v66;
LABEL_153:
              if (v121 != &v122)
              {
                free(v121);
                return v66;
              }

              return result;
            }

            do
            {
              v110 = *--v108;
              v109 = v110;
              *v108 = 0;
              if (v110)
              {
                MEMORY[0x1AC55A040](v109, 0x1000C8077774924);
              }
            }

            while (v108 != v70);
LABEL_151:
            v72 = v123;
            goto LABEL_152;
          }

          return result;
        }
      }

      return 1;
    }

LABEL_125:
    v113 = v83;
    v114 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v113))
    {
      return 1;
    }

    goto LABEL_126;
  }

LABEL_91:
  if (!ShapedType || (v78 = mlir::ShapedType::getShape(&v113), NumElements == mlir::ShapedType::getNumElements(v78, v79)))
  {
    v80 = mlir::ShapedType::getShape(&v113);
    NumElements = mlir::ShapedType::getNumElements(v80, v81);
    ShapedType = 1;
    goto LABEL_95;
  }

  v115[0] = "Size of scale must match rank of input";
  v116 = 259;
  mlir::Operation::emitOpError(a1, v115, &v119);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
  v66 = result;
  if (v119)
  {
    mlir::InFlightDiagnostic::report(&v119);
    result = v66;
  }

  if (v128 == 1)
  {
    if (v127 != &v128)
    {
      free(v127);
    }

    v94 = __p;
    if (__p)
    {
      v95 = v126;
      v96 = __p;
      if (v126 != __p)
      {
        do
        {
          v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
        }

        while (v95 != v94);
        v96 = __p;
      }

      v126 = v94;
      operator delete(v96);
    }

    v70 = v123;
    result = v66;
    if (!v123)
    {
      goto LABEL_153;
    }

    v97 = v124;
    v72 = v123;
    if (v124 == v123)
    {
      goto LABEL_152;
    }

    do
    {
      v99 = *--v97;
      v98 = v99;
      *v97 = 0;
      if (v99)
      {
        MEMORY[0x1AC55A040](v98, 0x1000C8077774924);
      }
    }

    while (v97 != v70);
    goto LABEL_151;
  }

  return result;
}

uint64_t mlir::mps::getResizedAxesImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v147[4] = *MEMORY[0x1E69E9840];
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = *v13;
  {
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  if (v18 == &v16[2 * v17] || *v18 != v15)
  {
LABEL_14:
    v134 = v13;
    v135 = 0;
    if (mlir::ElementsAttr::getShapedType(&v134))
    {
      goto LABEL_15;
    }

    return 0;
  }

  v47 = v18[1];
  v134 = v13;
  v135 = v47;
  if (!mlir::ElementsAttr::getShapedType(&v134))
  {
    return 0;
  }

LABEL_15:
  mlir::ShapedType::getShape(&v134);
  v131 = v24;
  v145 = v147;
  v146 = 0x400000000;
  v142 = v144;
  v143 = 0x400000000;
  v139 = v141;
  v140 = 0x400000000;
  if (a1)
  {
    v25 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v25)
    {
      goto LABEL_44;
    }

    v26 = *v25;
    {
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    v30 = v28;
    v31 = v29;
    do
    {
      v32 = v31 >> 1;
      v33 = &v30[2 * (v31 >> 1)];
      v35 = *v33;
      v34 = v33 + 2;
      v31 += ~(v31 >> 1);
      if (v35 < v27)
      {
        v30 = v34;
      }

      else
      {
        v31 = v32;
      }
    }

    while (v31);
    if (v30 != &v28[2 * v29] && *v30 == v27)
    {
      v54 = v30[1];
      v136 = v25;
      v137 = v54;
      if (mlir::ElementsAttr::getShapedType(&v136))
      {
LABEL_45:
        mlir::ShapedType::getShape(&v136);
        if (v131 == v52)
        {
          Shape = mlir::ShapedType::getShape(&v136);
          v130 = 0;
          v50 = v53 == 0;
          v49 = 1;
          v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (!v51)
          {
            goto LABEL_74;
          }

          goto LABEL_62;
        }

LABEL_58:
        v48 = 0;
        v57 = v139;
        if (v139 != v141)
        {
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      goto LABEL_49;
    }

LABEL_44:
    v136 = v25;
    v137 = 0;
    if (mlir::ElementsAttr::getShapedType(&v136))
    {
      goto LABEL_45;
    }

LABEL_49:
    Shape = 0;
    v130 = 0;
    v50 = 1;
    v49 = 1;
    v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v51)
    {
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    Shape = 0;
    v130 = 0;
    v49 = 1;
    v50 = 1;
    v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v51)
    {
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v36 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36)
  {
    v37 = *v36;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    v41 = v39;
    v42 = v40;
    do
    {
      v43 = v42 >> 1;
      v44 = &v41[2 * (v42 >> 1)];
      v46 = *v44;
      v45 = v44 + 2;
      v42 += ~(v42 >> 1);
      if (v46 < v38)
      {
        v41 = v45;
      }

      else
      {
        v42 = v43;
      }
    }

    while (v42);
    if (v41 != &v39[2 * v40] && *v41 == v38)
    {
      v58 = v41[1];
      v136 = v36;
      v137 = v58;
      if (mlir::ElementsAttr::getShapedType(&v136))
      {
        goto LABEL_55;
      }

LABEL_61:
      Shape = 0;
      v130 = 0;
      v49 = 1;
      v50 = 1;
      v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v51)
      {
        goto LABEL_74;
      }

      goto LABEL_62;
    }
  }

LABEL_54:
  v136 = v36;
  v137 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v136))
  {
    goto LABEL_61;
  }

LABEL_55:
  mlir::ShapedType::getShape(&v136);
  if (v131 != v55)
  {
    goto LABEL_58;
  }

  Shape = 0;
  v130 = mlir::ShapedType::getShape(&v136);
  v49 = v56 == 0;
  v50 = 1;
  v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v51)
  {
    goto LABEL_74;
  }

LABEL_62:
  v59 = *v51;
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  else
  {
    mlir::Builder::getI32VectorAttr();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  v63 = v61;
  v64 = v62;
  do
  {
    v65 = v64 >> 1;
    v66 = &v63[2 * (v64 >> 1)];
    v68 = *v66;
    v67 = v66 + 2;
    v64 += ~(v64 >> 1);
    if (v68 < v60)
    {
      v63 = v67;
    }

    else
    {
      v64 = v65;
    }
  }

  while (v64);
  if (v63 != &v61[2 * v62] && *v63 == v60)
  {
    v84 = v63[1];
    v132 = v51;
    v133 = v84;
    if (!mlir::ElementsAttr::getShapedType(&v132))
    {
      goto LABEL_96;
    }

    goto LABEL_75;
  }

LABEL_74:
  v132 = v51;
  v133 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v132))
  {
    goto LABEL_96;
  }

LABEL_75:
  v69 = mlir::ShapedType::getShape(&v132);
  if (v70)
  {
    v71 = 8 * v70;
    do
    {
      if (*v69 == 0x8000000000000000)
      {
        goto LABEL_96;
      }

      ++v69;
      v71 -= 8;
    }

    while (v71);
  }

  v72 = mlir::ShapedType::getShape(&v132);
  if (v131 != mlir::ShapedType::getNumElements(v72, v73))
  {
    goto LABEL_143;
  }

  mlir::matchConstantWithIntVector<long long>(a4, &v145);
  v74 = v146;
  if (!v146)
  {
    goto LABEL_96;
  }

  v75 = v145;
  v76 = (v146 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v77 = v145;
  if (v76 < 3)
  {
    goto LABEL_107;
  }

  v78 = v76 + 1;
  v77 = &v145->i64[v78 & 0x3FFFFFFFFFFFFFFCLL];
  v79 = v145 + 1;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81 = v78 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v82 = vmovn_s64(vceqq_s64(v79[-1], v80));
    if (v82.i8[0])
    {
      v79[-1].i64[0] = 0x8000000000000000;
      if ((v82.i8[4] & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else if ((v82.i8[4] & 1) == 0)
    {
LABEL_86:
      v83 = vmovn_s64(vceqq_s64(*v79, v80));
      if ((v83.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    v79[-1].i64[1] = 0x8000000000000000;
    v83 = vmovn_s64(vceqq_s64(*v79, v80));
    if ((v83.i8[0] & 1) == 0)
    {
LABEL_91:
      if ((v83.i8[4] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_92;
    }

LABEL_87:
    v79->i64[0] = 0x8000000000000000;
    if ((v83.i8[4] & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_92:
    v79->i64[1] = 0x8000000000000000;
LABEL_83:
    v79 += 2;
    v81 -= 4;
  }

  while (v81);
  if (v78 == (v78 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_96;
  }

LABEL_107:
  v96 = &v75->i8[8 * v74];
  do
  {
    if (*v77 == -1)
    {
      *v77 = 0x8000000000000000;
    }

    ++v77;
  }

  while (v77 != v96);
LABEL_96:
  if (!a5)
  {
    goto LABEL_122;
  }

  v85 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v85)
  {
    goto LABEL_114;
  }

  v86 = *v85;
  {
    mlir::Builder::getI32VectorAttr();
    v87 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v88 = *(v86 + 8);
    v89 = *(v86 + 16);
    if (v89)
    {
      goto LABEL_100;
    }

    goto LABEL_114;
  }

  v87 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v88 = *(v86 + 8);
  v89 = *(v86 + 16);
  if (!v89)
  {
    goto LABEL_114;
  }

LABEL_100:
  v90 = v88;
  v91 = v89;
  do
  {
    v92 = v91 >> 1;
    v93 = &v90[2 * (v91 >> 1)];
    v95 = *v93;
    v94 = v93 + 2;
    v91 += ~(v91 >> 1);
    if (v95 < v87)
    {
      v90 = v94;
    }

    else
    {
      v91 = v92;
    }
  }

  while (v91);
  if (v90 != &v88[2 * v89] && *v90 == v87)
  {
    v102 = v90[1];
    v136 = v85;
    v137 = v102;
    if (!mlir::ElementsAttr::getShapedType(&v136))
    {
      goto LABEL_122;
    }

LABEL_115:
    v97 = mlir::ShapedType::getShape(&v136);
    if (v98)
    {
      v99 = 8 * v98;
      while (*v97 != 0x8000000000000000)
      {
        ++v97;
        v99 -= 8;
        if (!v99)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_122;
    }

LABEL_119:
    v100 = mlir::ShapedType::getShape(&v136);
    if (v131 == mlir::ShapedType::getNumElements(v100, v101))
    {
      mlir::matchConstantWithFloatVector<float>(a5, &v142);
      goto LABEL_122;
    }

    goto LABEL_143;
  }

LABEL_114:
  v136 = v85;
  v137 = 0;
  if (mlir::ElementsAttr::getShapedType(&v136))
  {
    goto LABEL_115;
  }

LABEL_122:
  if (!a6)
  {
    goto LABEL_146;
  }

  v103 = (*(a6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v103)
  {
    goto LABEL_136;
  }

  v104 = *v103;
  {
    mlir::Builder::getI32VectorAttr();
    v105 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v106 = *(v104 + 8);
    v107 = *(v104 + 16);
    if (v107)
    {
      goto LABEL_126;
    }

    goto LABEL_136;
  }

  v105 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v106 = *(v104 + 8);
  v107 = *(v104 + 16);
  if (!v107)
  {
    goto LABEL_136;
  }

LABEL_126:
  v108 = v106;
  v109 = v107;
  do
  {
    v110 = v109 >> 1;
    v111 = &v108[2 * (v109 >> 1)];
    v113 = *v111;
    v112 = v111 + 2;
    v109 += ~(v109 >> 1);
    if (v113 < v105)
    {
      v108 = v112;
    }

    else
    {
      v109 = v110;
    }
  }

  while (v109);
  if (v108 != &v106[2 * v107] && *v108 == v105)
  {
    v119 = v108[1];
    v136 = v103;
    v137 = v119;
    if (!mlir::ElementsAttr::getShapedType(&v136))
    {
      goto LABEL_146;
    }

LABEL_137:
    v114 = mlir::ShapedType::getShape(&v136);
    if (v115)
    {
      v116 = 8 * v115;
      while (*v114 != 0x8000000000000000)
      {
        ++v114;
        v116 -= 8;
        if (!v116)
        {
          goto LABEL_141;
        }
      }

      goto LABEL_146;
    }

LABEL_141:
    v117 = mlir::ShapedType::getShape(&v136);
    if (v131 == mlir::ShapedType::getNumElements(v117, v118))
    {
      mlir::matchConstantWithFloatVector<float>(a6, &v139);
      goto LABEL_146;
    }

LABEL_143:
    v48 = 0;
    v57 = v139;
    if (v139 != v141)
    {
      goto LABEL_173;
    }

    goto LABEL_174;
  }

LABEL_136:
  v136 = v103;
  v137 = 0;
  if (mlir::ElementsAttr::getShapedType(&v136))
  {
    goto LABEL_137;
  }

LABEL_146:
  if (v131 >= 1)
  {
    for (i = 0; v131 != i; ++i)
    {
      if (v50)
      {
        v122 = 0x8000000000000000;
        if (v146)
        {
          goto LABEL_154;
        }
      }

      else
      {
        v122 = *(Shape + 8 * i);
        if (v146)
        {
LABEL_154:
          v123 = v145->u64[i];
          if (v49)
          {
            goto LABEL_155;
          }

          goto LABEL_160;
        }
      }

      v123 = 0x8000000000000000;
      if (v49)
      {
LABEL_155:
        v124 = 0x8000000000000000;
        if (v143)
        {
          goto LABEL_156;
        }

        goto LABEL_161;
      }

LABEL_160:
      v124 = *(v130 + 8 * i);
      if (v143)
      {
LABEL_156:
        v125 = *(v142 + i) != 1.0;
        if (v140)
        {
          goto LABEL_157;
        }

        goto LABEL_162;
      }

LABEL_161:
      v125 = 0;
      if (v140)
      {
LABEL_157:
        v126 = *(v139 + i) != 0.0;
        goto LABEL_163;
      }

LABEL_162:
      v126 = 0;
LABEL_163:
      v136 = v122;
      v137 = v123;
      v138 = v124;
      v127 = mlir::mps::mergeDynamicDims(&v136, 3);
      if (v122 != 0x8000000000000000 && v122 != v127 || v123 != 0x8000000000000000 && v123 != v127)
      {
LABEL_148:
        v121 = *(a7 + 8);
        if (v121 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a7, (a7 + 16), v121 + 1, 8);
          v121 = *(a7 + 8);
        }

        *(*a7 + 8 * v121) = i;
        ++*(a7 + 8);
        continue;
      }

      if (v124 == 0x8000000000000000)
      {
        if (v125 || v126)
        {
          goto LABEL_148;
        }
      }

      else if (v124 != v127 || v125 || v126)
      {
        goto LABEL_148;
      }
    }
  }

  v48 = 1;
  v57 = v139;
  if (v139 != v141)
  {
LABEL_173:
    free(v57);
  }

LABEL_174:
  if (v142 != v144)
  {
    free(v142);
  }

  if (v145 != v147)
  {
    free(v145);
  }

  return v48;
}

uint64_t mlir::mps::getResizedAxes(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  if (!a1)
  {
    return 0;
  }

  v4 = *(*(a1 + 48) + 16);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::mps::ResizeGradientOp,void>::id)
    {
      return 0;
    }

    v17 = *(*(a1 + 72) + 24);
    if (*(a1 + 36))
    {
      v18 = a1 - 16;
    }

    else
    {
      v18 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v19 = *(a1 + 72);
    v20 = *(a1 + 112);
    v21 = v19 + 32 * v20;
    v22 = (*(a1 + 116) + v20);
    v23 = *(a1 + 120);
    if (v23)
    {
      v14 = *(v19 + 32 * v22 + 24);
      v15 = *(v21 + 24);
      if (*(a1 + 124))
      {
LABEL_16:
        v16 = *(v19 + 32 * (v23 + v22) + 24);
LABEL_21:
        v6 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(v21 + 24);
      if (*(a1 + 124))
      {
        goto LABEL_16;
      }
    }

    v16 = 0;
    goto LABEL_21;
  }

  v6 = *(*(a1 + 72) + 24);
  if (*(a1 + 36))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a1 + 72);
  v10 = *(a1 + 112);
  v11 = v9 + 32 * v10;
  v12 = (*(a1 + 116) + v10);
  v13 = *(a1 + 120);
  if (!v13)
  {
    v14 = 0;
    v15 = *(v11 + 24);
    if (*(a1 + 124))
    {
      goto LABEL_10;
    }

LABEL_18:
    v16 = 0;
    v17 = 0;
    goto LABEL_22;
  }

  v14 = *(v9 + 32 * v12 + 24);
  v15 = *(v11 + 24);
  if (!*(a1 + 124))
  {
    goto LABEL_18;
  }

LABEL_10:
  v16 = *(v9 + 32 * (v13 + v12) + 24);
  v17 = 0;
LABEL_22:

  return mlir::mps::getResizedAxesImpl(v6, v17, NextResultAtOffset, v15, v14, v16, a2);
}

uint64_t mlir::mps::getResizeLayout(mlir::mps *this, mlir::Operation *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  if (!this)
  {
    goto LABEL_43;
  }

  v2 = *(*(this + 6) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    v3 = this;
    if (*(this + 9))
    {
      v16 = this - 16;
    }

    else
    {
      v16 = 0;
    }

    v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v5)
    {
LABEL_36:
      v30 = v5;
      v31 = 0;
      if (mlir::ElementsAttr::getShapedType(&v30))
      {
        goto LABEL_37;
      }

LABEL_43:
      v26 = 0;
      v25 = 0;
      return v25 | v26;
    }

    v17 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v17 + 8);
      v9 = *(v17 + 16);
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v17 + 8);
      v9 = *(v17 + 16);
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    v10 = v8;
    v18 = v9;
    do
    {
      v19 = v18 >> 1;
      v20 = &v10[2 * (v18 >> 1)];
      v22 = *v20;
      v21 = v20 + 2;
      v18 += ~(v18 >> 1);
      if (v22 < v7)
      {
        v10 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
  }

  else
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::ResizeGradientOp,void>::id)
    {
      goto LABEL_43;
    }

    v3 = this;
    if (*(this + 9))
    {
      v4 = this - 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v5)
    {
      v30 = 0;
      v31 = 0;
      if (!mlir::ElementsAttr::getShapedType(&v30))
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v6 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_36;
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
        goto LABEL_36;
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
  }

  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_36;
  }

  v28 = v10[1];
  v30 = v5;
  v31 = v28;
  if (!mlir::ElementsAttr::getShapedType(&v30))
  {
    goto LABEL_43;
  }

LABEL_37:
  mlir::ShapedType::getShape(&v30);
  if (v23 > 4)
  {
    goto LABEL_43;
  }

  v24 = v23;
  v32 = v34;
  v33 = 0x200000000;
  if (mlir::mps::getResizedAxes(v3, &v32))
  {
    v25 = v33;
    if (v33 <= 2)
    {
      if (v24 == 2)
      {
        v25 = 6;
        v26 = 0x100000000;
        v27 = v32;
        if (v32 == v34)
        {
          return v25 | v26;
        }

        goto LABEL_41;
      }

      if (v24 != 3)
      {
        if (v24 != 4)
        {
          goto LABEL_40;
        }

        if (!v33)
        {
LABEL_69:
          v26 = 0x100000000;
          v27 = v32;
          if (v32 == v34)
          {
            return v25 | v26;
          }

          goto LABEL_41;
        }

        if (v33 == 1)
        {
          if (*v32 != 1)
          {
            goto LABEL_68;
          }
        }

        else if (*v32 != 1 || *(v32 + 1) != 2)
        {
          goto LABEL_68;
        }

        v25 = 1;
        v26 = 0x100000000;
        v27 = v32;
        if (v32 == v34)
        {
          return v25 | v26;
        }

        goto LABEL_41;
      }

      if (!v33)
      {
LABEL_55:
        v25 = 4;
        v26 = 0x100000000;
        v27 = v32;
        if (v32 == v34)
        {
          return v25 | v26;
        }

        goto LABEL_41;
      }

      if (v33 == 1)
      {
        if ((*v32 - 1) < 2)
        {
          goto LABEL_55;
        }

        if (*v32)
        {
LABEL_68:
          v25 = 0;
          goto LABEL_69;
        }
      }

      else
      {
        if (*v32)
        {
          if (*v32 == 1)
          {
            v25 = 4 * (*(v32 + 1) == 2);
            v26 = 0x100000000;
            v27 = v32;
            if (v32 == v34)
            {
              return v25 | v26;
            }

            goto LABEL_41;
          }

          goto LABEL_68;
        }

        if (*(v32 + 1) != 1)
        {
          goto LABEL_68;
        }
      }

      v25 = 5;
      v26 = 0x100000000;
      v27 = v32;
      if (v32 == v34)
      {
        return v25 | v26;
      }

      goto LABEL_41;
    }
  }

LABEL_40:
  v26 = 0;
  v25 = 0;
  v27 = v32;
  if (v32 != v34)
  {
LABEL_41:
    free(v27);
  }

  return v25 | v26;
}

uint64_t mlir::mps::ResizeGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    *v46 = a7[2];
  }

  else
  {
    v14 = 0uLL;
    *v46 = 0u;
    v15 = 0uLL;
  }

  v48 = a6;
  LOBYTE(v49) = 0;
  v50 = 0;
  v51 = v14;
  v52 = v15;
  v53 = *v46;
  v54 = a9;
  v55 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(&v49, "mps.resize_gradient", 19, Context);
    v50 = 1;
  }

  v56 = a4;
  v57 = a5;
  if (!a5 || (v17 = mlir::UnknownLoc::get(this, a2), !mlir::mps::ResizeGradientOpAdaptor::verify(&v48, v17)))
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
LABEL_25:
      v36 = v31;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v32 + 1, 8);
      v31 = v36;
      LODWORD(v32) = *(a11 + 8);
    }

LABEL_22:
    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
    return 1;
  }

  if (a5 == 1 || (v46[0] = v56, v46[1] = 0, v18 = mlir::ValueRange::dereference_iterator(v46, 0), v45[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8)), v45[1] = v19, !v45[0]))
  {
    v46[0] = v56;
    v46[1] = 0;
    v34 = mlir::ValueRange::dereference_iterator(v46, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v34);
    v31 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v46[0] = v47;
  v46[1] = 0x400000000;
  v20 = v56;
  v58 = v56;
  v59 = v53;
  if (v53)
  {
    v20 = mlir::ValueRange::offset_base(&v58, v53);
  }

  v58 = v20;
  v59 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v58, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v21, v46) & 1) == 0)
  {
    v58 = v56;
    v59 = 0;
    v37 = mlir::ValueRange::dereference_iterator(&v58, 0);
    v38 = mlir::getElementTypeOrSelf(v37);
    v29 = mlir::UnrankedTensorType::get(v38);
LABEL_27:
    v39 = *(a11 + 8);
    if (v39 >= *(a11 + 12))
    {
      v44 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v39 + 1, 8);
      v29 = v44;
      LODWORD(v39) = *(a11 + 8);
    }

    *(*a11 + 8 * v39) = v29;
    ++*(a11 + 8);
    result = 1;
    v40 = v46[0];
    if (v46[0] != v47)
    {
      goto LABEL_30;
    }

    return result;
  }

  if (!mlir::ElementsAttr::getShapedType(v45))
  {
LABEL_20:
    isSplat = mlir::ElementsAttr::isSplat(v45);
    v29 = mlir::RankedTensorType::get(v46[0], LODWORD(v46[1]), isSplat, 0);
    goto LABEL_27;
  }

  Shape = mlir::ShapedType::getShape(v45);
  if (v23 == LODWORD(v46[1]))
  {
    if (LODWORD(v46[1]))
    {
      v24 = Shape;
      v25 = 0;
      v26 = v46[0];
      do
      {
        v58 = v26[v25];
        v59 = *(v24 + 8 * v25);
        v27 = mlir::mps::mergeDynamicDims(&v58, 2);
        v26 = v46[0];
        *(v46[0] + v25++) = v27;
      }

      while (v25 < LODWORD(v46[1]));
    }

    goto LABEL_20;
  }

  v58 = v56;
  v59 = 0;
  v42 = mlir::ValueRange::dereference_iterator(&v58, 0);
  v43 = mlir::getElementTypeOrSelf(v42);
  result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v43);
  v40 = v46[0];
  if (v46[0] != v47)
  {
LABEL_30:
    v41 = result;
    free(v40);
    return v41;
  }

  return result;
}

BOOL mlir::mps::ResizeGradientOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 1;
  }

  v12 = "'mps.resize_gradient' op requires attribute 'mode'";
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

uint64_t mlir::mps::TopKOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  v59[0] = a11;
  v59[1] = &v60;
  v60 = a1;
  if (a7)
  {
    v13 = *a7;
    v66 = a6;
    LOBYTE(v67) = 0;
    v68 = 0;
    v69 = v13;
    v70 = a9;
    v71 = a10;
    if (!a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a6;
    LOBYTE(v67) = 0;
    v68 = 0;
    v69 = 0;
    v70 = a9;
    v71 = a10;
    if (!a6)
    {
LABEL_3:
      v72 = a4;
      v73 = a5;
      v14 = v60;
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_12:
      ElementTypeOrSelf = mlir::Float32Type::get(v14, a2);
LABEL_25:
      v37 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v38 = *(a11 + 8);
      if (v38 >= *(a11 + 12))
      {
        v56 = v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v38 + 1, 8);
        v37 = v56;
        LODWORD(v38) = *(a11 + 8);
      }

      *(*a11 + 8 * v38) = v37;
      ++*(a11 + 8);
      v39 = mlir::IntegerType::get(v60, 0x20u, 1u);
      v40 = mlir::UnrankedTensorType::get(v39);
      v41 = *(a11 + 8);
      if (v41 >= *(a11 + 12))
      {
        v57 = v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
        v40 = v57;
        LODWORD(v41) = *(a11 + 8);
      }

      *(*a11 + 8 * v41) = v40;
      ++*(a11 + 8);
      return 1;
    }
  }

  Context = mlir::Attribute::getContext(&v66);
  if (v68 == 1)
  {
    v68 = 0;
  }

  mlir::OperationName::OperationName(&v67, "mps.top_k", 9, Context);
  v68 = 1;
  v72 = a4;
  v73 = a5;
  v14 = v60;
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_4:
  mlir::UnknownLoc::get(v14, a2);
  if (a5 <= 2)
  {
    goto LABEL_24;
  }

  v63 = v72;
  v64 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v63, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v58[0] = v16;
  v58[1] = v17;
  v63 = v72;
  v64 = 1;
  v63 = mlir::ValueRange::offset_base(&v63, 1);
  v64 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&v63, 0);
  v63 = 0;
  v64 = 0;
  v61 = &v63;
  v62 = v18;
  DefiningOp = mlir::Value::getDefiningOp(&v62);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v61, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v63, v64);
    v21 = SingleInt & 0xFFFFFF00;
    v22 = SingleInt;
    v23 = HIDWORD(SingleInt) & 1;
  }

  else
  {
    LOBYTE(v23) = 0;
    v22 = 0;
    v21 = 0;
  }

  v63 = v72;
  v64 = 2;
  v63 = mlir::ValueRange::offset_base(&v63, 2);
  v64 = 0;
  v26 = mlir::ValueRange::dereference_iterator(&v63, 0);
  v63 = 0;
  v64 = 0;
  v61 = &v63;
  v62 = v26;
  v27 = mlir::Value::getDefiningOp(&v62);
  if (!v27 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v61, v27))
  {
    v30 = 0;
    v29 = 0;
    v31 = 1;
    if (((v16 != 0) & v23) == 1)
    {
      goto LABEL_19;
    }

LABEL_24:
    v63 = v72;
    v64 = 0;
    v36 = mlir::ValueRange::dereference_iterator(&v63, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    goto LABEL_25;
  }

  v28 = mlir::getSingleIntValue<int>(v63, v64);
  v29 = v28 & 0xFFFFFF00;
  v30 = v28;
  v31 = (v28 & 0x100000000) == 0;
  if (((v16 != 0) & v23) != 1)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (!mlir::ElementsAttr::getShapedType(v58))
  {
    goto LABEL_24;
  }

  mlir::ShapedType::getShape(v58);
  if (!v32)
  {
    goto LABEL_24;
  }

  mlir::ShapedType::getShape(v58);
  v34 = (v33 & ((v21 | v22) >> 63)) + (v21 | v22);
  if (v34 < v33)
  {
    if (v31)
    {
      v35 = 0x8000000000000000;
      goto LABEL_32;
    }

    v35 = v29 | v30;
    if ((v29 | v30) > 0)
    {
LABEL_32:
      Shape = mlir::ShapedType::getShape(v58);
      v44 = mlir::ShapedType::getShape(v58);
      llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v63, Shape, (v44 + 8 * v45));
      v46 = v63;
      *(v63 + v34) = v35;
      v47 = v64;
      v48 = mlir::getElementTypeOrSelf(v58[0]);
      v49 = mlir::RankedTensorType::get(v46, v47, v48, 0);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49);
      v50 = v63;
      v51 = v64;
      v52 = mlir::IntegerType::get(v60, 0x20u, 1u);
      v53 = mlir::RankedTensorType::get(v50, v51, v52, 0);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v53);
      if (v63 != &v65)
      {
        free(v63);
      }

      return 1;
    }
  }

  v63 = v72;
  v64 = 0;
  v54 = mlir::ValueRange::dereference_iterator(&v63, 0);
  v55 = mlir::getElementTypeOrSelf(v54);
  return mlir::mps::TopKOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(v59, v55);
}